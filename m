Return-Path: <devicetree+bounces-108182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 527E8991F63
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 17:31:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D14EA1F21E38
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 15:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D5C518005B;
	Sun,  6 Oct 2024 15:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D9052Klo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B0A482E9
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 15:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728228664; cv=none; b=kYdWV61Mly4XocRJpXGfbwNnJRejE49hgNS4A8nIMDOZ23oRr/cEenQFZKKig+0yk5uLsOy2yk4L8c10aPL1lBp4jZ5ccZMxQ6ql4vb8RrOm96a2nAA+kNcL8cX4kNiWQ2An/NQGV2kI6QPvvzVAxj4wrQlH1kj+1vLMNU6JnsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728228664; c=relaxed/simple;
	bh=erRy1y6DhhNLxLmbX0MPP5rQSPnOxJr65raopGbn/jk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k0h/3Zsw731xLjj7gWwHIu8K0x89ONLuZ8TGE+7J3DBUpPghM+CsJsKcBhgAXzYwB5x2C6zjTy4eGpQuD2dMukD7yL22QlgXx7NkqtDg8cF9D/CUneRxNjeHZIC7De1cTKcF0XXnjCeVtlqIy8Lv2FeY+KZX6Atg0tWQ/3M3TPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D9052Klo; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539885dd4bcso4424002e87.0
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 08:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728228660; x=1728833460; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y7TMEEqlSgL1dfZyYHelcPxHIJNxM8Us8dWe6PWlibc=;
        b=D9052KloMBUvcX9EsWW7HBCXS8S7lH4VRB/q/rdMqpEsQQrTQhIAmtMQ+K7k7CYouW
         vBAh1sLAQxByCLVUjFvH68dIEv40JlqRhtcatPqaGVP0Otca8YCGP/UwQZFcAxAsofvk
         isxGXIcOnavqJe3A14AXT9HoP2pWkzJPezwJle3u/vjVJI2trk1PSv1hu5wrOylrvfDo
         fLZ64GjETfYqjXSJwYNKKlyFJzMUiLaQRWM4x6UQh6o/aGUmj3Ds7VusTmSI67um28sE
         +0YZUK4uSmeSFL/EBfI5xVF1sJBPTrxRzAf9Neh3+UQli+iMd+aH1SVcgDc0h0FI4FPy
         VlhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728228660; x=1728833460;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y7TMEEqlSgL1dfZyYHelcPxHIJNxM8Us8dWe6PWlibc=;
        b=HpN4GYPwpmKfRMWHXtQWaPgAD7LOrtVVIR7lLFCzXso4RERnjF69XQqNw0jQH+Sdd6
         S6pQo/qgkm0UFYlDC+soitK90U5M0LjypE/YdkqXLH4n3jn3vyNYWWDMe0jh/3VsnMxX
         V/9uroZLFn3dJxJG2wK5SHqNuEb+ylUSkanwgKNA4wvi1FG+mwvmQYu8+AMXHTvsA/Rn
         rW8EPEztinXHvMkXtzrEh6PZebFKjPjPCGQR6s9azh2b/er2LOKFl9IcXEAewcS21GcS
         jjUiixCyhIps8kUJSYjmbd1GqGcn8a6pjoWnb+8oS/GKZFmeg1bj1agO+l6fKia3Gz53
         fx6g==
X-Forwarded-Encrypted: i=1; AJvYcCU3+uK3oMDz9+eAeeFSEgBoaqCE+IAzg2jknfdOyIoVCf3gVZP8BierOlU8jyUnyUIQ8yoO1IeT3U65@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ9a/DHJu9P26ICl3LrNqsEix6/19vBmRgICH/5s9Q+qH4FZFX
	hzWFZadcggFZKSEKPFxZ56eTmqYb2SZmtTnIoWzHW0tV+xxrOZMzVR8dHwRRv8I=
X-Google-Smtp-Source: AGHT+IF7ACVC7HZGbcKBxEQyUtp+e5EN1rZXSjWwtyEKwdKBEfuWVUaUzhzkFcYwLgaVR/978B0VAg==
X-Received: by 2002:a05:6512:3c9f:b0:539:8f2d:a3bc with SMTP id 2adb3069b0e04-539ab9ec4c3mr4129183e87.49.1728228660095;
        Sun, 06 Oct 2024 08:31:00 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff1d0d3sm547835e87.135.2024.10.06.08.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 08:30:58 -0700 (PDT)
Date: Sun, 6 Oct 2024 18:30:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	Sibi Sankar <quic_sibis@quicinc.com>, Johan Hovold <johan@kernel.org>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: usb: Add Parade PS8830 Type-C
 retimer bindings
Message-ID: <rgmmvai43o3vkag3mtoqrye55vq7j3pbcjuakg7pnwfqgigc2e@uv6ehbht7xmh>
References: <20241004-x1e80100-ps8830-v2-0-5cd8008c8c40@linaro.org>
 <20241004-x1e80100-ps8830-v2-1-5cd8008c8c40@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241004-x1e80100-ps8830-v2-1-5cd8008c8c40@linaro.org>

On Fri, Oct 04, 2024 at 04:57:37PM GMT, Abel Vesa wrote:
> Document bindings for the Parade PS8830 Type-C retimer. This retimer is
> currently found on all boards featuring Qualcomm Snapdragon X Elite SoCs
> and it is needed to provide altmode muxing between DP and USB, but also
> connector orientation handling between.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../devicetree/bindings/usb/parade,ps8830.yaml     | 129 +++++++++++++++++++++
>  1 file changed, 129 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/parade,ps8830.yaml b/Documentation/devicetree/bindings/usb/parade,ps8830.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..f6721d6eee26c6d4590a12c19791b3d47a8145f3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/parade,ps8830.yaml
> @@ -0,0 +1,129 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/parade,ps8830.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Parade PS8830 USB and DisplayPort Retimer
> +
> +maintainers:
> +  - Abel Vesa <abel.vesa@linaro.org>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - parade,ps8830
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: XO Clock
> +
> +  clock-names:
> +    items:
> +      - const: xo
> +
> +  reset-gpios:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: power supply (1.07V)
> +
> +  vdd33-supply:
> +    description: power supply (3.3V)
> +
> +  vdd33-cap-supply:
> +    description: power supply (3.3V)
> +
> +  vddar-supply:
> +    description: power supply (1.07V)
> +
> +  vddat-supply:
> +    description: power supply (1.07V)
> +
> +  vddio-supply:
> +    description: power supply (1.2V or 1.8V)
> +
> +  orientation-switch: true
> +  retimer-switch: true
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Super Speed (SS) Output endpoint to the Type-C connector
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: Super Speed (SS) Input endpoint from the Super-Speed PHY
> +        unevaluatedProperties: false

BTW: could you please also use usb/usb-switch.yaml for these ports ?
Maybe we should also add port@2 to that schema.

> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Sideband Use (SBU) AUX lines endpoint to the Type-C connector for the purpose of
> +          handling altmode muxing and orientation switching.

-- 
With best wishes
Dmitry

