Return-Path: <devicetree+bounces-14658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C3D7E5E60
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 20:11:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24A7B2812B5
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 19:11:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C683136B0C;
	Wed,  8 Nov 2023 19:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C36F36B14
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 19:11:28 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D02CB210A;
	Wed,  8 Nov 2023 11:11:27 -0800 (PST)
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6ce31c4a653so4418730a34.3;
        Wed, 08 Nov 2023 11:11:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699470687; x=1700075487;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1u7VYnOagIS9pU6lT0JPQUPsCHt998/w+J9rxTrBSoA=;
        b=XSR6jNL9ozufKPBv09tppwB9pjHHuH/c3aYJm/Pmvn6B7V6StsjBwqjJfpTrF/Gir7
         AOrqjOVsSHnNxSkz6jIWhR/opGcQY1aHTpEUPxWnnsylK5v7TTc4gPrbyAYbyLoQi4cw
         f4WXpxF1+uOMp0xF6ctjxaF5vEBbeBdhOn2q3PQGtzcTv1zyss5ItTy49hoXr9Di6bcd
         xChZlswVVwEdLHyeuksqfkG4HPG88//2wxs0nqkAImUlNRZkB2vljj4jypL3JM2mWfX8
         OH9TVOrB3RPzzihY98klFE8SYs6zl3vOfyFawUUtkHhkISbjdfHotMl5X98DkLA5wLEq
         G3vw==
X-Gm-Message-State: AOJu0Yxzlt3NX6RkuSi5JKxrd3fIV0KLVVFlprIYT1kwAch4LR1Q8B62
	+wGJ1BajIZ2mctLaX0rM6A==
X-Google-Smtp-Source: AGHT+IEQxcoP2w100Rf4cT1thURGIfqiKk7j/H0pCBg1+7YdEio2W+/30kOdWF9bH2ez152xfdG2Sg==
X-Received: by 2002:a05:6830:1bc6:b0:6c4:c3ac:a9dc with SMTP id v6-20020a0568301bc600b006c4c3aca9dcmr3256504ota.21.1699470687064;
        Wed, 08 Nov 2023 11:11:27 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id az5-20020a056830458500b006c4727812fdsm1983578otb.15.2023.11.08.11.11.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 11:11:26 -0800 (PST)
Received: (nullmailer pid 2771930 invoked by uid 1000);
	Wed, 08 Nov 2023 19:11:25 -0000
Date: Wed, 8 Nov 2023 13:11:25 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Tony Lindgren <tony@atomide.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Ben Dooks <ben.dooks@codethink.co.uk>, linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, linux-mips@vger.kernel.org, Howard Harte <hharte@magicandroidapps.com>
Subject: Re: [PATCH 2/6] dt-bindings: mtd: Rewrite gpio-control-nand in schema
Message-ID: <20231108191125.GA2754195-robh@kernel.org>
References: <20231108-fix-mips-nand-v1-0-5fc5586d04de@linaro.org>
 <20231108-fix-mips-nand-v1-2-5fc5586d04de@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231108-fix-mips-nand-v1-2-5fc5586d04de@linaro.org>

On Wed, Nov 08, 2023 at 03:33:50PM +0100, Linus Walleij wrote:
> This creates a schema for GPIO controlled NAND. The txt
> schema was old and wrong.
> 
> Mark the old way of passing GPIOs in a long array as
> deprecated and encourage per-pin GPIO assignments with
> the named nnn-gpios phandles.

We have 1 user upstream with only a single commit adding it in 2017. 
This doesn't seem like something that's going to gain new users either. 
Is it really worth modernizing this binding? 

Rob

