Return-Path: <devicetree+bounces-315840-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FYHZLCiVPWqH4QgAu9opvQ
	(envelope-from <devicetree+bounces-315840-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 22:52:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EF86C89FA
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 22:52:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KM4HLMOv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315840-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-315840-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 61E90304890D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 20:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0324736F916;
	Thu, 25 Jun 2026 20:52:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BAE332EC1;
	Thu, 25 Jun 2026 20:52:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782420766; cv=none; b=MM8+59Z8ezY1HnLPcSZtfvktm7rbjTT483UWQRd38wzeUzbOuL51NqX2Lro0vNDwV/Ks00ixm+8y3d/tRCNoa349E6u/FTqphpf6DUCnuvVV4ovdcTTM82XBuRX82hszDoNIFTLhOjHCRxc8H5JztpCuh/kujKnO1mWn3Iu4B/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782420766; c=relaxed/simple;
	bh=9vCvP5QksXzxjUqw9yT6Q5MeWh41rGCTXNo+FjuiRg0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dQGLHR5S8t2Kwf8/GXKvFBoVQRrxnAJHPSn+caApMZu5OiaUTsnJD01Wu4YJn0wcO/mzyDJdTn38o8E6oPUl4hgoyi491HkyUH0hsgowBJwHoWtI5HWPejHxoLmZgLy/OKz4kjqG7J5/EO55VQNrFQ3Tk3VFZACUAnZ1a4UUaxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KM4HLMOv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4201A1F000E9;
	Thu, 25 Jun 2026 20:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782420765;
	bh=9vCvP5QksXzxjUqw9yT6Q5MeWh41rGCTXNo+FjuiRg0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KM4HLMOvtmdYLDatUU0/2XumcNAaCTVP8OQINQFQxbVYqsegoq+cwnRJ7t74TYShi
	 8tlP2d1vx791GqJoTCaHhZ9qIHa8bCqbK1Sez+wp9nbG0n/uii5M9cgXNU/40t2Wmy
	 Eag/sTzATEptO6QugTweMfWtQlf71VVyFhqFACbv2GEiIX/DWlhE4M0u6YI/Qi0ZKu
	 22Q1a/CGWo8fBBebsyAF+Im4TRdriELhBceNjRS+ssxFu3yHwAUpdLrbiZhnmbmXBQ
	 JGVnKvlxUjEDjn7o34iUTMJfBBJd1qrwDzGN2PqAl6fUsXl6uATvN7QSmQNFQRAPTe
	 9WEFGiu1nEtjg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/2] PCI: qcom: Add support for Hawi
Reply-To: sashiko-reviews@lists.linux.dev
To: "Matthew Leung" <matthew.leung@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260625-hawi-pcie-v4-2-1a578603cd86@oss.qualcomm.com>
References: <20260625-hawi-pcie-v4-0-1a578603cd86@oss.qualcomm.com>
 <20260625-hawi-pcie-v4-2-1a578603cd86@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 20:52:44 +0000
Message-Id: <20260625205245.4201A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315840-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:email,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matthew.leung@oss.qualcomm.com,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53EF86C89FA

> Add support for the Hawi platform which has two PCIe controllers: one
> capable of Gen3 x2 operation and one capable of Gen4 x1 operation.
>=20
> Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625-hawi-pcie-=
v4-0-1a578603cd86@oss.qualcomm.com?part=3D2


