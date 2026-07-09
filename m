Return-Path: <devicetree+bounces-323431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o6vODStbT2pVfAIAu9opvQ
	(envelope-from <devicetree+bounces-323431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:26:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8836872E3FD
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:26:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Dup8Edkk;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323431-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323431-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C45553007CB3
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:21:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38AA33822AA;
	Thu,  9 Jul 2026 08:21:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0983806DA
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 08:21:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783585284; cv=none; b=XHd3q4KJEJovdgmpiZ/uRm36hruaw4vtM2m814FLfJYF+EAzXTwwuCDRnbaCfD62pI31Cu1I9O0tLejhc/CRl2Q+KtDc2Mj1qFLz22A7iHJ0xBn/fXqHIXt8vJr15Kmo5qvzlPdOaICl2Po7xXaIEB3r9DuYXBJmbJRkmSjj1Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783585284; c=relaxed/simple;
	bh=r3Jk4OeCeSCMckN3G7/P43GE2DIEl2CozrfLujCjZIQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=czLsXLuqo7MBA0eD0Bsz28g9X7VktleQ5wawHUgu4NPgputSvp3w/Hb/yyq2PlpNZHJcIvICsR9Q9R7+EMW+rc5dLF2+pJLYVGLdKN+6zpx2PAs17h6GqHNLUXP3iPbCv3/LdKjHPKzLA4crz7qnAlR1BesuX5x5USO2kEebA1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dup8Edkk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74A441F000E9;
	Thu,  9 Jul 2026 08:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783585282;
	bh=h7c/LMLHj/6CUGJ3vGorc72UpibHKg51BF1b1Afr+Rw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Dup8EdkkQOQOL7zUMSk2IlAujkoypH73reLWcjM+suNg++T0q28CDSJNkHaMbE3TC
	 VQA3OMN8ND5vWHk4JTfuksz0NzCINMweUhBc9DlCtgT0TGV+p2IlEp7uVXjmHdnVaX
	 vRs0wgEPT1vuN5xZ7i7+Nozz54NwG1EiIxCtXpyfx5tL1NWzoUTq9yq+hgTA3w3aSJ
	 lqquoxvt87Zsn8zugwZs78BbCoQSTykG8lyKNhOOeyiPwzNR2ZHAr3bOwtbx2GxpX+
	 5SPQHnVQCLcrXFccl9HnD5BrwP2pJE2QmdmoZOS6j/8spfSWK+dqiEQUlZMH/518q5
	 Lb47kpflhWnBA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: kaanapali-qrd: Add SoCCP node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jingyi Wang" <jingyi.wang@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260709-knp-soccp-dt-v2-2-6e2bfca96088@oss.qualcomm.com>
References: <20260709-knp-soccp-dt-v2-0-6e2bfca96088@oss.qualcomm.com>
 <20260709-knp-soccp-dt-v2-2-6e2bfca96088@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 08:21:22 +0000
Message-Id: <20260709082122.74A441F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323431-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jingyi.wang@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8836872E3FD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The board-specific `&remoteproc_soccp` node is missing the `stat=
us =3D "okay";` property, relying on a flawed default in the base device tr=
ee.
--

--- Patch [2]: [PATCH v2 2/3] arm64: dts: qcom: kaanapali-qrd: Add SoCCP no=
de ---
commit 499497fe00069ecefb1bec759006b9907810f4e3
Author: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

arm64: dts: qcom: kaanapali-qrd: Add SoCCP node

This commit adds the remote processor firmware configuration for the SoCCP
node on the Kaanapali QRD board.

> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts b/arch/arm64/boot=
/dts/qcom/kaanapali-qrd.dts
> index 55d02219ef4e9..8ac1c664a7fd4 100644
> --- a/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts

[ ... ]

> @@ -786,6 +786,11 @@ &remoteproc_cdsp {
>  	status =3D "okay";
>  };
> =20
> +&remoteproc_soccp {
> +	firmware-name =3D "qcom/kaanapali/soccp.mbn",
> +			"qcom/kaanapali/soccp_dtb.mbn";
> +};

[Severity: Medium]
Should this node explicitly include a status =3D "okay"; property?

While the node might currently function if the base kaanapali.dtsi omitted
a status =3D "disabled"; declaration, standard Qualcomm remoteproc conventi=
ons
typically disable remote processors by default in the base device tree.

If the base device tree is later corrected to follow this convention, the
SoCCP could silently become disabled on this board because it lacks an
explicit enable here.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-knp-soccp-=
dt-v2-0-6e2bfca96088@oss.qualcomm.com?part=3D2

