Return-Path: <devicetree+bounces-50539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D86687C05D
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 16:35:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8164C1C21265
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 15:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01B7371B58;
	Thu, 14 Mar 2024 15:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n1H/v/ft"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E02671B52
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 15:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710430386; cv=none; b=BLtngb05N4T9Isc4lSJclYOlvBghZtWoe7w1tIOyNGmEoKr6Bww1aPN8VfXcQo/c/QlL4gySq1bTcRhk7HhmMLn2gGysEUyIu1enpW4f2EHbe7Ha3DSfRULmDdC2361Mj5NISpb5xDVaS/jJZTtlxb2og76Pwqeu+LR6Cf9kyGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710430386; c=relaxed/simple;
	bh=o1OdgC7p5Fjbh1yGz4D8klND3WPdQELLcIADzhaB1AY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LUg73yZsxYU1PljlyubvsbOGIJdUoZuLvDG4QgdnTcxX9hHnaTX+JcgXrbe70DjIGUpOZfgwiO2RZ+wNINiJgo1rJalreEBR6x6Dvt3LKyxdNXZ5T4nQ8XvzxQr8O4sfmY4o/QJbWBKVOzgv/fgm8gWzL5kZrRdiqG/zVL25mBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n1H/v/ft; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-513d3746950so730900e87.1
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 08:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710430383; x=1711035183; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OfZ44noiqcLfjfF8Ywh0SOVK7cdHIhTKcL05schUTKQ=;
        b=n1H/v/ftZpIMrmg8EPUbvZ7aKCfUauVWz6FjYMUW/BEqbz1TNtSd29RC5z4xr8D7Tg
         aPdxJtAvokq9XmXxzY5kMhugS/LV3HLyBfvzjkn2qh9ObC4A2DR5GdxuiGJ4dXcyFYNh
         6Gyh5vaM0PLFLXUGVVipPnJ017+m8M2JH4HS5NwBKG+3Jji9QpV+LWvI6IlZZwmOTq/4
         vzJ2SiJozoI0B2eUK+L4SLGIbAmoU+CRCWnieD5ZWS41vTIQ4b4TFKRtCtiO9gd/68Hg
         4qAe7Iv2XsEbaGyG7yJQ/x31QFG+IryJpVF/Ae+NHQgcAV4VcF7boz6Fm56g6MPIIQrk
         fquQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710430383; x=1711035183;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OfZ44noiqcLfjfF8Ywh0SOVK7cdHIhTKcL05schUTKQ=;
        b=KSz6uYLMyb6CctVbi55estcn5bcnIb/rQozn1+HkPHNpzopfWlAW5eGG/ea1YU7Pml
         +AoZo0HCLEe+nFca4aXfOepvzOzhqDsjJ7A28P2mFLbADBJmxi1tVwLzXxXY+ml1mM7S
         TtPZBqhAYdDYGexWZro2iaERWsbzng4fwk78Z9z4EFw3kV8Sx8zUsZxxuBhsfXrMPqdi
         tQ0Pki/8fm8cCbbLkhavBgJ8aRiHcu4JTOuK8gUd3xEaxU7/2pfhdTggicoUH6DI8xXk
         41dwVDejLPG2PI1oVWjLhiOXAKIRu5dStxzBtmZnVDuqVnuvS+JW71J/cANF0Gg3p4ai
         46/w==
X-Forwarded-Encrypted: i=1; AJvYcCXAmndKNZh8R+yyzxZKhSh+4efKCvoBOEa2sqNoaxF1h0KSjOj2TAZr23vKcP5MjL8hOrQxvkOnl0NKPUM5dvwAsytkHkLG1Ubafg==
X-Gm-Message-State: AOJu0YxeHpuiFL4fvbapfP/lYtCC41wBAxC9VwCU0Vtac/oCxxwvWSmN
	fkbig3vXk1b5wvVgv1d6ia3iwrvx2ibfqNMk6Cbz3xobSj8mnWupdDAHOGCxYss=
X-Google-Smtp-Source: AGHT+IFTuAHUe3ZaxXllTu7l+7uVOWOjoymsRTxe6uGqOcnWjiy8UUNDfx+uS3Z+t2fZZ9Be4d9tQQ==
X-Received: by 2002:ac2:5bcd:0:b0:513:b90f:f4dd with SMTP id u13-20020ac25bcd000000b00513b90ff4ddmr403922lfn.49.1710430383342;
        Thu, 14 Mar 2024 08:33:03 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id j3-20020a05600c1c0300b004131310a29fsm2821478wms.15.2024.03.14.08.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Mar 2024 08:33:03 -0700 (PDT)
Date: Thu, 14 Mar 2024 18:32:59 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Oleksii Moisieiev <oleksii_moisieiev@epam.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Peng Fan <peng.fan@nxp.com>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v5 2/4] dt-bindings: firmware: arm,scmi: support pinctrl
 protocol
Message-ID: <cade37a8-eca5-4d42-aadd-e6b7b2d40ee1@moroto.mountain>
References: <20240314-pinctrl-scmi-v5-0-b19576e557f2@nxp.com>
 <20240314-pinctrl-scmi-v5-2-b19576e557f2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240314-pinctrl-scmi-v5-2-b19576e557f2@nxp.com>

On Thu, Mar 14, 2024 at 09:35:19PM +0800, Peng Fan (OSS) wrote:
> +  protocol@19:
> +    type: object
> +    allOf:
> +      - $ref: '#/$defs/protocol-node'
> +      - $ref: /schemas/pinctrl/pinctrl.yaml
> +
> +    unevaluatedProperties: false
> +
> +    properties:
> +      reg:
> +        const: 0x19
> +
> +    patternProperties:
> +      '-pins$':
> +        type: object
> +        allOf:
> +          - $ref: /schemas/pinctrl/pincfg-node.yaml#
> +          - $ref: /schemas/pinctrl/pinmux-node.yaml#
> +        unevaluatedProperties: false
> +
> +        description:
> +          A pin multiplexing sub-node describe how to configure a

describe[s]

> +          set of pins is some desired function.

s/is/in/

> +          A single sub-node may define several pin configurations.
> +          This sub-node is using default pinctrl bindings to configure
> +          pin multiplexing and using SCMI protocol to apply specified
> +          configuration using SCMI protocol.


This sub-node is using [the] default pinctrl bindings to configure
pin multiplexing and using SCMI protocol to apply [a] specified
configuration.

(Delete the duplicate "using SCMI protocol").

regards,
dan carpenter


