Return-Path: <devicetree+bounces-134925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D91E29FEF07
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 12:09:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9F111883109
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 11:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 487DA19ADA2;
	Tue, 31 Dec 2024 11:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s5tqCrWt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9430F1925AF
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 11:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735643387; cv=none; b=eNrt3g1dsyBI1NGspW/GKT8UmdEOkRMEDCDeF2mOUwDJOO4tek19EO1wmAeuOGab9NLEeiCVRbwgjouaiIrZADkzKqdUiHpmlbbfbaZ6kRnfXIPPaMJYb8b2y0tqglU+Kie74P6ExPKTiuEtivCZCxoRAeWodKZyTlCUQL3tjlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735643387; c=relaxed/simple;
	bh=CZQrp3ljcPGAGgTKtH6TnT0akhIhaKad5XpyBTsLY9A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aEK1/MbgWl9CicsJl8DGeBaZTSMoBVzl9YrqSBnrMw6Ix+oWPm6scZ4ozq4vqZ/Zhr6aUtI5u4HnSQ8exOa+m62TezHU96pKex4Q2Bo+UeXm++c44H957u+grG8RZ8jAp1Qq6sgQlLscu0G3K/7Ox584Sw3NVjN9dCk1ZaBUUjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s5tqCrWt; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-385e2880606so7332545f8f.3
        for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 03:09:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735643383; x=1736248183; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mh8UYWaZc8WrVxKRwykbsoh7O86a7wx9Ng47k23FtHw=;
        b=s5tqCrWtKraouzU9+pCS0X4ejOyWYzCvtoiYHShK8elgI41wEu895sywAI5xnJS1Ma
         +osiZ16wodiyTf8eR67X2dAJjFWQNWtK9v7EaqeARwjBqXP4sBixd09XlF9UCTY+jKyq
         obL/z3PCD7/3dbjzsDHQx2Pj+KGYgISlZ/5XgSb1cdzNIccDyud4zVyIyJ6/q/9Zfrpu
         y8rtuNoTRYGbZdJWmtf6Bj/WVeJe6yJr5JamZGwW25t/qQNSM76BjobqMkG5rj6P3vf/
         xUt7pIgHwoc0hZTrCYM2eDVq/XTWZTv3NGhG7AiNjsw8Sl3aTl2GhK6q4R0AKAfmexfp
         yD3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735643383; x=1736248183;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mh8UYWaZc8WrVxKRwykbsoh7O86a7wx9Ng47k23FtHw=;
        b=qCv0Cv2lNLaDQF0XxOPjIUdxh/zoNdpNZ9MtJi5ABKwSmdJt7rkh0rT1DBh6InS9ZU
         DE/JBkV5FglKjOa8EAUp1GwQPTLKw8cQLkpx26jVuwjjcBtoIpDf5yte1bghI11uEnhZ
         ybZUMgPrtfyem640UowLosP/X13mtwOVVUhI+HCkI8Q3cUG6KEFlQQk0V5HRfU2VJZ8U
         0bkGAIuJ9uuwViXvqtSaayLXpLYxw2p5Q7t1ZNTVo6MUvrOYZe4KWzOTCVgCjOB/shLV
         m2MHAPGbgCtrknXzaBDZbq/X3w5QRXEOti/56HB1ypYSXsbGNNVYPwq2X/IE2ASmEMAO
         IZuw==
X-Forwarded-Encrypted: i=1; AJvYcCU4su4ihdegf6LK4uN09TStPIo4Yx7Q82/EQ3+TXSOExdvQX0J3+rjTeO0XmqiUlF+Rc+Z0zvcDaEl8@vger.kernel.org
X-Gm-Message-State: AOJu0YzU6jO19twFCAC9vBt1zIS8Ssu09221jR51vdPCWH8pn38oM6aI
	AIM3+fuWvdGKuttD3JhI3+5EY+alKCwRe/Pz1wCijhwVzssHTurtEMATi8aUqus=
X-Gm-Gg: ASbGncvQQgnLshAW8E9E/Wr6IY4tLSo0TF2eytw88GA6CB6kxpis+cHnNcAVjoKe24M
	wqwTKYCMP/bA27Ge/m5JwGpI73L3gbHaL6XM2JeP45Y8KwU82gRcks4GuUKPTNUTLMyd91ClZnl
	S1z6KGEQ/4vrg2dzyfPteK6c+p+AwR9Cb4ik0iCMH3o8BAB6MPVrGmlTKcMOL1NdKPOWMBiSjVo
	GGhFpoKk6OLPR5T5rGj7vyWgE0r3wxWY1JmK/G7RoOXovgzFKt+w5GO+Cmf7pstf+UDJg==
X-Google-Smtp-Source: AGHT+IFaNhrfsnfvBxSp1tViYSz7o2qMK2dzhldDNDYiuudm1kNGgf7qZsGXiU9LTOK5Js6Pse/c7w==
X-Received: by 2002:a05:6000:1568:b0:385:dc45:ea22 with SMTP id ffacd0b85a97d-38a223f835dmr31212643f8f.39.1735643382887;
        Tue, 31 Dec 2024 03:09:42 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c829120sm33379893f8f.6.2024.12.31.03.09.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Dec 2024 03:09:42 -0800 (PST)
Message-ID: <583ec206-e670-4aa0-9490-4ee6397800e5@linaro.org>
Date: Tue, 31 Dec 2024 11:09:40 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] platform: arm64: add Huawei Matebook E Go (sc8280xp)
 EC driver
To: Pengyu Luo <mitltlatltl@gmail.com>, quic_aiquny@quicinc.com
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 dmitry.baryshkov@linaro.org, gregkh@linuxfoundation.org,
 hdegoede@redhat.com, heikki.krogerus@linux.intel.com,
 ilpo.jarvinen@linux.intel.com, konradybcio@kernel.org, krzk+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-usb@vger.kernel.org, nikita@trvn.ru,
 platform-driver-x86@vger.kernel.org, robh@kernel.org, sre@kernel.org
References: <1dff7a78-1693-45d7-8ee3-357b33848595@quicinc.com>
 <20241231074437.239979-1-mitltlatltl@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241231074437.239979-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 31/12/2024 07:44, Pengyu Luo wrote:
> Please search
> 'device name + acpi table' on the internet, someone dumped it and uploaded
> it, in SSDT, check ECCD. I am not sure if huawei allows users to dump it.
> So I don't provide it here.

There's a repository of ACPI dumps here:

https://github.com/aarch64-laptops/build/tree/master/misc

including the Huawei Matebook E - not sure if that should include the 
"Matebook E Go"

https://github.com/aarch64-laptops/build/tree/master/misc/huawei-matebooke-2019

You could provide it there.

---
bod

