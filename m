Return-Path: <devicetree+bounces-12426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6057D96C3
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:36:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C93021C20AC5
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C1781865F;
	Fri, 27 Oct 2023 11:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="dUBNPgM5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A677BA50
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 11:36:49 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6E8810A
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 04:36:47 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1c9d3a21f7aso16609755ad.2
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 04:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698406607; x=1699011407; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UDwjqowg7Zrd4/ylWaFwQEbjnWgohyg1A6T4D72inu4=;
        b=dUBNPgM5hYoLY2rDo/jvFaCp9Jr5pI1m4zWNKsa/n9D03i6ope8qnAS+XmwXjLjNYf
         FBVi21BpkkzaDS1ulIvBxl0PuiiamwrLTRI9xbkqofyUO6B4YuyzBHFRqZzrt9rP6Qmr
         jJi2o5WCbp5R/1JBQD9Ldeql2JXa0/11FkOKSMnSoRV5j7AiSvSm2dHfYqSV/QfYoDnM
         jjzk601F3eQdryINzRzvAjLQfwCnC8VlcOhb4Elx7SkpNPdh7nSUTc0JxoF5NhkY9hde
         GOAYS8h1+sfj0BZwDy5eaYPXQI1mlKG9cGO52dK31rGmj9snZdKbTmA5IWKORQgDYLv2
         A3fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698406607; x=1699011407;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UDwjqowg7Zrd4/ylWaFwQEbjnWgohyg1A6T4D72inu4=;
        b=XI6cFhNLGLp+35E7IEPB9ZKZuGEKaSQOQ1CJBZ6F3GMWBq4kEql4Spxabn7vgvD7tt
         SLEVrVvWyDn4CFG5UtJAoL0ScJFJDZXGPRaW+g1uyVS9m79DeQePtodfkbMFuKrIh0fZ
         /1hROUIXyk5h+tpoNJSNo9Sx5ftdldmLdTWGiOyTDPPZzOEP8m2oEAuyIrji2mp8SukH
         9uGRbbHo2pJP30K0h2/6jW6SdLUce1JGB6+s6KTWDV2/2qCvVmlaVQVchfyTzs0eCSRE
         oBvCZMMrq/33QQJikBHq9JVFE7Vh+kjPKudxThGUSdt8AQio6ge7Qd3s56uFeHyGc03e
         ANaQ==
X-Gm-Message-State: AOJu0Yx1z2YrAvIQgh45bO7Kc2gg68BwNV13hc17IxXhipTzyN2HoiwW
	uHetQOD057gvcUYAf+MKtUbO5Q==
X-Google-Smtp-Source: AGHT+IHVsIfoDbOy4+X8I5FT6mPSPc0z0mqlYPS9uLRfLK2ofGl7sjmUBXMd3PVlCTJhP9bmcosN3w==
X-Received: by 2002:a17:902:da84:b0:1c3:323f:f531 with SMTP id j4-20020a170902da8400b001c3323ff531mr2565938plx.20.1698406607299;
        Fri, 27 Oct 2023 04:36:47 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:c232:f53e:32d4:5510? (2403-580d-82f4-0-c232-f53e-32d4-5510.ip6.aussiebb.net. [2403:580d:82f4:0:c232:f53e:32d4:5510])
        by smtp.gmail.com with ESMTPSA id j8-20020a170902da8800b001b392bf9192sm1345104plx.145.2023.10.27.04.36.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 04:36:46 -0700 (PDT)
Message-ID: <ac79297c-9f4d-4776-a48e-2f06e348b38c@tweaklogic.com>
Date: Fri, 27 Oct 2023 22:06:38 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: light: Add support for APDS9306 Light Sensor
Content-Language: en-US
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>, Paul Gazzillo <paul@pgazz.com>,
 Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
 <20231027074545.6055-3-subhajit.ghosh@tweaklogic.com>
 <ZTuZ/Y2Go/RGOG7U@smile.fi.intel.com>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <ZTuZ/Y2Go/RGOG7U@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

> Please, do not send so often this big patches (~1.5kLoC!), let reviewers a bit
> of time, please.
> 
> Since I have my message postponed, I finish review on the v1, and I believe
> 100% of those comments will be applicable here.
> 
Hi Andy,
v1 broke the kernel build, which was bit embarrassing as I skipped compilation on
latest kernel and only tested on my embedded test bench, so I submitted v2 that early,
sorry about that, I understand, won't happen again. I am not in a hurry either!

Regards,
Subhajit Ghosh


