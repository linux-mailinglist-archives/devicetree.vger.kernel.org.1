Return-Path: <devicetree+bounces-222374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8173EBA870F
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 10:46:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3421C3B4AA3
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C8012750E1;
	Mon, 29 Sep 2025 08:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CmkQYJ9U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6656625
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 08:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759135583; cv=none; b=iNZLMss6khw0IxxEDhTbNugmoORnjhY+/UYuI3ZZY0V4C5K0qLytYDQfZDtlCA+NH2NfFSJafKyvYHIaSlNfuAqWli8AMsxAtLM/GfBnuxgtQp90roA5ISc57BWh593MK+dS0+ouT8Gv/pb6DU1o88EcfyFat/ChinDEtu3yZ8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759135583; c=relaxed/simple;
	bh=elHCX2J+mUL+jknpKGeN90bcu2WaP/CHNiOnbcSUmQE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OvZtyTDsJJnCymwjfOsr1DovMrnNRoQbPVkLOllPixZ/ipcFLW1j3G4AOSTktuZC4+PmeFSZjMqGZjQ9jLBHXHCS62Zbtg+QHcLbGBO2H3mIlD3NiZNDKJAVR7Cyxh6nD8gqxbI4OeKzC7LBzrnRJe/MWA3rP05DPXula3rhHJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CmkQYJ9U; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-57be36ff360so1024522e87.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 01:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759135580; x=1759740380; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kxq9PcJJJz0spR6MwcPMvKvnViO9P8tXOB0T4VWVPBQ=;
        b=CmkQYJ9U+GliEz7nRk6vJ/DwAIKRba08MCUMyI5GDxnWaS1mUyUUhRi0VCbXQmk0Cf
         YZKPcnTOb/sNct1CqPhjAGVYakSSDo0Gyp5TdH1wafm/F/D5H/VvIJALB1YqH251ho4+
         duwqQEZwUirV4fpYY0KOwTDqG3JnJHkxvrcVC3FUoxBFJoxEEX3jKj2g2aKUGUwRMZAI
         VxoBMD7Rb6C8XjyzBK+MvQnC4QkG1NGvSgNCGGwBrVin5XgR2hZxUHr1Kac0t7TgupDM
         JRanGLiULD7C5b8YXYoSlIfZyKn2czhrep1aDq+LA3huJlttvrCmRYW8SwLeaen7n9NJ
         W1kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759135580; x=1759740380;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kxq9PcJJJz0spR6MwcPMvKvnViO9P8tXOB0T4VWVPBQ=;
        b=faPsKrX3wbZbrfpp6jhkGR6FoJR/eWkhPUMiETW448npVLTVcdBh2kkjAOKrA/ZRU4
         GBqi8HdK5lxEPOL0YcdITs2nHuRnMcZPbDbGqht39tgoilf8dR/Bihu+gDCi+v3aM5s4
         /8frPuMdxf0Bv0UCO01MvUNPZEfoWtWqM5FQZMHrA1y9j/w+BnBGRuNGgJZ3tMyOGG5o
         WJeFzkhCov5xi7CiMphwpoqfqaIBAyCy0IBBAyxDHPm3No9O0OfUjGdE6UNJiRvlsdrG
         gY/69KIuvqyhMLSeCiyaDyPN0ON/KxC0wl5ekJYJ1D4fc0VLb5FP5ylhO5uoFdV3ntL0
         svww==
X-Forwarded-Encrypted: i=1; AJvYcCXUD3KouUBUTjvIB66oGW65fD8EOQOcsmHwyGrJEqIuAu0ywMAgzVO8pQQut/jZfHoAFV4lWLRHU3hO@vger.kernel.org
X-Gm-Message-State: AOJu0YzZKpfIhcfx+ZTvQa1ezezpCZaGyAW2W6XWyBeDGYsZ0/PPa3C2
	J0S+FMjHjc6IPWK0nTYgXL26IShTz80KiOwvJMzi8h/4hVpyoVgtiLpVuXS28ZOxzi2QlCU0Cwx
	imYEz
X-Gm-Gg: ASbGnctSTceweKY/QPc7yDfvAbQe9drJoBqhhPHh19h+g2f7NtZLGE6ucpwPLYFd6yC
	SqQiVC2QcckcxaBtto9Lpb6xrnNAsElv6kWIpJ3LdzEwKrqFkJvB+o1COTLPvyc7CH4ZirulInJ
	53wPBu0fHnKsScfOMMynDY2vnPZc+OB/GjJQ5aU0FLXzh5XNbNPBIwrHmZ4FCMvVcXe29Ke8aiX
	Rq7JWOeMqbEtlsTjhZoS6+agTeGsakOJ0x9hGEtIdqdxw50QPH6iYXib05o6+VYzWs9qu9aEsTU
	P2ysO+USWZOioS5aOZ32CM9WOz9Vjrl+yB0PwWn4s1mhpT6/5xNu9XXls3s08tHTlnHzlV9Pc/3
	nLvezkDBiQU/YizcK7UMcCk9vFAyUGBHLANvUawc6DtAtV7LchjYYeSvn6bVPSc+7kksTGa3FTA
	hrdw==
X-Google-Smtp-Source: AGHT+IFIjTl+y8eSPvSavTSLzI1Q8jLm3uTQFD+1kwjOwgznMH7R9DOWq1dsckUO7nJaFttB2+hYNw==
X-Received: by 2002:a2e:bc0c:0:b0:36b:93b0:2a8a with SMTP id 38308e7fff4ca-36f7ec73bb1mr25499411fa.5.1759135579722;
        Mon, 29 Sep 2025 01:46:19 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb770fdb2sm26762571fa.43.2025.09.29.01.46.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 01:46:19 -0700 (PDT)
Message-ID: <0bfc50c3-2df7-4e7c-a6b7-99b8e56a65ea@linaro.org>
Date: Mon, 29 Sep 2025 11:46:18 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] media: i2c: ov9282: Fix reset-gpio logical state
Content-Language: ru-RU
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org, dave.stevenson@raspberrypi.com,
 sakari.ailus@linux.intel.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, mchehab@kernel.org, conor+dt@kernel.org,
 robh@kernel.org
References: <20250926073421.17408-1-loic.poulain@oss.qualcomm.com>
 <20250926073421.17408-2-loic.poulain@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250926073421.17408-2-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/26/25 10:34, Loic Poulain wrote:
> Ensure reset state is low in the power-on state and high in the
> power-off state (assert reset). Note that the polarity is abstracted
> by the GPIO subsystem, so the logic level reflects the intended reset
> behavior.
> 
> This breaks backward compatibility for any downstream dts using the
> wrong polarity.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

I kindly ask you to specify the intended behaviour in the documentation
Documentation/devicetree/bindings/media/i2c/ovti,ov9282.yaml

-- 
Best wishes,
Vladimir

