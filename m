Return-Path: <devicetree+bounces-131794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F8B9F4971
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 12:01:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCE9A188CEC6
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 11:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B2051E282D;
	Tue, 17 Dec 2024 11:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XuW87E2X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591151CD215
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 11:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734433278; cv=none; b=sHroF8MmkHP8r3KmST2QsA+sowLPkOR7AWK4I82c+CBeM7xCWtePBrEeoE9sR02fdoDxyQob+/qSTv2ztRxX/Ov1zXf/Kb9Giwy0Trzsg+TwjWC74DGWfDodMSPq02uC9BzSDWNUd93PtH/lF555nQ1G8bSfDQjtfymmjhlYl4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734433278; c=relaxed/simple;
	bh=dzPlS4ShwjaasN3bD3BbmPZQWpeBj1znPpLJMJF6C4I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uiMHffJPqrIm0q4rl+z/ntpNgTxekqzRRlkGWV3k7D03brA3hbo7RZaqBEMk10u3RNGYELLu3Jd0Mwu7j7BR7qbqqyv+TDEMA5kgkvGh2SoZz8khJienNfnoGI43hja/TLRvm1Mm1HRcNb7U6opSfk3Eg2dHVkrfWUKZ6Z9+AaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XuW87E2X; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3862b40a6e0so2869410f8f.0
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 03:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734433275; x=1735038075; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w03D1ux3okaczBtpEnBHqfwxiSrA7LCvMwRhSIk4Nrk=;
        b=XuW87E2XezKEUY+WFNprN5/dC7F2X4qj2ZhuGUDT4kBUVGkz98BDHSLPUkvvIomqzR
         WK/Xwy+baAnfPIeauIiJA0JpAeK2c9ujS2he3oDf/NzqPUzMk3r88iDEEXJUpufoqolL
         JXnaSPjUayHRvoqvu8AmW9e5TiBstW49riZyNwlkXbxxGnyg2682croqnndSYBsBsTVa
         5Cuh+B2m5bWmN2r0nausRanGAbQKfOS+Hr58u6quho0WoVyZ874AQNejY1j3O6pu4FCt
         dSeU6d3HLjck4HWc7HG3xDBHPkA1IZ83fSMnKgd7Iq5Ih9MDAQl6J7MHri7eYKEsfwWY
         YhEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734433275; x=1735038075;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w03D1ux3okaczBtpEnBHqfwxiSrA7LCvMwRhSIk4Nrk=;
        b=kdgWalmQHb5XGU/5FVy0m96WWjO0bM2NdAjgjaUAsYr0c8tvVoWmOfABreS6vKlGNb
         j6kyEPcTrnyO2Cu7fEPgMf/d0za2mjhUR4ptZ2xwEBM6P2VvJU+EkpendrsShQzqoLe2
         eoPs9bRlX4Kb245B9Sm8Tmhg145DXxHiSzYYVmWfLn6WDcuQrrWiEYJ6o7HQDOWd+1n1
         kzngpMJkrygfLspHaACwEOAkrcZfLk4BotNtlh+WTzZUdGnqGNBoonFpBCukFNoITdKK
         YdMLI3OxkEWepanRqmw2xVXEKGjnFFFsVr3HZgSBp+cd3x/L3Q4NKayHggAN2sqIcdR5
         Asyw==
X-Forwarded-Encrypted: i=1; AJvYcCVkAmbEv6xzTvMZuVvGnS+iJYZtnfc2WBJ5Sfeyj7P4/VHoEj0wiDVQO5qRARV2AhIuDfM6c5UDYHYx@vger.kernel.org
X-Gm-Message-State: AOJu0YwcPYDWMJpUtSuTfIhybW1BQ3tw/XaBKcwztFrbPMlxwOTplG8V
	fkc0W7LiWqsqidl0YivyEfnFZKPgi1OY/YgZQjbrhYlxXxZ0ktFbgsmVLI3NpNM=
X-Gm-Gg: ASbGncs8pGd7SqXg7qJaisjcOvmkuYwEWmGJkvFPVA1mNuGt1V0kuLPy2eIE/PBp0cX
	C69jWIqWYw8XBkHYcBitoJolfGyAaC9pFo3SN8BHVyyzf2hglUZ5WWBOFltdsmfywG6/SkIr8/M
	9UMYKprmsFwBul3BKkal+HKnXHTEiwNpV6E/IrwrWkU6yNOw9ZFvIn5U3qk9dqYsowq4n5IpXBA
	jWsjXVKPA36lY9IOjOJIsU9l1Mjbs0r4xVGqdmg+Bxw3c3MRFJAVZh5gY3oArCVcNJrUQ==
X-Google-Smtp-Source: AGHT+IHN8F/bOTxwVgEj+Ryru3sGmbFULrRGiG+LPfJhyOB7pJk2kTCEvnFKgGCazxS5j/XYxa6EKA==
X-Received: by 2002:a5d:5f88:0:b0:385:f821:e97e with SMTP id ffacd0b85a97d-38880af11e2mr15512297f8f.9.1734433274696;
        Tue, 17 Dec 2024 03:01:14 -0800 (PST)
Received: from [192.168.0.27] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c80605d9sm10774311f8f.95.2024.12.17.03.01.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2024 03:01:14 -0800 (PST)
Message-ID: <236d41cf-ddc7-46e9-91b2-190c165461b2@linaro.org>
Date: Tue, 17 Dec 2024 11:01:12 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: qcs615: add venus node
To: Renjiang Han <quic_renjiang@quicinc.com>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>
References: <20241217-add-venus-for-qcs615-v5-0-747395d9e630@quicinc.com>
 <20241217-add-venus-for-qcs615-v5-3-747395d9e630@quicinc.com>
 <83fcb683-d610-4e47-bcce-128453a0afef@linaro.org>
 <3cb0d715-3756-4cef-bcc0-3bb550811c73@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <3cb0d715-3756-4cef-bcc0-3bb550811c73@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 17/12/2024 09:54, Renjiang Han wrote:
> 
>   I think when your change review passes, we only need to remove the
> 
>   video-decoder and video-encoder nodes in the device tree.

Yes but the _point_ is we shouldn't be adding in driver configuration to 
dts.

Which means I don't think your patch can be applied until we resolve in 
impasse in venus.

---
bod

