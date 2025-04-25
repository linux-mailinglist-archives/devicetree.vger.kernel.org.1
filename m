Return-Path: <devicetree+bounces-170787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CCDA9C49E
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 12:07:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14972177D9B
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 10:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 861D423315E;
	Fri, 25 Apr 2025 10:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tX9XKfF7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C0A21B8EC
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745575619; cv=none; b=SoXQLk4+O0MlQCIIoyqH9Ic6/gS1on30FbbRKHrYt4RckUz85H12bhH7+UJktX9aekA/DdplnvY9n6I8BPEPFUdororKYbeqE6kU7h9CCnuWzAW/TeQm/26JqheJolXBkha/gJN7lGQ8VmImCx9MzG03U2WK0bbnNpCr/YsQtn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745575619; c=relaxed/simple;
	bh=obu+Qt9zPoq9Pg2EOlGvIr3eXjoQttpGQqYbnKED+rE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JD029XJ/eNO0h9N+7amEIUxyWtYAYtZyRpxA5bK8Dh71gs5si9nADzIRbVXAI5TwhElV+DloNUeXKisG2I++J725GC55ThX1za5GBwA+mgSLkkbWsfyNtjFnFwdik03qeRdrpd8xjB4D67lRl4vDrwsoZTnvsXqqWu4EqUs3b4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tX9XKfF7; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43d0782d787so12733125e9.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 03:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745575616; x=1746180416; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CJc4EEGZ5NPCdipsMsCOV+mhzV5z2YlJ4t595WgVtEw=;
        b=tX9XKfF7rl4zBkbO74LE69pIe31YkQV55gtGz0e0dQyEtA/ChN0OH4kK59xjM7b4IP
         RjLXZpZx0x6mIdTEK6tVNF7NgnePoBSWy0MUdO6fruaLXrP/bFwpnRKbTkRPd6XVk9Wl
         kg9S8DbbgyYBEoQOcI0V86ab7TsOLyYEJ6spNyMdx5WOW2lRaT54WJdjCCJBmldif/o8
         uCe99kKzirSler/QOBecAONB1y1VHm2c6whXlKo1PvIgJrb4cMfQ8ZTt6dG+1ISxP7cc
         Zzo/0mKB+s935dIjT3jAGABz2lnwNRz3IZByapVF0yeEo1h8YNaTpzSVCSHBgN7siasw
         qlFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745575616; x=1746180416;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CJc4EEGZ5NPCdipsMsCOV+mhzV5z2YlJ4t595WgVtEw=;
        b=ibbR4H4OBkIPhZcSmuHNlEYTIUSQCENKFC3sStvofzPTJ90d24x68c1XEetUwhiDeM
         k9Xwv45sm0GsXMPODZ0kOoRHGpc+28yrw+q2NKux7plxlqQ433EeE+Cau/zWI0Ppql4W
         kfmrbVPSYq5MsDClyRFQEMqioyu0BssNjuvraHxZPEx0rZHBSPdnvyPddI7gFaAe37jV
         0G48AJdqtMZHFOxh9BGTtRe0aOlqKgth+x6VKvifbud6kGGRVsSS3wdYRAEL5lz6+Ple
         67xMSRzMKCCJg3/H6fYtMjh+FTPo16iREWMvCgN0ZX6ssMX69OKVjZkWiUDzcdPGt04N
         rdPA==
X-Forwarded-Encrypted: i=1; AJvYcCUzRP2a5hHamHc05pHeOVSqQUuzQTxPjram+C8bpnNYReZ2pV46jSq/tbKTYa+/8IxgZJdaW2aY2ZCF@vger.kernel.org
X-Gm-Message-State: AOJu0YyONPD7IzHDXAtqy9CED1O/U/eBxp80UGKMKzUa0plnQmaLuhcZ
	HpfREEkrFUPr7JxLvsOAA7PSIg9pP5LGRAXzFlilQ00AiRNsXyCctvPTl++HUMY=
X-Gm-Gg: ASbGncucQYXEX7vZfTEDA28OFevO/SLd2DZ3VUNUXbflaYDIzOblsmAgILM0Svir2Tu
	Oi+8SJzVqZB4nPXsh5qKKq8jplHD0+6QR7xENI7BEJ3BBatXQ0rZyq35NHyLs4SQ8Ez5x59K+YN
	WPI5Zamf6hlG+eP/B8+NDG0Kse/YmJn9nOWIEdEklN0RV20Wp2DC/el4wzSG8mXLkTunko9Kizq
	v5myqF8GRK+1SDY1wJ/AO9QubuZQr9ZHfuZA0kVj2SwC/7TiZ4Mpv3Y+F3IIzvx6Q1msSYeiC9X
	7dy3CVHVoS7/kvS+sIlIoyntb6GbHqWprdzLbIqWek6AqtPP+eU4lZgs3tS6OkcBuD8waDMVxU7
	JrK9Xrw==
X-Google-Smtp-Source: AGHT+IE5F4OU/e3M5Qxu03zUGP/1/CF6PkbZtrEE/1QB/qtY4l8x3I7V+uOqBhsxX/jjOQYPzZRFYg==
X-Received: by 2002:a05:600c:35c4:b0:43d:738:4a9 with SMTP id 5b1f17b1804b1-440a66ab49bmr12249625e9.27.1745575616014;
        Fri, 25 Apr 2025 03:06:56 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a530324dsm19279455e9.10.2025.04.25.03.06.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 03:06:55 -0700 (PDT)
Message-ID: <b74d90d3-2a85-4853-9843-6a6f22720587@linaro.org>
Date: Fri, 25 Apr 2025 11:06:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: clock: Add Qualcomm SC8180X Camera clock
 controller
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250422-sc8180x-camcc-support-v1-0-691614d13f06@quicinc.com>
 <H56Iba_grof22uzTtGCI-APhiDAGSejNod6jsSVIykm9ijaaj7PWqyszShCEGjIpM2wCLOn4a3Vfb8Hjziqklg==@protonmail.internalid>
 <20250422-sc8180x-camcc-support-v1-1-691614d13f06@quicinc.com>
 <621d8556-f95b-4cbe-809b-864417f0d48a@linaro.org>
 <b96f8432-132b-4c16-951e-718e91ec52a5@quicinc.com>
 <f74d8b50-35a1-4ce8-bfdd-4c90782b8db5@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <f74d8b50-35a1-4ce8-bfdd-4c90782b8db5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/04/2025 10:35, Konrad Dybcio wrote:
>> The dependent GCC clocks are marked always on from gcc probe, hence did not mention the dependency here.
> Let's do what was done on x1e80100 - describe the AHB clock in CAMCC
> bindings regardless of how we handle it.
> 
> This way the DT represents the real hw dependency, but the OS takes steps
> to get them out of the way (and then ignores the GCC_CAMERA_AHB_CLK entry
> because the clock is never registered with GCC)

Ah yes, this is an always-on clock isn't it ?

But in principle I agree, the DTS should just describe the hw as-is.

---
bod

