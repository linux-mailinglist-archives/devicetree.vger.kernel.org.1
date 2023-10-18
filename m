Return-Path: <devicetree+bounces-9801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A547CE892
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 22:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1699281C69
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FDBC1EB49;
	Wed, 18 Oct 2023 20:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qp1Ttjd7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE241EB2C
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 20:10:24 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D381112
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:10:22 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50797cf5b69so7573551e87.2
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697659820; x=1698264620; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vC8BSO57sX+RFvEjTRkQdrl0WXBXIli5ij6sBpRlpmY=;
        b=qp1Ttjd7bg4NjuZFjqHRmkIOMEi5eZZT+fmctQsM9QeVK52AlHj+pQuntQyJzTHJup
         tMocsb7Y8g1w277Flaw3inb6Ae548IXWa6+xs4PzI+k90VXTV4TEYVQeAjXCWUp0cwxB
         Vxn9/OQonQYbSfTvUw4HauQDqZTOTEp6ir1r0d3/hYKtuaNBQNI1EQgvpZaHJPegviUI
         eGTFP9q3l+7owQdLsOnwGVkJA5aqZviIgSU8qZZhvp3j+/36VuhH6bjn/F43sQkE+2jK
         H5WdKDEIAPmC6d6oOBNj0fJvTz9tOm36GSbxtLRn3Ggz0rDFS8RquSQtbfM6qtaIpRqs
         ZkuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697659820; x=1698264620;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vC8BSO57sX+RFvEjTRkQdrl0WXBXIli5ij6sBpRlpmY=;
        b=fBuMxCVO3eCNXPXy9w61QvZ5imLMbwRA5xh0EX+iYWGcSVZ+xyl138AISa0QPrSdOn
         a4HTXh2H0k1nVd8W8OkMJOVWpPlYRTYo/KNpLS3+J0kvUnsLnAhFPnHQB4SvYEuPxMyy
         ztxInpLsfrjhNl00R9RTHcvTnvEW1YO9oiuBiVAz+elQpwHhdfL212l/UV824BcGHSYp
         uP+P2P9jkD0Ip27hqib47PiCij9x3p6GmuPcBChFivf6727mJ8v1x9NrjFaSg0w+Vilz
         LXce0PoMaNNJbt4rgdAsD37S4nV+CJC4lf+taI0RW9d1h1DMxqqNNtas4mP+W/sFzLak
         SmFw==
X-Gm-Message-State: AOJu0Yy91xnB/OJZDmD/8GrWwKSytQdtQfAf+bgPPYD0vL3hRvo4gLfH
	xUUiPOrQ50f9HBSUrfinrY0SWQ==
X-Google-Smtp-Source: AGHT+IEoV8GqxarhRZJW+0Q9BZA1W9wzW1qrmKIldTts6mlhYjR/7ldyMGUwHxDYw3kBmonbwYz5Ug==
X-Received: by 2002:a05:6512:15b:b0:507:a984:bf40 with SMTP id m27-20020a056512015b00b00507a984bf40mr40011lfo.47.1697659820172;
        Wed, 18 Oct 2023 13:10:20 -0700 (PDT)
Received: from [172.30.205.86] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id v7-20020a056512048700b0050336e38735sm816806lfq.92.2023.10.18.13.10.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 13:10:19 -0700 (PDT)
Message-ID: <5e1eacc5-721e-4ac1-a62f-ece6a1c4355c@linaro.org>
Date: Wed, 18 Oct 2023 22:10:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 8/8] arm64: dts: qcom: ipq9574: populate the opp table
 based on the eFuse
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
 quic_kathirav@quicinc.com, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
References: <cover.1697600121.git.quic_varada@quicinc.com>
 <5d1bf44de58db10a20d1b116c7fd4b073d01271e.1697600121.git.quic_varada@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <5d1bf44de58db10a20d1b116c7fd4b073d01271e.1697600121.git.quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/18/23 11:29, Varadarajan Narayanan wrote:
> IPQ95xx SoCs have different OPPs available for the CPU based on
> SoC variant. This can be determined from an eFuse register
> present in the silicon.
> 
> Add support to read the eFuse and populate the OPPs based on it.
> 
> Frequency	1.2GHz	1.8GHz	1.5GHz	No	opp-supported-hw
> 					Limit
> ------------------------------------------------------------
> 936000000	1	1	1	1	0xf
> 1104000000	1	1	1	1	0xf
> 1200000000	1	1	1	1	0xf
> 1416000000	0	1	1	1	0x7
> 1488000000	0	1	1	1	0x7
> 1800000000	0	1	0	1	0x5
> 2208000000	0	0	0	1	0x1
> -----------------------------------------------------------
> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2:	cpu_speed_bin -> cpu-speed-bin in node name
> 	Move comment to commit log
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

