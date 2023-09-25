Return-Path: <devicetree+bounces-3165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6547AD8B4
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:14:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 9970C1F24AA5
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F3D81B290;
	Mon, 25 Sep 2023 13:14:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BF31B28E
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:14:50 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87A68107
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:14:49 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5042bfb4fe9so9803857e87.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695647688; x=1696252488; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1dlFb9CClluN5asqyzNkIJTNCGduX6dkKi0ZTGTethQ=;
        b=iT7b5oAQ1C6Sxidm++2fQ0NZk4D8nRecsbUKgKHZFszcBVIeNty1sunSlm49HXQwGE
         cs4G3T5C3iI0Jrl+3sMshqLYFht0VxFJ646Z7kCbwd6QJIm2/C+tgBpcW1Asu+Ir9Nsc
         PLG71UDIUD7282o2ihmQ2ogGL9XoPgQ/7lLMu5xNHTN2tz1Uzl9TCyWcpljG5F1NB62w
         kBenM8q/hY19Lvg6LhwQ7ZBW/IVPzFySamgwiU8uDwfX7sEAYBEx8FvQW/nVrJ4EdOA2
         x/efuZaLiHaFsgWumb78VA2GER5Hzpw+t9aaME2lmU+xP22z5wSfZMLewBEmg8dpdsVH
         5lPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695647688; x=1696252488;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1dlFb9CClluN5asqyzNkIJTNCGduX6dkKi0ZTGTethQ=;
        b=kH/5SORkTDIBMS9l9Wo5oMAwnOfD/HV6eCP5wVdfNJw7t/oWKJNII2tzM7GRXd8fal
         8cwH5lcTSdxH03Ohu1y0Qucpawku0+hHqKLiAwQKCCRexqrpoqJmME8pe8MoDM6lEGAN
         CXXwi9Xb9vTOaAoaU4g6PALyCDMeh8mWFxhjJ6fxRjOtXLf0z5y4b6aOrGS+Cge8V4vR
         eKB2yNieSGulzPe7p+vjFyr0Z3H58Kh2Kfca3G5QDDmQnXrEAOULoLFg/DdVcpVwjcB0
         z4MX+xRO5wOu1J33okgiSF5b9BFUOXjt7KyM6GX/IQ5RTcA/MfXbwlrfAmfjTAYVQHkK
         4ghw==
X-Gm-Message-State: AOJu0Yw6MUtb8jafBsl9PEKegdKnfIHI9ckehHv9Kdx4vRN0s9ZGfehp
	bI1nuqHNEAKnQZBlThjFqEUemw==
X-Google-Smtp-Source: AGHT+IHaOAbnnh4AOTSgeqS4SICLk5OHXkQxgAQQHlYcTHOeTwMRRuF2/91BgowsmYY9TTh/bCZsrQ==
X-Received: by 2002:a05:6512:ad0:b0:500:b5db:990b with SMTP id n16-20020a0565120ad000b00500b5db990bmr6180928lfu.47.1695647687561;
        Mon, 25 Sep 2023 06:14:47 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id w25-20020aa7d299000000b005329f1aa071sm5484747edq.10.2023.09.25.06.14.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 06:14:47 -0700 (PDT)
Message-ID: <058d5889-8d16-b753-4ebb-6a25d0e5ae22@tuxon.dev>
Date: Mon, 25 Sep 2023 16:14:45 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 2/2] ARM: dts: at91: sama5d29_curiosity: Add device
 tree for sama5d29_curiosity board
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, cristian.birsan@microchip.com,
 alexandre.belloni@bootlin.com, andre.przywara@arm.com,
 jerry.ray@microchip.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: andrei.simion@microchip.com
References: <20230919124606.26898-1-mihai.sain@microchip.com>
 <20230919124606.26898-3-mihai.sain@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20230919124606.26898-3-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 19.09.2023 15:46, Mihai Sain wrote:
> Add initial device tree file for sama5d29_curiosity board.
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>

Applied to at91-dt, thanks!

