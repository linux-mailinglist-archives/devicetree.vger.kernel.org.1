Return-Path: <devicetree+bounces-250463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A7FCE93CA
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 10:40:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07392300EA33
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5294827F19F;
	Tue, 30 Dec 2025 09:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sE7kF5ta"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7126A221F12
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 09:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767087621; cv=none; b=enHmWagDpdCanM5DtuyRgizCn7Lurnr52Ti377Pg4fXm/ifooMp1bbvlmcj6AyRcV38AdUfFSGUWfTG4aILhcbiRdcXiSBEOh3KxKgJklFEp8veK0dE58RgxoNHesKYCpLaqWx6nysaRPC0BszlU7pVuTm0PYkyNdz2vj0WWazk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767087621; c=relaxed/simple;
	bh=SnDVtQVl8WBWF3R0OmivmMiBUsApQ5x6MGy42kKYg4E=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=BRT0rLSR+HtUudMNWeafUMzUOtHTK7pQ7e32NbuGExu4OHuqXa/KuerMpf5r9bJQsz8xCJXC5or6rvOvMaBT+Lbwxxo03Jxhu50tKh+KQpk7egQNPYTGA45l+/nsk99N1TlM+B2qgrAITlrrRuQ86h2hYEDImyU9WY0Y8VCdCuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sE7kF5ta; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b736ffc531fso1782028966b.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 01:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767087618; x=1767692418; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zN/ur9M0KwImi0DBm0/fgIedoRti4CPacoiNg7hhK38=;
        b=sE7kF5tarGehhNxx80TO1z8euVHK2gI1h0xjtbmWrksONGMpk7xA4Cet5uUZ/djeFZ
         5l9TFjWoSGdBhifevZuaocTtIQQKfy+vX3SkQZI67pHmoLpIiOKXtJrc1n4jh80vdJ2s
         MLWYlfVA3dONqcU7wB0YVnIDzcmWL+DYB5jeBH3NpJ3/hJllT2uXSKdFS2mDbh/G+FZX
         uzOgRrlQRp/+48YKmTH6ocd2ndDjsOktYnH0XfiOjYJypUCC0hspZ8ThXTMGMFaH4TRG
         b16bVDTJfR5jbD9oKcKlVWFX/gkr33jT4AT90jmJhdAlJ3Ug7YnpVBwN4wi+nTeexA8P
         C4hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767087618; x=1767692418;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zN/ur9M0KwImi0DBm0/fgIedoRti4CPacoiNg7hhK38=;
        b=wooV0aGB3doQDRNYiN2BVLKkfYx8X+IEjeTiaqAvPUnJZrJrnNWCpa2dfD4e5tCOax
         vp0vj1IkEM+Neg7nEQHKWLu6b2iFyzBX539Ya3q/bcssnmuF+Ka3jThRtrzfE6QpWo+W
         wiLaDKlpuqvYxgDGFOw8cueCm5hu7H/9t2tRrOnfzgVwyjH9NgXUY4udCxX/0QyqcDtU
         9Q1SWUQ+I2DlZkmR0ydA0a62Xk4MLLslbpICyk4lD0EN+ztVsQWHTe/K77w6eiJmWPrl
         m/ZGkenFuUhgslHlCtPPliob/xjEwoNHvZkOyjECEy7Ew8QxhLNCu5DxqWreE6qF9G0C
         7dSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXd8U1fQ2+W4siNb/ir6ehso819TZaH8FiF4VqA+NtlDcTJes9A8Nqha6tt6YujpC9g3jx1k2UoPMfV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4WuRiq6tDTqqVCS1YjCrdsm1LAiXRbmzIgNV0+1AIgqpnVFiZ
	/kNKeCPLsEdTLPqQjzcCzHhRpogwebiylHOf2rtLsnWfSLHYFEeAh2/m3BhJPj2ZbjY=
