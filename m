Return-Path: <devicetree+bounces-233882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBD5C26752
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 18:46:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C90634FDDEC
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 17:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED9E226ED55;
	Fri, 31 Oct 2025 17:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="JsL8uDP+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13912D323F
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 17:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761932413; cv=none; b=kEZLMvhDvCYz/PcbNMbofPV3PeHrA14bWWHuLlABx/+f/QvQyOnW7sHLtiHkhqkR4v9puY0LudmmvzOthpRSyPcs2mA3FqXkx2yhC8XeCHjxPOS6mc3cFDQ9xCDaR+fOXN1g3IwOuK06G3r3BwswWvp+Yz8FTA5KBgn5nMUaAOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761932413; c=relaxed/simple;
	bh=1T93+sMv5tPAVfplzHfP7R8MyhMUaOzEKPRnkR9FHMU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yb/6ww8cjKOaQwH2eItz2k72YvxdVSAnK1bvBD1kLuJRKV7ZU2wzYp3ra8MlQXw5c+gZorudrLvFbePl2cqq0oipfaCNV1etQry7FMkt9CZMCGfnoexj9t4mXGu5sgA9n3PCmkthlyGmGykb+3gsd9iUcmtmjVeE1npsFSdCbLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch; spf=none smtp.mailfrom=ffwll.ch; dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b=JsL8uDP+; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ffwll.ch
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b3b3a6f4dd4so513660466b.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 10:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1761932410; x=1762537210; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g0MslenNMNRz9hncNuGH0nUy8fkx7bjabprrZbRn1I0=;
        b=JsL8uDP+OgQdf6ItZ3aXkyVxMLjGnTHdDoY3RDhd1GYhVtnx3ais10nAVFUEdeItnu
         1XJMd1j+jDyR8rHAO4CEPcSfMh8pMv1SsCsGvGIMFPwnz08jkcBL2l5dzPVbtfF3gwKC
         69RkNVfVElbpgMG5yKX5xmiE1ZyMNqQ3nLFTo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761932410; x=1762537210;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g0MslenNMNRz9hncNuGH0nUy8fkx7bjabprrZbRn1I0=;
        b=eS3lo57fK0G7umD0E/UcE5bstKmbBsCiZRAe/xNXjSd6KG2xrxYBlmdAe4hhoqG87Q
         iTrzNECraLe/OZivsFx1TAZZBeufRb2srCTkvsC4gcrvDKqScyWNgvA4eV98dpjec/MV
         3xv71bLmBiUWkGV6WQItsNpbM7EMaAZWO6S4Hv5PPU0GYTFPMwYYGJwdVgShu8ydk8QD
         5zZtpRuLfxBJeW0PjXugIM2eEF4ZvH7IRB53bLUwM00bnf9B0esJxSm9ZyEzZXviMuYq
         1aD59oBwN+3iEFV4Iib+VbS2nuow3R+S/BUbmY5SfSGkl80Nmy/RUheBnoUmQPJIKPKH
         0VqQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5n/vhPO8IMOgXUShDwPGp7PIJ1jpF35uv6UOZnQho3Olz4Q7XmmiAjF/t2QO5wzIA61tRwcfSrmTN@vger.kernel.org
X-Gm-Message-State: AOJu0Yytmzrlme1k0h5jOoqmZTR6/x+mEDlcAgtV74T7OsGCnGyorz/f
	qs1p0A7+nsiqC5cyN7VFjlJxFsIfFBNfVv5nzGhh2kcS6Z2pMWSs0kOphac4XeV2yNw=
