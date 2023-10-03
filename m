Return-Path: <devicetree+bounces-5456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4016A7B6680
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E76DF281720
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5FD85667;
	Tue,  3 Oct 2023 10:33:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B631FBA
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 10:33:42 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98EE2B3;
	Tue,  3 Oct 2023 03:33:40 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-533cbbd0153so1207978a12.0;
        Tue, 03 Oct 2023 03:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696329219; x=1696934019; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J/WhFVjfA28clBMUuGiPeq+RU/kn5UwfaZNEZffja6o=;
        b=Ckg/6iY3LPQp0Q0jQvFiQrKLTbnIzAGBtd2IP1uSwXxqVgcs5TkCybmFpjdwi6C/TG
         1L1ObxgsCPiG76gR9/0iPyWy8lX89HmAcit4FmxBZ4zxVNjl3Mt0eIFgeFH2HQRZEqgT
         HUGZuik0FU1uwIN6PBTnsXOD0nE61WqFtcXHiD30sVwt618owRy20J/7Cz6xycbYfGoZ
         iR4Z7KGzYo9jNJLfOiMXFi+1kVZq9f7MLy7vGb4J20WjMKmdMrQByFpupQwq5SfEmIag
         FLkf9htJ4oFPbhkv6oYGhaj9UMB6Kg2TFG5FluwEh2hcSEs58++TU5+/Aoggxd9NINs1
         ZhDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696329219; x=1696934019;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J/WhFVjfA28clBMUuGiPeq+RU/kn5UwfaZNEZffja6o=;
        b=ToFLjjTZh6vwUxfvh09IjQW+l7wAt6K3AV7F075/YfRGQ64KLUyRe2eVNW6ZCRbsi/
         QQwBX7k+QNqtpE0I8xPYiNvz+8j9NktIFbcwKI0Hbc+2JJtzx73pIROzmAf9tDPn3Cv7
         Xe+rNXvdKJE0IYlawUJ3GQ7+gPw8am+xV6gZCwLEGJAb5Q+IAu2AjaU/GgLseQjMHaMq
         Q/H+1oqNMzA1tZ0aQdSofmm/5/Fd1zwAlXCERtDVry7M7e46Dl9azqnjbiGYY6XbNKVw
         9MPuWlCfaP+qDwSEoAEWJem7aJcP4k88CZElYjb1MVHjs4EbA6yNLW0ZlGyWyd7blhd8
         xtVQ==
X-Gm-Message-State: AOJu0YxnsMxuFsgaQMGFqcXhh/pA6ropTPRmPY9CmZkYt421e78Nk9nj
	fbXfH5sjzgbjIz3yB4yN/Wb4OLbFLg7fAQLV
X-Google-Smtp-Source: AGHT+IFfx16hk+3TKsdvFVRiT8Hmfx8XAO9TSLCnESlY/wH2HQ9arzhYWBibHzQolmpk/cd4rMuhSQ==
X-Received: by 2002:a17:906:101a:b0:9b2:babb:5fe9 with SMTP id 26-20020a170906101a00b009b2babb5fe9mr12719211ejm.23.1696329218778;
        Tue, 03 Oct 2023 03:33:38 -0700 (PDT)
Received: from [10.76.84.110] ([5.2.194.157])
        by smtp.gmail.com with ESMTPSA id h27-20020a170906261b00b0099bd86f9248sm835102ejc.63.2023.10.03.03.33.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 03:33:38 -0700 (PDT)
Message-ID: <c52afe87-eaa0-eb7f-090f-b22aec95e49d@gmail.com>
Date: Tue, 3 Oct 2023 13:33:36 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 2/2] iio: adc: ad7173: add AD7173 driver
Content-Language: en-US
To: Jonathan Cameron <jic23@kernel.org>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, andy@kernel.org,
 linux-gpio@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Michael Walle <michael@walle.cc>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 ChiaEn Wu <chiaen_wu@richtek.com>, Niklas Schnelle <schnelle@linux.ibm.com>,
 =?UTF-8?Q?Leonard_G=c3=b6hrs?= <l.goehrs@pengutronix.de>,
 Mike Looijmans <mike.looijmans@topic.nl>, Haibo Chen <haibo.chen@nxp.com>,
 Hugo Villeneuve <hvilleneuve@dimonoff.com>,
 Ceclan Dumitru <dumitru.ceclan@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230928125443.615006-1-mitrutzceclan@gmail.com>
 <20230928125443.615006-2-mitrutzceclan@gmail.com>
 <20230930150531.083c51d4@jic23-huawei>
From: Ceclan Dumitru-Ioan <mitrutzceclan@gmail.com>
In-Reply-To: <20230930150531.083c51d4@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 9/30/23 17:05, Jonathan Cameron wrote:
> On Thu, 28 Sep 2023 15:54:43 +0300
> Dumitru Ceclan <mitrutzceclan@gmail.com> wrote>> +config AD7173
>> +	tristate "Analog Devices AD7173 driver"
>> +	depends on SPI_MASTER
>> +	select AD_SIGMA_DELTA
>> +	select GPIO_REGMAP
> If you are selecting it, why does it have if guards in the driver.
> I prefer the select here, so drop this if guards.


From what i checked, selecting GPIO_REGMAP does not select GPIOLIB but only REGMAP.

Also, in the thread from V1 Arnd Bergmann suggested:
	" I think the best way to handle these is to remove both
	 the 'select' and the #ifdef in the driver and instead use
	 'if (IS_ENABLED(CONFIG_GPIOLIB))' to handle optional gpio
	 providers in the code. "

