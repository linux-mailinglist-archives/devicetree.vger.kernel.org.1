Return-Path: <devicetree+bounces-12562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACC37DA26C
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 23:25:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C93EDB21483
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 21:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A57223FE23;
	Fri, 27 Oct 2023 21:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9F23FB20
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 21:25:46 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFAB91B4;
	Fri, 27 Oct 2023 14:25:45 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3b2e4107f47so1651620b6e.2;
        Fri, 27 Oct 2023 14:25:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698441945; x=1699046745;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p3CjsY9C6j5ZyBEqxfh443J6yD9FnBKosDhtS1xHCkM=;
        b=BRCq9/8tqaWvoe5lT1rUbApuTnj9YM2uVg4yO+jBUnpaltK3oBndn5W6LcFRVk8sH2
         eefg7e1OozKfiAA15EFVoHpo2prEbxlniOa2UxjJAaGWf4gCZXmy6hpOU/n360LyqHRQ
         AiyNcHUhGkZWTakWuunG600kMUa/0XYFT0TSmcGURsk48c8oSFOCLbZSFJRZ6tlHkB1U
         wQFV+7vMpN3JUat4kzn7Icdw3Tou0fdRw+qUcabC5f8974OTgNi5NmTiutAGMQfjeOky
         /BWP88F6DgMAsESIV4TTcCecxtLpP60XyqxSQixsUTYKtafGniM73Nb7IYVuW4xB0lLA
         SpKA==
X-Gm-Message-State: AOJu0YwoltW+0rbLUVsy3qM8rGpZIhC/NE4LFgIMjGPXzcAzFwjkUkwT
	AZ9Za/h2kvyHjn3nNULWtV0FmKmcrw==
X-Google-Smtp-Source: AGHT+IGJPs84R+SdL6Q+XzIKVFhfVObCXJSGpj6m5uCOZ7XF928v8ZU0RTmEMeoOlIPbH0Af1+PIKA==
X-Received: by 2002:a05:6808:130a:b0:3b2:e48d:97bd with SMTP id y10-20020a056808130a00b003b2e48d97bdmr5418981oiv.23.1698441945225;
        Fri, 27 Oct 2023 14:25:45 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r3-20020a544883000000b003ae59076b90sm440370oic.14.2023.10.27.14.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 14:25:44 -0700 (PDT)
Received: (nullmailer pid 3398707 invoked by uid 1000);
	Fri, 27 Oct 2023 21:25:42 -0000
Date: Fri, 27 Oct 2023 16:25:42 -0500
From: Rob Herring <robh@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/5] regulator: dt-bindings: Add
 system-critical-regulator property
Message-ID: <169844194219.3398642.8702768543043533449.robh@kernel.org>
References: <20231026144824.4065145-1-o.rempel@pengutronix.de>
 <20231026144824.4065145-2-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026144824.4065145-2-o.rempel@pengutronix.de>


On Thu, 26 Oct 2023 16:48:20 +0200, Oleksij Rempel wrote:
> Introduce a new Device Tree property 'system-critical-regulator' for
> marking a regulator as crucial for system stability or functionality.
> This helps in distinguishing regulators that are vital for system
> operations and may require special handling in under-voltage scenarios.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/regulator/regulator.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


