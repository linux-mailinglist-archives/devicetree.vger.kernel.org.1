Return-Path: <devicetree+bounces-170605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E47A9B990
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 23:10:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E6A05A8565
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 21:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC42028468D;
	Thu, 24 Apr 2025 21:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lR3X+ts6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E54814E2E2
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745529035; cv=none; b=qrDeCBzN+HK91+H2g9Lce77zmXzKNceVoDLdE6cn3pbsZvLuR4pziI3tfDBYNJAX+aWTxlRKgQw/3g6HNpwSuxSObtS6embrj7CEmFEznxcfdvXCT0wDo8KOYom2Bn+cE+eW35dHyoVBLPdtZ0s+wO+JnoFTzgteky+zedOmCAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745529035; c=relaxed/simple;
	bh=SAAXfe/KmgVnrM0sBHNxSuQBzWcxeMCd6SSxcmfEm6U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bnIb/+M4m1oyy0Xr3NdNu0YAqKKcEj8o4aM37jy2eDNmt9MAF/O6KtWk8Ws3nxRYprKFcQXxhkTOysSNgrBWNh07oEEjetPvzasDj3wRwxtGViEjkIjhASJROBIfRGKZVrC4D5JaymQ3/Tlquu+0wd1uo0V+Pp/sO5AT09wv8Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lR3X+ts6; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39c0e0bc733so1368198f8f.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 14:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745529032; x=1746133832; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fpJUvS8XH91DbwFGx0Gn68uuFYZumKhYa+GRw9ZFlRg=;
        b=lR3X+ts6GC/DVz2WeJ5jObMeGHMHDdSrvq5907aP8Us2eK/eSaSk1Q2VfQR/L3KOSN
         ZFU0uMNudh4oStmf5b0TW1d30NJzR6whNjCf9u6vUKrF7CWfH9Wmd4djdPaBiR/9z6Qg
         SrTrj9IbaaaEskl60J4lveq0TIaTSpHLudTE2Ffhds9nQVScuogx/WBpdhSnfp+eJ9mL
         wB19paecEMEszj7Kf0xF3OoOUC5XtxbvB1RDTlQL4fjKhh7gVBjoER7f+PWv987qhNjX
         au3BKmIr68al3JUo7guzTqzhkA4pI3cMFOlolaMsdd+WUrNjGork93YM6DZ1YcZ5N3ta
         LlYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745529032; x=1746133832;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fpJUvS8XH91DbwFGx0Gn68uuFYZumKhYa+GRw9ZFlRg=;
        b=LGfAsJTek1LEJxSMB9LYfnmts4Bxw1MOVGw5p0v8TmaHPqyf/a59of8PrazNfls1yr
         C0DAPST5JWyd4GlDokUM84LA4YbYMMoBAdO69buSP/+dpUuVvUt5u2AlcL8TAwBb7uLV
         mbqD0HUrR5wJ/lSzE2RY7JAC8hlx6aRQS/vHWPibZ1+WZpQJq1/AQBsHX29BtHmOnMRX
         g1r1UZCIFsakriljsthwE40qVbNgsK8VimVtHRWcW0J2uUAqZUWrPA2q2iJzDgjSQSYo
         MHYuw2ocsLtHY6cqhDLx+o0n+9OAH2jcmsLjQkpxqb3TWXwCPihLPOQRj3To8WNCi+Te
         4Ugg==
X-Forwarded-Encrypted: i=1; AJvYcCXpgcGzabKBh805XMjFIx4J9bcESPOSS021IrysuERktn5iBCbZmSv2zSVxBREVgJTsQZoCLSdm9qYF@vger.kernel.org
X-Gm-Message-State: AOJu0YxQPDeDsEKV9ohe7sqBrb5z+YAH8hxhbPHEgesG05+9tKBWM08I
	g14YGsO3TGgteYlMBgmF3qZMHw9qF0l6zfdPTt8iGwDoaFt+xM1Rz+t53kjf/Fc=
X-Gm-Gg: ASbGnctsQMrQ7W4QXTrnfIq2zgc4onTyDMB2wgWKEPNs3N8sqyKrgeh4aFHxdHzDi0E
	xuqVJ342hbGXs+IGpKk0vxar+6tQsoNqLGaJRTCBb+GKoOWqqOIZbM71klP2BycjoFa/ksuy4W8
	J2JKOt8qroWPk+4i790ratrl/3YetdeGmsF1xzf6orHDhlWD25jJa66CodRmclBzvKaWGIzaHbl
	yNhqtOdkGHyxC1RMKaL0Or3uFT+N0DtQAH8cXZpeNw8xmrBm1+azvyaEEXC+52i/ri1xTPPRcr3
	zG3m+pSu3/sAqDDApJMXs5kAimvp20V17CXGtvWpEOfZG0YTn1ik3rD+LB00Mug0GyH1mgkz6mV
	w/i4bYw==
X-Google-Smtp-Source: AGHT+IFQkn1+bYDDTCD4Ik2NQke355Zk6NhxCyw/2MWOpTV1mCxM9793lDKvqt+tzTQ/fQ1A8Lt/qQ==
X-Received: by 2002:a05:6000:40cb:b0:38d:d666:5457 with SMTP id ffacd0b85a97d-3a072bb38e7mr581586f8f.42.1745529031365;
        Thu, 24 Apr 2025 14:10:31 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a536a1e8sm1651745e9.28.2025.04.24.14.10.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 14:10:30 -0700 (PDT)
Message-ID: <e7a229f9-b02a-4979-b609-ef5e478fe9c6@linaro.org>
Date: Thu, 24 Apr 2025 22:10:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] dt-bindings: media: Add qcom,x1e80100-camss
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
 <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-2-edcb2cfc3122@linaro.org>
 <3ec3fd62-bf21-47e7-873c-ce151589d743@linaro.org>
 <54eeb470-cd90-4bc2-b415-6dea1ce2321d@linaro.org>
 <0ab31397-580f-4e5a-b9ad-d9bf79d29106@linaro.org>
 <36feffed-4558-4e59-97db-2f0e916dbfc7@linaro.org>
 <6a4ec36c-c003-4ce8-9433-8c12ed3188ee@linaro.org>
 <d97194a7-2b7d-4a76-998b-92da495e8bd2@linaro.org>
 <d0958f7e-db81-4e4f-93e5-24ba0cd853fd@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <d0958f7e-db81-4e4f-93e5-24ba0cd853fd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/04/2025 21:08, Konrad Dybcio wrote:
>> The Test Pattern Generators - TPGs would then also fit into this new model for the PHYs.
> Maybe we could consider modeling various camss subdevices as separate DT nodes,
> perhaps on some sort of a `camss` simple-pm-bus or something alike

I hadn't though of that specifically, call it option 0.

I had been thinking of

1. Doing like venus with a subdevice based on a compat
2. Doing it like DPU PHYs and just moving everything into drivers/phy

The fact that the CSIPHYs are technically inside of the CAMSS 
collapsible power-domain seem to mitigate against option 2.

---
bod

