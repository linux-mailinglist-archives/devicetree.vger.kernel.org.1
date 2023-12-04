Return-Path: <devicetree+bounces-21515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C82F8803E21
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 20:12:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53EF01F21071
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 19:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D569E31584;
	Mon,  4 Dec 2023 19:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nGAhFQuu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D948CA;
	Mon,  4 Dec 2023 11:12:50 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50be58a751cso2931793e87.2;
        Mon, 04 Dec 2023 11:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701717169; x=1702321969; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9kI2ilyfkKMwxxsn/dbQDbgAgwyvM+UnMyDP+dFhIHA=;
        b=nGAhFQuu6EJcU2Yf46zRfBT/WCLzAkXkBAtCmEQ/rexfdqtJMSc9GHjfFHSRGqyCUi
         BK28WISJ0/LIBVzVS0iI/cdMI65rMpls8tXoXjsC0DCWOE6/9NaMwVibTWJJMIHiE2C5
         hJvi/JZAjzt2eTNPnzeaXtquETujl2wIy/Vma9Y01QKw7h940ZBm61ep+3vz66fJawGF
         9qzF+J9p0EISD3+6xcXYfCFisjF1VwBpZtDlAM/f7R66f05EwqWY8kz4bP6zgW/8pjJL
         9F+s6XRukV2xCYYqVkmC4/+KMEfNchePl5DBweF3yLC8c2Z67ywP7op71TeqMvI+Wiax
         kzMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701717169; x=1702321969;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9kI2ilyfkKMwxxsn/dbQDbgAgwyvM+UnMyDP+dFhIHA=;
        b=JkCcdxMyX3bUaN0mRdBbeWIqRJuUOLeUb18945Geduk6XDa3mC4DYFwX61Z/d8bu7M
         KuKSUVhWGxwaFuXi5bqTRVbVi2CnhJi5zwVgwEBW6iR1FGrfwntquZQ7N+iLjmZ5oEik
         JQ2Bvc33uoti0pfeB2yd9GePPu3xkyiDG0zZCZ6ZD+itK1gq+mj1kk51h9UkEFuvQtFi
         ylDw7+h2OeFI5/NPPm950Ldqd0IhxVKrxn+pVZoSh70SUePKxtHD9QZP2cXBuQZzLyk4
         63zCcuPfQm+f7xYwlQscl4m3izi6mwMY/MDMRCscFKVr57fFb+XOuKCp0IrfrqCY/H/m
         nhSg==
X-Gm-Message-State: AOJu0YwP0DF2hz+VETaAk7EJSLYEUU4qzsLf9sCtSW4TWXTsN6jtiMVZ
	hjihe3QpJ2PtQHJ34skqGQ==
X-Google-Smtp-Source: AGHT+IHTxsgENduBkcDZbHkgrnmLVH9Z2liamCQ1LTwaFrtxQoYZXBUeuOLJwNn2dwvUrY6hbJ0M4w==
X-Received: by 2002:a05:6512:158f:b0:50b:f7c6:2f7a with SMTP id bp15-20020a056512158f00b0050bf7c62f7amr1120720lfb.47.1701717168401;
        Mon, 04 Dec 2023 11:12:48 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:55ff:210b:5393:c9d7? ([2a02:810b:f40:4300:55ff:210b:5393:c9d7])
        by smtp.gmail.com with ESMTPSA id n10-20020aa7c44a000000b0054cd6346685sm114391edr.35.2023.12.04.11.12.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 11:12:48 -0800 (PST)
Message-ID: <447b1bde-584f-4eb4-8bfb-9abd3aa8b6fa@gmail.com>
Date: Mon, 4 Dec 2023 20:12:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] ARM: dts: rockchip: rk3036-kylin: add
 hdmi-connector node
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, hjc@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
 <f5bc182b-f9b6-26a8-8649-19ce33e3c0e1@gmail.com>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <f5bc182b-f9b6-26a8-8649-19ce33e3c0e1@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Johan,
Am 04.12.23 um 18:40 schrieb Johan Jonker:
> Add hdmi-connector node to comply with the inno_hdmi binding.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> index 67e1e04139e7..a213333be011 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> @@ -13,6 +13,17 @@ memory@60000000 {
>   		reg = <0x60000000 0x20000000>;
>   	};
> 
> +	hdmi_con: hdmi-con {
> +		compatible = "hdmi-connector";
> +		type = "c";
According to [0], kylin has an A-Type HDMI port - so this should be
  +		type = "a";

[0] http://rockchip.wikidot.com/kylin

Regards,
Alex
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +				remote-endpoint = <&hdmi_out_con>;
> +			};
> +		};
> +	};
> +
>   	leds: gpio-leds {
>   		compatible = "gpio-leds";
> 
> @@ -110,6 +121,12 @@ &hdmi {
>   	status = "okay";
>   };
> 
> +&hdmi_out {
> +	hdmi_out_con: endpoint {
> +		remote-endpoint = <&hdmi_con_in>;
> +	};
> +};
> +
>   &i2c1 {
>   	clock-frequency = <400000>;
> 
> --
> 2.39.2
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


