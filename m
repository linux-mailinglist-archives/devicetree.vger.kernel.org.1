Return-Path: <devicetree+bounces-229232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCCABF521C
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 10:02:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 31B584E6BC9
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 08:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 177BB29B8E8;
	Tue, 21 Oct 2025 08:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="fqULwlNb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DF7231A30
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761033731; cv=none; b=kUfw4Q6qBSeuX5WD7FQSFM857uxjqye837wGpiQ90TM5ecYEGQtdEBycYpcAIyRUttZrysPG2apNuXrdCaI2cS7DuFkUhozayLpggDtiq/ddS4NUh3ppC41OlnrctEbhBiAQ8pFRr9HScLTSp1q57nANfZLCvT1xYdeBoom87XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761033731; c=relaxed/simple;
	bh=hq8OhYoVjgMwCvfTsd84mhxUKz7zh9qPPjoUpGzRkNc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=som6jzviWwN9zO2jff4fm7YJtONo2xHDGRY1YD75NrdU1j8mvXbwLiTGVkVAMlov/ctnWpj6VBZK6iHjH12uZI6RA2cloL+Z57ykcdPp3pHFIAwOLVoUTw8689JBEBRHk+2OuHCdFhboBGLp/v3OM5ZMmxLvDupUizuICT+yZzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch; spf=none smtp.mailfrom=ffwll.ch; dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b=fqULwlNb; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ffwll.ch
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-63c523864caso6742448a12.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 01:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1761033726; x=1761638526; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mmJ3kbCZYasBy1tdyPRhi15Hy8S31f6BJlgZcjYUhfI=;
        b=fqULwlNbry44WTcerBjYjOnbQ/pgWwSCc8OmzWbhPcjDJzEPvQz1xFptiFfYp9w2yp
         xwLDL7R/tAly1nb1U/uSGO6FcXvdFdnx75RWxZca+0lPh7sW46k53YteC1NuWCxmxzlx
         pxq18utHDrm64RSOel/jg27K8Ulcx1pPwgx0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761033726; x=1761638526;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mmJ3kbCZYasBy1tdyPRhi15Hy8S31f6BJlgZcjYUhfI=;
        b=LN7R1Vl616j8kL4a49/gET/cwvpFrl1qkUn/8OI90t8KzH2hQ2U/khrHua9rTpO4VS
         Er9oE4Y/5DWtgPsCijQV8BuAVxRXkciAJ9hbNTKNsz1Itd9sZda9oHUQT0zDBz68fG4X
         zq4ewVbAnRNicP6Yc3qMSq0fTcYZBsNMtaw9+DQCvCI7pBTSx3rUZvvFbFNnD1jAtH6x
         MoZDpkUHyZbMdzmpuhCzU1thfyZ+xxkDYMVRXoxAOwA4jlwR1xAvy7hRSmi0IqC73lg/
         age5qIb/asv7HKb6wYJeP8DxEe/XPRQS1irvTX7ZrtdRsOUqDXJ9zlmrSrxMec2Eaiyl
         BtOg==
X-Forwarded-Encrypted: i=1; AJvYcCX8lDHKFrQEMVG0oau5cYm8qg3z6Rh88i2nULkmtPf3jcXxLv2PUH/I7sAjAh+lebSUXbYJq6Ea+tQn@vger.kernel.org
X-Gm-Message-State: AOJu0Yzbd4ce9r634XixEGE0YdRGp31XTcS92X4E3a1EuLM7wYrGgKA3
	tjuMcGYOQKbBOz9p62AG6CgchqZLh+GJZtmTR3zIWnIZ8XVRc73l0422xRx1Zlv0wf8=
X-Gm-Gg: ASbGncvoCJbx5jxeoSdJ0tLE7riXvsIn5oUwqzRnJtb/G+tHnO4iltXVRRxZDaISYSl
	k1+cQZJIxlyUrkTVx1K3uat6AZxVMYtS/fWMYsZoh1apKQyCjF+iIqfYl4vn0lEsn6UKNLW8DTq
	ne9+Pp9YIzEdtA6Uly681EW/kjn3SggglN5VoLIbG5BXdDcODkvYU7pPyUVWlxKBOW+pmueOiAN
	+V6QNn8mhKovjmHDxS8/xa9G9vTHmvBuvz0yKbvZkf3CkGilTVsJ+PpFvVpszs+QW6qlexxlju+
	VRpgDuUdyh0MG4qhNQCyWZOzJ1So7c3qRXoX3OEMmU/9AWJOybAO5fadwf7PBXk3p0ARQjWSpkN
	kArc/uXT87izpHnrDfXtW4tb5wd5Jv5d29K+9NNWtGwJ7NtygxrVnN0ygHvt8/AC3rY1T6GtZLR
	gEoaGDoknDR+m+FOl2YOg94Q==
