Return-Path: <devicetree+bounces-49351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6877876178
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 11:05:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04DBE1C2164A
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 10:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A95175380D;
	Fri,  8 Mar 2024 10:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="KChcMBd7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F55537FE
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709892295; cv=none; b=L7J++VrFfqe6/hzbnSAPggJktzeCiieurv5xC2O3973YIMMg9oKHSX9l/79oMgbngjz1YsVvEqiTeldg9IrnEhMAOV2tdo2XH4ZEEQ/mlwbdKAWdqrgKwUY4hsaLnRAizJrH4UlVJIaQtD0ids9s6qXS6lLgh+1vAxrgBr8tIZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709892295; c=relaxed/simple;
	bh=fsF04I1jPphmnfPdon0UgH2v/nTq/bJjp088mcirozI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sTjOpUCqK6zFFJuCzg2JOP+IrfqVc6KpM9Tp0z0h82cdQBjaCfUVBNyIpcTkxd1GdpYGxAY3FEoWyQsK+5qqPpVKGm4ybHJ+WFRCICztshCHW4YHqiX/mEBC9n5f3V9ZCbTJmIuaQ/zloEQrnWDT9SNjMV9zsFmkwRZBrFhgLgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=KChcMBd7; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dc74e33fe1bso1859498276.0
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 02:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1709892293; x=1710497093; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yYtupq3y7OSwq8ocFViEOACv33gaBYAWvi5+nD4PjeY=;
        b=KChcMBd7iDm4yySG92N87ihD6RmzNLsl2cy1Fi2sK1z/P4Ywvpd2V2/2PSWVeD9JsO
         1CFOP5mCPze6e6c1jBF3RF7ROIFdIkyCPbOUzh45CgdLAvQU1w7NoolcYlttQ7WzB3pF
         dBvUMHcz2FrmLUcklJ7N23dL+uBL3PntAYpZvYELAqPddvbwCT41OFRhF7719Gh1j081
         JG5gdswMMxw/OPPDPSNt9KSn/wxoxkM7SG5mJn2FEkoousXuxSfc7vaCAlZK47Jbwci4
         B2VCfH0jt4y3EsKuDkyndtY7RP0+r/7IQ7Coqu4BlVrINNJQcmR+gN1JI/gqLU1rxP7M
         +S+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709892293; x=1710497093;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yYtupq3y7OSwq8ocFViEOACv33gaBYAWvi5+nD4PjeY=;
        b=DZMWUDQLiVhItvc9tfUKMYbyZ4Jfv3DCO/8YJ5JYlptU7PjlvmmoYkVtUP7TS4xPnF
         c7LukXD6EGXC9Jtf+5jMfy4hiVfRUOFsblb9jOctf7CRHcdQcGcz9ieq5xrYy5aNHmPJ
         ua6NlhCQZuz32rdERXBxsPDM15ErLKewU/9Q3KjZzwry5pOHZzLgLUEL75ebQGisF7jg
         ZSMJyWenXocNmvt/PHWSsRQHzUfA8rVj2xsitw2ZCvW7j98Xb/nTk77FpP0hJizWIrik
         VkV8rqOrvNKtcOavvxqwziUXyseYCv2Uz91Ce1yAuiviN/VbjBOaMAVRqiUOUpLjM4ap
         RstA==
X-Forwarded-Encrypted: i=1; AJvYcCXHBsFETFi24yPIHILJK+/snK9oF2J1WLF4c4B/0a393WdYjymOXY3n2wlRlycmV/GybLDLyLEBH6m2X0r7W3km3MD6ktD42uwGJQ==
X-Gm-Message-State: AOJu0YzpCOd1jOYkmAss3/kML51Qrw15poO3XLKBt2KIbd+mUnVDCSrq
	y7eDULmfDFLBrnDLOmRiXv+4t51nSq3MH1OdzVGmJe/TZ71U6tXr9dpiJiRV+4RzFuaewBK8QQT
	9pgby69S6XeUbM43ZoBVblAJ7YBdQq1+fvC/InQ==
X-Google-Smtp-Source: AGHT+IHrVvt7eiqFsCN7BoIBLDLG40kq3obLahPAIVY6vsyopc0/7XewA+He8AFWfVu8aom/GGG0LF/zvzOgdI63nRw=
X-Received: by 2002:a25:d34d:0:b0:dc7:45d3:ffd0 with SMTP id
 e74-20020a25d34d000000b00dc745d3ffd0mr18612635ybf.1.1709892292894; Fri, 08
 Mar 2024 02:04:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240308085028.44388-1-jacopo.mondi@ideasonboard.com> <20240308085028.44388-8-jacopo.mondi@ideasonboard.com>
In-Reply-To: <20240308085028.44388-8-jacopo.mondi@ideasonboard.com>
From: Naushir Patuck <naush@raspberrypi.com>
Date: Fri, 8 Mar 2024 10:04:17 +0000
Message-ID: <CAEmqJPo6E66ZemWpUcj+oPwBn3DZ7smSh0XTQjX=c0ipJTrwsQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/9] media: dt-bindings: Add bindings for Raspberry Pi
 PiSP Back End
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Linux Media Mailing List <linux-media@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Plowman <david.plowman@raspberrypi.com>, 
	Nick Hollinghurst <nick.hollinghurst@raspberrypi.org>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham@ideasonboard.com>, Sakari Ailus <sakari.ailus@iki.fi>, 
	Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Jacopo,

On Fri, 8 Mar 2024 at 08:50, Jacopo Mondi <jacopo.mondi@ideasonboard.com> wrote:
>
> Add bindings for the Raspberry Pi PiSP Back End memory-to-memory image
> signal processor.
>
> Datasheet:
> https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf
>
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Naushir Patuck <naush@raspberrypi.com>

> ---
> v3->v4:
> - Drop 'clock-names' as we have been confirmed there's a single clock
>
> v2->v3:
> - Add back 'clock-names' as suggested by Laurent
> - Add Rob's ack
> - minor grammar/style fixes
> ---
>  .../bindings/media/raspberrypi,pispbe.yaml    | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml
>
> diff --git a/Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml b/Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml
> new file mode 100644
> index 000000000000..1fc62a1d8eda
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/raspberrypi,pispbe.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Raspberry Pi PiSP Image Signal Processor (ISP) Back End
> +
> +maintainers:
> +  - Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
> +  - Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> +
> +description: |
> +  The Raspberry Pi PiSP Image Signal Processor (ISP) Back End is an image
> +  processor that fetches images in Bayer or Grayscale format from DRAM memory
> +  in tiles and produces images consumable by applications.
> +
> +  The full ISP documentation is available at
> +  https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - brcm,bcm2712-pispbe
> +      - const: raspberrypi,pispbe
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
> +  iommus:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        isp@880000  {
> +             compatible = "brcm,bcm2712-pispbe", "raspberrypi,pispbe";
> +             reg = <0x10 0x00880000 0x0 0x4000>;
> +             interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> +             clocks = <&firmware_clocks 7>;
> +             iommus = <&iommu2>;
> +        };
> +    };
> --
> 2.43.2
>