X-Gm-Gg: ASbGncshwopWv1i5D61fgdFYVFm5YxL/1NmwbGtSuJ42Ax4+iCg9oVnG0lp9kl2crUB
	NKVVszqg1AwruqaMde/8kXt2xGq9OuzZkfbuD5SGQn2vPrZxoQYpfK9uRKaHQEJr0gMl8VH7mpo
	bQnebakR8fDhwYdV7vdUovfLO3bzzQhi1kdm91A/OqNn68ce3oMr47bvalFpnos52HlChkxka9b
	jZmQIiv81HL5mBL7HyDHHDWU2YvSLHvJ92tay16xcX6hQwS8fsW5e/3WCHHToJfpxAOTLYK+0ds
	mrvcEEyB0x9qd7p5Qwvo1n48Jz43NwDG4CkJ6rAKQEEdz+LXMmJDUXiU5YHhpFhJmXWH5wqMuzv
	vv0ZjKaigAb0DqkBukOcm6ul7/sgOUwdMaoOLeKREuwRd8EedshsWjPAtsL6pnkDOKxC3X9lSpF
	XrMBnym3z+qptmYcfLV+3R2A==
X-Google-Smtp-Source: AGHT+IFbOBwf98bBMLnyAAZrOMm+hJ35dRhtFe2UhgAlTZPlhjoRrNX+iSO04sWdZ50B8Ps8qRcs4g==
X-Received: by 2002:a17:907:7e8d:b0:b6f:198e:c348 with SMTP id a640c23a62f3a-b7070630cfcmr467732066b.46.1761932409693;
        Fri, 31 Oct 2025 10:40:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7077c82ef6sm227660766b.52.2025.10.31.10.40.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 10:40:08 -0700 (PDT)
Date: Fri, 31 Oct 2025 18:40:06 +0100
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Liu Ying <victor.liu@nxp.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch, lumag@kernel.org, dianders@chromium.org,
	cristian.ciocaltea@collabora.com, luca.ceresoli@bootlin.com,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	devicetree@vger.kernel.org, l.stach@pengutronix.de,
	shengjiu.wang@gmail.com, perex@perex.cz, tiwai@suse.com,
	linux-sound@vger.kernel.org
Subject: Re: [PATCH v7 1/7] dt-bindings: display: imx: add HDMI PAI for
 i.MX8MP
Message-ID: <aQT0dlZ88jDVptLF@phenom.ffwll.local>
Mail-Followup-To: Liu Ying <victor.liu@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch, lumag@kernel.org, dianders@chromium.org,
	cristian.ciocaltea@collabora.com, luca.ceresoli@bootlin.com,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	devicetree@vger.kernel.org, l.stach@pengutronix.de,
	shengjiu.wang@gmail.com, perex@perex.cz, tiwai@suse.com,
	linux-sound@vger.kernel.org
References: <20250923053001.2678596-1-shengjiu.wang@nxp.com>
 <20250923053001.2678596-2-shengjiu.wang@nxp.com>
 <aPc9-wYxGB1KYPyQ@phenom.ffwll.local>
 <7e0fb617-088b-4075-9631-e37645b4c40d@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7e0fb617-088b-4075-9631-e37645b4c40d@nxp.com>
X-Operating-System: Linux phenom 6.12.38+deb13-amd64 

On Tue, Oct 21, 2025 at 04:51:40PM +0800, Liu Ying wrote:
> Hi Sima,
> 
> On 10/21/2025, Simona Vetter wrote:
> > On Tue, Sep 23, 2025 at 01:29:55PM +0800, Shengjiu Wang wrote:
> >> Add binding for the i.MX8MP HDMI parallel Audio interface block.
> >>
> >> The HDMI TX Parallel Audio Interface (HTX_PAI) is a digital module that
> >> acts as the bridge between the Audio Subsystem to the HDMI TX Controller.
> >> This IP block is found in the HDMI subsystem of the i.MX8MP SoC.
> >>
> >> Aud2htx module in Audio Subsystem, HDMI PAI module and HDMI TX
> >> Controller compose the HDMI audio pipeline.
> >>
> >> In fsl,imx8mp-hdmi-tx.yaml, add port@2 that is linked to pai_to_hdmi_tx.
> >>
> >> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> >> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > 
> > dt patches need an ack from dt maintainers before you push them, please
> > make sure you follow that for the next changes.
> 
> Just want to make sure I may follow that correctly in the future.
> As Krzysztof is one of DT binding maintainers and this patch has
> Krzysztof's R-b tag, need more ack from DT maintainers?

