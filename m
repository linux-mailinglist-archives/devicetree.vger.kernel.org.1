Return-Path: <devicetree+bounces-311143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P0bYLJVkLGp/QQQAu9opvQ
	(envelope-from <devicetree+bounces-311143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 21:57:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E6967C382
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 21:57:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JvJlVJps;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311143-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311143-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 37EDB307054D
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 19:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2861D37206A;
	Fri, 12 Jun 2026 19:57:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0903C36F8E5
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 19:57:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781294226; cv=none; b=YH9cP0J2eF9IQkuacC5ZA0dLsUsM2Nw17YpQxhgemM0Z89ipPwB2sB4SaASa4kbPHU2K05YSzHpr+/KXGmVX2gNxTIqp2oglQSll+BgFAhruOw1d+pNiDdECQHMUbMqgk62SPveWZxE1Khqr+bcJ/UZ6Z4xEMGjVAg8ZfLXINLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781294226; c=relaxed/simple;
	bh=eD6z8cFGuaLSYe0hmuhojfHy/VUKYFUGgVhOPlPWJgk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=B3FeQfO8uNq2aRef3ItyRAAArkYsZGRRz+OGd5VmvDlyyO5zlO90KY1d58JRC6K5ax+ebT1GLv7H8ohemAb9pS6BXrdxjcxu2BJKtUDGGOm9c1PHTBECSjocPfOTlDdmLpm9zNxMK7WDRNizj4sOdH2yiGFfhWf4sXkItJa9/HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvJlVJps; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 903111F000E9;
	Fri, 12 Jun 2026 19:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781294224;
	bh=mh7usatoKC7lAZu3SuRZJ4JuPPJjJrDHPE1/2Bs86DE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JvJlVJps5R2o7Gc8Chb2Xt6gibxCCUcO7uZb0WBH4KmWdQ5BMj7WSXA4zSECgNTf0
	 Bu7JpC7nePLLfndI8uGvCOVN3svQGYsQXlQI/1Fo4ZQyr2j1z0GtcccqsjLOyK+eEs
	 9H8ckaitK8QnwEb4r5VoGjM6mogpNrdYnIvcFnuAptPsucEtRz5IrkydTeOpiSD4BK
	 CTC4Y64pM8M/lvF/Qa1C36ZETquZAUWU9/Q+RzDYsjqRyX/pKiS/NGxpmOLWoVo8RY
	 xLsl1EDVSssZ4mVHGlMz61XvepltY65rr6Z13MMFjr6aeWYtg++GWqJwOwNflDupUW
	 4AKcQOIr2eLQg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/4] dt-bindings: media: qcom: Add JPEG encoder
 binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atanas Filipov" <atanas.filipov@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260612194417.1737009-2-atanas.filipov@oss.qualcomm.com>
References: <20260612194417.1737009-2-atanas.filipov@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 19:57:04 +0000
Message-Id: <20260612195704.903111F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311143-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:atanas.filipov@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 29E6967C382

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Schema validation weakness and missing required properties cause d=
river probe failure.
- [Medium] Chronologically backward compatible fallback with mismatched har=
dware constraints.
- [Low] The binding introduces the deprecated `cell-index` property.
--

commit 8d581d21294da3512a77773ccfed01692993fa7b
Author: Atanas Filipov <atanas.filipov@oss.qualcomm.com>

dt-bindings: media: qcom: Add JPEG encoder binding

Add device-tree binding for the standalone Qualcomm JPEG encoder hardware
block (separate from CAMSS media pipelines). Document required resources
briefly and scope initial support to currently used compatibles in this
series, including SM8250, QCM6490, and SM8550 class platforms.

> diff --git a/Documentation/devicetree/bindings/media/qcom,jpeg-encoder.ya=
ml b/Documentation/devicetree/bindings/media/qcom,jpeg-encoder.yaml
> new file mode 100644
> index 0000000000000..83f19719a8693
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,jpeg-encoder.yaml
> @@ -0,0 +1,142 @@

[ ... ]

> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: qcom,sm8250-jenc
> +      - items:
> +          - enum:
> +              - qcom,qcm6490-jenc
> +          - const: qcom,sm8550-jenc

[Severity: Medium]
Is it safe to use qcom,sm8550-jenc as a fallback for qcom,qcm6490-jenc?

It looks like the driver uses different performance and clock configuration
data for these two SoCs (qcom_t680_jpeg_drvdata vs qcom_t780_jpeg_drvdata
in drivers/media/platform/qcom/jpeg/qcom_jenc_res.c).=20

If a generic driver relies on this fallback, it would apply SM8550 clock
frequencies to QCM6490 hardware, which might cause instability. Also, newer
hardware falling back to older hardware is usually the standard devicetree
convention.

> +      - items:
> +          - const: qcom,sm8550-jenc
> +
> +  cell-index:
> +    description: Legacy JPEG HW instance index.
> +    $ref: /schemas/types.yaml#/definitions/uint32

[Severity: Low]
Is this deprecated cell-index property still required?

The introduced Linux driver does not appear to read or use this property.
Could instance identification be handled dynamically or via standardized
devicetree aliases nodes instead?

> +  reg:
> +    maxItems: 1
> +
> +  reg-names:
> +    oneOf:
> +      - items:
> +          - const: jpeg
> +      - items:
> +          - const: jpeg-regs
> +      - items:
> +          - const: jpeg_regs
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 6
> +    maxItems: 6
> +
> +  clock-names:
> +    oneOf:
> +      - items:
> +          - const: gcc_hf_axi
> +          - const: gcc_sf_axi
> +          - const: core_ahb
> +          - const: cpas_ahb
> +          - const: camnoc_axi
> +          - const: jpeg
> +      - items:
> +          - const: gcc_hf_axi_clk
> +          - const: gcc_sf_axi_clk
> +          - const: core_ahb_clk
> +          - const: cpas_ahb_clk
> +          - const: camnoc_axi_clk
> +          - const: jpeg_clk

[Severity: High]
Should the binding strictly enforce the exact resource names the driver exp=
ects?

The schema allows variations like "jpeg-regs" and "_clk" suffixes, but the
driver probe in qcom_jpeg_probe() strictly calls:

devm_platform_ioremap_resource_byname(pdev, "jpeg")

and expects non-suffix clock names (e.g., "core_ahb"). If a devicetree uses
the alternative schema-approved names, won't the driver probe fail?

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - power-domains
> +  - iommus
> +  - interconnects
> +  - interconnect-names

[Severity: High]
Should reg-names and clock-names be added to this required list?

Since the driver strictly relies on these names to find its resources during
probe, omitting them from the devicetree will cause probe failures.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612194417.1737=
009-1-atanas.filipov@oss.qualcomm.com?part=3D1

