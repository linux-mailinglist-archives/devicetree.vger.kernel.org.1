Return-Path: <devicetree+bounces-1629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2571F7A730F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:47:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CF041C20A94
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 06:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B953FF5;
	Wed, 20 Sep 2023 06:47:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2665669
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:47:26 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3723B9
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:47:24 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso820765366b.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695192443; x=1695797243; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ItM+TknBaVUePyzd+K9zDA8JpLcEfRL0RuIuQPWPMDo=;
        b=tAVtGjWuSa9lNQKLbODyu9wLIICBl4fncvJ08jFuJRQ1Bg9O105Pl0Ag1rpEiq/zw4
         RhSKrNYcg7pSS/56sDq40/y+jvNG1F0I1BAUftydBgz4koFcOl1A7BTaSZ9cBvRoM0DD
         1/M7gySxFQuzgqyhdnM6nXxAjqbBAnMVT0O2gE6kupdE+4dE+BtAF0zEfezT2/yQeGg9
         q6eLO334cDZe4jOsYz3WQ8+tu1SyofRLmtBnzkN3qIyuxlHkOfkjlS8Ya91fEPFJzb0v
         oQuXU7NluDICj+cOvIiVCCPhI1uu5A8J7ow7eQmMD5B4HkSR8PyxMK4YyuspvI6kiEdU
         pHHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695192443; x=1695797243;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ItM+TknBaVUePyzd+K9zDA8JpLcEfRL0RuIuQPWPMDo=;
        b=qxHvg9/0iKlT3fliGIQqzbrH9JJHvR/qBcJAgLVCC8XWbXZZW3N866HtqnEwj/zpra
         2Q+heG7WzLdtEXDMFhWp+79EosGvPpViHrFWQT2ZbdhLZIHki5JHEYMeAMBLQqHRktEq
         59E1BJszv27lGdplRAhojVn+YBg10SaKjQrSGYXhfrhjlcMlNDftmCNJgbjjlOdoa06t
         YOHyA1Xwm3S0kWLd/mMBqy79f0SBXDCdRbpTd/8F1/CCqYFxthMJFiUMTeWRZ7XRewBd
         cLuqAiZWfcr7g4NFVDGSVf6NWA0gV/MqAiU8j8ppcpoCkqMJgM9NvBYYNTumrGRKSFFR
         Vj7w==
X-Gm-Message-State: AOJu0Yyvc3QL4BUFwuPp1ouZGq7xFhYMOUowaK1XJme0kJZlN//JFNt0
	04TR2TY1FOzG6vPKNLiZ3ZmIPQ==
X-Google-Smtp-Source: AGHT+IH/O0PptEtTtAOR5cdeRSNUd/ta1ny/TMJspKe9DtyuAwN6r1PUUDbhIwgJ3hBlmrb4o+6xpA==
X-Received: by 2002:a17:906:220f:b0:9a9:f09d:7c10 with SMTP id s15-20020a170906220f00b009a9f09d7c10mr1220085ejs.11.1695192443199;
        Tue, 19 Sep 2023 23:47:23 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id oq8-20020a170906cc8800b0099bc08862b6sm9067327ejb.171.2023.09.19.23.47.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 23:47:22 -0700 (PDT)
Message-ID: <9b0a9782-05fc-fad6-5abb-ba9c940e6d10@linaro.org>
Date: Wed, 20 Sep 2023 08:47:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 1/2] dt-bindings: hwmon: add INA233 binding documents
To: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>, patrick@stwcx.xyz,
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230920054739.1561080-1-Delphine_CC_Chiu@wiwynn.com>
 <20230920054739.1561080-2-Delphine_CC_Chiu@wiwynn.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230920054739.1561080-2-Delphine_CC_Chiu@wiwynn.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 07:47, Delphine CC Chiu wrote:
> Add INA233 binding documents for Yosemite V4 config.
> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> ---
>  .../devicetree/bindings/hwmon/ina233.txt      | 27 +++++++++++++++++++

No bindings in the TXT format.

Anyway, this looks like could be merged with existing ina bindings.

Best regards,
Krzysztof


