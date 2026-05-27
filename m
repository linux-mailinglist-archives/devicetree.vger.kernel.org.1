Return-Path: <devicetree+bounces-303356-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAIaFd/DFmrOqgcAu9opvQ
	(envelope-from <devicetree+bounces-303356-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:13:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A42575E2727
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:13:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD4C13090881
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 10:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 297EC3EB80E;
	Wed, 27 May 2026 10:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5Xh+iRv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070123A6F0F
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 10:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779876422; cv=none; b=Fu390Ll+/fg2wyNXohoZmLwpm9+Q27KRT3X6NF7mM0BOkHsHrhuxvRenMAB3t88RT+cYgYpXFi1VLvBvUICQlC3tKVuDmLUV9BjBsPpqDkpU/5lT8yD9o0bKmin0b/ABucMsxWdu72M1QgKLhE+HK5idBZ18k4NyvVJGLWcqR6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779876422; c=relaxed/simple;
	bh=acbcX64bYb98LaRdbT6+Y868f2X9HTaKHim/ofFo0XA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=c6rcyfPeT6SOqnziiaYFUxQTOP9TokS1MLnuX45vVEVQ5Ki5kD6t1c74YhW1AEdLEoc8tr6oMxrnB/cZAf4cOyO5avHiwb4dhEgFj9EMoIu58Pc9wPGaPQ0qfzj0lRFePbwvKaf7sSQzQ9i+XPOJu6NycIaSujo2qjyl1Zwiw0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5Xh+iRv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 725661F000E9;
	Wed, 27 May 2026 10:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779876420;
	bh=iBYL8n9+CaYjeL/kQd6JTucpQw0cjC2doS/hzeaMRbA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H5Xh+iRvjSD8UIB1psVBFqqhPVANF7sG1eYwU6jT5LcCdW5NBJ42q31nvBSdQuP68
	 sqbvwEF072kgtmiorulNWJgWZFL8IW2GrXqG9LGBF7GINsT0CwZEa9feG8W+taRrRs
	 Z8c5ebiX+N9GFrxml5oksCbsLa/n0X3ORNtxeFwKZ8VcgDHi2M6HTOC0oTMt+TItXt
	 9HkEKSakuEN9mpN19dP7pEMwY19ges5Aex9xJFJeLb9mbzCgrvbOckgbF4SjnYFp+Y
	 8dp1t3Dpx39pV/k69HqppYvY4tGy7beK4iolpx02ahIIY87JDPpZnPwbCtW0b6Yg5d
	 rBG0rkWv9wqQQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 06/24] arm64: dts: qcom: sc8180x: Reduce OS PDC DRV
 span to 0x10000
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260527094333.2311731-7-mukesh.ojha@oss.qualcomm.com>
References: <20260527094333.2311731-7-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 10:07:00 +0000
Message-Id: <20260527100700.725661F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303356-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[b220000:email,smtp.kernel.org:mid,qualcomm.com:email,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: A42575E2727
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Reducing the `reg` property size to 0x10000 in the device tree t=
riggers a hardcoded override and a boot warning in the PDC driver, failing =
to actually reduce the mapped memory size.
--

commit 801af88b2159c6cae68a0fa2faaac6413c1a3461
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

arm64: dts: qcom: sc8180x: Reduce OS PDC DRV span to 0x10000

The OS PDC DRV register window on sc8180x spans 0x10000 bytes. Reduce
the size of the first reg entry from 0x30000 to 0x10000.

> diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/=
qcom/sc8180x.dtsi
> index f45deb188c6c0..bafdbcd329e9a 100644
> --- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> @@ -3554,7 +3554,7 @@ dispcc: clock-controller@af00000 {
> =20
>  		pdc: interrupt-controller@b220000 {
>  			compatible =3D "qcom,sc8180x-pdc", "qcom,pdc";
> -			reg =3D <0 0x0b220000 0 0x30000>;
> +			reg =3D <0 0x0b220000 0 0x10000>;

[Severity: Medium]
Will this change actually reduce the mapped memory size, or will it just
trigger a warning on boot?

Looking at the qcom-pdc driver in drivers/irqchip/qcom-pdc.c, there is a
hardcoded minimum size check for the reg property:

drivers/irqchip/qcom-pdc.c:qcom_pdc_probe() {
	...
	res_size =3D max_t(resource_size_t, resource_size(&res), QCOM_PDC_SIZE);
	if (res_size > resource_size(&res))
		pr_warn("%pOF: invalid reg size, please fix DT\n", node);

	...
	pdc_base =3D ioremap(res.start, res_size);
	...
}

Since QCOM_PDC_SIZE is 0x30000, passing a size of 0x10000 here will cause t=
he
driver to expand the mapped memory back to 0x30000 and emit a warning on ev=
ery
boot.

Does the driver logic need to be updated alongside this device tree change =
to
prevent this warning and successfully reduce the memory footprint?

>  			qcom,pdc-ranges =3D <0 480 94>, <94 609 31>;
>  			#interrupt-cells =3D <2>;
>  			interrupt-parent =3D <&intc>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527094333.2311=
731-1-mukesh.ojha@oss.qualcomm.com?part=3D6