X-Google-Smtp-Source: AGHT+IEQBbHU46zJp3I8qzuqYSyvo8c+5/g/4Db1HXzfzGIE1r78chLA2+YlpgeKvqwNE6fWnrQZTA==
X-Received: by 2002:a05:6402:1471:b0:62e:e722:a3c7 with SMTP id 4fb4d7f45d1cf-63c1f6345ccmr16006744a12.9.1761033725994;
        Tue, 21 Oct 2025 01:02:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c494301aasm8934112a12.24.2025.10.21.01.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 01:02:05 -0700 (PDT)
Date: Tue, 21 Oct 2025 10:02:03 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch, lumag@kernel.org, dianders@chromium.org,
	cristian.ciocaltea@collabora.com, luca.ceresoli@bootlin.com,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	victor.liu@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	devicetree@vger.kernel.org, l.stach@pengutronix.de,
	shengjiu.wang@gmail.com, perex@perex.cz, tiwai@suse.com,
	linux-sound@vger.kernel.org
Subject: Re: [PATCH v7 1/7] dt-bindings: display: imx: add HDMI PAI for
 i.MX8MP
Message-ID: <aPc9-wYxGB1KYPyQ@phenom.ffwll.local>
Mail-Followup-To: Shengjiu Wang <shengjiu.wang@nxp.com>,
	andrzej.hajda@intel.com, neil.armstrong@linaro.org,
	rfoss@kernel.org, Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se, jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	lumag@kernel.org, dianders@chromium.org,
	cristian.ciocaltea@collabora.com, luca.ceresoli@bootlin.com,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	victor.liu@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	devicetree@vger.kernel.org, l.stach@pengutronix.de,
	shengjiu.wang@gmail.com, perex@perex.cz, tiwai@suse.com,
	linux-sound@vger.kernel.org
References: <20250923053001.2678596-1-shengjiu.wang@nxp.com>
 <20250923053001.2678596-2-shengjiu.wang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250923053001.2678596-2-shengjiu.wang@nxp.com>
X-Operating-System: Linux phenom 6.12.38+deb13-amd64 

On Tue, Sep 23, 2025 at 01:29:55PM +0800, Shengjiu Wang wrote:
> Add binding for the i.MX8MP HDMI parallel Audio interface block.
> 
> The HDMI TX Parallel Audio Interface (HTX_PAI) is a digital module that
> acts as the bridge between the Audio Subsystem to the HDMI TX Controller.
> This IP block is found in the HDMI subsystem of the i.MX8MP SoC.
> 
> Aud2htx module in Audio Subsystem, HDMI PAI module and HDMI TX
> Controller compose the HDMI audio pipeline.
> 
> In fsl,imx8mp-hdmi-tx.yaml, add port@2 that is linked to pai_to_hdmi_tx.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

dt patches need an ack from dt maintainers before you push them, please
make sure you follow that for the next changes.
-Sima

> ---
>  .../display/bridge/fsl,imx8mp-hdmi-tx.yaml    | 12 ++++
>  .../display/imx/fsl,imx8mp-hdmi-pai.yaml      | 69 +++++++++++++++++++
>  2 files changed, 81 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pai.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> index 05442d437755..6211ab8bbb0e 100644
> --- a/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> @@ -49,6 +49,10 @@ properties:
>          $ref: /schemas/graph.yaml#/properties/port
>          description: HDMI output port
>  
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Parallel audio input port
> +
>      required:
>        - port@0
>        - port@1
> @@ -98,5 +102,13 @@ examples:
>                      remote-endpoint = <&hdmi0_con>;
>                  };
>              };
> +
> +            port@2 {
> +                reg = <2>;
> +
> +                endpoint {
> +                    remote-endpoint = <&pai_to_hdmi_tx>;
> +                };
> +            };
>          };
>      };
> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pai.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pai.yaml
> new file mode 100644
> index 000000000000..4f99682a308d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pai.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/imx/fsl,imx8mp-hdmi-pai.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MP HDMI Parallel Audio Interface
> +
> +maintainers:
> +  - Shengjiu Wang <shengjiu.wang@nxp.com>
> +
> +description:
> +  The HDMI TX Parallel Audio Interface (HTX_PAI) is a bridge between the
> +  Audio Subsystem to the HDMI TX Controller.
> +
> +properties:
> +  compatible:
> +    const: fsl,imx8mp-hdmi-pai
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: apb
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port
> +    description: Output to the HDMI TX controller.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - power-domains
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mp-clock.h>
> +    #include <dt-bindings/power/imx8mp-power.h>
> +
> +    audio-bridge@32fc4800 {
> +        compatible = "fsl,imx8mp-hdmi-pai";
> +        reg = <0x32fc4800 0x800>;
> +        interrupt-parent = <&irqsteer_hdmi>;
> +        interrupts = <14>;
> +        clocks = <&clk IMX8MP_CLK_HDMI_APB>;
> +        clock-names = "apb";
> +        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_PAI>;
> +
> +        port {
> +            pai_to_hdmi_tx: endpoint {
> +                remote-endpoint = <&hdmi_tx_from_pai>;
> +            };
> +        };
> +    };
> -- 
> 2.34.1
> 

-- 
Simona Vetter
Software Engineer
http://blog.ffwll.ch

