Return-Path: <devicetree+bounces-276852-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +F/6AgiyuWmDMQIAu9opvQ
	(envelope-from <devicetree+bounces-276852-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:56:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF5E2B1D5E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:56:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9530F318EC26
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C7AB342173;
	Tue, 17 Mar 2026 19:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aMgPxxxO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FEA5342C9E
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773777130; cv=none; b=immVwcmerUX5bouy8/nbXdsSX+IsuQskTRuHy1YvQORJHWgHLXO3EAPPjMW6LTM8RADhhCE6VyLkQ1mn9j5MQGqQplD27dFeY3X2PCj2bIOE5VKbkX+/nf+Ww9DfDeMuuziE0nd50xmCdxybDDcX6NUVO14p/jY0DePZmgSDE+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773777130; c=relaxed/simple;
	bh=ogKC+c2UlJOTTNUwTjAN18d6KohDFlaYVIJyoaKGqYE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kRWexB2TmI39fSST6BUdxZVVU/Dr4UWVrOQCCGSGscF+/5kmSPQp9VG5ToUk3MPkXuAni63xEcL39EBPEzIRkh0xRqf35HIiaSyubTge+4KXZPXVGcdNHFqBrEL+4s8O3LfSBc7Civ5+wfJCl1bc7jk9neUa17tiPXfM7q6dDUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aMgPxxxO; arc=none smtp.client-ip=74.125.82.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2ba9c484e5eso7366667eec.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773777126; x=1774381926; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hmUcttp3wBsYArrFOUjW9PH5NmkZe1nXWSW5R4bPR8I=;
        b=aMgPxxxO9Ki/pu+drSYDuzb6LHC1fhrNxB92MVlobMS2sxewoIOZY/zY7rFmRby4Vy
         CSd/+ZsvtMjqPFL7ExyGOE5CvGSxLwl1+3jAxo7ntuA+no3niWB6qlGCKVvnknNatSXL
         +jtB7+UofrT6lRHkRMVOEZqy24n7aDpQ1VsW2PZ7hFlhEDyqoN7PHFKF3iqd6MZTQEt+
         WFY5z/jhc8P2oEN9kFwMBawRySHYtF9U9BtLiHcSXm/qrWJUa655ye9gwtAot3LogIFY
         b446EoR5Nj/67eTLGGirmBN9uOYYf1KMvILYLtStXyZ1uxQVxsFnpp02wz2rPyRp6XCx
         xSLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773777126; x=1774381926;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hmUcttp3wBsYArrFOUjW9PH5NmkZe1nXWSW5R4bPR8I=;
        b=E6t2tVscqWeXeJOTP1Ni/MVmauR28tNoGEqkpvbd2VrGmIJzYMRkMox/J8461Mkkff
         a/YvTv2bTvh/xoccr3yG3m2AI2Dc14P2XVDCM8L4/Oe+Q1qQGcSPBSThvzoWxsu+w6CG
         RkrGSLfxYUQsGknS8tt7oxz1lkyUg4Ln8gpaGAAG0fqPaNA0O5ReqQTdQdZOcAbH15+M
         KI12DJyZ9NgMozMqCQ0QMlbt7VsAIY7qD9vkkvhrvszzlPhAKL0RqkTn20E21Ek88AvL
         Q2GF1o9G+Nh/V95pUy61nb2objMjtCntfdlpQ49y0LZDYZk53giNQyf144xtmNvpy7Wy
         JrkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVufGWG3bRe2J5g6v1H2wxugL2gKuL0hj7tUUGT614AWc5WLtnb0pSZFXoauLAim+UibRYeLwxtXQR/@vger.kernel.org
X-Gm-Message-State: AOJu0YyrkzhDGs7yZrAzHP9lpHTmDN13GyjQCTrYRWWS0zwmDEoXdfT/
	8gQgkn5DPP4Fosv3TfOr4DhvyCZ+48JLYCt+lz45Ep93u3qymGeR9j5W
X-Gm-Gg: ATEYQzz3OdzpEmN0cIZtyrsWoYKF1YOormQdJNcSL+8UQD92mLdg20QLuJOgphu4vAf
	grDXvYLYMn0+UPFKJ1g3vEceHZ27OoFPpaU1g/ylk8RzV6AMYZqW2Jy5R4O0WdAA6GtSHV1jUuK
	u/Rx1SxsHNcbpHdZkJG44vvB/6082v/i24898ey5FkxOSqCrGmjNTemXqrw8x6zKW2EvDRSQOur
	pKAtBxyCgnlsSKKfKiEQSdd40+hHIL1NhStw9zPZiQ3qcUQhA57wGfZwDglRjBc9VQjE5kjCwqC
	xA5TRyt6VatZu1zkUwcEwEEAbs7QS+M2t7gh7fbKu8ovPVXyl7+JxxS4pp+wsBYhm++FqeeTU1x
	qs4BKGDMmg7BCZH9ZLJVtzOnjZjlpD4FnXNQTvIKkyexNbkAF+hZ/d5WWxGs7kU6LvMz60GVEYm
	obvCJRP/pSV4MPeyesPJVwp+Opr/H1LX2rtsgT
X-Received: by 2002:a05:7301:1285:b0:2b7:1d38:3596 with SMTP id 5a478bee46e88-2c0e5074bd0mr328051eec.4.1773777125448;
        Tue, 17 Mar 2026 12:52:05 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c0e5582bdasm660352eec.19.2026.03.17.12.52.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 12:52:04 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 17 Mar 2026 12:52:03 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Alexey Charkov <alchark@flipper.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: hwmon: Add TI INA4230 4-channel I2C
 power monitor
Message-ID: <d83026f9-62ea-4851-8188-5ce4150b6fcb@roeck-us.net>
References: <20260310-ina4230-v3-0-06ab3a77c570@flipper.net>
 <20260310-ina4230-v3-1-06ab3a77c570@flipper.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310-ina4230-v3-1-06ab3a77c570@flipper.net>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276852-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,roeck-us.net:mid,devicetree.org:url,flipper.net:email]
