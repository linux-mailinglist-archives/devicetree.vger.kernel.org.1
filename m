Return-Path: <devicetree+bounces-88759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A81E93EE63
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 09:27:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F30EC1F21364
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 07:27:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C22686267;
	Mon, 29 Jul 2024 07:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eFsXWBme"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335B584FAC
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 07:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722238073; cv=none; b=ZMJWxf/ZAN30Vx4OWPd2Xq124MCS2oTkB/4pEroIU/ZjZ28lpODXtC0oF0dd3jq5Vr60qhJt7YVAr18oIZpscjU6GyHnLqd1V7CI75xtX+7AJ8ZpXp7fRbVEeBqhu7szm41ClZVHew2tOw3RsUAwlzaJYbZqjMyuvHw8Cc1oCXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722238073; c=relaxed/simple;
	bh=g1Bfdx1NZahC3TeP1Q0uSYngscxSAC9NK7v3LPtb4g4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NdxiHfDz0NAaG89If/30l6MSPTPFUbkmYhlYhOuRHrjMXO8DGnvYGFeLPAmRMGyD3DVR0Ovsuva7CtqBH5VD5Viiqvid+tdpwM3v++tpIpLKNuF7F0tSkVQVLkI3W5TMqcj6aLxMQ4H4wnMoY0MSgUcDnRQ/2H7OL9IzkjZdMMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eFsXWBme; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ef18ca13f2so6735821fa.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 00:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722238069; x=1722842869; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZzbU8q+FWgrm3i/pjC78LeEzfxb8uIRGDB17iTu2b90=;
        b=eFsXWBme8AAe5Tgpl7oj6KJNizsd4sLixRGTDUZZsR5/tPdcxJ5Srt3+NV6lghW2wG
         3zgVFM/3S0K+BZvu8bhTbPT3V3OyULCCRy6MOs16DQI53OHDm8hri7gEU9h5emb41PyP
         UfCxoCxYqAH3clmnz8YsBLjWppmOZ1vBn4MsU4JAzmhINnIORn/yAHT+Lul9v7B23qpn
         qn6vupRObr0pLT7p08GWyoeAJkz+OmG4a6S0s8JCr5r9rbUTyt/I+SACugOwfQxG/Rpl
         kMHuCfhZStI/HMn7teEjen87OHljLMLg8uhMFm8pQwQrZGqLCgRqeLimK1yHYr34x8e3
         9dvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722238069; x=1722842869;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZzbU8q+FWgrm3i/pjC78LeEzfxb8uIRGDB17iTu2b90=;
        b=jCFfCiA9c2843Or4alEtlTPexJT69t+oWqw4Gwe+vgkvMQ8kFok3IgdAW0H+I1IN9j
         9NKQZeNHavATyxkKLXkd3ETs7xASeegYRL9KpXkq868uM87JdGWUcQwZ5szVATPBygXe
         e03uQ3wF3ZeycIs2lp1gh7xXK7P+KAA84T9CGFf1aCJWoXNapTNz2InBqKCh6hKDSgaW
         lHIHpnRQceCCg/s2YC7wYPy29/NrBUPjgPWKf8jFbaTJspV6q6FDHZID/MbcW9dLwRw0
         TEJjCy76LnH8Rmn1G/xWyZvBZjlAtpAAgrsc3g6fzlvDL2aYNJy4j+WvD9hMaVUZFfIp
         BFxw==
X-Forwarded-Encrypted: i=1; AJvYcCUy9fis+3mv8n8rNrQB0sm9KIRrG0b6NoE3p/rBbvvcZ4YdO07rEo7Mg5UBcxbs8cCHtdbehdd9D74EmEw+b63E3UJaQZ5NkW+FeA==
X-Gm-Message-State: AOJu0YxW+ApJ/GPzWP+H/jCZ0HxVlSrXshKagQoJs3rZjyiqJqhjd0z5
	M+f6iolxhCpQxlHmZ/jBTtl9epU2uAKR5yfRIUU8QNf5LWdewJe1r0bTyLeSB6Y=
X-Google-Smtp-Source: AGHT+IHGka7Vyt+PFTMS4CYDvtnk6UifRKtbJJ+Elb2ByPtE3I5NLETmc6bBkdbUhn4+QGJPOhZ1+g==
X-Received: by 2002:a05:6512:3b84:b0:52e:9beb:bc09 with SMTP id 2adb3069b0e04-52fd5275421mr4871735e87.3.1722238069148;
        Mon, 29 Jul 2024 00:27:49 -0700 (PDT)
Received: from [10.8.0.5] (mleia.com. [178.79.152.223])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5bd127csm1372806e87.89.2024.07.29.00.27.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jul 2024 00:27:48 -0700 (PDT)
Message-ID: <d760dfb1-b86b-4d1b-a927-575416e780fd@linaro.org>
Date: Mon, 29 Jul 2024 10:27:36 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2] dt-bindings: clock: qcom: Remove required-opps from
 required list on SM8650
Content-Language: en-US
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>,
 Ajit Pandey <quic_ajipan@quicinc.com>, kernel test robot <lkp@intel.com>
References: <20240720052818.26441-1-quic_jkona@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240720052818.26441-1-quic_jkona@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jagadeesh,

On 7/20/24 08:28, Jagadeesh Kona wrote:
> On SM8650, the minimum voltage corner supported on MMCX from cmd-db is
> sufficient for clock controllers to operate and there is no need to specify
> the required-opps. Hence remove the required-opps property from the list of
> required properties for SM8650 camcc and videocc bindings.
> 
> This fixes:
> arch/arm64/boot/dts/qcom/sm8650-mtp.dtb: clock-controller@aaf0000:
> 'required-opps' is a required property
> 
> arch/arm64/boot/dts/qcom/sm8650-mtp.dtb: clock-controller@ade0000:
> 'required-opps' is a required property
> 
> Fixes: a6a61b9701d1 ("dt-bindings: clock: qcom: Add SM8650 video clock controller")
> Fixes: 1ae3f0578e0e ("dt-bindings: clock: qcom: Add SM8650 camera clock controller")
> Reported-by: kernel test robot <lkp@intel.com>

Well, I believe I reported about this problem way before the change has been merged
and the problem reported by the robot, however it was not taken into account in time:

https://lore.kernel.org/all/0f13ab6b-dff1-4b26-9707-704ae2e2b535@linaro.org/

> Closes: https://lore.kernel.org/oe-kbuild-all/202407070147.C9c3oTqS-lkp@intel.com/
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>

--
Best wishes,
Vladimir


