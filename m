Return-Path: <devicetree+bounces-309145-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IXx5MCUyKGq1/wIAu9opvQ
	(envelope-from <devicetree+bounces-309145-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:32:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00251661C90
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:32:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GAd4fDog;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309145-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309145-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43805312BC65
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 15:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E77363C4C;
	Tue,  9 Jun 2026 15:16:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3C43624A5
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 15:16:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781018219; cv=none; b=eVtEK799bKKQljiFoiairm2J6S4TtpTt0LBHwt7xrnHI2rpzUZ6PXQZ5ZlZvhPMuih/b+b/z4GfOVkTpzwaLzEcxPrMYwqQkFPGqo4E9Aj3TsntMFQuoatnKgOTPbVU18ibkl6epC23vdtbuUuPUhhH8LPicuwGYmzUVy0u2R6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781018219; c=relaxed/simple;
	bh=myhw+vlZ6rGLjkHSGgn8hq8IiiMzVqR7opVwYfbmZes=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Hs2meHZGp4JTN+CvIqvyhZSC1vcebAgiy9QpBp1VRsocW0JH5Ev0Lm5TJ/i6OaJHVJcYfwyP3KwsJXsg8xHvGzB3XtAXLVTw5iiek5FEuWc9M4+bjOpdMyx+8qumKrdsTRxrONWCNwYcW0FuTQ7V+2fCxy9faJbvz3wXy7/ZgQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAd4fDog; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1CB21F00893;
	Tue,  9 Jun 2026 15:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781018218;
	bh=pdHZdB4glj3ixsaP/8nNiWIpY4FfnT1h3FPc86lPB28=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GAd4fDogZTf5jfZlhENQYbhiA6gNpjGc6Gy/iW3zCmqIpYByAYpdA3b0/mIm3tmBU
	 gO2ltGF+hrv2wNB6F/hmiEwHPEZdfzz+FO5bAkpNTn3R3mv6FMbHNj0tv8ccQZ6bCn
	 WkhXS3hFvzT5oc84SEiC7e6jYqz3A4/y8PWbsjl4PmnmpwqqviYW+w6fhb9cjjR8Pm
	 9Gc0q4V2q01fKvIyMKuCM0s0lmj24KkT48Idfzi3OrX5qb1BwsQYJavffY12jwwQgY
	 Hv/mBvEbWPoFcQtWBkXcaLB2fhY4cR52h8pMHoY95IXWIFw1fANuKc1T6iskBhiPSo
	 jwTSsqn6FGKlw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 3/7] dt-bindings: clock: qcom: Add support for CAMCC
 for Eliza
Reply-To: sashiko-reviews@lists.linux.dev
To: "Taniya Das" <taniya.das@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260609-b4-eliza_mm_cc_v6-v6-3-17df09e5940c@oss.qualcomm.com>
References: <20260609-b4-eliza_mm_cc_v6-v6-3-17df09e5940c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 15:16:57 +0000
Message-Id: <20260609151657.C1CB21F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309145-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:taniya.das@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,qualcomm.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 00251661C90

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Unconditional requirement of `#power-domain-cells` and `#reset-c=
ells` incorrectly forces the `qcom,eliza-cambistmclkcc` variant to advertis=
e itself as a power domain and reset provider.
--

commit 1b86ec5394cef411456da0c6a6314eebda1d7c44
Author: Taniya Das <taniya.das@oss.qualcomm.com>

dt-bindings: clock: qcom: Add support for CAMCC for Eliza
   =20
This commit adds the Eliza camera and camera BIST clock controllers
to the Milos camcc binding. It also adds #power-domain-cells to the
required properties list and introduces the device tree binding headers.

> diff --git a/Documentation/devicetree/bindings/clock/qcom,milos-camcc.yam=
l b/Documentation/devicetree/bindings/clock/qcom,milos-camcc.yaml
> --- a/Documentation/devicetree/bindings/clock/qcom,milos-camcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,milos-camcc.yaml
[ ... ]
>  properties:
>    compatible:
> -    const: qcom,milos-camcc
> +    enum:
> +      - qcom,eliza-cambistmclkcc
> +      - qcom,eliza-camcc
> +      - qcom,milos-camcc
[ ... ]
>  required:
>    - compatible
>    - clocks
> +  - '#power-domain-cells'
> =20
>  allOf:
>    - $ref: qcom,gcc.yaml#

[Severity: Medium]
Does the BIST MCLK controller actually provide power domains and resets?

Looking at the new qcom,eliza-cambistmclkcc.h header, it only defines
clocks, with no power domains or resets. However, adding #power-domain-cells
to the unconditional required list forces the BIST controller to advertise
capabilities it does not have. Additionally, the unconditional reference
to qcom,gcc.yaml# forces #reset-cells to be required for all compatibles.

Would it be better to restrict #power-domain-cells and #reset-cells to
only the main camera clock controllers using an if-then conditional block,
or move qcom,eliza-cambistmclkcc to a separate binding file?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-b4-eliza_m=
m_cc_v6-v6-0-17df09e5940c@oss.qualcomm.com?part=3D3

