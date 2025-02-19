Return-Path: <devicetree+bounces-148412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A33CA3BF3D
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 14:00:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0A0BB7A1304
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 12:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D4801EB1A6;
	Wed, 19 Feb 2025 12:57:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017C42862BB
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 12:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739969861; cv=none; b=kqpQc8/ArsF02MI2hlK+9XKNDynEBvgEbN3x7HpQdFMXD1yKUfjdicV1Dl7xJ/S6tIyxm7TDRKj64ESMA4JAttM3OgzuVCPddZ2RI5cpRh+1smam/dinDV9njDkwWmRm4TtsrRwVTPsKSxvxcLSsm5vdnptTGF2A4i9NM6aFoi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739969861; c=relaxed/simple;
	bh=LsHm5DFOAzJVrE/IsotrdHQDGxc68/y9hgt7yhREGTw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s2rsCqv7tQYQl1cYEaC8G6SameSq5bdppDnpkYY7ng9NGYudOeg83pTh+i+xnfoeCuHhO24MdBJHa/gISg6oEFWRRkrxtthc9w6Hl4ISRSAUxdY5gkO/SKvc5GRFxuCRnUctdrcFZ8W6qeIgwaAi3Ee+4C22QUc+cPvPuKZaBtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tkjdd-0006Hn-38; Wed, 19 Feb 2025 13:57:17 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tkjdc-001lmY-0U;
	Wed, 19 Feb 2025 13:57:16 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tkjdc-006G9p-02;
	Wed, 19 Feb 2025 13:57:16 +0100
Date: Wed, 19 Feb 2025 13:57:15 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Frank Li <Frank.Li@nxp.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengfei Li <pengfei.li_1@nxp.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	ye.li@nxp.com, joy.zou@nxp.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: thermal: fsl,imx91-tmu: add bindings
 for NXP i.MX91 thermal module
Message-ID: <20250219125715.octrfw47q2rxy7ai@pengutronix.de>
References: <20250218-imx91tmu-v5-0-76c0b27673e6@nxp.com>
 <20250218-imx91tmu-v5-1-76c0b27673e6@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250218-imx91tmu-v5-1-76c0b27673e6@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 25-02-18, Frank Li wrote:
> From: Pengfei Li <pengfei.li_1@nxp.com>
> 
> Add bindings documentation for i.MX91 thermal modules.
> 
> Signed-off-by: Pengfei Li <pengfei.li_1@nxp.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change from v3 to v4
> - add interrupts propperty
> 
> Change from v2 to v3
> - add ref thermal-sensor
> - restrict #thermal-sensor-cells to 0 only
> - Change to unevaluatedProperties
> ---
>  .../devicetree/bindings/thermal/fsl,imx91-tmu.yaml | 79 ++++++++++++++++++++++
>  1 file changed, 79 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/fsl,imx91-tmu.yaml b/Documentation/devicetree/bindings/thermal/fsl,imx91-tmu.yaml
> new file mode 100644
> index 0000000000000..2dafec8b37024
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/fsl,imx91-tmu.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/fsl,imx91-tmu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX91 Thermal
> +
> +maintainers:
> +  - Pengfei Li <pengfei.li_1@nxp.com>
> +
> +description:
> +  i.MX91 features a new temperature sensor. It includes programmable
> +  temperature threshold comparators for both normal and privileged
> +  accesses and allows a programmable measurement frequency for the
> +  Periodic One-Shot Measurement mode. Additionally, it provides
> +  status registers for indicating the end of measurement and threshold
> +  violation events.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: fsl,imx91-tmu
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Comparator 1 irq
> +      - description: Comparator 2 irq
> +      - description: Data ready irq

missing "interrupt-names" property.

Regards,
  Marco

