Return-Path: <devicetree+bounces-313645-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tH2PONhrNGoNXwYAu9opvQ
	(envelope-from <devicetree+bounces-313645-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 00:06:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 341336A2E24
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 00:06:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lg484fft;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313645-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313645-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6557A3008081
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 22:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23C4F30DD2F;
	Thu, 18 Jun 2026 22:06:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C10140D59E;
	Thu, 18 Jun 2026 22:06:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781820372; cv=none; b=FmB+P/PePd7en4mNNL1YcEKgwEzzV7kHgn8p24EiGCBhMTUO9dD1qAo//0ps6p1ZNIWydTLG0Nxvjuk/wMm+wX+veG6fNfF6gBMfwfqVwwfCgZQ26WhonH/Y6iqSIiLEX0dhsDQbCvJ6nmSro8qr+0PcZYGVgHb3+WSP4+Xv/0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781820372; c=relaxed/simple;
	bh=S+unlq7k3YvuMOhvSJrd4abYTtkkonRGAbMOXY6lyeo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=l/LMB9W6SuqdX7Igyy2XK8Fs6YpHlPVM2twk5yv88EEJvN2mMsxFvEDFzKKUDcha/zVHzyMHCRMzjctC8KR/XSIp94cTwdXb1tbpgwIRvHDufBwFO3Gg09PPQNhVru/19aEUFsEWQyRkUcRM78eoymIO0Te4rKux0E2KBWMvDb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lg484fft; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE45F1F00A3D;
	Thu, 18 Jun 2026 22:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781820371;
	bh=S+unlq7k3YvuMOhvSJrd4abYTtkkonRGAbMOXY6lyeo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lg484fftJJLHCWviMlsl0+Kuwk4Ezu4LMiGItCwFD0AOQ60MauNzsYEZB01S3canH
	 KlOfPhrGV787MqylgpaOw67noiOMnNFBcZeUgxUlTSWrCi4/TpTOAJujq+3sX+hahq
	 U6/Qb8V6TrkcsX+PCIuPNDDT5aNsH5AhOG7B26owSgagJNYDTG+iSnXhgdZslIvhnX
	 anVCxWapBLaTGHWTnZsOTQQPk3ZHdwAFHE3jZhrX3hoHeB8ulx4Wl7pAppgVvZ/Hq+
	 Nv9o8JgzK4gau1bWkYZmPr7rzz+Cl6i3FC0P2G5wHM/2oRjimrlebQUIl5lgVycdKd
	 BsadtGj2Pq0nQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: PCI: qcom: Document the Hawi PCIe
 Controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "Matthew Leung" <matthew.leung@oss.qualcomm.com>
Cc: conor+dt@kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260618-hawi-pcie-v3-1-f31880bfb3ec@oss.qualcomm.com>
References: <20260618-hawi-pcie-v3-0-f31880bfb3ec@oss.qualcomm.com>
 <20260618-hawi-pcie-v3-1-f31880bfb3ec@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 22:06:10 +0000
Message-Id: <20260618220610.BE45F1F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313645-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:email,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matthew.leung@oss.qualcomm.com,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: 341336A2E24

> Add a dedicated schema for the PCIe controllers found on the Hawi
> platform.
>=20
> Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-hawi-pcie-=
v3-0-f31880bfb3ec@oss.qualcomm.com?part=3D1


