Return-Path: <devicetree+bounces-148786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E0EA3D662
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:21:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC0C9189A1FB
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 10:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BCD31F0E4A;
	Thu, 20 Feb 2025 10:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="io+mADwx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413B41E5B6F
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 10:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740046911; cv=none; b=omH/iLThqQgiMovDABVVGjsHMvdAqMFHeW5/hZXB3USb1LtkFAXz7aQYwhYoDBFibp7bKEALgp185sIqz+GpRL0XTtWkbThDaX0eV9DL5YTkxFaggakwb+U9T0Ga8cE66U0n1hie1LsNWNQA7Im2aurk6b+AKmlZph44qoasvtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740046911; c=relaxed/simple;
	bh=XyjhOm+xipVatReiVlaqfkvcUF7Q4BsxkUSTUiAPmkI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vGcufOQfefU+nRcBhAPaThU1e3nQHciahWVr0SDKmVGW6UQLpnPFssjy08GkPCWzwf9/RwRBzG01DchFsluWbL0SQlsIZIS2k5hPld13bgwYsmwUu2Sn1Xyn4X6g6tUAttV8DF/Nw93zAU1DQ28sWWj1QL3QY4Re9n0bsmccs/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=io+mADwx; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-388cae9eb9fso351222f8f.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 02:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740046908; x=1740651708; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XyjhOm+xipVatReiVlaqfkvcUF7Q4BsxkUSTUiAPmkI=;
        b=io+mADwxYj5mfgYstriE/1LDSuMmkolzx+kmoWkt9ThNdfP8y96nmzjWAlgS0YyR1U
         pwlXMlI+H/bs/pIMXwF3UJKlXVsuNxKywKUX6DXYPQbFBDJK3me/p4Nw5poip2j+ng6h
         UynduJhfKmWzuD2o0+FBY/In1JbYh84/cCBlFDA7tFy+D6nAayHlLax3PZYQMR/fxjf7
         TWyQNQd6wW40lzDomg+UoZdIVT80IvY1wZ0smTNzOAAbBVekxnAP/Mxen7Z9BjY00Rbu
         Oy21V0+WCdaSDiDaxPCdGSGdVw1hvr6WsVw5/jQYs9/h3QEQ70z/5DMTAAdvXCTuJR4J
         pE7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740046908; x=1740651708;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XyjhOm+xipVatReiVlaqfkvcUF7Q4BsxkUSTUiAPmkI=;
        b=UkApRd44K827Nq81onAv4cBniYkc4DD4J2xtTq404SMZ3Vq+/MHn89uo63iLnkDoWi
         59dlvj5ixW2A3S9YS2yaM46FBus3ZZKW/kvgqQqKs7wPrnPiui9W1GucJ4nQ/qVVSOsQ
         pltcN+Lpc5E8q3fpC2TShiJzEU0snIjg49CuKiHmePblaBP+lLRoDzv6MZZJtZQEF10Z
         xJcRQxcCo6FnzsxSzGP/FlpQ//Hyqf3byXonirM5hWNLQ2UiC8bsOTAF70mY8lvkKhro
         mjslz6kwywJ64I709AiW3abb0+9PlvJpYswFnm9DvT33iKAfMAueKIkX+NZRB9x0kXrd
         1G4A==
X-Forwarded-Encrypted: i=1; AJvYcCV75Zvq+ySNo9n/LW7/mrd43Si200EGpPLE2UWlEFaAKTQEnofsvMfBNE1otkRrbdD2FeK/U5uk/EQ4@vger.kernel.org
X-Gm-Message-State: AOJu0YzgLXI6sQq4gkkHbfRVE2N+7WOmF+4da4Fc690tVRzS8/48TMWo
	wSDSaKeul+s6GFjS24CL3eZN9t3A6zwEsHxQQAz1bxWvPMKL0rluqJn8Kar2RaU=
X-Gm-Gg: ASbGncu8iAzEfCpJEF8SaENhkX/uCIvil+43eHkNzvsiJUS6FOiJ4D5hzK/p8rH6yPc
	YdhUfX5eGAEYW6cgQormGo+POUsoqsIC216pznRTLE2ArkzFtkn63QPmODk8IbYoFOU3knp27A/
	wQF5W2CTw1l9l2LSHz8xqc3ola3oB1+DLt17fXzHi3r8/h3yghp25UT9yOHS7Y53VMtlPB7TD23
	LC4Gfsb+pBKp45kJfjd+qGKMmrU7ryRtcO+PbDbrLFddqXpBlws9ki9HLDoTn8jFnUWIJlRpf5h
	0B6hEtrAunkr6E2MPfw7mdqvQcWaTbaJpjGN/1k8kAgT0mOz8iRsAR2G
X-Google-Smtp-Source: AGHT+IGafOD/Cz8KqZYx4HICrpiF57Ud5vJOpTpVhxH4dNw5EJOWaBQJT2VOVYJ5ILbnw6i7UI13wg==
X-Received: by 2002:a05:6000:108d:b0:38a:418e:21c7 with SMTP id ffacd0b85a97d-38f34171577mr17647798f8f.53.1740046908464;
        Thu, 20 Feb 2025 02:21:48 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259f7987sm19856657f8f.87.2025.02.20.02.21.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 02:21:48 -0800 (PST)
Message-ID: <5a86cb82-e313-4f50-a6ff-17181a2dd274@linaro.org>
Date: Thu, 20 Feb 2025 10:21:47 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] clk: qcom: videocc: Add support to attach multiple
 power domains
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250218-videocc-pll-multi-pd-voting-v1-0-cfe6289ea29b@quicinc.com>
 <20250218-videocc-pll-multi-pd-voting-v1-4-cfe6289ea29b@quicinc.com>
 <eec2869a-fa8f-4aaf-9fc5-e7a8baf0f864@linaro.org>
 <huluiiaqmunvmffoqadrhssd3kl2toutqtcw7rzamv3sqdglsf@7lz66x4sj3gv>
 <d4c4ecf0-9094-4341-8711-78a48e5d1344@linaro.org>
 <d444f1fb-42a0-48ef-83bc-d5aab9282b22@quicinc.com>
 <gzjyyl2kzv52zsewn5zf6ei65fymyi4pspvsmsjaqj5sklfxvc@bkg46saulni5>
 <fcc31cc7-67bd-4102-a53f-ebe66b4fd1a7@linaro.org>
 <3da96df2-1127-49bf-8114-282cc488c194@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <3da96df2-1127-49bf-8114-282cc488c194@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/02/2025 07:15, Jagadeesh Kona wrote:
>> Yes, its logically the same just done in core code.
>>
> Yes, this code attaches domains before configuring the PLLs, but it attaches PDs after get_sync()
> is called on device. As I mentioned in other patch earlier, if we attach PDS after get_sync() is
> already called on device, then power domains are not getting enabled during the probe, leading to
> the same improper PLL configuration issue. But the current patch series posted will fix this issue

That's not what I see.

The PLLs start and the GDSCs which depend also start.

Perhaps you could give the code a try and comment ?

---
bod

