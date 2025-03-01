Return-Path: <devicetree+bounces-152970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 80588A4AC8F
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 16:24:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 688CC1897456
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 15:24:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCAFB1DF755;
	Sat,  1 Mar 2025 15:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Xp9ntd8E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F2D33E1
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 15:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740842649; cv=none; b=QGJYrxzB+wlYNPWh7QO1fSTNvioMpAAMmXA7bQsQgj9m88bLGpQw+U9aSB4ebJh+2QO7ol4Qp0FoxzJf6djn0FtZM51xt6wpsF1dBrwodhUODDRiSNVHUtyxSPMvnRGIwn/cSfTsB9OiIZqY3tzq1IhHmwt38vMlG6vYANXUsw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740842649; c=relaxed/simple;
	bh=3m2ONwDeDAUc/cn8ENwSawSdz6GBOh9eSxKVidT0KWc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XNHgaqJBnb2Vn0WaOu2O4eVNHGEWHx9ukop9duB3d9usJtQD/DM5Dum/hrRG4Q2jTs57IXTBhlxTDoHw5Ihg96FIfKxLDQ9B+qOWJLG6CPxl4NjuI1O02UVtjjSldC1dgwT4BNMcmGM/a6qQuSaSnLZqV/qohw/W0aMFGIV6yfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Xp9ntd8E; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4399deda38cso20113745e9.1
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 07:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740842645; x=1741447445; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DyE4RDFymN6Y0/tDe7AGiAbq+AewoZBWihg6OLLbjWc=;
        b=Xp9ntd8EtySRxeqFS6b9EKwqt1aCiPSK4Yot0vPq0XNr2QKYHBaxwH8D1O9J9OzMw3
         YGH684z/Zi73Q10TZgXpQmzJMbEG9MHiJ7euqUuyWqUbSg93sOVbNlBsPazQqwBTxxH6
         OBd3O9cO8DQ7hFf/RZ09TVOz0ZttfQcTTv84Ic+0VWjAjizrb4eo6ejecv6Ej1a8e0qo
         vq2jAhqiMelc1MevN6bgWCsOcbHNkb16DWDRF+i77J1a3c8wzCtZWj+jyKhH1HVlfMdI
         vR96Dn9v8qggd3svgLS2QxpjHo1qtknHAffTRowqT/ljHeYDbcoaxgepYC18Mrd0OOSJ
         567A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740842645; x=1741447445;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DyE4RDFymN6Y0/tDe7AGiAbq+AewoZBWihg6OLLbjWc=;
        b=QowXqojRBLRlOt7SSL7dikZ1Wl0R/zHNprc+c6Ue5Txm3MoVi1gHnN+IWP+fSN78kL
         ucNOqAHFrVo5Ov97aD2WmMOmekfQWB1sSgzyLepDJ/ce6qKJthhem8yEMnemODqCPKRz
         3pmn73Tt1rxpaUvnQKM71AKe8mL+jSFpqpfoVz7pYdY1LundCVHgIfKD1iJi95lELaZJ
         91YQQ7sC3j9SQOiuCMUo0/6oUiLeGlUdc7R1vSDUf3Enm8VqtLYh21Gx3X3iEyuG5cCA
         Z75rncIL2Hv/XryqIMxjhwEzWzFic1aRc9CJ3mMTPOXGvRYpM1CUH9v4QwmBQm2rZUAL
         dbPw==
X-Forwarded-Encrypted: i=1; AJvYcCVbnt0GgSMl/bwze3IBMWZRucW4LOotQ6FbVVo4Div3FGmzcnJrOLWGQfaGpZSFBH6JjLuRaRA7ohxj@vger.kernel.org
X-Gm-Message-State: AOJu0YzmyZ/eUaY+QlpbJ879o+q7cDiTTG7j9mSLo40xENYAradehyj2
	iR3vciurmQ93fpA/p6oMYQ18lMhrAsOaFRJPFHNNEqBjCXTlou6JQXUsXUy6VBI=
X-Gm-Gg: ASbGncv3Scsy4zkAfl3kUE7A9NeNpAGqH7EpKM4wf2i/6g1H8VnCd0bpmXlWKPuewYp
	Hn2pPMdCcy00MnMV5NHN6XTPPNWR5iAPPiiykZ97vYHXnfVXmb9IiW73qnxi+SNWWiM4+9/VTK7
	NU1rDGUWknxfUuaSzYya1tdyQgTGujcCYd1iPQOlx2COfhYuTskmLTOtX51fAEkv2w3TsTD1a1a
	bPEi8f5PZRTbofJ9/PTMyNBH+L4qAZHHB3jjI1RdTB10Dhs8JhzhlrPpSGy3UaNM1ySnqCuyuQE
	el6v5Z+sOFqz0y8aRJd2vGp5guNMyYOqjTXAhYEPh3urutDhbiyjGw==
X-Google-Smtp-Source: AGHT+IHiRxjnZq8NhUb5asT1Hu0VwjQR+BBK3Vyg+BBt9UXQkSJXAdtpoOKry9ltGZaW6bEq4w2XVw==
X-Received: by 2002:a05:6000:1f81:b0:38f:32ac:7e70 with SMTP id ffacd0b85a97d-390eca4ad13mr5456232f8f.49.1740842645416;
        Sat, 01 Mar 2025 07:24:05 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4795da5sm8785532f8f.15.2025.03.01.07.24.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Mar 2025 07:24:04 -0800 (PST)
Message-ID: <35dd6819-591a-4dcb-9c01-f32e7f1db54a@tuxon.dev>
Date: Sat, 1 Mar 2025 17:24:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] ARM: dts: at91: calao_usb: improve support
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Rob Herring <robh@kernel.org>
References: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 26.02.2025 10:49, Wolfram Sang wrote:
> Wolfram Sang (4):
>   dt-bindings: ARM: at91: make separate entry for Olimex board
>   dt-bindings: ARM: at91: add Calao USB boards

Applied to at91-soc, thanks!

>   ARM: dts: at91: usb_a9263: fix wrong vendor
>   ARM: dts: at91: fix faulty ohci/ehci node names

Applied to at91-dt, thanks!

