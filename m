Return-Path: <devicetree+bounces-11985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6337D7506
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 22:01:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8A68BB20F4A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21C06328AC;
	Wed, 25 Oct 2023 20:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988373158A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 20:00:57 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0FB0136;
	Wed, 25 Oct 2023 13:00:55 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3b2ec5ee2e4so52675b6e.3;
        Wed, 25 Oct 2023 13:00:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698264055; x=1698868855;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uoMt90OKcFXpIeFo/05qurlurQ+/MEMSAJc4nHZV4uY=;
        b=lWlnOm56wckLEctqMH5CQjgZOuz9wjbuz0R5Vhfi2QnuYfnLmqOI93dEOtZ6LwTVT7
         NihxS3bhvNkjyjbMFrUTJJ4hcnfzFBLr/vUROAy8BaoCNhNB0EWE19Hfl671j+ZyHQca
         DcjIN7StdqxjpZyNb4Hobb/VjEnk/2MZa/wSAoSbWVAEHTQ/kd9ZNDjOjk3NZDOpBXfb
         JMBuFalkc8LT0BjXlxFz2rAYvkiO4kny7hLao7Grss0t2kGWB4SjfNnax1A34GHUUtbB
         Cq2l/OZYwnxVQAJR1UVBNl887D03dVLFq9oGT8/VK5d9TYnmXvLS3W8xLxtSKE/vVIhZ
         JkIw==
X-Gm-Message-State: AOJu0Yyvfj/yvrB0WHaArcwKZ4LdgS/NO9CMj2aArjQ6XLZpXV+RZnha
	XD+5mevsD/Rzsb7joltglg==
X-Google-Smtp-Source: AGHT+IGd+HFEO0LVcA30PIFwVUYPF81oIVG6w5idnhTj/UqzaoeLqG0DvBSh13xSTR8P9OsfI6q/qg==
X-Received: by 2002:a05:6808:64d:b0:3a8:80ea:f0c6 with SMTP id z13-20020a056808064d00b003a880eaf0c6mr14961768oih.29.1698264055123;
        Wed, 25 Oct 2023 13:00:55 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s15-20020a056830124f00b006c4727812fdsm2380249otp.15.2023.10.25.13.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 13:00:54 -0700 (PDT)
Received: (nullmailer pid 1066090 invoked by uid 1000);
	Wed, 25 Oct 2023 20:00:53 -0000
Date: Wed, 25 Oct 2023 15:00:53 -0500
From: Rob Herring <robh@kernel.org>
To: Nik Bune <n2h9z4@gmail.com>
Cc: conor+dt@kernel.org, wim@linux-watchdog.org, krzysztof.kozlowski+dt@linaro.org, skhan@linuxfoundation.org, devicetree@vger.kernel.org, linux@roeck-us.net, nicolas.ferre@microchip.com, claudiu.beznea@microchip.com, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, alexandre.belloni@bootlin.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: watchdog: atmel,at91rm9200-wdt: convert
 txt to yaml
Message-ID: <169826359217.1053485.16654434281057363682.robh@kernel.org>
References: <20230924181959.64264-1-n2h9z4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230924181959.64264-1-n2h9z4@gmail.com>


On Sun, 24 Sep 2023 20:19:59 +0200, Nik Bune wrote:
> Convert txt file to yaml.
> 
> Signed-off-by: Nik Bune <n2h9z4@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> 
> Changes in v3:
> - Removed trailing whitespace in an element of the maintainers list.
> 
> v2 patch: https://lore.kernel.org/linux-devicetree/20230924172004.59208-1-n2h9z4@gmail.com/
> 
>  .../watchdog/atmel,at91rm9200-wdt.yaml        | 33 +++++++++++++++++++
>  .../watchdog/atmel-at91rm9200-wdt.txt         |  9 -----
>  2 files changed, 33 insertions(+), 9 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt
> 

It seems watchdog bindings aren't getting applied, so I've applied it. 
Wim, please take watchdog bindings in the future unless noted otherwise.

Rob

