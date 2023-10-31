Return-Path: <devicetree+bounces-13106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 690FF7DC891
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:44:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9AD591C209AB
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C9DDD27E;
	Tue, 31 Oct 2023 08:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wteoQUuS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D24A6D22
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 08:44:15 +0000 (UTC)
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4918DDE
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 01:44:13 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1cc37fb1310so18129625ad.1
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 01:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698741853; x=1699346653; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YZyTDgOu+Mk84MW1y8TY9+DV7jPCPdy2MJyiStmLRmc=;
        b=wteoQUuS/mcbK96HWeBn6VsU3LJA4ZC11ZPSxAQreZjuQcceCTeHStrIq22y1/4+c1
         7hAYNeK3kfNAxIcJBHED1JH+s3z/ECfnvDxHdRH0kCinE298Sv9wJg+/FWL9f13isKzS
         0C264Zy8PULh7zEEdgYeYUQcVE9ToFgqzNZf/1xUYCjc6PT/aB+u60F2z9gI8SFFQqBl
         r+QLTHs+5YFbPXtIIen7CQfJoEhEpVU5/Mgk9du6J+RgiGePrE7nUvioqR0ZCa4JR6Bz
         8Y5TBMsxHNc1XdzkIdS9vFTdDbdeMyuAmqAUAihYXwhlfAETkkeSygkwS8qQevfaSfKB
         mrBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698741853; x=1699346653;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YZyTDgOu+Mk84MW1y8TY9+DV7jPCPdy2MJyiStmLRmc=;
        b=mapawIiUA2s3KerftqxS0rHSOSv6pc+hy+TtJQVlp6TZKdcBKPsnamisxLh0mXsZlQ
         hmh+VE/kv9EGHal5PKkWnsg8t+GVSg/P8DW/E2aRZk6atG+ChPJtwYFgDVx7DqRMaufG
         YAFA22Itw5JC/WQ2o/cg6/UEUNSyD12O8Zy/u5VK1Brtcwc9Mq9K8TUwuAa1O7AbNe39
         CJiUFYnTt0ruil0sfbhkzQogaCj4Bcqyp0lKCcvcRxZ2w8wsa32dTGPsdFyOKH6d72zm
         ImRbMQcXONcZnO/T8inzHoWA+dMMk/WfJl3LolwweBlCQjVC0l5eBqBB5TQm4GsODIjD
         8DmQ==
X-Gm-Message-State: AOJu0Yzy3aE2kKyeWGApaGJx9xb9+JniVGrlodCA+ohStT1oUmGSMEsq
	fvQQxKoFAgjBuHks3/3Usfud4710NxXFxgywl3w=
X-Google-Smtp-Source: AGHT+IE46TBsZ8WZ5WIF5n2a0wgB/ZoCaZ+M9uHGlPT7/gAOdKWxWCF6QOdyRyEewyBzqw8yxRCZYA==
X-Received: by 2002:a17:902:ab81:b0:1cc:e66:3732 with SMTP id f1-20020a170902ab8100b001cc0e663732mr8974222plr.19.1698741852707;
        Tue, 31 Oct 2023 01:44:12 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id 6-20020a170902c10600b001ca4c20003dsm812711pli.69.2023.10.31.01.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 01:44:11 -0700 (PDT)
Date: Tue, 31 Oct 2023 14:14:09 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	rafael@kernel.org, ilia.lin@kernel.org, sivaprak@codeaurora.org,
	quic_kathirav@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v6 0/2] Enable cpufreq for IPQ5332 & IPQ9574
Message-ID: <20231031084409.x5kqcs4ubmd5jh47@vireshk-i7>
References: <cover.1698735972.git.quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1698735972.git.quic_varada@quicinc.com>

On 31-10-23, 12:41, Varadarajan Narayanan wrote:
> This patch series aims to enable cpufreq for IPQ5332 and IPQ9574.
> For IPQ5332, a minor enhancement to Stromer Plus ops and a safe
> source switch is needed before cpu freq can be enabled.
> 
> These are also included in this series. Posting this as a single
> series. Please let me know if this is not correct, will split in
> the subsequent revisions.
> 
> Passed the following DT related validations
> make W=1 ARCH=arm64 -j16 DT_CHECKER_FLAGS='-v -m' dt_binding_check DT_SCHEMA_FILES=qcom
> make W=1 ARCH=arm64 -j16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom dtbs_check
> 
> For IPQ5332:
> ~~~~~~~~~~~
> 	* This patch series introduces stromer plus ops which
> 	  builds on stromer ops and implements a different
> 	  set_rate and determine_rate.
> 
> 	  A different set_rate is needed since stromer plus PLLs
> 	  do not support dynamic frequency scaling. To switch
> 	  between frequencies, we have to shut down the PLL,
> 	  configure the L and ALPHA values and turn on again. So
> 	  introduce the separate set of ops for Stromer Plus PLL.
> 
> 	* Update ipq_pll_stromer_plus to use clk_alpha_pll_stromer_plus_ops
> 	  instead of clk_alpha_pll_stromer_ops.
> 
> 	* Set 'l' value to a value that is supported on all SKUs.
> 
> 	* Provide safe source switch for a53pll
> 
> 	* Include IPQ5332 in cpufreq nvmem framework
> 
> 	* Add OPP details to device tree
> 
> For IPQ9574:
> ~~~~~~~~~~~
> 	* Include IPQ9574 in cpufreq nvmem framework
> 
> 	* Add OPP details to device tree
> 
> Removed 2 patches from V1 as they have been merged
> 	* dt-bindings: cpufreq: qcom-cpufreq-nvmem: document IPQ5332
> 	* dt-bindings: cpufreq: qcom-cpufreq-nvmem: document IPQ9574
> 
> v4:	Included a patch to fix 'kernel test robot' build error --
> 	https://lore.kernel.org/r/202310181650.g8THtfsm-lkp@intel.com/
> 
> v5:	Use devm_clk_notifier_register
> 	Merge IPQ53xx and IPQ95xx cases with APQ8096 for speed bin selection
> 	Add reviewed by tags
> 
> v6:	Except these 2 patches, rest have been merged...
> 	Rebased these to latest top as they don't apply cleanly
> 	(https://lore.kernel.org/linux-arm-msm/20231025062508.vccrmkem45p3fnwe@vireshk-i7/)
> 
> Varadarajan Narayanan (2):
>   cpufreq: qti: Enable cpufreq for ipq53xx
>   cpufreq: qti: Introduce cpufreq for ipq95xx
> 
>  drivers/cpufreq/cpufreq-dt-platdev.c |  2 ++
>  drivers/cpufreq/qcom-cpufreq-nvmem.c | 12 ++++++++++++
>  2 files changed, 14 insertions(+)

Applied. Thanks.

-- 
viresh

