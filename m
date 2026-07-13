Return-Path: <devicetree+bounces-325343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NbZ2M22xVGpmpgMAu9opvQ
	(envelope-from <devicetree+bounces-325343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:35:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F1B7495E5
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:35:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LJjWcwCp;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325343-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325343-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D59063012D08
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27A2C3DDDB1;
	Mon, 13 Jul 2026 09:35:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFCD3A960A;
	Mon, 13 Jul 2026 09:35:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783935338; cv=none; b=g1RMcdvszGU7lTms2XfibAkVTOZRw4SUnCcdu3vePmb68aBfMJ20mc+6/HS3GPkQ3bAteTGw0Vy17IXssdr/2heUt5BtHBCNhYlP06aBQoopqv6BA5FaqbGX9zsJ8jgaLbbdhYBcyKXZQqOC3ZZrBJslNI8k4pqDN0dqpnxIHCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783935338; c=relaxed/simple;
	bh=H2W/KP8SPA0KLTPvj9PjQ56CIeXVFarLU19pUgwYfmg=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=NITAqgtpY0Eb7mhQqaxWjh5XvaprcIBM2a2TDVFYfpkJIaXRiyTle7Ky1bPvNVQFirkmc1Ax//XFa1Yi1KIZJiGFVfMw79ljLrDFd8O29NSwQKOfYffylvNXo/ZaNp1uutLwXIqlmw1rSmKH/nq1IOjjn1cURHgBqoERTluYZAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJjWcwCp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33CFC1F000E9;
	Mon, 13 Jul 2026 09:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783935336;
	bh=GgTLQ8uwman0lLyw9cc4IPWO6BS2HmXsRVj/qpzG7AM=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=LJjWcwCpOVWguIJ8+S6Ex3xdAJSBzh57FCfNLUBAfs1hYUYICauAG9fLUO2DbWWQL
	 wDStrijG+9ypPEQQvq33DtfiC2dOplak8cVIzix3BEiioPKyyUQo1ogZn9zqQ51NhH
	 spbXn+4DK3s1JNvdi/Q5ITO1+aS7IJ2GpTTH5oYXeKnBx5IWMJi/NtiIOo5SppG7n1
	 ZVMesfuCl8BE3TqUUBvl5idFY2rkKpIuJT2QTLSYNoCIOzzq6NfDHMa+raoHma1Y7P
	 CC7DtX9ATgOedLyUmXDTq5Uv3KYI3QTTcu4hcKi9ykxFXQQm0XpjqzER/qDv9+MTFu
	 jwqmb7e4mOwdg==
Date: Mon, 13 Jul 2026 04:35:35 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: nuno.sa@analog.com, dlechner@baylibre.com, devicetree@vger.kernel.org, 
 cwweng@nuvoton.com, conor+dt@kernel.org, 
 linux-arm-kernel@lists.infradead.org, jic23@kernel.org, 
 linux-iio@vger.kernel.org, andy@kernel.org, linux-kernel@vger.kernel.org, 
 krzk+dt@kernel.org
To: Chi-Wen Weng <cwweng.linux@gmail.com>
In-Reply-To: <20260713081127.115197-2-cwweng.linux@gmail.com>
References: <20260713081127.115197-1-cwweng.linux@gmail.com>
 <20260713081127.115197-2-cwweng.linux@gmail.com>
Message-Id: <178393533549.3982391.11335351167555265751.robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: Add Nuvoton MA35D1 EADC
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:devicetree@vger.kernel.org,m:cwweng@nuvoton.com,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:jic23@kernel.org,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:linux-kernel@vger.kernel.org,m:krzk+dt@kernel.org,m:cwweng.linux@gmail.com,m:conor@kernel.org,m:krzk@kernel.org,m:cwwenglinux@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-325343-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,devicetree.org:url,nuvoton.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 32F1B7495E5


On Mon, 13 Jul 2026 16:11:26 +0800, Chi-Wen Weng wrote:
> From: Chi-Wen Weng <cwweng@nuvoton.com>
> 
> Add devicetree binding for the Enhanced ADC controller found on
> Nuvoton MA35D1 SoCs.
> 
> The controller has one register region, up to four end-of-conversion
> interrupts, one functional clock, and an optional reset line. The
> binding also describes the optional external reference supply and the
> optional DMA request supported by the hardware.
> 
> ADC input pins are described using standard channel child nodes. The
> external ADC input channels are 0 to 7. Differential inputs are described
> with diff-channels and are limited to the fixed hardware pairs.
> 
> Signed-off-by: Chi-Wen Weng <cwweng@nuvoton.com>
> ---
>  .../bindings/iio/adc/nuvoton,ma35d1-eadc.yaml | 163 ++++++++++++++++++
>  1 file changed, 163 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/nuvoton,ma35d1-eadc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/adc/nuvoton,ma35d1-eadc.yaml: properties:interrupts: {'minItems': 1, 'maxItems': 4, 'items': [{'description': 'ADINT0 end-of-conversion interrupt'}, {'description': 'ADINT1 end-of-conversion interrupt'}, {'description': 'ADINT2 end-of-conversion interrupt'}, {'description': 'ADINT3 end-of-conversion interrupt'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260713081127.115197-2-cwweng.linux@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


