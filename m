Return-Path: <devicetree+bounces-2176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EC27A9C8E
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:21:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 827971C21328
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D793967267;
	Thu, 21 Sep 2023 18:34:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292A6513D9
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:34:48 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 012CED4356
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:24:44 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9adb9fa7200so282305166b.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695320683; x=1695925483; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/uxubhSOYRKOBgFVb2nJokjnsajJqcWLd3vDjsGmIJY=;
        b=XHjJ8b5nMV9OzyoRbY3Q4TWGnLQWwTccnUfq+/8XJkP52I2zE1QS/xaeuqzuPfGGT+
         FJNARuEGS/Wsd0jub//jyYjojEXZHN42Zlb7cW5XAkM9PUkaiX+uFDKpXUZ4qX/U7QlK
         KnYlRD7ALG45+zp6x3fl4gSJZpeQOXSAKrWqXoecPESU9jDYZrHrdoYoqWnCS5Wb20C5
         6bZtUsGynhQw0yionhzL+O5nV5Yvsxl1H0xw+qfUgzA4jkbPMF6UaSRBTyv9TroL2h07
         xI7sLNtz9FgYUXDA2hJ5xMngwGmspXGIjBslXIjOaW3CKp159Lx07MSQCH0F2sYwqHhx
         ghuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695320683; x=1695925483;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/uxubhSOYRKOBgFVb2nJokjnsajJqcWLd3vDjsGmIJY=;
        b=xReTIzNeRVWwyBAQ0Z5PH6HfaaVl54derzcBklzFsG1gMlF9FXtTwvyrZy0n/aoJG1
         XOuTDBbOVvhCUj7PSHSQiksr8/wTOBSQZ2/Jw5t1KTA58yPOh1IlpEgfvJp+LhEe0wnc
         O3o2YDu03gx12vK9lGfv9f0ilj5Uxrfvy1EHDcTZYhtxfH7KWKWM5B11Nc/o5PiNaXt4
         ynfLrjAUf93zXgI5iE4QmfdYHZz2xulcJROH9JSIhpSBkVpDKpbV8fA+6N2WPQ+9YQDD
         Uvy//bB6x4FbPGtQBJRVsOKEi505c6ev44kd56L9WmN9N0dylYOo5+hMi0iGfodIcVos
         aGug==
X-Gm-Message-State: AOJu0Yy3KESabo6s0ZdQ2GPLz5nS33Stf2NIp2UBFCgFEqetQOxNaBeK
	xECP/UJqswN71dDluDdn0uCX3WyL38k0jUluVe8JBA==
X-Google-Smtp-Source: AGHT+IGPVfoflUP3NlCWwDzwylQtmI+2m3tAC7GFYclWCJd5Ehn+hZ+GXl/jM794pw9McnRpGwN/BQ==
X-Received: by 2002:a17:906:31da:b0:9ad:f60c:7287 with SMTP id f26-20020a17090631da00b009adf60c7287mr7118902ejf.28.1695290788801;
        Thu, 21 Sep 2023 03:06:28 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id cb25-20020a170906a45900b009ad778a68c5sm812501ejb.60.2023.09.21.03.06.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Sep 2023 03:06:28 -0700 (PDT)
Message-ID: <4ac45fc9-1583-a71f-7c75-76ae6c882e67@linaro.org>
Date: Thu, 21 Sep 2023 12:06:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 1/4] dt-bindings: thermal: mediatek: add mt7988 lvts
 compatible
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria
 <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230920175001.47563-1-linux@fw-web.de>
 <20230920175001.47563-2-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230920175001.47563-2-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 19:49, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatible string for mt7988 lvts application processor.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


