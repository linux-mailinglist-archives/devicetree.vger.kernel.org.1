Return-Path: <devicetree+bounces-293122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGi9M7n5+WmNFgMAu9opvQ
	(envelope-from <devicetree+bounces-293122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 16:07:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 326EF4CF127
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 16:07:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BEE103056375
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 14:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A1DA47D941;
	Tue,  5 May 2026 14:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAPTNzsa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5633B23C516;
	Tue,  5 May 2026 14:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777989924; cv=none; b=q/rgJFPgD+89DytMHq8uhANVk2JYe8/8kRDic2A2fVTf93ErvtsEgLjPbVz0BsyCTjg+nqXvz1cTiKHcqys7rfcVx1BymQ9Uug9/OS8WDhieBuuhDhdgZrf4bH5FaRKIU1ryvl1S+I0RqbjLoG+HqQG0FUhUb7MeA992E2nBlyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777989924; c=relaxed/simple;
	bh=LtbcojIUM+o0f4bAbDoLjPUTjXd3D3xyp8t7jWxs0rw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DOnVfOBP91oDvJsg3/4V9rgGsk9ANsflc0/cptsD/dY7SND4znKiGVHAvgeb26u5TB5374REs4OToIvDVeL+mV989Go9BFrm/VLLEXbwFCBPMl1AkdRLLapRByyub1RlriG3Y66CcvCrMK/bcqZToMNthOoHLriR91hO2wHPrb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAPTNzsa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FCECC2BCF5;
	Tue,  5 May 2026 14:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777989923;
	bh=LtbcojIUM+o0f4bAbDoLjPUTjXd3D3xyp8t7jWxs0rw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gAPTNzsaNflEqXufrYulPtvNPFBTTlt9QvloeM6BzK2VfliIpd6vjz9XttRK2pclW
	 2XF7R6hOXPQ5VKmvGUPUF9FrB+Z2tPCJ/JlxUyDlIwlGMOH26CYWwLALfkuY5uSdxR
	 wMFFsP925o/uGZEWQ2fum87MCcvVJBDgKClfW2JyoUZzkNljWudgJ1pzVgcYNkT9qW
	 9kzkwyuwmz3XvO4doiNMQCCQxee4qLj60JNKP0usrNmn3/KGBvMGw+Ja7gFLcTy3eg
	 KyTAe93pxrdjIVd0cMm5ticTnv3fFME7PO/GyFH7DGctUC5cIwzdiqk8Ft2Qelh+4e
	 KCfnrEF0LI+QQ==
Date: Tue, 5 May 2026 09:05:21 -0500
From: Rob Herring <robh@kernel.org>
To: Roman Vivchar <rva333@protonmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Srinivas Kandagatla <srini@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Lee Jones <lee@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org,
	Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH 03/13] dt-bindings: thermal: add mt6323 PMIC thermal
Message-ID: <20260505140521.GA2515943-robh@kernel.org>
References: <20260504-mt6323-v1-0-799b58b355ff@protonmail.com>
 <20260504-mt6323-v1-3-799b58b355ff@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260504-mt6323-v1-3-799b58b355ff@protonmail.com>
X-Rspamd-Queue-Id: 326EF4CF127
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293122-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,intel.com,arm.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,protonmail.com:email,devicetree.org:url,protonmail.ch:email]

On Mon, May 04, 2026 at 09:24:55PM +0300, Roman Vivchar wrote:
> The MediaTek mt6323 PMIC temperature can be read using AUXADC channel.
> 
> Add the devicetree binding documentation for the MediaTek mt6323 thermal.
> Due similarities with newer PMICs like mt6358, which include more than
> one thermal sensor, the #thermal-sensor-cells should be set to 1, to
> avoid breaking devicetree ABI in future.
> 
> Tested-by: Ben Grisdale <bengris32@protonmail.ch> # Amazon Echo Dot (2nd Generation)
> Signed-off-by: Roman Vivchar <rva333@protonmail.com>
> ---
>  .../bindings/thermal/mediatek,mt6323-thermal.yaml  | 63 ++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/mediatek,mt6323-thermal.yaml b/Documentation/devicetree/bindings/thermal/mediatek,mt6323-thermal.yaml
> new file mode 100644
> index 000000000000..1882816ba274
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/mediatek,mt6323-thermal.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/mediatek,mt6323-thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek PMIC thermal
> +
> +maintainers:
> +  - Roman Vivchar <rva333@protonmail.com>
> +
> +description:
> +  The MediaTek PMIC thermal sensor uses an AUXADC channel to read raw
> +  temperature data and applies calibration data from NVMEM.
> +
> +allOf:
> +  - $ref: thermal-sensor.yaml#
> +
> +properties:
> +  compatible:
> +    const: mediatek,mt6323-thermal
> +
> +  io-channels:
> +    description: >

Don't need '>'.

> +      IIO channel for the AUXADC to read raw data from.
> +    maxItems: 1
> +
> +  io-channel-names:
> +    const: vts

-names properties are pointless for a single entry.

> +
> +  nvmem-cells:
> +    description: >
> +      NVMEM cell with phandle to the calibration data provided by the
> +      NVMEM device. If unspecified default values will be used.

Drop. Don't need generic descriptions.

> +    maxItems: 1
> +
> +  nvmem-cell-names:
> +    const: calibration-data
> +
> +  "#thermal-sensor-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - io-channels
> +  - io-channel-names
> +  - "#thermal-sensor-cells"
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/iio/adc/mediatek,mt6323-auxadc.h>
> +
> +    mt6323_thermal: thermal {

Drop unused labels.

> +      compatible = "mediatek,mt6323-thermal";
> +      nvmem-cells = <&mt6323_thermal_calibration_data>;
> +      nvmem-cell-names = "calibration-data";
> +
> +      io-channels = <&mt6323_adc MT6323_AUXADC_CHIP_TEMP>;
> +      io-channel-names = "vts";
> +      #thermal-sensor-cells = <1>;
> +    };
> 
> -- 
> 2.53.0
> 

