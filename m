Return-Path: <devicetree+bounces-9929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 577517CF06B
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:49:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13A00281E45
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 06:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B46B63DF;
	Thu, 19 Oct 2023 06:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jqYhMhwq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C891D63CF
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:49:53 +0000 (UTC)
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93BC5126
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 23:49:52 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1caa371dcd8so15092335ad.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 23:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697698192; x=1698302992; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iypGtD7DPCwKUP/xzbPis5St8GeNHklM3nIt7ym+WcE=;
        b=jqYhMhwqKtBqd6MLEsiwgDyQ1tlPZvFIDZJM+Lxk0PbkrrbvJZEWEwHrrNsK24cefg
         fOXP1Ryl8JjREr7Y298KJ3YoBQkOcslHc8OqTgr3LzBQfychKLozzPX26K4A2mfSKFI1
         nO4UaWQ1INbo3Vc9XdgJf8TAGW23SzA3wi/E7Mt187+n2j1WoTemvlFqtA8fjogEQ3Hf
         Q0pkdqKTbTOMYaKtCc4vhw46QyFd3EXPOOagpjgwNROvrTL+a1rWfN/pVgmkVOr8mQn+
         dn7C8l/hLSo6ccuxBtXBtcr00YJ9YqcYuuHk8UVvaEMOeRjuTqF2jEGuUQwkEvDH7b0h
         xOQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697698192; x=1698302992;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iypGtD7DPCwKUP/xzbPis5St8GeNHklM3nIt7ym+WcE=;
        b=gN2AQ++BofSQqdjgzEczBYx/yk9X8HV5h4QHwjN/WXJRGb9jQj00NF/DR3qJy9pHNc
         XpaP24R0DOAZU4fwfuXfLrihzwZj5d4pP4wRQxhvXB2qu4WqxF8DxyTz81znUdwnZlbg
         PaDX6XAdBedTKkeZpgZf0IndnuiiskmMGcea7BBgFjxMEVoBFIOPWKCKeGyhhl9oAZVZ
         3QptVF937xq/clWW4cSR+Fo5gIvMCZzQwtf/LHbxPQqDh9WeeCplDvhutELInhVAqiUI
         fAEjxLdyfhRjMJDhzgJJnI8eD4uKPhrSOHRbfaPxCnfQoy+HjnZzn+6c8vXXntZMqyj9
         GT5A==
X-Gm-Message-State: AOJu0YzqeakYemQCE4gKBhZLD9+hZNxmZj8I7C2HAbByrVe0wrNXJuin
	yKsx7uwY1usARYTzCD0bGWXsaw==
X-Google-Smtp-Source: AGHT+IH82EMATIWoNzRSDE2s4yk4Kx2MxpgdCm4diwfW3pESmg8Yb6n4T8gXs9GRjAhlBrLMIO5LWQ==
X-Received: by 2002:a17:903:210d:b0:1c9:97b7:b3cc with SMTP id o13-20020a170903210d00b001c997b7b3ccmr1170380ple.47.1697698192143;
        Wed, 18 Oct 2023 23:49:52 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id b5-20020a170903228500b001c74876f018sm1077747plh.18.2023.10.18.23.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 23:49:51 -0700 (PDT)
Date: Thu, 19 Oct 2023 12:19:49 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Robert Marko <robimarko@gmail.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	ilia.lin@kernel.org, rafael@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] cpufreq: qcom-nvmem: add support for IPQ6018
Message-ID: <20231019064949.ly6e6c5u4g7jobjm@vireshk-i7>
References: <20231016175532.2081344-1-robimarko@gmail.com>
 <20231016175532.2081344-2-robimarko@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231016175532.2081344-2-robimarko@gmail.com>

On 16-10-23, 19:55, Robert Marko wrote:
> IPQ6018 SoC series comes in multiple SKU-s, and not all of them support
> high frequency OPP points.
> 
> SoC itself does however have a single bit in QFPROM to indicate the CPU
> speed-bin.
> That bit is used to indicate frequency limit of 1.5GHz, but that alone is
> not enough as IPQ6000 only goes up to 1.2GHz, but SMEM ID can be used to
> limit it further.
> 
> IPQ6018 compatible is blacklisted from DT platdev as the cpufreq device
> will get created by NVMEM CPUFreq driver.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c |  1 +
>  drivers/cpufreq/qcom-cpufreq-nvmem.c | 58 ++++++++++++++++++++++++++++
>  2 files changed, 59 insertions(+)

Applied. Thanks.

-- 
viresh

