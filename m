Return-Path: <devicetree+bounces-6294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 457CC7BAA1B
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 21:26:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E445B281B74
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 19:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A4F04174E;
	Thu,  5 Oct 2023 19:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="VpeP3XpY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE87266D5
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 19:26:48 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2DB6E4
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 12:26:46 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1c60128d3f6so34855ad.0
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 12:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696534006; x=1697138806; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N5wvhBkE/Y4VMn6AJO1ol9tVQweOIpEQMTvvNcvIVBY=;
        b=VpeP3XpYRBUhP2PNH3VDcpNwDG136vJMY9EmmZBr4hf42CA688xxwZvUl6ZgW/WTj9
         OXimihdzx67TX2naullczltfyL9pSdm7MRpTsJC9H16mUgd3hYhhKV0scjNWASmVnvzJ
         EX0b/bZSNDz8pG8ajQsPLoCNC+XGs/+Fa4/yoZ9iPMjh5NS/+jppr+qvMAZ/blfcsf0R
         4YgBcFe5gF6g29WJyUSdAUpf8cKx0NwAcvU4RdpDyWcXdrxPQm49k1dza1nLfV+oi8uM
         UYZ3p9vD8QyJUVHJnL4GKBmIWREVxty2TuMxNQI0JRE74GtOk2W9IbQkzeBfAjC6GRYu
         qgSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696534006; x=1697138806;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N5wvhBkE/Y4VMn6AJO1ol9tVQweOIpEQMTvvNcvIVBY=;
        b=vy56PM1qdLnm5SFxDcG8Tx+qarvREQZC0rb+qwi5mq9rEBwfyvIIZPvGlaVgLisCQo
         o6+gXyNd807QCf6dZfamIFnVrWKq5MuH4QCvo9TytIE5vQDARavfP7hZ2sVR6Z/aeptT
         2UqsVWF0dvuMKQdz6vqJou/5g6nWPLBgPOLarWIgST1Pc57PH3FwmbCwCPIGzuc/zY/6
         K9ky76JBa7pGx6NEtUT/XnTxp5moYip47KswWms+7n7m4LsEOkEeO0x+lDw6E8M8cm0J
         /im/TV00KLOsJveZeK90m6GJuelNA1VP/ZpNpLTszDnDLFX89KDuF0xK9zFKly7ivmkd
         Uaog==
X-Gm-Message-State: AOJu0YzWr7zsZORB8PUcbLPYv9ywnUYDmw9XyXjnitvXPNZKoxT7IYP0
	8L+h3NyXMYtULk1ICqr3lq1seA==
X-Google-Smtp-Source: AGHT+IEvlW5ijXe/2pcrast4aYhuAkaqOVIKwMflwNG+XXHh2gpdTvxD9kb2uTNW+B8NtUSf9Nq2Xw==
X-Received: by 2002:a17:902:f54b:b0:1c5:6691:4931 with SMTP id h11-20020a170902f54b00b001c566914931mr179417plf.12.1696534005954;
        Thu, 05 Oct 2023 12:26:45 -0700 (PDT)
Received: from google.com (13.65.82.34.bc.googleusercontent.com. [34.82.65.13])
        by smtp.gmail.com with ESMTPSA id i11-20020a17090332cb00b001bfd92ec592sm2097592plr.292.2023.10.05.12.26.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 12:26:45 -0700 (PDT)
Date: Thu, 5 Oct 2023 12:26:42 -0700
From: William McVicker <willmcvicker@google.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	conor+dt@kernel.org, sboyd@kernel.org, tomasz.figa@gmail.com,
	s.nawrocki@samsung.com, linus.walleij@linaro.org,
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com,
	will@kernel.org, arnd@arndb.de, olof@lixom.net,
	cw00.choi@samsung.com, tudor.ambarus@linaro.org,
	andre.draszik@linaro.org, semen.protsenko@linaro.org,
	soc@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org,
	gregkh@linuxfoundation.org, kernel-team@android.com
Subject: Re: [PATCH 18/21] arm64: dts: google: Add initial Google gs101 SoC
 support
Message-ID: <ZR8N8rxnYOgPXHJK@google.com>
References: <20231005155618.700312-1-peter.griffin@linaro.org>
 <20231005155618.700312-19-peter.griffin@linaro.org>
 <ZR75cIvnQS2cqTT3@google.com>
 <db02684f-c32b-4e09-8752-8d07dcb518c3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <db02684f-c32b-4e09-8752-8d07dcb518c3@linaro.org>
X-Spam-Status: No, score=-15.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL,
	USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/05/2023, Krzysztof Kozlowski wrote:
> On 05/10/2023 19:59, William McVicker wrote:
> > On 10/05/2023, Peter Griffin wrote:
> >> Google gs101 SoC is ARMv8 mobile SoC found in the Pixel 6,
> >> (oriole) Pixel 6a (bluejay) and Pixel 6 pro (raven) mobile
> >> phones. It features:
> >> * 4xA55 little cluster
> >> * 2xA76 Mid cluster
> >> * 2xX1 Big cluster
> >>
> >> This commit adds the basic device tree for gs101 (SoC) and oriole
> >> (pixel 6). Further platform support will be added over time.
> >>
> >> It has been tested with a minimal busybox initramfs and boots to
> >> a shell.
> >>
> 
> William,
> 
> Please do not Cc non-existing mailboxes. You added Cc kernel-team and we
> all got awesome bounces now:
> 
> "We're writing to let you know that the group you tried to contact
> (kernel-team) may not exist, or you may not have permission to post
> messages to the group. A few more details on why you weren't able to post:"
> 
> Best regards,
> Krzysztof
> 

Sorry, I mistyped the email. Should have been kernel-team@android.com.

Regards,
Will

