Return-Path: <devicetree+bounces-303349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBJqHu7CFmrOqgcAu9opvQ
	(envelope-from <devicetree+bounces-303349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:09:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D63245E2682
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:09:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B78D303EF52
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 10:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB2F13DFC88;
	Wed, 27 May 2026 10:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKy78mOC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C933BC668
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 10:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779876094; cv=none; b=msTpel/+dKR88NReiIV9KJP2Wa3H4TwoiS5Fu1V5Oyu3vNZKNkPgRybtDu4/z0gH/xfoJFOCQxLgv5Oiw4fZ6PDd3HZbTSDSmf53+NgFPs1CMZ4vM9MimlEIsQb1w+/CSzc5ta7oiwQiDE/npZrWGs0ErwAVy8HamZnVtxKWJow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779876094; c=relaxed/simple;
	bh=L8OvaQTx+lksGpRCjU9w+grc+GnHuqZAEtnE5JfJ+vY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MZoZWQhg8N+p7JMR18fFODGuTw9TTGOBxmnZRBEaa86WOG2shvEakX6B6BIUvhUyhw+7TRp2iJQH/6hLdOMpEcXnyw3XC7cC4nH9MIT9r3GBNFodbfeg1wbwXyRtdlrjR0YVUx1uMqBpG1QHVQ3wn28e7/gIfD/q4U0FBQpVAK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKy78mOC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC06B1F000E9;
	Wed, 27 May 2026 10:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779876093;
	bh=HkL8opctiADz0c3FTVVUAEHnxIwGAkZc056KPVm1fGY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eKy78mOC7MbEtf0gVr/gOGU6nRguUQvg9txHjtONhqazHeeAWBGAtv6njfV1c2lO4
	 vL5GpMyY8RC5KPzdQjSHZuHqBNfyClfd0qs2UfB5FnV7v/h2OwxeHyKN/Ecx5jMt0k
	 dampxAYl5rWLYeEyTGTaruXdKHJfd0PxJTBuOXDOfAKtIAHAszKxhmQL4gttMZZ8aH
	 K1XK99rCb63htpMYLZoVs5Z5AuDHee0QTKuSANil4a1oazMJM4zXl0+1fAbeYh5LIm
	 F8B9sOCWodC9MA9Pr/FnaWMxQqAnmkIZCjAtOwq68GwcPI9J8GqJMGZqnze9EhSrWb
	 NqjBaX5FE54rg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 11/24] arm64: dts: qcom: sm8450: Reduce OS PDC DRV
 span to 0x10000
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260527094333.2311731-12-mukesh.ojha@oss.qualcomm.com>
References: <20260527094333.2311731-12-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 10:01:32 +0000
Message-Id: <20260527100132.EC06B1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303349-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,qualcomm.com:email,smtp.kernel.org:mid,b220000:email]
X-Rspamd-Queue-Id: D63245E2682
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Reducing the PDC register window to 0x10000 bytes in the device =
tree triggers an unconditional boot warning from the qcom-pdc driver and fa=
ils to actually reduce the memory mapping size at runtime.
--

commit 146bc09492c2a09bab10da04c80ce9d1782cd06d
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

arm64: dts: qcom: sm8450: Reduce OS PDC DRV span to 0x10000

The OS PDC DRV register window on sm8450 spans 0x10000 bytes. This commit
reduces the size of the first reg entry from 0x30000 to 0x10000.

> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/q=
com/sm8450.dtsi
> index 03bf30b53f289..1724204852553 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -3728,7 +3728,7 @@ dispcc: clock-controller@af00000 {
> =20
>  		pdc: interrupt-controller@b220000 {
>  			compatible =3D "qcom,sm8450-pdc", "qcom,pdc";
> -			reg =3D <0 0x0b220000 0 0x30000>, <0 0x174000f0 0 0x64>;
> +			reg =3D <0 0x0b220000 0 0x10000>, <0 0x174000f0 0 0x64>;

[Severity: Medium]
Will this reduction trigger a boot warning and fail to actually reduce the
memory mapped size at runtime?

Looking at qcom_pdc_probe() in drivers/irqchip/qcom-pdc.c, the driver has a
hardcoded minimum region size of QCOM_PDC_SIZE (0x30000) to work around old=
er
broken device trees:

drivers/irqchip/qcom-pdc.c:qcom_pdc_probe() {
    ...
    res_size =3D max_t(resource_size_t, resource_size(&res), QCOM_PDC_SIZE);
    if (res_size > resource_size(&res))
        pr_warn("%pOF: invalid reg size, please fix DT\n", node);
    ...
}

If the resource size is reduced to 0x10000 in the device tree without remov=
ing
or updating this constraint in the driver, the driver will print the
"invalid reg size" warning on boot and continue to ioremap 0x30000 bytes
anyway.

>  			qcom,pdc-ranges =3D <0 480 12>, <14 494 24>, <40 520 54>,
>  					  <94 609 31>, <125 63 1>, <126 716 12>;
>  			#interrupt-cells =3D <2>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527094333.2311=
731-1-mukesh.ojha@oss.qualcomm.com?part=3D11

