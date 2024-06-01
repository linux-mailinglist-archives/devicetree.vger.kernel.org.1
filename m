Return-Path: <devicetree+bounces-71505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 012628D711A
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 18:28:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC338282732
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 16:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EA251534F9;
	Sat,  1 Jun 2024 16:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GSTRqRbb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5445682482
	for <devicetree@vger.kernel.org>; Sat,  1 Jun 2024 16:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717259285; cv=none; b=HiHuRE9J6WPI8TO9TNDrsUgORU6Eb5o5nVFS0ogtjzexj43LiOwyPlyruMb1bgSopM2rmowsnBYUPDP+kZ8oHr9R1K5UDryTTaVB8EMDN2QE7abSb/oJvxZ7ArD0JwHl4ycM+ZmUykwtHnQ9PRj/uuOXEyYvdY/Oq9tzW9HK7g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717259285; c=relaxed/simple;
	bh=CuHaze8vUeuTJmclt6kK3pbwQ+VhNnBk8fwURWrhQ+4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q48PnRXqzMkw3U9rgY28/rDDYJH2onYODJiryVKhgI0CSalaIQsjwjq+6VIS2laviVwx8mG4QyRxEBM8cnWflA+qS+ZZdNa5GC/+DnM3bUkWqnD2/hdvNAMntX0m/TxJxwlX6FxWheOxIKQwBiInUQTNeVCHGR32NiUrtgPgYYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GSTRqRbb; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52b938587a4so369464e87.1
        for <devicetree@vger.kernel.org>; Sat, 01 Jun 2024 09:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717259281; x=1717864081; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8dCetMXBNsdnzLsPwECOfBM/mDQHWqh8OSO5TH9kB2E=;
        b=GSTRqRbbh/JTjrW7/qoNyIDUXwD40nwj72Q3Nov70aEi9lOeuy/rNFEEyMzgvo1y/r
         WSbrJwBqYhyVbnvnBIR+qVrUI6IbimW2AjlvAL6tcj5mi6wagdAfDQQPVL+czZU0H8cR
         t7afESAK/sI+QODi/uOUJlpPGTy2eCNQCHK1yjQJpvfkq91HOi9jyoeoFc1WXRPhRmwP
         +Iagf3GQuL9thR3GW6S+voGNPAs7+zrrfGrrZyXETzxvJkucDl7/ok+nBcmBS0VQNmP4
         qy2m4RLrR62tvmvi+PFehWJdgJqJAaUbSKGgF++GagU9Sayu9Mkj1vpA4gHD+B7tZMvS
         RLCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717259281; x=1717864081;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8dCetMXBNsdnzLsPwECOfBM/mDQHWqh8OSO5TH9kB2E=;
        b=EOYUvVUW2YhJXcono32ir3YfemknFhc/QfrU2065TugB077B8KucWsfrNxL/AUG8tr
         +NlbAGYQn2RKcW2WtqAp5Ck6tAIbV/GevgztJAOt7iCwGtR9774qFcgEGJ54cVeUCYkJ
         YdfYIILzK8ARkkBgFHYqyoc6c5p87S95FfejTgEud4CAhXkbJO6AdNdZu7srVGpkDPAD
         luQhnh9Iyi3DUW/0A60rhMgF0u1cjmPAzChfxt4DLVBY/+MwUC8M4jE2q2ilmdVrzD/j
         QQhvU1NRVKMeRfAL542uyMB2mDfaPXyVCXUFcnkxC2RtgwWb1rd7ieELoeLq8r0PlELk
         0l2A==
X-Forwarded-Encrypted: i=1; AJvYcCX3IYr9biWnF0p+Ev69YlX3bIwF9c+AipAvmkN13fX+c2Fb5st1kcgaGtG0gvgmhy11aeZOmDlel2yeX2NSSPdAG8RUsVF4uJ5ebQ==
X-Gm-Message-State: AOJu0YxDf6CI2Vt5pidBl7fS7U5t5kKmVu7W0MnI7NBpsm3yyOj9pSzL
	cfxWWADiI3BlGqdbIQAURL1xGNKM2j1TczOa6SAiojpo+N/jwra2bcSW2fngRJA=
X-Google-Smtp-Source: AGHT+IFZK15yzRbt5D2yDEHSiUdr/2IUT19M7aJMN/lyCgBX92vgdTniZ1S91kTimZ/n6owI25KOJg==
X-Received: by 2002:ac2:5626:0:b0:52b:8342:e0fc with SMTP id 2adb3069b0e04-52b896c672fmr2853711e87.54.1717259280607;
        Sat, 01 Jun 2024 09:28:00 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d3f1c7sm697442e87.91.2024.06.01.09.27.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Jun 2024 09:28:00 -0700 (PDT)
Date: Sat, 1 Jun 2024 19:27:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, dianders@google.com, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: display: panel: Add KD101NE3-40TI
 support
Message-ID: <oo6gggt2kpufvbwg6emoblg4opj2izdfjad4hzojbe7ddp57rp@a5vf23zrk22o>
References: <20240601084528.22502-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240601084528.22502-2-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240601084528.22502-2-lvzhaoxiong@huaqin.corp-partner.google.com>

On Sat, Jun 01, 2024 at 04:45:25PM +0800, Zhaoxiong Lv wrote:
> Create a new dt-scheam for the kd101ne3-40ti.
> The bias IC of this kindisplay-kd101ne3 panel is placed
> on the panel side, so when the panel is powered on,
> there is no need to control AVDD and AVEE in the driver.
> 
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
> 
> Chage since V2:
> 
> -  Drop some properties that have already been defined in panel-common.
> -  The header file 'dt-bindings/gpio/gpio.h' is not used, delete it
> 
> V1: https://lore.kernel.org/all/20240418081548.12160-2-lvzhaoxiong@huaqin.corp-partner.google.com/
> 
> ---
>  .../panel/kingdisplay,kd101ne3-40ti.yaml      | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml
> new file mode 100644
> index 000000000000..b0cf12bb727d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/kingdisplay,kd101ne3-40ti.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/kingdisplay,kd101ne3-40ti.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Kingdisplay KD101NE3-40TI based MIPI-DSI panels
> +
> +maintainers:
> +  - Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>

Any reason for using a separate bindings instead of extending
panel-simple-dsi.yaml ?

> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - kingdisplay,kd101ne3-40ti
> +
> +  reg:
> +    description: the virtual channel number of a DSI peripheral
> +
> +  pp3300-supply:
> +    description: core voltage supply
> +
> +required:
> +  - compatible
> +  - reg
> +  - pp3300-supply
> +  - enable-gpios
> +  - backlight
> +  - port
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    dsi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        panel: panel@0 {
> +            compatible = "kingdisplay,kd101ne3-40ti";
> +            reg = <0>;
> +            enable-gpios = <&pio 98 0>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&panel_pins_default>;
> +            pp3300-supply = <&en_pp6000_mipi_disp>;
> +            backlight = <&backlight_lcd0>;
> +            rotation = <90>;
> +            port {
> +                panel_in: endpoint {
> +                    remote-endpoint = <&dsi_out>;
> +                };
> +            };
> +        };
> +    };
> +
> +...
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

