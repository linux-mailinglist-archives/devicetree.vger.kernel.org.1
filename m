Return-Path: <devicetree+bounces-200779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D351B15F4D
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 13:25:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73A731717D0
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 11:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3ADF294A12;
	Wed, 30 Jul 2025 11:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ROHC3poY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC92724DD13
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 11:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753874715; cv=none; b=ft8nIfnSZViBR3WYC/ZkXngb4h/JRJqeFpvEoKTk2StV7Rtq5Vyt14BwmPl/yq8YVcaAMZagzTcbHyiz7HmtxFBxeg57jsEdDbc4uGzP75uawf8Y5s9qhyQVp8R6tpCfwio52ry641/Eax+VPPnsLeDiW1PM6PIsPuc428D95Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753874715; c=relaxed/simple;
	bh=AaXLhjZNOuZ+t/gYKYez9Mw6H6FQBgt8vwLmFSdxjLE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ehRtvwMK5I2TkM55dmrBPu4cHK2/GhKaB4E6Dx9U06pMdJrGtegSM9ZvaUt8KyS2DiRREgYOHzlNDcUuCWu6qxQ/QmojxLiAsY4iUlOUEXSIKCtzqBrNOl4BKHWdcgRwui26rFqH6cHgt8+tQmXPaE67Q0peFXkEpdm+oeEk7Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ROHC3poY; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3b7920354f9so1638236f8f.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 04:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753874712; x=1754479512; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+qWnAgYumacwqqXMAwkn/jSAKd2nQaF00yjwz3QS2yE=;
        b=ROHC3poYJfjmj44dpKbRbnCQUqpYIxEOrPlr+qzOFIG4otBK5vEdp91b/r4SnhgMIm
         kgC7/vCPrQuUvqgPLs92gqlHhsrgh7y72DpeIE3RDLQ0KvdZpUDo1jQ8Ql4pQImqhnxO
         k4UBNKitvcWMK0sR5Evtrze66F/K4DP7dhUZptsCkL0QYgRo4Y6f88aKOZv4oCayp2HM
         pWfOy+vu6m0yh3u751Q8MTbaOHRsXYGkiXIkXcHAdRrsPkPU6BzcjKM3QCix8WgS6EuZ
         VzSIHzk8cxLU3QWBFVVP0FuGHWYWNiStk+nOptyj1KMG7n5DTZCA6lJgVoKaUgeaYE0s
         MBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753874712; x=1754479512;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+qWnAgYumacwqqXMAwkn/jSAKd2nQaF00yjwz3QS2yE=;
        b=d2hpvY8dBvRtMvQjbrFGl0iuJV69StXOJYNr7PrFlJ5Giw2rTmh7uS/lwiVwnFbN8D
         f5dMGx22P6btVJN723XEPy/g4hMgwI/6oUcWgWaEW81WGfrAlQf3YLqG3EXVBk8/5hlT
         XnCj2Wwq14gvRT74eQn8MDdiuVuRmW3SBqyslT0UstBgnMtxm5eQ7iRB5dzj81PCheGk
         kQ4UJPCzP0KdhgESdqzmv12DwQLkDatlpRFDxS6cGNKVKiuy1h7MzlJT2vFUY4EVX9Ns
         pBXLeSxhZ2nLe151hlqNVZcoE29/Ujti7YQ61e0NXjwnFaa/1kRjHBnbIMMTt7JnBKYt
         McEg==
X-Forwarded-Encrypted: i=1; AJvYcCWA3TMrlyDtd6Xp6pxKxWmB6FwwTvBCuFJptLIoyD/ERrSnIfFz6B5IgCzgqMus33dhhKHuRi3auT7x@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+ojGPXteQgSPxAHlld+/ek+6R84zoAGtvhShzKi2CyFPIpkoM
	qHfuE1mImNugwiSg817rNUI3gkXfBeq1kj7UO2bJoQ1tz6PsIDh7p+Fgs50r64VMIEA=
X-Gm-Gg: ASbGncs0lfRXTBQBPW2DVGKJytNtSM/zZ9Ctf0KKN1sbI8jMbo0HFHvE0S8kAS+mrXz
	WujYm42DziKA05NydmNAMpkDnVEaKc4e2+CukA4RsHIVyNWngOMfswzd2p/18yD5d+C88WV+noZ
	GpitMLiOAyzYFzLrhYI89F+9COU42jQa/WP0qbL/OxKhd0UTRstB91cE7y9eQTC3vWLVF9Pom6O
	Um69ZLmrsMix7svhqzax7zsfE0VWIIi2xkDcu9LzZCGq7wAv5llOKRx40yMlQ6m+lzZOzUsatHL
	V08IL6wzGTru5ZQFRS1QjnlwvkH9BH3aMtQkMV3G8sG+hf07g3c3CswjGG1CvuJx52PQNURPICv
	1eH7k4xrBzLvjpFU0+T1xqKW57fgTEA==
X-Google-Smtp-Source: AGHT+IGQQWsegZemm4F84iyOeDGl9Tnw8iV4E/j71ZP2nFqvNfy276zfwZeEv0tcaCBJzz3K3Y6agg==
X-Received: by 2002:a05:6000:22c1:b0:3b7:8ddc:8773 with SMTP id ffacd0b85a97d-3b79503cb44mr2603491f8f.52.1753874712030;
        Wed, 30 Jul 2025 04:25:12 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b78acd884dsm8352303f8f.33.2025.07.30.04.25.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 04:25:11 -0700 (PDT)
Date: Wed, 30 Jul 2025 14:25:09 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/7] clk: qcom: Add TCSR clock driver for Glymur
Message-ID: <aIoBFeo00PPZncCs@linaro.org>
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-3-227cfe5c8ef4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-3-227cfe5c8ef4@oss.qualcomm.com>

On 25-07-29 11:12:37, Taniya Das wrote:
> Add a clock driver for the TCSR clock controller found on Glymur, which
> provides refclks for PCIE, USB, and UFS.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig         |   8 ++
>  drivers/clk/qcom/Makefile        |   1 +
>  drivers/clk/qcom/tcsrcc-glymur.c | 257 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 266 insertions(+)
> 

[...]

> +
> +static struct clk_branch tcsr_edp_clkref_en = {
> +	.halt_reg = 0x1c,
> +	.halt_check = BRANCH_HALT_DELAY,
> +	.clkr = {
> +		.enable_reg = 0x1c,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "tcsr_edp_clkref_en",
> +			.ops = &clk_branch2_ops,

As discussed off-list, these clocks need to have the bi_tcxo as parent.

Otherwise, as far as the CCF is concerned these clocks will have rate 0,
which is obviously not the case.

Bringing this here since there is a disconnect between X Elite and
Glymur w.r.t this now.

