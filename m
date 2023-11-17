Return-Path: <devicetree+bounces-16763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6801B7EF8DA
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:51:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94C561C20AE0
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6138D446DD;
	Fri, 17 Nov 2023 20:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cxymiNZK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 212C7D5B
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:51:00 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-407c3adef8eso21144815e9.2
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700254258; x=1700859058; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Cfb9CpRJGax+VMCUnz4cwDEpCdrdsrUj8kZuGAr5ZY=;
        b=cxymiNZKAxhdcmdx5RX7VH/snGLgCNEeorBQnO9tnizwKVQE2SXJljutN7N43zElas
         HyQJ7684IF0aZC5fZMRCqEF/IIahRnIHfzxvebQzjzEWMxKmEYa4Gl85jzE8l73Caezy
         jsexBtZD2Cvu3yzv3u6iJegtwdFLqIHpxFgzHdP1Q+bSHaIi8GfX+XRupMhFkWVIqu+u
         rGpQvhivx4Ek9RxWsVKyM+dF25cllZ5Wv0hCvlcKamiQL4lI7kTRCClg4iY3L588fgCJ
         nDevZc0uio7RAbo0KDVYnj9UFy7dVEgak0M6kPZB/bYZfyAy7Is90k0B9ACAC4FdGdFe
         wSmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700254258; x=1700859058;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Cfb9CpRJGax+VMCUnz4cwDEpCdrdsrUj8kZuGAr5ZY=;
        b=jgqDlxV/HLN1OTolFp6G2Bb21xuwBIBbH+wj3DORPNbLrdbvFbxqQuta1jOZoavy2J
         4wGbR1FPWZIj4L4FLsxv6Nk853V9r6k3JQfxAFF/gFzma4TaFO+KdyoygpOwakB1vmB2
         ixmJf4aKUFqvlqFNBbsnDMCUoD7eX3mTgHzmMmGcyb2mN9+0pVkjhgtU29sAJJDVKM+A
         afr036bnYEWg+5L+TEqBD3kYH2pHrwUFhKd4GJ3Hx7+MJFnrgrZRSGMGTGUuAXwiqNDP
         2NDgWVwPcnKCdADd8nidKZBEvEw9uAcTYmT0Ik9LO8HZPjU4ua/8Dro4zXlCeEsgujMs
         xl+Q==
X-Gm-Message-State: AOJu0YyN5qvYxhWj5Br5+8XD+0hrGUoNuO2in/fc3NbPgJqGoeUpkUot
	y4qk1T66Cd7RrK9EmnAcm4Cb3FtlyP/qyCQOdWMC4RVH
X-Google-Smtp-Source: AGHT+IFjAiXluizJ9xFU9rHxpbwZ5V6ciMuUpG4zoA9i1A1H/vCkh74tzaHFHMJWi4Ib6mtXQ4tgSw==
X-Received: by 2002:a05:600c:45ca:b0:405:499a:7fc1 with SMTP id s10-20020a05600c45ca00b00405499a7fc1mr203435wmo.40.1700254257945;
        Fri, 17 Nov 2023 12:50:57 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id je14-20020a05600c1f8e00b0040596352951sm8679047wmb.5.2023.11.17.12.50.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Nov 2023 12:50:57 -0800 (PST)
Message-ID: <ec9d03f7-7158-4309-9a04-b08c69b89f39@linaro.org>
Date: Fri, 17 Nov 2023 20:50:56 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/4] clk: qcom: Add Global Clock controller (GCC)
 driver for X1E80100
Content-Language: en-US
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: agross@kernel.org, conor+dt@kernel.org, quic_tdas@quicinc.com,
 quic_rjendra@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, neil.armstrong@linaro.org,
 abel.vesa@linaro.org, quic_tsoni@quicinc.com
References: <20231117092737.28362-1-quic_sibis@quicinc.com>
 <20231117092737.28362-3-quic_sibis@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231117092737.28362-3-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/11/2023 09:27, Sibi Sankar wrote:
> * Use shared ops in the x1e80100 gcc driver [Bryan].

This looks better to me now / more consistent with what we have in 
sc8280xp - where we do try to hit suspend and => retention/parking matters.

Could you give a bit more detail on why SDCC* doesn't warrant parking on 
X1E80100 as on SC8280XP though ?

---
bod

