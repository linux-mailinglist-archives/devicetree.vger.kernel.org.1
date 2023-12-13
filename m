Return-Path: <devicetree+bounces-25042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F72812024
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 21:44:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76F351F21856
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 20:44:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D90317E547;
	Wed, 13 Dec 2023 20:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="scCp2sm0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E06F9C
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 12:44:33 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2ca00dffc23so94125331fa.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 12:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702500271; x=1703105071; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=791SIM/Dhvb8Ir1xD+lGgMjeSCLDTpnAuXXKKBGGfXM=;
        b=scCp2sm0xN+fUSCUAmpef9JPEiqasoceuJBC7uuWbi13tXHIBN7jilKBOzujq/M2Ik
         RVBrZSdbEyPRfKPsA5e6kSXmepZAep5kyap9WPnY12ZXL2yDOGA1YHgNOcGG0+vAwdsC
         K0RGZmlimA5MoubfHqD5vttj56tzHYajYw7VKROp3RusDdw89aMvmEbB04BjOpoRcXFg
         yyGv8YmP2iW3EznlDw+xnB79N03hfSPcgPRycQ5+qCqWyrpTSywTD3v+0iDHII9cX1Sn
         MbpJcAmV9vdivonRb9Km3mKpJv9P4uR89LUrnEiYqXEVYJ6fLxVSnEFUwEMtqxiz3XD0
         CAjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702500271; x=1703105071;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=791SIM/Dhvb8Ir1xD+lGgMjeSCLDTpnAuXXKKBGGfXM=;
        b=tUyWiC207nn4CHfR5acIyXHLLEGl8y/HJE4HporRwWVTsYLDERXAa0UBvnLNljh7PJ
         5LYOFo1riNg676beFNqKqTEXuRnn78dMNduJfAJSf7T/KgHFFivxLMkiEXronecrgBPE
         CswpRgGlF1prtGwfh6hwpJm+Q2bCi2FKWnGXh91KJA29HBnOaZo3Up8cwyO/IVL2kgIQ
         ZRiWtq1JYB6ZjP8sIYGzfnKTOmQqLZ3QIYNueL5B0JDpRVC+DE5EGNmHNB5AHMLfCXRa
         De0fWQx6zjUmq7++YsveaC2/19WWRdz19vYjdxqcnrGgQuN0rcBtcy5LiOG4XA7cd9Fn
         MpOg==
X-Gm-Message-State: AOJu0YypDUHPPFyyaz0tEi3yLnFYignql5Md3kUBuRVYMn3h5EdGIwVe
	sYV8ae2Tg0MjEQKQ/BgaJZjLcA==
X-Google-Smtp-Source: AGHT+IGBcCefJRle6Hyu6jtgfQoSzKaAQzBDmyPvdwsrfJHXq/qI3IxXTgfVdwGdurr8E0qLZIqlnw==
X-Received: by 2002:a05:651c:b07:b0:2cc:1c25:83e0 with SMTP id b7-20020a05651c0b0700b002cc1c2583e0mr3375130ljr.39.1702500271376;
        Wed, 13 Dec 2023 12:44:31 -0800 (PST)
Received: from [172.30.204.126] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z11-20020a2e964b000000b002cc41ec2576sm1946ljh.61.2023.12.13.12.44.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 12:44:30 -0800 (PST)
Message-ID: <e7f8e4bf-080d-4bb4-99ca-727d2d00f55d@linaro.org>
Date: Wed, 13 Dec 2023 21:44:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] ARM: dts: qcom: msm8926-motorola-peregrine: Add
 initial device tree
To: =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20231213-peregrine-v1-0-5229e21bca3f@apitzsch.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231213-peregrine-v1-0-5229e21bca3f@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Level: *



On 12/13/23 21:33, André Apitzsch wrote:
> This dts adds support for Motorola Moto G 4G released in 2013.
I have a similar one in my drawer.. not the 4g kind, titan IIRC?
Wasn't this one codenamed thea?

Konrad

