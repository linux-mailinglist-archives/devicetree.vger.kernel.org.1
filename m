Return-Path: <devicetree+bounces-11986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B09407D7509
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 22:01:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69332281CCE
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59779328AF;
	Wed, 25 Oct 2023 20:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406352D631
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 20:01:18 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 525C193
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:01:16 -0700 (PDT)
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6ce2cc39d12so83810a34.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698264075; x=1698868875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o5b4e4eREmBKqD4NqqdhHMcGi2FN2HDyJ4IcGfcvPIY=;
        b=ZDWEHKEoynnhc45P30PkuTC19Urqt7CAxdi9gWxz5qFKVSFuY3yA7ffAz7adaSwnbp
         /9yNBH3S2Blaif11d8RaD2ReQcgJcRpZ2aXLo+lm7fSgAk1OMYQb3sG3FtW5zUm2OMJr
         rCuGRFtVONd4yOtA2qIXTJgjQ6Bk1z5nmUBg4jDjJNddU4KLeGwsP6KtD8qrgphUMHiB
         b0KLRzWBSP14rGL+MTmeUD8W2HhFr0XQsCFyP3ikhkQaeWVHsOmPmSV+prA8G+UvjCGT
         F6GuxOfCn67y8EZVZsZRnUITM3m0s+9tT0Jrgtx40k7yC63abyaBP0rlLi96Z/564P9t
         mQmw==
X-Gm-Message-State: AOJu0YxLfXXpeDdNSRC+Y+QFpDBvFErv/MIUYf2yXZmIy8vfZ9x/wsio
	OHddvCgDPti2/vbVGXOlVg==
X-Google-Smtp-Source: AGHT+IHcUTviBPsHGntSqs6q2U7l81ton97ARH6WSudQ5Yb5NICLLMBG3/b++2hnoRuqRmGBdNF0Fg==
X-Received: by 2002:a05:6830:140e:b0:6ce:2c8e:79f0 with SMTP id v14-20020a056830140e00b006ce2c8e79f0mr17878098otp.21.1698264075557;
        Wed, 25 Oct 2023 13:01:15 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a15-20020a056830100f00b006b871010cb1sm2441978otp.46.2023.10.25.13.01.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 13:01:14 -0700 (PDT)
Received: (nullmailer pid 1066853 invoked by uid 1000);
	Wed, 25 Oct 2023 20:01:14 -0000
Date: Wed, 25 Oct 2023 15:01:14 -0500
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, Guenter Roeck <linux@roeck-us.net>, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, Wim Van Sebroeck <wim@linux-watchdog.org>, Fabio Estevam <festevam@denx.de>, conor+dt@kernel.org
Subject: Re: [PATCH v2] dt-bindings: watchdog: fsl,scu-wdt: Document imx8dl
Message-ID: <169826370846.1056174.17580750252161580494.robh@kernel.org>
References: <20231004182043.2309790-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004182043.2309790-1-festevam@gmail.com>


On Wed, 04 Oct 2023 15:20:43 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> imx8dxl also contains the SCU watchdog block.
> 
> Add an entry for 'fsl,imx8dxl-sc-wdt'.
> 
> Cc: Wim Van Sebroeck <wim@linux-watchdog.org>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> Changes since v1:
> - Sent it as a standalone patch to the DT folks.
> - Collected Conor's ack.
> 
>  Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

It seems watchdog bindings aren't getting applied, so I've applied it.
Wim, please take watchdog bindings in the future unless noted otherwise.

Rob

