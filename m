Return-Path: <devicetree+bounces-6804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 123297BCEA5
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 15:52:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CE301C20896
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 13:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF688C150;
	Sun,  8 Oct 2023 13:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YC93cHLJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8948C8BF3
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 13:52:19 +0000 (UTC)
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1330B8F;
	Sun,  8 Oct 2023 06:52:17 -0700 (PDT)
Received: by mail-io1-xd29.google.com with SMTP id ca18e2360f4ac-79f909071c3so157650839f.0;
        Sun, 08 Oct 2023 06:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696773136; x=1697377936; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JnC/gvbWO5lzZhBRY/pWKgFbIpYTYWpKZXGWRaGL5S8=;
        b=YC93cHLJxBWdm4NsA36pApILvpc+s2bt2EUldYP5Jl5qwnuJf1X6GaA0qvhIwYtIjk
         Dbd2ZbYywIrKRNigXaQc/MOKF2QmSGNVLZ2CxGUCXgT95EederUzXvPPUBNBaGBd4A16
         x7QYy2vFcGxi6sAg9cZ38u/8qljPVE9RKamem7u9CjJr0CrTqsU//0o0Rzo9sLZIVguk
         5URkj9z4gMxHCwjWPADNw3jnAXAiuEmjVaNeC+voYcsqlTYjmrxtTEkUpDZFol8WFRT7
         B31+W5ewws27x4Xc8PZbNvwtQ46nFntMgZGw955AnTOpIA2gOdKSAoyUeNfP53GTmPFq
         TzlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696773136; x=1697377936;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JnC/gvbWO5lzZhBRY/pWKgFbIpYTYWpKZXGWRaGL5S8=;
        b=uy/IqNKruhLPK5e+bTYQJXsMHaC+PZ5jX7BUyaJ4pibia+OQl84QQaEJUUnxtUaNxQ
         2wQIRcvQcVNcZ6PJCb+nc7Fp4cDFgdvaD+msnN3PVf49jX7ndmOgDVYczVzsF1yyv4wP
         lT5iLV2a+Ij7CVVmevl5CJS2zTb63WlHBwEfPVXjfeb98Gj/oiu4OJbkEw1GUBM8bmyW
         bho8jGuhS2nT2G7SLUSP7cZt21KTInYSAcNYO5EKio1sByLe6moKC+QfnVJYp7wBUsP1
         9o62d+4+zlp42sKJHD3AegY2l25okQ4jwDrZYVAdaLaSMNy3DUEClMfaG7fEtNhUAi3B
         wcDA==
X-Gm-Message-State: AOJu0YzbR+rK+AN9NmyUAuAsV+YWDT2hBCk8hK1naKGceR0J/9VrI28E
	DcYMK7ZIGefUmCIbYaYie4Y=
X-Google-Smtp-Source: AGHT+IHflAiNSKnp9mYDb8DORaVamhfZzInAzkwkS17KH0IZB3JR4IRNHWXisscNxDQY3/xIQ4KL+w==
X-Received: by 2002:a5d:9903:0:b0:79a:b667:4e97 with SMTP id x3-20020a5d9903000000b0079ab6674e97mr14156088iol.0.1696773136309;
        Sun, 08 Oct 2023 06:52:16 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id w25-20020a639359000000b00553dcfc2179sm6577738pgm.52.2023.10.08.06.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 06:52:15 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sun, 8 Oct 2023 06:52:14 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Saravanan Sekar <saravanan@linumiz.com>, sravanhome@gmail.com,
	lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	jdelvare@suse.com, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org
Subject: Re: [PATCH v3 2/3] regulator: dt-bindings: Add mps,mpq2286
 power-management IC
Message-ID: <154920ff-ad72-43fe-9631-e65ed918a9bb@roeck-us.net>
References: <20231007165803.239718-1-saravanan@linumiz.com>
 <20231007165803.239718-3-saravanan@linumiz.com>
 <84f4692c-5fee-4d00-b537-570f90191d6e@roeck-us.net>
 <1ce9d59e-0938-4448-8279-b8c6e522b26a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1ce9d59e-0938-4448-8279-b8c6e522b26a@linaro.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Oct 08, 2023 at 12:40:29PM +0200, Krzysztof Kozlowski wrote:
> On 08/10/2023 03:20, Guenter Roeck wrote:
> > On Sat, Oct 07, 2023 at 10:28:02PM +0530, Saravanan Sekar wrote:
> >> Document mpq2286 power-management IC. Instead of simple 'buck', 'buck0' is
> >> used to keep the driver common which handles multiple regulators.
> > 
> > Sorry for the maybe dumb question, but where can I find the driver
> > depencency on buck naming ?
> 
> I guess it is because:
> PMBUS_REGULATOR_STEP("buck", 0, MPQ7932_N_VOLTAGES,
> creates regulator name as buck+id (so buck0).
> 

Ah, good point. Problem here is that this is already kind of common,
even though the use of "buckX" isn't. Look for "vout0", or
'PMBUS_REGULATOR("vout", 0)'. Apparently so far no one took offence
if a regulator was named "vout0" even if "vout1" didn't exist.

I don't really have a good solution right now, but I guess we'll need
a second set of macros for the single-regulator case, or maybe generate
struct regulator_desc arrays using a function. I'll have to explore
options.

Please let me know how you want the subsystem to handle existing
single-channel regulators with numbered regulator name.

Saravanan - for this driver please just declare a local driver-specific
variant of the PMBUS_REGULATOR_STEP() macro which doesn't use indexing,
use it to initialise a second regulators_desc array, and use that second
array for mpq2286. That is a bit messy, but acceptable for now until
there is a more generic solution (unless of course you have an idea for
one and want to implement it, but that is not a requirement).

Thanks,
Guenter

