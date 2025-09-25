Return-Path: <devicetree+bounces-221276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 151ACB9E36C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:10:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 108187B45C0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 232392E62B7;
	Thu, 25 Sep 2025 09:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZNEVQhCi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DDF2DEA61
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758791424; cv=none; b=SnGb1cJU2Y5dPNrUfwrjn1IyKg25EgWs52dwUC8U/sZXXa1I+fFiWEWSSosPPOpiB4MGjn4UFD6qMsyvPn3Oesnhpa9pZQC9eE3CrdYdiIppLjOdXEO5fY/XTe2AJWf0fu4PuMo3Z8rYWsfwb6PTCcBZaSCVPsqX/Ky8w7Og9Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758791424; c=relaxed/simple;
	bh=L5XR6t5ZxwfG3rtP2YnGXIBz4GtqNch7l7akgqfMJNs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dGnTSjLxrhJqRNCNDt1Jmm09yWoPhrdv+oE33Brok7zoGBLBI8CWS0wKHLxw7YIZ8+b3KahMOkKVHGdaTIoOV/t/dt9aZvxuFL1w+KMtxDPxVpRZtf/RyxWuzFXUfGEZq6sgIhwPubWepeoE3SrQeu8c9zQ1t7RJyFtzNhZKyHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZNEVQhCi; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3f2ae6fae12so389161f8f.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758791420; x=1759396220; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nMuA4DWC6qNeuux3AJTay/iyO89ifrzsRhDuGmNfotc=;
        b=ZNEVQhCiUaS4rNzMkUfSwGh75tyS/xDug9nFLpBRlRh600+XKL5d4QkFikSRs6y0fU
         nsd1nKRh1f+SBofkmrSphSxpGnVwOMti8pinY0Ahkk/nM4JyJYrb0FqUHZdBe26np63z
         TaLFo/XsNaCjyL8hl9dnsE+/BRYHO4jPvPifKWcwbqk7yHG27TkkwAhUjrRzImj94t/j
         g9izz81008mC0rtN6Ip7xjNgSN3RvxxCzwA0FhZSx2BISl3R/eO8BVbxytjl8vHLVlPY
         Fi+UB9mLUQlUugtLCa268g9hEC35EdWyuBYRDckiZPOmyu7gMYYNjwzZvRNvtcc0lSL6
         3WLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758791420; x=1759396220;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nMuA4DWC6qNeuux3AJTay/iyO89ifrzsRhDuGmNfotc=;
        b=ijf8VPMQr6XZh0WsQkqN4lUoJLTO1ESFXI2GriCB0vRG6FM+432YUGi1b/nF+BG1Ht
         WuomyYJuoYz0Xc5gJ2urCscoyK8NR7EKgNVxT+AqcUHYPG+D5cFd8yiVrlOX+cnaf60B
         w98JphogqCHjSgIOSicTQneeo7QmqrCI79TjA4Ygi4iKSrhR+Xfc0XhgVQH2fTuiFXdl
         FdthufBlBJKwgz5ePpAQ1xCsoacWK0PJZkaCRqVWL80JlFOQ/qj/+4mfWLivmAX9xpcy
         PFqZUm0F+miWeQttVTkWmqyF2ye8Knuf3/UkCmHpMNHk5hB46ldDJX06GuDlqbHR0Nj2
         AZ5A==
X-Forwarded-Encrypted: i=1; AJvYcCXn92PAoKhMonITuHi0LvX7Nn2DL1ixVSiQC8jcoWa4xc/EZ4PkPmtY0R++d3lHzp2k/5NwsuEFgPmH@vger.kernel.org
X-Gm-Message-State: AOJu0YyXxR5z1DXXnPUsdz9wbAqjCGkd93MqnLXTpssTvtj8Ih5e155e
	fL3XdKamdkLkPkX9rEDq53r55XKHHCjdQwnaFaAVg+C9LvHyQq0qcMC7LspEb9ZhriA=
X-Gm-Gg: ASbGncsRqjY3bhJ0rBAwAmx7r/GYQ3IZURzhncnOTRy7rH+PHzPphs7v43dzwNh4cbK
	s6RFj8QuxxAx55yvP9gyXkVumiDNSVXs+qoRBM/OcEpbVRNf7Ol3E/OhmIXrPc8uFoT2PiFTSwa
	Ih/tY8VBxq7SG5sA4eRbFaIuhtYFtYILFgFCCJl2XnzZPHBMUQlsUYrp56fstjmBl+zVFPPph1t
	jZ7vjEBg5Mp9PwZthVSHqxRhoNcOTgt/7/DFBsFWmsysPVVhqDAFlFMxprjIyD4p6/7+Opp8q1D
	HKF+KBhy/m4ZJkpQUvH5/eWuGK9QUSAY51XVngqba3CkZt1iAqZqB0Ukym4nnx9iVpvc7t5+hOF
	YRs81iNRJC22LEWJ7Dndn/EmozOjJQH0q/rBwN3NMlCCf1wKHDnOcv//arGDc8/EVOqbNh/YhoS
	LCg4TtfU7aJtiaY2/1Kde1
X-Google-Smtp-Source: AGHT+IFDpMpHsFRgd6YSWfaUgP4h+TK2gackvhjt2ED62B1HXzzX5IdszOWCjQD2qcaPDSO7lAZ6/Q==
X-Received: by 2002:a05:6000:2484:b0:3f1:2671:6d9e with SMTP id ffacd0b85a97d-40e497c346fmr2389638f8f.1.1758791420460;
        Thu, 25 Sep 2025 02:10:20 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e33b9e3bdsm27566255e9.2.2025.09.25.02.10.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 02:10:19 -0700 (PDT)
Message-ID: <d18c5196-dd8e-47d6-87bd-de0ac94fbf3b@linaro.org>
Date: Thu, 25 Sep 2025 10:10:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] clk: qcom: camcc: Add support for camera clock
 controller for Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Taniya Das <taniya.das@oss.qualcomm.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com
References: <20250924-knp-mmclk-v1-0-d7ea96b4784a@oss.qualcomm.com>
 <20250924-knp-mmclk-v1-7-d7ea96b4784a@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250924-knp-mmclk-v1-7-d7ea96b4784a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/09/2025 00:56, Jingyi Wang wrote:
> +static u32 cam_cc_kaanapali_critical_cbcrs[] = {
> +	0x21398, /* CAM_CC_DRV_AHB_CLK */
> +	0x21390, /* CAM_CC_DRV_XO_CLK */
> +	0x21364, /* CAM_CC_GDSC_CLK */
> +	0x21368, /* CAM_CC_SLEEP_CLK */
> +};

How is this critical list decided ?

For example why is the AHB clock critical but the CAMNOC and AXI clocks 
not critical ?

---
bod