X-Rspamd-Queue-Id: 9EF5E2B1D5E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 10, 2026 at 03:43:46PM +0400, Alexey Charkov wrote:
> Add TI INA4230, which is a 48V 4-channel 16-bit I2C-based
> current/voltage/power/energy monitor with alert function.
> 
> Link: https://www.ti.com/product/INA4230
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Alexey Charkov <alchark@flipper.net>

AI review feedback inline. As far as I can see all are valid points
which will need to be addressed either in the bindings or in the driver.

Guenter

> ---
>  .../devicetree/bindings/hwmon/ti,ina4230.yaml      | 134 +++++++++++++++++++++
>  MAINTAINERS                                        |   6 +
>  2 files changed, 140 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina4230.yaml b/Documentation/devicetree/bindings/hwmon/ti,ina4230.yaml
> new file mode 100644
> index 000000000000..f33e52a12657
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/ti,ina4230.yaml
> @@ -0,0 +1,134 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/ti,ina4230.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments INA4230 quad-channel power monitors
> +
> +maintainers:
> +  - Alexey Charkov <alchark@flipper.net>
> +
> +description: |
> +  The INA4230 is a 48V quad-channel 16-bit current, voltage, power and energy
> +  monitor with an I2C interface.
> +
> +  Datasheet:
> +    https://www.ti.com/product/INA4230
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,ina4230
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    description: Required only if a child node is present.
> +    const: 1
> +
> +  "#size-cells":
> +    description: Required only if a child node is present.
> +    const: 0
> +
> +  vs-supply:
> +    description: phandle to the regulator that provides the VS supply typically
> +      in range from 1.7 V to 5.5 V.
> +
> +  ti,alert-polarity-active-high:
> +    description: Alert pin is asserted based on the value of Alert polarity Bit
> +      of the CONFIG2 register. Default value is 0, for which the alert pin
> +      toggles from high to low during faults. When this property is set, the
> +      corresponding register bit is set to 1, and the alert pin toggles from
> +      low to high during faults.
> +    $ref: /schemas/types.yaml#/definitions/flag

The property is defined here and read by the driver in a subsequent
patch, but the driver never uses the value to set the ALERT_POL bit
in the CONFIG2 register. This renders the property non-functional.

> +
> +patternProperties:
> +  "^input@[0-3]$":
> +    description: The node contains optional child nodes for four channels.
> +      Each child node describes the information of input source. Input channels
> +      default to enabled in the chip. Unless channels are explicitly disabled
> +      in device-tree, input channels will be enabled.
> +    type: object
> +    additionalProperties: false
> +    properties:
> +      reg:
> +        description: Must be 0, 1, 2 or 3, corresponding to the IN1, IN2, IN3
> +          or IN4 ports of the INA4230, respectively.
> +        enum: [ 0, 1, 2, 3 ]
> +
> +      label:
> +        description: name of the input source
> +
> +      shunt-resistor-micro-ohms:
> +        description: shunt resistor value in micro-Ohm
> +
> +      ti,maximum-expected-current-microamp:
> +        description: |
> +          This value indicates the maximum current in microamps that you can
> +          expect to measure with ina4230 in your circuit.
> +
> +          This value will be used to calculate the Current_LSB to maximize the
> +          available precision while ensuring your expected maximum current fits
> +          within the chip's ADC range. It will also enable built-in shunt gain
> +          to increase ADC granularity by a factor of 4 if the provided maximum
> +          current / shunt resistance combination does not produce more than
> +          20.48 mV drop at the shunt.
> +        minimum: 32768
> +        maximum: 4294967295
> +        default: 32768000

The binding allows values up to UINT32_MAX, but the driver rejects
values above INT_MAX. While 2147 Amperes is likely sufficient, the
mismatch should be resolved.

The driver also attempts to read a "ti,single-shot" property which is
missing from this binding file. Given it was present in the INA3221
bindings this driver is based on, its omission appears to be an
oversight.

Furthermore, the "vs-supply" property is defined in the bindings but
completely ignored by the driver (it does not acquire or enable the
regulator).

