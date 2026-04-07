Return-Path: <devicetree+bounces-285470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDJ8LR5b1Wmu4wcAu9opvQ
	(envelope-from <devicetree+bounces-285470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 21:29:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 783C73B39C6
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 21:29:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F127130227C6
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 19:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70AB1359A8A;
	Tue,  7 Apr 2026 19:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BD97f8ei"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE1B272803;
	Tue,  7 Apr 2026 19:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775590168; cv=none; b=ZNtbd58OoN/++x3X3AFQ4J4INqlebds5d+uNhT2koAabd6nWkXoa3yrBzH0I0TiBfXSX2yX10L5+FrdPBVdIf0XRciZ7KP/P+xBCi23dVf1ee2mf39LLffShdpWTW2AsHDK0bsSvkOgbn+e9JyXaWJdGDC97eXOixCOt36XAxw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775590168; c=relaxed/simple;
	bh=18D4cN19brYBRiRDSX4HiXep5xyejpy/zMyX/KCIrGg=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=YWt/Rja4gXmf0uUP4Y7ATRNKB3qzuT1OV3kIeXUVopjTH06JRyB0c7bM7hYHuBHy8k7cIiugVKXpljz2RFbKOzjZRPB6LnyFU6eRU6TcxajxpmYIOUXCMD/2AITxy9b6BaQsr937gAd42ZDnVN7TQkVCEXGI8QiNGQMEK875ey8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BD97f8ei; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABCEBC116C6;
	Tue,  7 Apr 2026 19:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775590167;
	bh=18D4cN19brYBRiRDSX4HiXep5xyejpy/zMyX/KCIrGg=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=BD97f8ei1c8wIE+DWoqjXkEwG1ANOyFiUNjpOZpbp+c+ycz5U5++fPmTU6H6nOXqe
	 chaiM59KdKk/YAlZZEFxO2WdIXsyhFbUH2iuNeeWV4ubCb0pgpd9t8byKYze4qAp91
	 U1AgehBt19TS6rPEJMeVJyAqE5XFd48+dddKaLzBLShygGxXbbYR7TwmMOBLo54nHF
	 m3nw9HWQ42YV71pmxEPp+dunyHyYA5wlh04JtNyJmy1VVIi8lnI480LPk2DPd+OgGJ
	 xOaGB2DRqLqUVhhCzvvL9XLkR/yrsA11AAaCMNreweLy6cIzF1zpR0U1UMaOezZhyz
	 KTKr7J1Sh44MQ==
Date: Tue, 07 Apr 2026 14:29:26 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, devicetree@vger.kernel.org, 
 Lukasz Luba <lukasz.luba@arm.com>, Zhang Rui <rui.zhang@intel.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260407053957.10508-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260407053957.10508-2-krzysztof.kozlowski@oss.qualcomm.com>
Message-Id: <177559016610.3536304.190890909066170434.robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: thermal: idle: Complete the example
 code
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285470-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,devicetree.org:url]
X-Rspamd-Queue-Id: 783C73B39C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Tue, 07 Apr 2026 07:39:58 +0200, Krzysztof Kozlowski wrote:
> Thermal bindings expect the node name with all the zones to be named
> 'thermal-zones' (hyphen instead of underscore) and thermal zones to end
> with '-thermal'.  Also DTS coding style is not to use underscores for
> node names.  After using correct names, bindings point warnings for
> missing properties, so add also thermal-sensors.  Drop fake top
> compatible as it is not useful in this context.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Changes in v2:
> 1. Drop top level compatible and other properties
> 2. Add thermal-sensors
> 3. Rename also trips and cpu-thermal
> ---
>  .../bindings/thermal/thermal-idle.yaml         | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/thermal/thermal-idle.example.dtb: /: 'compatible' is a required property
	from schema $id: http://devicetree.org/schemas/root-node.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/thermal/thermal-idle.example.dtb: /: 'model' is a required property
	from schema $id: http://devicetree.org/schemas/root-node.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/thermal/thermal-idle.example.dtb: /: '#address-cells' is a required property
	from schema $id: http://devicetree.org/schemas/root-node.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/thermal/thermal-idle.example.dtb: /: '#size-cells' is a required property
	from schema $id: http://devicetree.org/schemas/root-node.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260407053957.10508-2-krzysztof.kozlowski@oss.qualcomm.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


