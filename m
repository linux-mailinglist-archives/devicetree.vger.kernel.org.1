Return-Path: <devicetree+bounces-323382-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hmpmHG1TT2oPegIAu9opvQ
	(envelope-from <devicetree+bounces-323382-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:53:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6282972DF78
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:53:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kW34Dh9w;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323382-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-323382-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 010653052D81
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 07:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C52A83E3D9D;
	Thu,  9 Jul 2026 07:39:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1087543932C;
	Thu,  9 Jul 2026 07:39:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783582756; cv=none; b=VrBcrOoqJ2OsHxs9hgAG0lGT8ueWbcXrVSbOZR5bpErRsORdhMV+pr4wx5ZayzadOzuMDgHwp+11XVyhqb5UEO/0Me/Bmyps/OWPZ/0P/zfQUd9uhh5EC/8z4+aeeBpP+i+veSDhdNEPXIdDVGrcVKVy5fsHRBSgbszBmU4oHNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783582756; c=relaxed/simple;
	bh=bIyJyBFkm+izpnaIhnIa9OEP0eoxm0utCtxvZutld5Q=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=byXy/T39JTky2GbpTtVlpZVXkHYG52yZrEJUERD7udcV2we2gU8dMFjkL7qaLpWFhRGlGo3gTkVSZswiA+Mdayq+4ivC2K92W7hcAuUhmG6FYFLeUjSUkpTXai5zCIgmtTWwqdxeGi116/TKHQEHtnr/wqZplhD90fr+1N/K5uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kW34Dh9w; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 557391F00A3D;
	Thu,  9 Jul 2026 07:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783582752;
	bh=bIyJyBFkm+izpnaIhnIa9OEP0eoxm0utCtxvZutld5Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kW34Dh9wTUoRNTXUJ2OxcuJ7PIqPG+wOxI8ls+jb6b8pcs5j71hozxLgNq3ngDJMW
	 xNojN2UConlq/XKfyh3yoK6A5u/4z4EdETCZdMmfTf1EKVdcnrqkig/ySjdApVWOX5
	 pMueZsfzy1A2L9donBU6pDV+81/4lO9kRL1ufoTZanR/uCx331kMQ48mRBJIt+Ggxf
	 NDXEdrWJsiXn1Vyv4oRGacQzdQMQI0tas7+wOJtlhKb3gAze7E3UlG2sqf/jip7TrF
	 kYjcFmBwdjiCWVkOnFmqqkfKUuif5Ua5id9eeFGmbzRcbBn1tq0liSnUrWygQb4Kys
	 gQAnOFT5XaS/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] power: sequencing: pcie-m2: Match WCN6855 and
 WCN7851 UART BT variants by subdevice ID
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wei Deng" <wei.deng@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260709-fix-hamoa-m2-w-disable2-v1-2-5e725091266a@oss.qualcomm.com>
References: <20260709-fix-hamoa-m2-w-disable2-v1-0-5e725091266a@oss.qualcomm.com>
 <20260709-fix-hamoa-m2-w-disable2-v1-2-5e725091266a@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 07:39:11 +0000
Message-Id: <20260709073912.557391F00A3D@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323382-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wei.deng@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6282972DF78

> The WCN6855 and WCN7851 combo chips are available in M.2 card variants
> that differ by their BT interface: some expose BT over UART while others
> expose BT over USB. Both variants use the same PCIe device ID for the
> WiFi interface, distinguished only by their sub-system device ID.
>=20
> The bare PCI_DEVICE() entries match all sub-system IDs, so both UART and
> USB variants hit the same table entry and trigger UART serdev creation.
> For USB variants this is wrong =E2=80=94 there is no UART BT interface on=
 such
> a card, and the serdev probe will fail.
>=20
> Narrow the matches to UART variants only by using PCI_DEVICE_SUB with
> their respective sub-system IDs. USB variants no longer match the table
> and will be handled separately to deassert W_DISABLE2# for USB BT
> enumeration.
>=20
> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-fix-hamoa-=
m2-w-disable2-v1-0-5e725091266a@oss.qualcomm.com?part=3D2


