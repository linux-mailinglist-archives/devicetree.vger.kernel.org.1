Return-Path: <devicetree+bounces-196264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB81B04CB3
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 02:13:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7BE7A7A928B
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 00:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 799F04C8F;
	Tue, 15 Jul 2025 00:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M0IleP0s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB09D367
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752538387; cv=none; b=eIERORmNcpmnMjgqXIA4V5UkfPsfjKGtjIGYKNohaBOmNkxYW9u2zLqvRzgIq1OOOfeTxWwvQ6Kb7CUwWix4QQc9IuKbzsZ82nY9mNL2sXSQ6IXTfHDjMsE/+UJYyNsKB9GDIc7R8I5X4h/djNjG7FZeUD7ifuyJc7A7RJ189Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752538387; c=relaxed/simple;
	bh=Rtl+kg8lua8MhwuqM/aGV9rwRAtERpeCerUyDwG5VV0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uIahvEB55bGPi72rju0CQgX0MTFeuzPZxnA126Jf2KKO4SXbydMakt6pBvUB0GWQ6gdyg0MUwvQexwVoCiWGu9zFftV4H5u8biVIurUQja+P6OpBqiHYglptDve6Mw/dwsWvFoSlGGBIKXbX4x/rgHyuPYwo0qAy6NSepO+X6fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M0IleP0s; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a528243636so2631476f8f.3
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 17:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752538384; x=1753143184; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wjjlBO5McvqWYarNTItF1TpVtLRk0nuxtxgk1AQtFqQ=;
        b=M0IleP0sgw16y9WgCJk1fMPr3BfjtpxZ9QmUcTNtm/VRqp4gqZG9O76aHOKECZ8k1g
         Z6mYeaB9lc3GJVhWOB2wTR/W9jCl81CnBaiEml18OL3SrESnG+UTr8bTk18qv/vWdIiw
         eZqVN9ghaFBKJw4cSXv2p3pMPuu3h0Z476pppv5gdofex5H+T1nXCRGzGmIq8k94QDv0
         MgsFJyI29O5frBN76AC2ZLJH9wGRH3qYHo6SXTOYOjweA4s5yNB3pc5fNKH+cVaHBYUM
         zIDIwToO9+TGghAO3AVcNdr2ZrhRu6uHjkB7ADCPea+r/10nu/VlR+axewJMzoa+HIt+
         Q7Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752538384; x=1753143184;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wjjlBO5McvqWYarNTItF1TpVtLRk0nuxtxgk1AQtFqQ=;
        b=OyZA+sgUf1VSXRL9TnDEyVqxwZx2BLeIJZ82u5/0qWSidVSiSJDkeInfEm+ENngX28
         ryKcHPOSXIiE8vCgRV0gR9rAzAr7N1o4615Z92YkfQ+3RFcO78G80qW39tX/kCsZ6s5d
         wdakHNpwt1jfabvy3hv1lOc2ayxHJ3Qow20RBQF9ELe4YdBseVai6wQCE40m2XKPe2DM
         UqnqVSc5T6WqqygFjgaCuNuXjtPg7FyRQfPfi7aQcm5wuPihOpExdK+8AE3ZtJbXBEVE
         QwOgFLkXKv9kRK/M2NL9YpkqEAgEXJRza319xq/LQcMA0f/HqIjEyw3KO4s3CV7X/1+G
         LqRA==
X-Forwarded-Encrypted: i=1; AJvYcCXFQwaJ0R5oqsjTBSqoWHb7qmwWDdqZU+j//zRXR3lp/eLrYtrwQJmJovZKJ8N0yre/1osciNqHD15k@vger.kernel.org
X-Gm-Message-State: AOJu0YxgVX88mVoqy/40uoFJlmREG3QADmokB/x0NHoovPXky6wcNvuq
	L39GkCPRYIapEZ0RFqBtxvPn1kuRAHkoq2+i6aPSdn1p0ndLsYYUV8J4uGBr0uZCzUk=
X-Gm-Gg: ASbGncvLdd8rcp3n7S5JI3xZFMZLDi2VzkmjznySxUPeOUbCytgiieNdABYg9ylZi9C
	tir31sqnRZui76oQVWYs2KCtu586KY9BYQ0QAYdjHxr9p6wh8iAVGBJznLVOrMcUbFNklCkbefd
	mS8GkqD+3nNLJQYoMEFiTQkgYRuIkCFZiO0eWEfO5E1dTknBwCeHUSZwD21hbLC0dDIC6hVxT0M
	z4oHCZpbE7b8+HhaCHr/j6MALs6+SKUS2cnkpdmAA7qMKLnv1wSl5EFag0/nNI+yTDlnw19BhlG
	GQbraU+ShxyY6Gykzl6mEoVyYk/C3D2W40b6/xMouTFlwP4SSqVmlLHQAdhsz+3CFT/+JrRO3Us
	p8JOJebvZuzu7uACjWznCnkrlwojug/FTjx/F+wJOOHT1SDKx+69JTTSQRtDujuA=
X-Google-Smtp-Source: AGHT+IFJd4axtAtvmY0ckIvQbLgd8yggih4zpyTmoTOUg1GtduaU49kxIVWw0qgHHk8eix9/zHH8ow==
X-Received: by 2002:a05:6000:e0a:b0:3a4:e841:b236 with SMTP id ffacd0b85a97d-3b5f18cebeemr10550712f8f.33.1752538383914;
        Mon, 14 Jul 2025 17:13:03 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e211dcsm13335901f8f.84.2025.07.14.17.13.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 17:13:03 -0700 (PDT)
Message-ID: <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
Date: Tue, 15 Jul 2025 01:13:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/07/2025 16:30, Vladimir Zapolskiy wrote:
>>
>> I think that is genuinely something we should handle in camss-csid.c
>> maybe with some meta-data inside of the ports/endpoints..
>>
> 
> This is a CSIPHY property, a CSIPHY hardware configuration and a wiring
> of sensors to a CSIPHY. Where is the relation to CSID here? There is no.

All the PHY really needs to know is the # of lanes in aggregate, which 
physical lanes to map to which logical lanes and the pixel clock.

We should add additional support to the Kernel's D-PHY API parameters 
mechanism to support that physical-to-logical mapping but, that's not 
required for this series or for any currently know upstream user of CAMSS.

> Please share at least a device tree node description, which supports
> a connection of two sensors to a single CSIPHY, like it shall be done
> expectedly.
&camss {
     port@0 {
         csiphy0_lanes01_ep: endpoint0 {
             data-lanes = <0 1>;
             remote-endpoint = <&sensor0_ep>;
         };

         csiphy0_lanes23_ep: endpoint0 {
             data-lanes = <2 3>;
             remote-endpoint = <&sensor1_ep>;
         };
      };
};

&csiphy0 {
     status = "okay";

     vdda-0p8-supply = <&vreg_0p8>;
     vdda-1p2-supply = <&vreg_1p2>;
     phy-mode = <PHY_TYPE_DPHY>;
};

sensor0 {
     compatible = "manufacturer,sensor0";
     port {
         sensor0_ep: endpoint {
             data-lanes = <0 1>;
             remote-endpoint = <&csiphy0_lanes01_ep>;
         };
     };
};

sensor1 {
     compatible = "manufacturer,sensor1";
     port {
         sensor1_ep: endpoint {
             data-lanes = <0 1>;
             remote-endpoint = <&csiphy1_lanes23_ep>;
         };
     };
};

---
bod

