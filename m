Return-Path: <devicetree+bounces-108996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6DD9947BC
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 13:52:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC0262830C0
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 11:52:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E00A81DE2D9;
	Tue,  8 Oct 2024 11:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JtjM9NNi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D891DC730
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 11:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728388232; cv=none; b=JoCQC+UewS5xRddwz1vfopMhShdqAsRc/bdrZbPM4EcYu5DFw8oLLVoTVWVax+HWn3/yTCtihGX2KlICpt5QmreMipRg+Td4/93Q1KRPI3u+PtiX3ruo/rrklh4g5+pnAKyIevuN8BJCx4XO5+aBeu+U10WvA7OZ7V0OyKUcbh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728388232; c=relaxed/simple;
	bh=AvIf/cAXb7gv7K7QltyPmNlWcZlQEGDKitfw4yfs74I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QJ9McPiYHzaVDZYvCNFWYVMxp3fjuL5kCAUx7tEgDc3uemLri4EffmK3PaB6pPARDWyi5LYm/H/FkY1mTyQNL/07lHNYlQTPKS8RLvQvA74eUH4m0jfkbBtlb7ph2rvpRfpMt5QzzPea77dnms8oo7nPuPbDaViMErWs8jM6RGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JtjM9NNi; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5398ec2f3c3so6942150e87.1
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 04:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728388229; x=1728993029; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=orTo5qvkhHaghQfSFG2C3pKNVKQQ230FuuT1v/qSo3k=;
        b=JtjM9NNiYxQkGzA/S/xxuo9t6Q+yGrwzd6y85xpZ94kL5jqFzp240qcIFjiAU0J+u8
         SGd5OFo2LaxJQVdTauGk1PPRNMvxy7623p7snz2/hMKB2T45DRZ8QasQmd4xveQpx6u1
         7JaN5I3yDlJBr1+aY6xT+4wcrgDQAYpOYAGjOzaGj6HzRnCkLn+cso2eOpGhmOrkH1wW
         Ag4h1j2fuJNlF7fgmWnNZfrnFuN/GyRYj0OCNeSqHHaXLbpidXH4vgxatBbKrfvCEaKd
         Xg0G7shLWDyCzTRaKMwXq1QiTaljPHnLVCQsWfC0RYiI9TXRJG5Yny2cqd9QhZ1K9B4A
         6JEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728388229; x=1728993029;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=orTo5qvkhHaghQfSFG2C3pKNVKQQ230FuuT1v/qSo3k=;
        b=JTBedQ+Nl/TNaNrR2RGyk3ZzzhwpjnmKobnF3avdyv427cKeIzKLwRDv8vPLGCw+8L
         C/iL1Sl+DQK+zggPktAx35NXHLeGhIUEOfeZhEMIrJ/a/2E6+R/7Hjbf5SjGC2Y/L2GW
         7iWetA30zdsyKun0xyEdxK55aBhZYiMXRH/6+Ddl24Rx7xmHZ+yf+VSvxYGD+qjp2giQ
         /NHNKH6FVcCOPvW5moSG3ONRlyigkbjfS8I9O0McPLb/R8Zk/TjGkf2PW1F53q6Z5eIB
         Fkh2tM6YkhnVWTXVQN6D3lrv21c6DkU0WQ6eRYoyTJyobua2IhdsDRiHe8Mlk+0y+9lu
         1xsg==
X-Forwarded-Encrypted: i=1; AJvYcCXNI/9QB6Zp/whmEVuyEVZyFcCAl9Ow9pDpgpscceV9M8ssWOefE0hxRqRFhpg+UIUy+zMbJHIjqJ+6@vger.kernel.org
X-Gm-Message-State: AOJu0YzVSrQOvNpwQAvIf8+8+B4Kixc/yYqsSzrbvROFTX70Yoxxq3cS
	95X1MJ/Vd4f9+wACwyZOntCv7SxYOWGqnGjlQ6Dc7sKiJ5nlTT4DnHvjgjs7gHk=
X-Google-Smtp-Source: AGHT+IFmYoMJxA79DffYEVCVfEsjDHlDmeVIQITg9i1+ZFlfwyf0+DWMFtDh0XjYziiaQGCHLlLUvw==
X-Received: by 2002:a05:6512:2810:b0:533:43e2:6ac4 with SMTP id 2adb3069b0e04-539ab9f0ccdmr6848774e87.49.1728388229117;
        Tue, 08 Oct 2024 04:50:29 -0700 (PDT)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9937615e85sm476763566b.175.2024.10.08.04.50.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 04:50:28 -0700 (PDT)
Message-ID: <27f39cda-932c-4b79-84d4-be78d266ebdf@linaro.org>
Date: Tue, 8 Oct 2024 12:50:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: media: qcom,sc8280xp-camss: Fix
 interrupt types
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
 <20240923072827.3772504-2-vladimir.zapolskiy@linaro.org>
 <datahu33nmsser2p4fb2hyncsujtkwaca377ivwmpc6yj2naut@2sjsbebfm3gf>
 <3f87e855-8779-4df3-8f26-e3d2b611d3e9@linaro.org>
 <313667a6-afcd-44cb-a6f6-0d550e8f68a0@linaro.org>
 <4bf490cb-228d-4f01-a956-cacbafa94e2a@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <4bf490cb-228d-4f01-a956-cacbafa94e2a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/10/2024 12:37, Vladimir Zapolskiy wrote:
> 
> I don't have access to datasheets or hardware of sc8280xp powered board,
> someone may either verify, if CAMSS level high type interrupts are
> supported/working at all or not (obviously its current presence in dts is
> insufficient), or check the SoC datasheet.

I've tested both as was submitted and your change.

I _always_ test my patches. I'm not sure there's a datasheet which 
spells this out to be honest.

Rising or High can both be justified, its really down to how your 
interrupt controller latches the state change. However I personally am 
fine with the change you've provided because I trust it fixes an error 
for you.

I didn't try loading and unloading that module but, since you did I'm 
happy to Ack the change and trust your work.

---
bod

