Return-Path: <devicetree+bounces-12420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB947D966A
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:21:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E99DE1C20BE2
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1B3318631;
	Fri, 27 Oct 2023 11:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="gFo5EbVY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0898A182CB
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 11:21:13 +0000 (UTC)
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E796A129
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 04:21:10 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-694ed847889so1848780b3a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 04:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698405670; x=1699010470; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OpDUNO6+wJLZCjUYYtsZ7P6CGyOdEndsDNhhPRxxHyU=;
        b=gFo5EbVYclVt2BOhHsAfhX1lwRYLEnz4iJ5cx2jcyKjqZ/gkajsCeWlkCiS35b/Pfh
         cIFLn/t8uig2fMxYU6SRCEoEp0ulYFoyF4Gp1r4BvrepjzNzwnWNUXlOKKt2m5OaKGe3
         voI1twkrqkfpGTCFYU2IZ5qKvhDxw4rFKar6+A577ypKyMD62TGp9+g/rk7WMbkkkHv2
         RYgbFOiSww6nMEzyLj90LnQeJKbvwVYcn64nWm+0U/IPWwEhDZj71pNpBW0JgX0ToKDc
         Hhrcqmi9NwG2tWXXNNuvoTsRj/hGWOtFI74t8m8RfxHg3R48anqLokUE69owhnud5Y0i
         /5Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698405670; x=1699010470;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OpDUNO6+wJLZCjUYYtsZ7P6CGyOdEndsDNhhPRxxHyU=;
        b=I2hNIZZ3sGXO1DsrOzNb84q9jDBtViSvbE175REKoLABl6B3izdor36ZiBhp6o0cjG
         tAueclTiXub0ChtXoARqbWS/0garThnZjYQGaoUGjYcfsB9zm3tufw9Wii2ypvnAHR0U
         u9VYPLedBaOB2sCuB2117STeu6lip+nE7JlxKGt3LDNys+ENrFmA+oijTEkzuv1m7bGa
         kJQLwOrXsYxpk7Gdls4DUFnB0z/PyJAGLFM1jeqASrW8PgrMZr8nbxpOKSZHLDGVQA7J
         yQBahyi4kFAg1MimcewR8NUEdv8DOhPGkhHzKH0WcIszl1l+nQ3GzWjNqNYFo9WYmEsu
         93oA==
X-Gm-Message-State: AOJu0YzWEXne4Vw1cOMKBpPG2WHXnbk6pPcmOUWW3wA6pSq0c8KgU9O9
	aQ4PGQuHfVs5mxj4SijJP6h8Mg==
X-Google-Smtp-Source: AGHT+IHr0HKYNWFJCCBhhVhyiRbjtCdvuHG6iPglG2lzT2vGoYkwfMDkR0h8WZF0FS9efvG0I5A3lQ==
X-Received: by 2002:a05:6a20:428a:b0:16b:cc6c:d728 with SMTP id o10-20020a056a20428a00b0016bcc6cd728mr3267886pzj.44.1698405670213;
        Fri, 27 Oct 2023 04:21:10 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:c232:f53e:32d4:5510? (2403-580d-82f4-0-c232-f53e-32d4-5510.ip6.aussiebb.net. [2403:580d:82f4:0:c232:f53e:32d4:5510])
        by smtp.gmail.com with ESMTPSA id n3-20020a170902e54300b001b9d335223csm1324994plf.26.2023.10.27.04.21.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 04:21:09 -0700 (PDT)
Message-ID: <9b9addeb-230c-48f0-9e50-78d30adeaf9d@tweaklogic.com>
Date: Fri, 27 Oct 2023 21:51:02 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] iio: light: Add support for APDS9306 Light Sensor
Content-Language: en-US
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Paul Gazzillo <paul@pgazz.com>
Cc: Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231026143532.39660-1-subhajit.ghosh@tweaklogic.com>
 <20231026143532.39660-3-subhajit.ghosh@tweaklogic.com>
 <341cb934-2e91-442a-a4db-2f69f79ad0b6@gmail.com>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <341cb934-2e91-442a-a4db-2f69f79ad0b6@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

> Hi Subhajit,
> 
> It's nice to see the GTS helpers are used (and hopefully helpful). I didn't have the time to go through everything with full focus - so please just tell me if some of my questions are silly :) The comments I marked as 'nit' aren't really important - feel free to use your judgement on them :)

Thank you Matti for the review.
Acknowledging all your comments, updates will be in the next version.
I am glad that you liked it.

GTS helpers are great. It saved me a lot of complex and error prone mathematical calculations and coding.
I was surprised to get consistent Lux values in userspace across all scale ranges which closely matched with
my entry level Lux meter readings after using the GTS implementation. Great work.

Regards,
Subhajit Ghosh

