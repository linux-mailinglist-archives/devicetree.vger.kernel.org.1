Return-Path: <devicetree+bounces-227713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8751DBE3CDB
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:50:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 76F6B4FC46F
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 13:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F23533A03E;
	Thu, 16 Oct 2025 13:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rv2Y+nfj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAF32E6135
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760622615; cv=none; b=UfFwD/i2R2SWW4P83QvQsG1cBhWD67lyRLQI6tCaVDc8YlaHik707gTMyB+U0SShZcjDWS3vCsZNdRjV6nLGA2JehCAyjVSv3YEhVNP46LnK7H7yN1AU8kJTJgkpUiPZrQzB4r+P1BkVQYtk5n1HTBMrPgn2+VCJZMaMpecXU7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760622615; c=relaxed/simple;
	bh=bP4alRLMp8v1Hpu3LoBwktpDq8eSdwqK4/h9cUUAB7c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WvC/r8hvnypbL+iciIWckiwEgZCZ9LpoN1RKBKpg2jkRQyXdMHc5lQda0U7kh0wmuGpwU+FPAzx8Uj2mi3vzKZg7ENSQ0hBNjXd4m04V59CI/ODj3kFtAIDhQJ4ijkTI+4+f8Tri2E6N1S9y4JDYuGLHiROXskJ9W9E/7pUDRJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rv2Y+nfj; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-46e6ba26c50so5754305e9.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 06:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760622611; x=1761227411; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hK+c3Sqr7ykcDCQVa18MzhpkbqW6FL16pH0MglrB61g=;
        b=Rv2Y+nfjNBNk5mveSdWcHNW0rzXPFKBacSRTnrmZd3hGe7nU8udyqY9MD5kc4U8RrC
         TOXgYkcXdWBOopUabtYsaf5lDEXL9RqKD/6hP//zYSCFWqGt7kgvcILK819HTd7AgJCg
         mKwXlV9RphlhW21tmkojRkk3JuHfmeIcSTYs6j/fzFzw13uEL84PnyMylS8PKBDYfrG7
         qBs0NncKh4kqRR2b8Dpha/z5HlQebyzDkwcn7dfY+VxmljP9NFObbz6XtEbm8yRbMYiP
         oQIE3ZQBnaa6BO4RmHlVktHJ7txjUx+vZiEfLnn4AelGM9bEkU2PJhySESfy2YN3LsxA
         1gtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760622611; x=1761227411;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hK+c3Sqr7ykcDCQVa18MzhpkbqW6FL16pH0MglrB61g=;
        b=fzDlDj5XQDIBCotRX/4OO+K0SFq3t6Tg5A6B1aUyRs70gwKnY2JGWrDq9zCiQUa+87
         4vZ6VpbhriRziuN0frIA0EB1Uyuc2G/Kra45WbbMRhr2AyZqZagS3SlyU+mvRx1+Skq/
         vjkUOAJKV4nvhbZalbSVHnYSBzUX/r2MXXW975ZBiYuA846yI+RMJ5aSCtJAU0IRpWCI
         FD2FPp5brAW1O8xmnowsT+pQsGI/5yAvMv5A5tDTdKmdHPs4ycJeOg7qkMf6l7VCb48j
         u8eNdsidPr8ZSqpt12BY4rcMpPuxIoNUeuxOszEQ3RLYxQOpqb41R0ITXK20THI736wd
         fMmQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3j8cqNFVloLr+NdGlKaJ3x4Ix12+93129Azbmt6NCD7CgersSg0rgea2a8bhqYvrQwiG7kcH+nOOm@vger.kernel.org
X-Gm-Message-State: AOJu0YzcjzGue8nGf2cbQ2jplWMYr5OlHyEpyLmT/6BN8Zhdc1L0RhZX
	SNAP2nbvOjrJnRIblz37wfgm/YGPhmSrZVk9Iuc11fURBgI+RI6GYa45mJYLmHPtlpo=
X-Gm-Gg: ASbGnctkHPehwfgWE+uP0Dh9LzaPx7UZIFDEeuR8Hbhur8K6j6Zmsh4W0CmNwvdr8Ye
	3qBtLhlmnKWit0g3KZgge9m7QIjG35tfSxnHLQJLdOxljvAf892sqyyA8PHSU1/TKx/ZhAtsVBc
	7Wud22vWFFG4brgGdz5RpPdLjer8xfJO6vi2UNEskN+n2tITinYBNlTZ5yZpIJi1bqWF7Kp3eF5
	lg59+w6ecH/7+qrtPtSSwPabu2f6SubCtptzYUROyopo3erO4NYMkWzwL1pqVPB1aTK5awfhtjj
	NkFttxpxmryWkLgUaMiqNN5Toz7N3SFCNpfNhBR9vW37Y668qTuZ8Dp2Mo8jNR93yS/1ZFxBvV5
	+sfUywW6REgBj4jA8dAxY7ed5RDTUAP+ZI6XzKGrNyXE4OILk/tHBWiPdUAy8cwXiTtKGZD9NiN
	qlJtPlHLKdpW1apLu+pD6sYK4WDYGJnw6bWobuko/h7E6Smw==
X-Google-Smtp-Source: AGHT+IF9O9+CY3yIGfpHSEcpC2cDiM18bV3XDDECDyPk3t/QicECJpvFVoKsQOEP0AiZOjlLD65hPA==
X-Received: by 2002:a05:600c:37c7:b0:46d:3a07:73cd with SMTP id 5b1f17b1804b1-4711790c31emr154255e9.23.1760622610858;
        Thu, 16 Oct 2025 06:50:10 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42704141cdfsm1629287f8f.4.2025.10.16.06.50.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 06:50:10 -0700 (PDT)
Message-ID: <f1cc3212-f1b0-497a-9990-8d523a0f9c61@linaro.org>
Date: Thu, 16 Oct 2025 14:50:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: monaco-evk-camera: Add DT
 overlay
To: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ravi Shankar <quic_rshankar@quicinc.com>,
 Vishal Verma <quic_vishverm@quicinc.com>
References: <20251015131303.2797800-1-quic_vikramsa@quicinc.com>
 <20251015131303.2797800-4-quic_vikramsa@quicinc.com>
 <ec23a3b2-fb50-4da7-8912-512b0a741ecf@linaro.org>
 <564165ba-38ae-4c86-a980-b2342aa20695@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <564165ba-38ae-4c86-a980-b2342aa20695@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 16/10/2025 13:53, Nihal Kumar Gupta wrote:
>> I'd suggest to add a description of pins with MCLK function in a separate
>> change to the SoC specific .dtsi file. It will cover gpio67, gpio68, gpio74
>> and gpio69, so here it's a MCLK1 pin for instance.
> We are currently enabling sensor only on CCI1.  Pins gpio67–gpio69 are used by mclk for cam0–cam2, and gpio74 enables the regulator.
> Since mclk is sensor-specific, it's added in the sensor dtso.
> 
> Would it be appropriate to extend mclk support to all CCI instances, even if some are not actively used?
> 
> @Konrad, @Bryan, Could you please share your thoughts on the above?
> 
> If valid, then cam0_default, cam1_default, cam2_default should be added in SoC dtsi, with references used in sensor dtso.

Anything not muxed should go into the SoC description anything board 
specific - mezzanine specific in this case - should go into your dtso.

A few of the camera pins are non-muxed as I recall.

As regards splitting it up.

There's no use-case for non-muxed pins without the dependent change.

It's almost never the wrong thing to do, to have small, individually 
independent patches though.

---
bod

