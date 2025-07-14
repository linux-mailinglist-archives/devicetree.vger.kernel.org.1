Return-Path: <devicetree+bounces-196098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DF7B04203
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 16:42:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28601173AB5
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 14:42:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E017625744F;
	Mon, 14 Jul 2025 14:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q40qDfwz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401A42571B3
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752504144; cv=none; b=mcZmJNVc4dRjGRWvH+9OyRjpg8ze9palW1+0wMFndNTZx3Qzrk3efct2PwYBVSIdzcZm+TtZREo+YKd0j7if6Q7WuVBuNrIguDpdMBCOQsVsjcuarPUBSiAbS5TDptExsjCglS/XH+kSpt08iorGd5BpDJW3ThrYWUBXnAp22Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752504144; c=relaxed/simple;
	bh=I7Pxnln1BUjfe7HcY5t1QvJulXfLwXmFHrmFWRkwVbs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pXh9aJEDDvZVIDeAAdSk7CnPvCDVMbZIQ6+qVSxiB68z87f37QKD8jAuN7hEKB1gmTAPiCQ+50CrDUQM0cA6zsy+Unu41qmSpUqXOrUApzhnzEUXja7/HUtawj7ilVwUP1z+Uyuo+W6ioascpiTNEf6dTHf/noy+KTRtUxLno8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q40qDfwz; arc=none smtp.client-ip=209.85.221.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-3a4f72cba73so3528236f8f.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 07:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752504142; x=1753108942; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YgT/ZO8DO6Wf1bRdrDifcHYIjUyKTX9Eo/tSV9XIcEY=;
        b=q40qDfwzSIA14x1r/J2rEkv6K1gxFsLR9g71YzjpsE6p6yyKnDL03XaUeaipq9qbtE
         sPSscV7zXPXPszZUWxrwFO2bmGXSxRHADAfkUMipJq5vD+gKVUVDzVPI9fX/tAosqAyW
         9e5VLaDKcTtGFlDJLH8CG+W2sj1fsnVEj5yJP9PqvcMk7KH+2MaeMRSgKRJTsyh0zky+
         UQSSKm0HPvwQ5EQnxzpi449raR24hCiotmch5uSmR6aZCoU72L4RvO+Y88A/q9YeQpQp
         eFi3WaqKBvxd/WWVjVI8UX/00lhKz8RDu8qhZo1MfAoQrPkssUCcWq3FDos4k6BkosUC
         bk0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752504142; x=1753108942;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YgT/ZO8DO6Wf1bRdrDifcHYIjUyKTX9Eo/tSV9XIcEY=;
        b=k0ZGMy5/ADzx+q+2+YDjK8AZfiNAtfn81C5IEKohjoOeRO8q0Yg2Bkb5Ts3F7a7jJC
         9cS1kKBPnOlkrj4cx7mQXbo6l5J0Sa2zw2URw/1gNwuX7+q58maBAczV39Kq7mHIhZl8
         EdHCxFA9WA9nM1R+AkFEeA18aYxiy1sStnkeJ5nC+4eVM3SCb/zuHEHwVbXP0o1Wecr/
         9QQYFnQjtmr8p/TqpN2ifyk9RBJmpfy/ZujDfxCDL9d3PZimhzMm9PSsfgd+9RLty2kg
         P6sVbiwSpkGQXST1XLp271GWKM0RT5f7t6PYGcw2pd12IWNO32WA/f+YTy56JQQf6FlI
         5AhA==
X-Forwarded-Encrypted: i=1; AJvYcCWrlugu5ktLn9d1xmCSzdO7kyBN03rj96e2CWX4Fb9x1Kaou0iINMWNux/E8EfVqvtNjRzeBTqHMMVS@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3x0XMUW7OC/ZUXqecKCEpAMth2b0d6a07EuvFlEYgShhjPbik
	HmYedvSa5aAgtRdfugOA73/r9cl/qPZlCf28/hXblYKQwgu6xxjqXwu3VevVQc67J5A=
X-Gm-Gg: ASbGncvlJuJvY/PUT7Hn185FhBOBjVeNcRCXHGa4NvLPc58DmVqMKLJhQz7oFsVCwfF
	W+alWUalLUWkZp1FNDSPo7VZXq4TpbnEUaJ7joxHdqUz6H3+cbVJ2C5jwDfg4su9IouKRhtT+bd
	BSwO3047BvoaH2svWK7C4mM6EQSBOnN9XJVoUfo9cEQQPwKEhhfBolBM/AYk1OAwObCzUNxHLbf
	bvQa4D7HsSU1izgT9vnwhV0AswoW8harzADSHGpPFd4nELboZawMeQfz1P8WxRUM0H3mVJObV/w
	+XMQ6+1lNoxmZJoA7IlFCtmNimzy1RpZSGGg3LFr6swCWCjrOD15QrWEFsGBBUUToDqe5u4nFxR
	z90YX2GolOHG6AlnPHjm2YKoXQqXL5p+wU50+qZZ0meXj2XBA5YfuAUJ9khuZKEQ=
X-Google-Smtp-Source: AGHT+IEi60GCx6StklZNLN6fInXr5r58gDpnVQSjnfRk5TaJycuEkJOCyklDv2cd+DxYgwPBiYqnHQ==
X-Received: by 2002:a05:6000:240d:b0:3a5:6860:f47f with SMTP id ffacd0b85a97d-3b5f1c67c67mr12717295f8f.6.1752504141614;
        Mon, 14 Jul 2025 07:42:21 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e26ee3sm12845397f8f.96.2025.07.14.07.42.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 07:42:21 -0700 (PDT)
Message-ID: <01080f5f-f3e6-4989-ac84-766c030dda35@linaro.org>
Date: Mon, 14 Jul 2025 15:42:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: Add MIPI CSI2 C-PHY/DPHY
 Combo schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-1-74acbb5b162b@linaro.org>
 <8ed5eeee-78a2-4b26-989f-03676a9e5da7@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <8ed5eeee-78a2-4b26-989f-03676a9e5da7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/07/2025 15:13, Vladimir Zapolskiy wrote:
> 
> There is no ports at all, which makes the device tree node unusable,
> since you can not provide a way to connect any sensors to the phy.

data-ports should go from sensor to the consumer of the data camss/csid 
not to the PHY.

Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml

https://lore.kernel.org/linux-media/20240220-rk3568-vicap-v9-12-ace1e5cc4a82@collabora.com/

---
bod

