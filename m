Return-Path: <devicetree+bounces-7785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 149197C5773
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:52:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 457721C20BD9
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 14:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50CBD10A2D;
	Wed, 11 Oct 2023 14:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U9EVuDIv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4FC182CA
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 14:52:22 +0000 (UTC)
Received: from mail-vk1-xa35.google.com (mail-vk1-xa35.google.com [IPv6:2607:f8b0:4864:20::a35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F814B0;
	Wed, 11 Oct 2023 07:52:18 -0700 (PDT)
Received: by mail-vk1-xa35.google.com with SMTP id 71dfb90a1353d-49d6bd360f8so2608612e0c.2;
        Wed, 11 Oct 2023 07:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697035937; x=1697640737; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IYZjFi/wf0Z9GQXeuJRSvq3Y/H6dwz6J8+h/s3Mnuao=;
        b=U9EVuDIvkXSWELDNkdbZ5G1WbO+hbX6ZwEK17DJI4h6JpCefFIMtmDvXSswupqUgAU
         Yv+92BnGp6RJP21VFCLCs+kDsUOK8uDLlkK6CCc3jkAWIoTYSQGMYhylWu4JHnbkAs6E
         ralIWct9bZbX/3Y5dtRZQLXSrNXYLUy7uezTvnHVDD9mmhPjDlDh3IaQnc+NU7L1LpgN
         8jufW656/he5SnTq7UOpPg2xzxMrIpcMd+4u/fKULpcQZnZizosoq/ch7yJnVOH9MeYH
         KC4DNOdeX/d9lOXEvdCCyqweE73QMa/bBJd+k0xviSa+POL3ku39PoVRCbUm2mq+jMAy
         QmOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697035937; x=1697640737;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IYZjFi/wf0Z9GQXeuJRSvq3Y/H6dwz6J8+h/s3Mnuao=;
        b=vwIibX7c50Y+7SbBNu/QaQRiwd6Bu8WkIVTLHNrYPFv+MraApqw9SsQQ18Mz5IW9CF
         +pdYi6HaJm6kmeZlt46t5c0L8GyOc9wUBjWOFsGAsgX/8d+sJs5BlNrz+DRME3ddqmHS
         I5sKctaGJwXsOlVBbZ1DzPsQVW4p0XHYS6MEN+sA6FMKrx6ZuT971iWFW4Yf2RDpwTVS
         2ayyAg8HA/B8EoAXkkOKRYHD3XHl3ewcgcmMkMy4nNe8slDmoi9qbBTMJUlaABtkbxRD
         /9vKKAbeQO9+a3pNt6/YBXdVV13OSsxUXNAGtOkfpXr1r6QbF6zb4WbkmZAO9G0TDxyk
         OfyQ==
X-Gm-Message-State: AOJu0YzQ8jGqV+sTsarVtE27GJIcC9z2A7WeWerldzkJD3HuNXTYmFMF
	1vGkrnoAPa8DLLD5Z8T57vo=
X-Google-Smtp-Source: AGHT+IGpf/kr5YHtPPDrNv+YSf+0B3zcZAnbAPzKZXFk+d8FmyMsRp/mWM/eJL/4nF4gtdoo9CjFMQ==
X-Received: by 2002:a1f:6d84:0:b0:48f:8891:296b with SMTP id i126-20020a1f6d84000000b0048f8891296bmr17715208vkc.0.1697035937191;
        Wed, 11 Oct 2023 07:52:17 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id b13-20020ac5c74d000000b004962395e415sm2513002vkn.15.2023.10.11.07.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 07:52:16 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 11 Oct 2023 07:52:15 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Jacky Bai <ping.bai@nxp.com>
Cc: wim@linux-watchdog.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: watchdog: fsl-imx7ulp-wdt: Add
 'fsl,ext-reset-output'
Message-ID: <dfac97b4-cb3e-4c60-85e2-0e2109be879c@roeck-us.net>
References: <20231010081909.2899101-1-ping.bai@nxp.com>
 <20231010081909.2899101-2-ping.bai@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010081909.2899101-2-ping.bai@nxp.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 10, 2023 at 04:19:08PM +0800, Jacky Bai wrote:
> The wdog may generate wdog_any external reset if the int_en bit is
> configured, so add a property for this purpose in dt-binding doc.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  .../devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml        | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
> index 4b7ed1355701..9c50766bf690 100644
> --- a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
> @@ -30,6 +30,11 @@ properties:
>    clocks:
>      maxItems: 1
>  
> +  fsl,ext-reset-output:
> +    description:
> +      When set, wdog can generate external reset from the wdog_any pin.
> +    type: boolean
> +
>  required:
>    - compatible
>    - interrupts
> -- 
> 2.34.1
> 

