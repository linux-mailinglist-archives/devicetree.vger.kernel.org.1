Return-Path: <devicetree+bounces-323334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Sa/MFk1AT2qccwIAu9opvQ
	(envelope-from <devicetree+bounces-323334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 08:31:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2E272D2DA
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 08:31:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FIchCuaJ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323334-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323334-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B140C30AA7AE
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 06:28:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81EAF3C37A5;
	Thu,  9 Jul 2026 06:27:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC223C344D;
	Thu,  9 Jul 2026 06:27:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783578425; cv=none; b=prUC6F9sfiyt7BxCvU03aiIFNkabl5QyXU+tg0/L/MQp1HHJeTIkJc69CQsKCypdGpEfPyXIECKpNxIcAZmHNPOY9ARQCDFNUhYjVdn6h5bXX6wZslcxOngMbCzfxUUpLYhtE97xeZ9RAAyeBVXs7MGxlvOfQJ8Sk1wNxxLNkRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783578425; c=relaxed/simple;
	bh=tIF/4sb9k03T1hnlPdwGe7DwZNLEH4JOGcJEXyWdIgQ=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=uiuh2cOB/lN4Rsak7iVLLlU1HU9v8o1y8DCXcGZWGakCG5Z7yTpna1OQEpaKi7gSgzjsu12nkSTF7VM5yIJm7fxjPblWSggLxnIs2q21HHSXeduSgohRra6AflpDhdYHhtzmoTIFdAeAtCOcFk8MPLdWn8kzpeyK3wWMInY8zfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIchCuaJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4E3F1F000E9;
	Thu,  9 Jul 2026 06:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783578418;
	bh=nB+cpqmLQ5TvquFyBkVqXjC4cUU8Rx0rLzive8Z2Klw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=FIchCuaJZfI3hMERE7nFlfjJMObH+5Xvhdauf1jzYaSKlEWnVskZzT+A78UIbRvq5
	 wxX+Lj6NdAv6fmgEz7gmZRbcpWoL0H5ZOAUfUVLb+tCYqyTt9DtY+VLdqe/hWecZZ7
	 x+7hx8UmZPZZBe0cqHE9fbbc5WMpOYXp4/UcfZMBwbv6bZSr4tIRa041Jsugh59nW4
	 f4A653EJbP2EOuI/oF2QWANakQ/8d52otcMD0vQiDCqnB0qoiH15X4BvucK4XifodR
	 TYwpv8IvqGGplFixKe/hAJTV4ig986fgATtQiSBhanBMj3DQ6HDk9hdOy0ijLJtnWy
	 OKcbsOkxm3SYw==
Date: Thu, 09 Jul 2026 01:26:58 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 imx@lists.linux.dev, Fabio Estevam <festevam@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Shawn Guo <shawnguo@kernel.org>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org
To: HaoNing Cheng <Haoning.CHENG@cn.bosch.com>
In-Reply-To: <20260709-b4-symana21-11221-imx-thermal-support-upstream-6-18-v1-1-00f88f42930b@cn.bosch.com>
References: <20260709-b4-symana21-11221-imx-thermal-support-upstream-6-18-v1-0-00f88f42930b@cn.bosch.com>
 <20260709-b4-symana21-11221-imx-thermal-support-upstream-6-18-v1-1-00f88f42930b@cn.bosch.com>
Message-Id: <178357841806.2262413.17682316564929970184.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: thermal: imx: Document calibration
 offset property
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323334-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rui.zhang@intel.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:festevam@gmail.com,m:s.hauer@pengutronix.de,m:rafael@kernel.org,m:linux-pm@vger.kernel.org,m:lukasz.luba@arm.com,m:daniel.lezcano@linaro.org,m:shawnguo@kernel.org,m:kernel@pengutronix.de,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:Haoning.CHENG@cn.bosch.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[intel.com,lists.infradead.org,vger.kernel.org,kernel.org,lists.linux.dev,gmail.com,pengutronix.de,arm.com,linaro.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,vger.kernel.org:from_smtp,bosch.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B2E272D2DA


On Thu, 09 Jul 2026 13:43:27 +0800, HaoNing Cheng wrote:
> Some boards need a small per-design correction to align the reported CPU
> temperature with board-level measurements.
> 
> Document the optional fsl,temp-calibration-offset-millicelsius property,
> a signed offset in millicelsius that is added to the calculated sensor
> temperature. The property is optional and the existing behaviour is kept
> when it is omitted.
> 
> Update the binding example to show its usage.
> 
> Signed-off-by: HaoNing Cheng <Haoning.CHENG@cn.bosch.com>
> ---
>  Documentation/devicetree/bindings/thermal/imx-thermal.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/thermal/imx-thermal.yaml: properties:fsl,temp-calibration-offset-millicelsius: '$ref' should not be valid under {'const': '$ref'}
	hint: Standard unit suffix properties don't need a type $ref
	from schema $id: http://devicetree.org/meta-schemas/core.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/thermal/imx-thermal.example.dtb: tempmon (fsl,imx6sx-tempmon): fsl,temp-calibration-offset-millicelsius: -6400 is not of type 'array'
	from schema $id: http://devicetree.org/schemas/property-units.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260709-b4-symana21-11221-imx-thermal-support-upstream-6-18-v1-1-00f88f42930b@cn.bosch.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