X-Gm-Gg: AY/fxX4zqLg2YTl3UtNK7ZUpxW6YAOk5BEb0ZYsS4omzmrsQhQrY6qCTaBebe8lpttu
	wtm0hKI9XqmFXhsODtEUOQxVOv39V+iU+iblNmyTLVrqndfUGU2oVGH83aKJxN9Emuu23CmQez8
	0aRtk6jKu+fpjPYOD2Q/VveFpbwRtyej3z69gxsDHgn3KVcaGcOJ2MoG6g0ZKkbnBw6wnuBJrF2
	G5WwU3VSHHpBHdZqvL8izCGuJ/nZW6KvcdLqQMLOuDGZT0s9nYR1W+qYBWOYCDroMUTAdDYwKFH
	4GwObBGWERWBNchmi2507qJY08bU8eTa5AG24+rO2oDGioryFUuFcG+GgUekKz+nBSpfKIlnO5F
	aAKAFT7vVC64ehmAxJRkZ2cWIdzbVjEnVzYtwuzbLAx8x9Wu9RCy+puyV6U6y5zed64GVyIFEFL
	QpIAMbwKdiHyukjyeFpXFtTSOCpld+SfAqkEngNe/KwO2M8xg8FP2/mPAWOB5ZellRQdjF78nxw
	iWsVQ1ZS438nG4k8e/gtHlQdoZMcKV3+aIsIQo3YmCfL6BTfU+mfuP/iUrzj6ZWff0Oo9F5fuxG
	Pg==
X-Google-Smtp-Source: AGHT+IE8Q46S3n9z98hBCK7b3FNRHPYazHdbcsKH8q0ouiyW6bKhI/VDEMVG/7P+rDWf5zjXZV3M/g==
X-Received: by 2002:a17:907:962a:b0:b83:2af7:372a with SMTP id a640c23a62f3a-b832af73869mr1449856066b.41.1767087617722;
        Tue, 30 Dec 2025 01:40:17 -0800 (PST)
Received: from ?IPV6:2001:1c06:2302:5600:7555:cca3:bbc4:648b? (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b910601c7sm34033399a12.14.2025.12.30.01.40.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 01:40:17 -0800 (PST)
Message-ID: <7b1b0259-90d4-4e7c-8bc5-01e22c371e24@linaro.org>
Date: Tue, 30 Dec 2025 09:40:14 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/3] media: qcom: camss: support for empty endpoint
 nodes
To: Richard Acayan <mailingradian@gmail.com>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20251230022759.9449-1-mailingradian@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20251230022759.9449-1-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/12/2025 02:27, Richard Acayan wrote:
> This series adds support for empty endpoint nodes. It is currently RFC
> because it continues an ongoing discussion on how to selectively connect
> some CAMSS ports to cameras and leave others disconnected.
> 
> The SDM670 patches are for a full example. If agreed on, this should
> expand to SoCs that have CAMSS.
> 
> Example SoC dtsi:
> 
> 	camss: isp@00000000 {
> 		...
> 
> 		status = "disabled";
> 
> 		ports {
> 			#address-cells = <1>;
> 			#size-cells = <0>;
> 
> 			port@0 {
> 				reg = <0>;
> 
> 				camss_endpoint0: endpoint {
> 				};
> 			};
> 
> 			port@1 {
> 				reg = <1>;
> 
> 				camss_endpoint1: endpoint {
> 				};
> 			};
> 
> 			port@2 {
> 				reg = <2>;
> 
> 				camss_endpoint2: endpoint {
> 				};
> 			};
> 		};
> 	};
> 
> Example device dts:
> 
> 	&camss {
> 		status = "okay";
> 	};
> 
> 	&camss_endpoint1 {
> 		clock-lanes = <7>;
> 		data-lanes = <0 1 2 3>;
> 		remote-endpoint = <&cam_front_endpoint>;
> 	};
> 
> 	&cci_i2c1 {
> 		camera@1a {
> 			...
> 
> 			port {
> 				cam_front_endpoint: endpoint {
> 					data-lanes = <1 2 3 4>;
> 					link-frequencies = /bits/ 64 <360000000>;
> 					remote-endpoint = <&camss_endpoint1>;
> 				};
> 			};
> 		};
> 	};
> 
> Richard Acayan (3):
>    dt-bindings: media: camss: sdm670: Make endpoint properties optional
>    media: qcom: camss: allow endpoints with no remote
>    arm64: dts: qcom: sdm670: remove status properties of camss endpoints
> 
>   .../devicetree/bindings/media/qcom,sdm670-camss.yaml | 12 ------------
>   arch/arm64/boot/dts/qcom/sdm670.dtsi                 |  3 ---
>   drivers/media/platform/qcom/camss/camss.c            |  5 ++---
>   3 files changed, 2 insertions(+), 18 deletions(-)
> 

I don't think I am 100% understanding what the intent of this series is, 
i.e. at a high level the problem you're aiming to solve.

Can you elaborate a bit ?

---
bod

