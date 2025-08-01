Return-Path: <devicetree+bounces-201283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCDAB17F4E
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 11:30:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28C4616FACB
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 09:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD3442264A8;
	Fri,  1 Aug 2025 09:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nhIG7ViP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F4E21D3F6
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 09:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754040649; cv=none; b=TVcN4FTSTq4/Qi51Vi1MbTZZ+jtosLnFEO9XprM1F+n7zEc8yKQewz9kC5W3yU8mt8b6lO9vFRwwcl9qkP2CIMxtKZMz10DDEXr6FL/GiTMvr9YGK8jd8tRiktriGTuYJs2RnnPy+FUL5K1Ov4j6cmDuQ6djJru5O1XpT8suyo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754040649; c=relaxed/simple;
	bh=kfic+uLDROpAOeszY5apQpKFu2TLHnt0S6dZt2k5jSw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vm7jT/0343d3nrO7Lls2s+hidpdGRJxNmbtol7biI6kOU3rG6LYg7+Icu1wdm+O7/1HsFutUn5blQ7PPM47pTnpybhv3XwUDdpTCpbYAuhbDPvbBIagHkuoIZqRBMGz3MnqFy+TI//kmqM/l8mWElmZDtucy5jZ0qgIcpamysQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nhIG7ViP; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4561ca74829so7172195e9.0
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 02:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754040646; x=1754645446; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W2mFNWcV7woJMSvTpn6utw5/t2ceVV02tn5+m4prOqA=;
        b=nhIG7ViPMMHYfYONAu7LZwUW3XykX8NysiT+JluHRC55gFZn761mn8ghazV74bxtyG
         IAHbZGbzpw6O5Dj3VtplsExdWAV3+ht+lqq2jskW3W5VUD7tkshWr6/33XZ2sXM+sL3m
         FcRYDVEWCnMvNH5R+0KddDn/Ob2NV9iVWEBYhBLfuk9/yPABQJ+naHcLYHVp26MzTlw6
         1k6B4G+qwGHxdRouuVrpvFJPlI8E8MKyDmxt/wv6QW40qstEJk+xlSprnhvpCnIzE7bj
         CLf3SdCk8ZmF17QBETSlpwFYqagr46ef3Rd/u8AXqi6RDy1coPgWinNVdFApRPtcbm8k
         eU1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754040646; x=1754645446;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W2mFNWcV7woJMSvTpn6utw5/t2ceVV02tn5+m4prOqA=;
        b=JozJYKvUDuW1QRv9tHTzc/NryBeG56Oc+BYdOhCnVQ5TKSAdQlnyh20ZHDhYGiMCgl
         AAaqUnDNYATMh5e8HgGcAg8O1CV46oAruOF7lRbohC/BfwQH9ExPBAhaI0etXAwJrgCe
         v8Vqh/m93WBLB0yQtuC+md2OhyA+4eUSpT3usaLupGFE04sIApWljPBsQSrNPaYAXj7l
         wa9MPUW5axJtUhZL4p8qIlNYi8MKlf5vPJc8TuVv0TcaxNeTOnORCsuKMj56mfzUOiIw
         xV1SLwSKk7b5swzWLhPZRnvzSXu4wpFfozUcXfoSRS9icdfWp7Abkl2KASCfF7v5b5e6
         dJPA==
X-Gm-Message-State: AOJu0YzOE656ysgXsgA4aL/mzna0n4NQycHNuxsTCcrM3XW05djc3uLe
	Nyl4aFFVgpgm+SjkqWypXqoC6javZGXXsp5XGgHXQeTlBaDlZ8qflqYvtvNNhOWgpuw=
X-Gm-Gg: ASbGnctTL1uwP9cfcAvUSEgWiDT15qif6hvrObiAFF32EufbvaTYmXSZCHJjZor4KP6
	CMMyvT95O8y8PcL83xMxjtRZwfvdTZEd3BcN2AHHJu0RvTuFEDdpYqxeRJIViPAIsWgPrvtBfsB
	7a3KJnx1qOTzPZe0k6CTfcC8x0gjP3ByppxKis1kdhXKfzYz3I1lBX1ei4KO3ZsQ0hY/7qwgpKG
	bQ7l/jSp8nlmv3s69LRYohyTmJIhymXqQBOIgF50Va+pP3mmMPcpZ2MIJSdroMhiSxvgTbGxpTp
	L4CoELDuIFy3k1qoOaP+FzGMwA22KrFwZvLRhFNeO/5+h4uhy/JlTIUkR2KW9dEo6kEph1XQ9tC
	KopPISgg6ErafqmsraZP77kb8uCXtRW2EQaYAwSEKHoWOdJACmEIietnElVC6og==
X-Google-Smtp-Source: AGHT+IHCYZQ7LJ7cYHoVpSEsRcjkIRr0e2up/j89C6HrCxyO6Tidr6iZZH2RM3WjZrbfp3fSA5veNQ==
X-Received: by 2002:a05:600c:c177:b0:456:cdf:1ecd with SMTP id 5b1f17b1804b1-45892bde5abmr104195385e9.31.1754040646427;
        Fri, 01 Aug 2025 02:30:46 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-458953f887asm98477105e9.29.2025.08.01.02.30.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Aug 2025 02:30:45 -0700 (PDT)
Message-ID: <8bd9a924-3fc3-4f4a-8096-458e771f94a4@linaro.org>
Date: Fri, 1 Aug 2025 11:30:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: thermal: tsens: Add QCS615 compatible
To: Gaurav Kohli <quic_gkohli@quicinc.com>, amitk@kernel.org,
 rafael@kernel.org, rui.zhang@intel.com, lukasz.luba@arm.com,
 robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, quic_manafm@quicinc.com
References: <20250624064945.764245-1-quic_gkohli@quicinc.com>
 <20250624064945.764245-2-quic_gkohli@quicinc.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250624064945.764245-2-quic_gkohli@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 24/06/2025 08:49, Gaurav Kohli wrote:
> Add compatibility string for the thermal sensors on QCS615 platform.
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> 
> diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> index 0e653bbe9884..c8cc67b65f73 100644
> --- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> +++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
> @@ -53,6 +53,7 @@ properties:
>                 - qcom,msm8996-tsens
>                 - qcom,msm8998-tsens
>                 - qcom,qcm2290-tsens
> +              - qcom,qcs615-tsens
>                 - qcom,sa8255p-tsens
>                 - qcom,sa8775p-tsens
>                 - qcom,sar2130p-tsens

Applied patch 1/2

Thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

