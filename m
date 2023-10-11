Return-Path: <devicetree+bounces-7892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0517C5FB6
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 23:56:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D59D1C209C4
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 21:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D74143D97C;
	Wed, 11 Oct 2023 21:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="OpZFEaUY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707DD2230D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 21:56:21 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7584AB8
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 14:56:19 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1c9b70b9671so27865ad.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 14:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697061379; x=1697666179; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GY2RJk7ue/Ex7NXo2WJS/YXw1Q/fILloVJYJ2jREcs0=;
        b=OpZFEaUYEfgGhOBnIu2+My1gL1CE8z23QBVCFuCCTtMLHt2ToC4Joik3IsFsfHhLfM
         gOgBU0APmziLP6eSfDbf5BRi/ZufILzKl61KfyXZVRtp1HRiDHuUz/RFTnFOrh8MhC4J
         E50uMGtqZ6qrz2tNo8oDwM+x3iyawETKjdbTDreQkzbAJ9ygdA/8Llb7/G20/KKDmYCM
         5yGnLk/Be/iiQX8axZhke4YT7/GU04w01+h+4tuJ/i3v076CAQy9szf3h0yx/7/eLut5
         Pbu6Xy5VES/kM2X5KpPlGnedoIArgCGlHrfdLWw8/U7wDNGSQ3ZxeLli93J0BKbjOdg8
         wLjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697061379; x=1697666179;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GY2RJk7ue/Ex7NXo2WJS/YXw1Q/fILloVJYJ2jREcs0=;
        b=PAAdhC5Ne86OKdPHRR/G9QqWup1K1oBcxmDqJvPg21Xgs8IpQ4nLPr9hBOmOcLEmMc
         qEWGWeDCZDFuvZsNw0pPmMnSul1Xg3M+rKySBhlAIaQuOJwbbwzuIWATPDV6XfSiSS1E
         KYPm94x60mqG3lhKCQj6ZEJp3BQ5T+BezeW0thpTYkEhtpL5Vx/lsd/2+QUzIKReilf7
         t2j+i6pNbu3xEz2yVnX/bQ/e85+IT5bdrcCmqMmkRRbHuLFQuuf/vnBlwHhf/4Bc3iQO
         CzjWZ6ivztNPxJ/ehdRS9sk7qWVz0fLLNRDEsEGGvjsclv8Wrr85HK4jYcg2miOcGchy
         LTNA==
X-Gm-Message-State: AOJu0YxypnoxbMOJLo0ymGG9rbXTzHbhsom8MI4OxxhzyXXo+3rk3VTP
	ERbvQMM0FlJs8E2VP3dm4r1KXA==
X-Google-Smtp-Source: AGHT+IH0cLMnt++OxXQaz5pgZY6kHmQMxAtk4c0SyB052nIznwOmmp2huLT7DDHY0oMZldy8+AbXOQ==
X-Received: by 2002:a17:903:18b:b0:1c6:ec8:4c82 with SMTP id z11-20020a170903018b00b001c60ec84c82mr303280plg.23.1697061378736;
        Wed, 11 Oct 2023 14:56:18 -0700 (PDT)
Received: from google.com (13.65.82.34.bc.googleusercontent.com. [34.82.65.13])
        by smtp.gmail.com with ESMTPSA id bt12-20020a17090af00c00b0026b12768e46sm383180pjb.42.2023.10.11.14.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 14:56:18 -0700 (PDT)
Date: Wed, 11 Oct 2023 14:56:14 -0700
From: William McVicker <willmcvicker@google.com>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org,
	tomasz.figa@gmail.com, s.nawrocki@samsung.com,
	linus.walleij@linaro.org, wim@linux-watchdog.org,
	linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org,
	arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org,
	cw00.choi@samsung.com, tudor.ambarus@linaro.org,
	andre.draszik@linaro.org, semen.protsenko@linaro.org,
	saravanak@google.com, soc@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org,
	kernel-team@android.com, linux-serial@vger.kernel.org
Subject: Re: [PATCH v3 19/20] arm64: defconfig: Enable Google Tensor SoC
Message-ID: <ZScZ_sllcdyS7tCi@google.com>
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-20-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011184823.443959-20-peter.griffin@linaro.org>
X-Spam-Status: No, score=-15.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL,
	USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/11/2023, Peter Griffin wrote:
> Add the Google Tensor SoC to the arm64 defconfig
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

Tested-by: Will McVicker <willmcvicker@google.com>

Thanks,
Will

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 5315789f4868..8a34603b1822 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -41,6 +41,7 @@ CONFIG_ARCH_BCMBCA=y
>  CONFIG_ARCH_BRCMSTB=y
>  CONFIG_ARCH_BERLIN=y
>  CONFIG_ARCH_EXYNOS=y
> +CONFIG_ARCH_GOOGLE_TENSOR=y
>  CONFIG_ARCH_SPARX5=y
>  CONFIG_ARCH_K3=y
>  CONFIG_ARCH_LG1K=y
> -- 
> 2.42.0.655.g421f12c284-goog
> 

