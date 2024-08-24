Return-Path: <devicetree+bounces-96385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D06D95DDA1
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 13:56:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C96B1F210A6
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 11:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE97415C15E;
	Sat, 24 Aug 2024 11:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qsb/3IZd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160D31547E0
	for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 11:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724500572; cv=none; b=iliX+CXoTKeCH6UsTlPo62pMLM6pvD4j0JaxkFe9FDVt0dfT4L84yypWMKPPMO7XQUB4jBLUHeq/gAXBaVhcIKkstKtV59sWemvmXD6fhv2SAwFm6lRJ9ukC47PzURa8Un/CSyvCBDg6eMLNRd3tOj7lVvsjyj03vuRbS8/AePs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724500572; c=relaxed/simple;
	bh=XcH+gySZkktsF5O5xUvPh4S6Pv1HkZ72tsEJwIhGw+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VaCrurNloEuscLH3dAKPUfWhyUUsqzDQC1420ZY2LDdnOClslq5nBR3EetmDAUhxfAsvaNHqmTWcmhGMrc3oQwzDF4quKZwnBotjB/IX98Ay/Wb2wVLjXbjmtORnbDwkagOwY3J+iGjM0n+Ba5EXbskSSCntCz8e7wpCg52l9SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qsb/3IZd; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-371afae614aso1398764f8f.0
        for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 04:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724500569; x=1725105369; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X/RHlFRL8BvfCpxo+UvDM92ji/zjIKX2p7FmGzdO26o=;
        b=Qsb/3IZd2D8hSGjRYsqfO3NXGdC9cpjSejUrA8JCIuOoxIHOutFvVcY+JT9kLtZHnT
         cYqukrA76/T0DmSY+SIHBBrPDV4x+D01f8kYg76F7mA+yO1PdBVfhJdzCWwLxmMhxNXQ
         Tq89T7MCs0ys+BdLJsWpN/mDLUQR+o08RhUHabJxvTGkgX8hWTwYXzTs9OPzLbb7I7iS
         TNtN7MO/nAkTS2+Wewlal9THze3aPWFsZsdYXAhK/Jj88Tf3xDKWsp91EpOjOGxcX8Ar
         dfsXawbtz1FB97v0AFvh0nRKLjqgmn4nhWI5YGgIcNejz3OKh+zk/5yKBtuZN3X1qIO+
         mX9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724500569; x=1725105369;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X/RHlFRL8BvfCpxo+UvDM92ji/zjIKX2p7FmGzdO26o=;
        b=YZpiQbkGzvqmdnzx16dPKgliQIkTwEAc5OtAZJG3JVAakWFT6gnL+XFYuqt8734K9I
         49Lu3Odi8O65ffbDVpoBDoekDlzEt1PiZ4m6FwB1cwb6oX0sblq6/bXd8AzPQluXuAkR
         KuJV10Artp+MpcLnHOZTdJZ4vE/HBBqUTp16NZtUSNmuaFQ87TFxGZzwo/vrg037WTNW
         e8CjpDYmsO7KjSXLzy8RzEUM29K2wo2qFqlJVcBG+++EsWaOnEGut/BbjcVtnSY6Xc0U
         OFcL0CsLZd+dNTwJ48YarTToOxFXS0gM60oN5sq86d5pHSZpTCnbc79+JHTUUXR634De
         0mfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDlUzSUQW8NiN1HvVzNWsA8D3hJvXZjWTTmiX/OtaKei+/lk7aEfqecvuahC0vDJPoVHLarJpYjLb0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2mc1fJbJs2XySP0bwd8uFtVnlehRWqu/QypHsZ9XakRRfAqbo
	mKoyaqeZZairA6u8CnaJdUSY4B8yO/2j38953Va7M5pbn/xAUsIQYvQO76Du9IM=
X-Google-Smtp-Source: AGHT+IG8MFvvj4lPScNF0cI/NMb1eTYexbmM6X3k5Jg8OSr12OmmZNlNWWKhCtl6pFBOEXDlFp3cJQ==
X-Received: by 2002:a05:6000:11ca:b0:368:4634:c419 with SMTP id ffacd0b85a97d-373118e40eemr3382433f8f.58.1724500569407;
        Sat, 24 Aug 2024 04:56:09 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f5a4csm391185966b.209.2024.08.24.04.56.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Aug 2024 04:56:08 -0700 (PDT)
Message-ID: <1323cf1a-2207-4b71-9934-b37509098f38@linaro.org>
Date: Sat, 24 Aug 2024 12:56:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: sdm670: add camss and cci
To: Richard Acayan <mailingradian@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20240819221051.31489-7-mailingradian@gmail.com>
 <20240819221051.31489-12-mailingradian@gmail.com>
 <40cd7a52-1c60-40dc-aee6-730b5247b216@linaro.org> <Zske2ptZAV12YLyf@radian>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Zske2ptZAV12YLyf@radian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/08/2024 00:44, Richard Acayan wrote:
>>> +
>>> +			assigned-clocks = <&camcc CAM_CC_CCI_CLK>;
>>> +			assigned-clock-rates = <37500000>;
>> Please remove assigned-clocks and assigned-clock-rates properties.
> Doing this adds a warning to dmesg, where the clock rate is set to 19.2
> MHz by default.

I have a patch for this.

Feel free to take into your series and then update the dts here.

---
bod

