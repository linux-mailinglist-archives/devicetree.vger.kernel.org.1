Return-Path: <devicetree+bounces-8153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 856957C6E47
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:37:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B7ABC1C20E7A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:37:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5342110F;
	Thu, 12 Oct 2023 12:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="N3uwbLD1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCF5208D5
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 12:37:15 +0000 (UTC)
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC84EC6
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 05:37:12 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-692c02adeefso648894b3a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 05:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1697114232; x=1697719032; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aexicFbdDCYmTu1M5aMUX7ZGZvAOrhK/tLq4zb9YLzo=;
        b=N3uwbLD1ARjGEZgsohlFCwZUAOl0s3iscATZNW9kMTSuZ6YxEBQt7wcLp+7Avy+Idb
         LD5T5Sl90HwoFomF59Z45LvD7GThU66liaFmbIexlV1rsqvVdalSuTf5+G4nXiqEixhK
         87DEAzpSCVxUtur0s5Ni4chUFe+zO8V4dgOpe6kLxRmbymx3A+jnB1U5Qo7kK7EiM/z2
         VGzMt2EveHrL61KH4lOt1E1MYFUm0V6qzYCbQDj7Ot2Xxxr4GPL/kNI7BTsg3m5qlSpD
         zg9TfVsCUhmrrz9Ynuope51FHqdDRPiyGTcfoUQlH2yDyOxLm2C7Pkkt/YxngsMD32fA
         pHZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697114232; x=1697719032;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aexicFbdDCYmTu1M5aMUX7ZGZvAOrhK/tLq4zb9YLzo=;
        b=f5EB+BB6mZh/GXe1YDa8FgSAF9YkE3uIvaxPO5reOpEkcmQ66wVepLZ+OzIlKJx5cK
         /hxtRnDASWbrJdzbGG/e/0GGBvK/3sKnlF5v8JxQLL2KAH4ED6Sp8wS7QSYSQSDdVZid
         /28llqsOPnA15yvL7HjTyDxz0H5yceq0t5txxIGeYicGOal+f9P6yWRrRUlGgHpc9fKj
         XHNZ376z0q4cDeALrmmp0JvgbeA8HvuIOX9iWAO54rTAAknBqgEDfScpcpvWOaPffoW2
         ezxsDUEIXV0J6WxDMAt+2/cOWdYXuzPIpEDNNbO5JlRfnY0EaWl6gxypDTb0B/g8wlpH
         XOvQ==
X-Gm-Message-State: AOJu0YwSNvFFsCQPMJlJMoRhEUGVq9YUBPPAeHxDTcjx80VmoACG2Yt4
	/GU+MwU3hDWWb+a+/9aCuwp/GA==
X-Google-Smtp-Source: AGHT+IGs9Wj89Up6oViepT7y+Xzyy4PMXcU5oQRUce1BNiVIsTWkztmcWJOStZh6TJCchYgkT5YR7Q==
X-Received: by 2002:a05:6a00:190e:b0:693:3dcd:ecad with SMTP id y14-20020a056a00190e00b006933dcdecadmr25191994pfi.21.1697114232237;
        Thu, 12 Oct 2023 05:37:12 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:67c0:38ec:cbef:5570? (2403-580d-82f4-0-67c0-38ec-cbef-5570.ip6.aussiebb.net. [2403:580d:82f4:0:67c0:38ec:cbef:5570])
        by smtp.gmail.com with ESMTPSA id g18-20020aa78752000000b00692cb1224casm11792782pfo.183.2023.10.12.05.37.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 05:37:11 -0700 (PDT)
Message-ID: <0590a1f5-5be0-2edd-d586-cecc01c67c9e@tweaklogic.com>
Date: Thu, 12 Oct 2023 23:07:04 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/2] iio: light: Add support for APDS9306 Light Sensor
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Gazzillo <paul@pgazz.com>, Conor Dooley <conor+dt@kernel.org>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>
References: <20231008154857.24162-1-subhajit.ghosh@tweaklogic.com>
 <20231008154857.24162-3-subhajit.ghosh@tweaklogic.com>
 <20231010153807.6335a043@jic23-huawei>
 <07761a6c-85a8-c7bd-a0af-28d0f29b3e5d@tweaklogic.com>
 <20231012085427.5f0fa4a3@jic23-huawei>
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20231012085427.5f0fa4a3@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

>> Thank you Jonathan for the review. I'll get the changes done in the next version.
>>
> No problem.   As a side note, feel free to just crop out any responses where
> you agree with a review.  Default assumption is that if you don't comment that
> is the case and it cuts down on scrolling when reviewer next looks.
> They are also much more likely to take a look at a short reply than a long one!
> 
> Jonathan
>
Understood. Thank you Jonathan.

Regards,
Subhajit Ghosh


