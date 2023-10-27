Return-Path: <devicetree+bounces-12457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9114F7D999C
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:20:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C22D11C20FC0
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 284921EB28;
	Fri, 27 Oct 2023 13:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="JXevnYNe"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78DE81EB21
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:20:32 +0000 (UTC)
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A43D0C9
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 06:20:29 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-6b1ef786b7fso2019134b3a.3
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 06:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698412829; x=1699017629; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qprUqvSwAJrP5Tyyg9w1KEiGF88xpKK0NNsji4Q5ejA=;
        b=JXevnYNe4BMEgOeky7f5XBpOHnKfA0jk7MF6FnKrn55P6F2UBhNOLF3NKxuHCyZEIE
         VF6dgiULTdQialia6mEepVKTXqyNqxpMi2r0Me/ITKr6S4pnjWpCNNLIoKpv0MzaEzZx
         YtOZxQxB+Dj98OE51Urhe7jCusxsabwfpwhvCKzfWHTEXggYKYNR1l40dh9/3Bt21/AQ
         xzNCwEPmMXAiQr0vAPh5esEejznVXlfJru0ejcp3Mag68eVETCv3kX4PjYJyVhmfuX+S
         vyMK4lSyoqh+IvImDNXzZv9UDo0qrY+EKIxJuSJe4VJSGh0eutwY6wHKLqGFFXwmv64R
         KhpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698412829; x=1699017629;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qprUqvSwAJrP5Tyyg9w1KEiGF88xpKK0NNsji4Q5ejA=;
        b=viS37vxo5dnjWuCkoN+E6CpHAwgs6Q/bGE12SXvvZYbbk61LAXZDDXwGx05Ynenfpe
         cu315yQyuWF8U6r9dFqD6kuT6iDCv0kPQmhmvb4HCBrWvzCtBooSEgA6yXiYDRWhHzEO
         DC/EJmhbSsH7jZst5JK/J6BIkLY0EFmAsEvxPaeulobpy9/j7SRCS4lUbJ1iwjY07Mm6
         5R8GeEQbbKkzmzFJD2BtvGCKmjb+8SLoPGsFd2WwbtTWmKcXUaqWy9oys9X2QTzb9kmm
         69BF2FZFdhj09wyr4eQ+S+DBxDXaQHrCMwd/f6toZsoLkbpCsNj0QsR2TuCmlITy+czB
         l4tA==
X-Gm-Message-State: AOJu0YwJUeZ47vzWh77dE8MUDMdMl3dbFWmCJihF/AA4VCMGOpSsWf/u
	0ynxopKmkv2/03XmFQFBQ78n1w==
X-Google-Smtp-Source: AGHT+IHBTDWE8t8o6nwJ/SnTSrdQwlBf/6NVb5DKk4vWJvPuywesD28pqeKNxUMEaHpXJZtwNJZ/qg==
X-Received: by 2002:a05:6a21:4988:b0:15e:9c50:73ee with SMTP id ax8-20020a056a21498800b0015e9c5073eemr2976807pzc.53.1698412828990;
        Fri, 27 Oct 2023 06:20:28 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:c232:f53e:32d4:5510? (2403-580d-82f4-0-c232-f53e-32d4-5510.ip6.aussiebb.net. [2403:580d:82f4:0:c232:f53e:32d4:5510])
        by smtp.gmail.com with ESMTPSA id u28-20020a62d45c000000b006870ed427b2sm1441163pfl.94.2023.10.27.06.20.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 06:20:28 -0700 (PDT)
Message-ID: <03440236-9290-4848-86bc-6f735447bacd@tweaklogic.com>
Date: Fri, 27 Oct 2023 23:50:19 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] iio: light: Add support for APDS9306 Light Sensor
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
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
References: <20231026143532.39660-1-subhajit.ghosh@tweaklogic.com>
 <20231026143532.39660-3-subhajit.ghosh@tweaklogic.com>
 <ZTuuUl0PBklbVjb9@smile.fi.intel.com>
 <7524a9ef-c1c4-462e-8f9d-fc03c29ca092@tweaklogic.com>
In-Reply-To: <7524a9ef-c1c4-462e-8f9d-fc03c29ca092@tweaklogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Andy,
Also, thank you for the code snippets in the comments, they really help.
Rgds,
- Ghosh