Sorry for the late reply, caught a cold :-/

No, that's enough, I wasn't entirely awake when I processed the PR
containing these patches. I only noticed because of a a new check in dim
for maintainer actions like merging a PR, which misfired on these two
patches - the r-b should have been counted as an ack (even though strictly
it's better to record both).

Apologies for the noise.
-Sima

> 
> > -Sima
> > 
> >> ---
> >>  .../display/bridge/fsl,imx8mp-hdmi-tx.yaml    | 12 ++++
> >>  .../display/imx/fsl,imx8mp-hdmi-pai.yaml      | 69 +++++++++++++++++++
> >>  2 files changed, 81 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pai.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> >> index 05442d437755..6211ab8bbb0e 100644
> >> --- a/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> >> +++ b/Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> >> @@ -49,6 +49,10 @@ properties:
> >>          $ref: /schemas/graph.yaml#/properties/port
> >>          description: HDMI output port
> >>  
> >> +      port@2:
> >> +        $ref: /schemas/graph.yaml#/properties/port
> >> +        description: Parallel audio input port
> >> +
> >>      required:
> >>        - port@0
> >>        - port@1
> >> @@ -98,5 +102,13 @@ examples:
> >>                      remote-endpoint = <&hdmi0_con>;
> >>                  };
> >>              };
> >> +
> >> +            port@2 {
> >> +                reg = <2>;
> >> +
> >> +                endpoint {
> >> +                    remote-endpoint = <&pai_to_hdmi_tx>;
> >> +                };
> >> +            };
> >>          };
> >>      };
> >> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pai.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pai.yaml
> >> new file mode 100644
> >> index 000000000000..4f99682a308d
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pai.yaml
> >> @@ -0,0 +1,69 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/display/imx/fsl,imx8mp-hdmi-pai.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Freescale i.MX8MP HDMI Parallel Audio Interface
> >> +
> >> +maintainers:
> >> +  - Shengjiu Wang <shengjiu.wang@nxp.com>
> >> +
> >> +description:
> >> +  The HDMI TX Parallel Audio Interface (HTX_PAI) is a bridge between the
> >> +  Audio Subsystem to the HDMI TX Controller.
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: fsl,imx8mp-hdmi-pai
> >> +
> >> +  reg:
> >> +    maxItems: 1
> >> +
> >> +  interrupts:
> >> +    maxItems: 1
> >> +
> >> +  clocks:
> >> +    maxItems: 1
> >> +
> >> +  clock-names:
> >> +    const: apb
> >> +
> >> +  power-domains:
> >> +    maxItems: 1
> >> +
> >> +  port:
> >> +    $ref: /schemas/graph.yaml#/properties/port
> >> +    description: Output to the HDMI TX controller.
> >> +
> >> +required:
> >> +  - compatible
> >> +  - reg
> >> +  - interrupts
> >> +  - clocks
> >> +  - clock-names
> >> +  - power-domains
> >> +  - port
> >> +
> >> +additionalProperties: false
> >> +
> >> +examples:
> >> +  - |
> >> +    #include <dt-bindings/clock/imx8mp-clock.h>
> >> +    #include <dt-bindings/power/imx8mp-power.h>
> >> +
> >> +    audio-bridge@32fc4800 {
> >> +        compatible = "fsl,imx8mp-hdmi-pai";
> >> +        reg = <0x32fc4800 0x800>;
> >> +        interrupt-parent = <&irqsteer_hdmi>;
> >> +        interrupts = <14>;
> >> +        clocks = <&clk IMX8MP_CLK_HDMI_APB>;
> >> +        clock-names = "apb";
> >> +        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_PAI>;
> >> +
> >> +        port {
> >> +            pai_to_hdmi_tx: endpoint {
> >> +                remote-endpoint = <&hdmi_tx_from_pai>;
> >> +            };
> >> +        };
> >> +    };
> >> -- 
> >> 2.34.1
> >>
> > 
> 
> 
> -- 
> Regards,
> Liu Ying

-- 
Simona Vetter
Software Engineer
http://blog.ffwll.ch

