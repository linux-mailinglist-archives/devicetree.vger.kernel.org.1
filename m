Return-Path: <devicetree+bounces-7207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDF37BFB11
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:19:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12F0E281BB2
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5727F1947A;
	Tue, 10 Oct 2023 12:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="Lm8NHp89"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C996C19464
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:18:55 +0000 (UTC)
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA879D6
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:18:52 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-577e62e2adfso3027379a12.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1696940332; x=1697545132; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m/uEl57rkB9FlUc8/Z3IPGgI3YZRBzcpqKdiv4r4u1s=;
        b=Lm8NHp89ZTc1yIw7DQiuYLMD2DwyugXiiwUDN6hC5oevK3OKa9X6nlPx+oNbDdAlqv
         d03Wey1yPycLxV1ADWVSCMSEEZUngFQZxPdOfx4u1nMAKLC0RGiEEdbrstfMqUEmAeIi
         D3pWh+gpsxJr7DxvqYf/UYNiNUwdBgDnvufwUm9yBopNRoffjsf0Z/0rzL1Aijj97poU
         1Pnl7yLDb7ghgZOtmFewjNbmw5srWcnIdiqh2IMrOq9jfiHlVNdhzmvk8hQ1ka29qWwP
         iBldJk5Xqs5l+eebWgGlyN+3WKYWK2uXvsod51ZYlzYwq2efiJ5N6nOJHHJL4KZqIrJR
         KvVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696940332; x=1697545132;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m/uEl57rkB9FlUc8/Z3IPGgI3YZRBzcpqKdiv4r4u1s=;
        b=K+AE55HLoPmLHJSkUpk9Lk+8O6QRrKproOz8+svUuQhPCoZUfIryHm+bGP3shxZKBV
         ciTyPA4bY0eawcELa8JR1sK1iEXSIO76+yTOPew66w87WD8dLtTs5Oga5XouhntOS5s4
         HJEYuhOkFQuW+HFBvvhvLxM3Wb/ykgx7hY9z0OcoV7rHB9fwM0gZq1GYTH57FYH2/kMx
         TbDE86agPC9fSz92FPjBPrNHC+fS8T1P7Wc8WK7ftkZbhFUSEWPGbYRm4by3P49z5wwg
         xozs1XgDElBRtr+ZUmLeG0nFhfWJ8fUi7XW9MzMHCv4SXIG4cVCnAM2Wa5IBvrOtyKcR
         9pJA==
X-Gm-Message-State: AOJu0YzSnTnXcLZaW92KBxhLETIcOdJu4/0TTwRWBPN9Sjws59Yl8ftx
	ClaodjeTHfOmKNkcmaF5KQy+qw==
X-Google-Smtp-Source: AGHT+IHw/JvHNya/HvLyiP3273/LTzyAj8keMwXYe74c2W6FN1+g3m3s4WDbkHEV195vAl+vK+qsew==
X-Received: by 2002:a17:90b:1d03:b0:26b:5205:525e with SMTP id on3-20020a17090b1d0300b0026b5205525emr14171953pjb.42.1696940332153;
        Tue, 10 Oct 2023 05:18:52 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:4346:670f:8942:33b? (2403-580d-82f4-0-4346-670f-8942-33b.ip6.aussiebb.net. [2403:580d:82f4:0:4346:670f:8942:33b])
        by smtp.gmail.com with ESMTPSA id ev7-20020a17090aeac700b00274922d4b38sm10128842pjb.27.2023.10.10.05.18.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 05:18:51 -0700 (PDT)
Message-ID: <83bb2425-aff1-6359-37f4-4182d4f8ed05@tweaklogic.com>
Date: Tue, 10 Oct 2023 22:48:43 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] dt-bindings: iio: light: Avago APDS9306
Content-Language: en-US
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Paul Gazzillo <paul@pgazz.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>
References: <20231008154857.24162-1-subhajit.ghosh@tweaklogic.com>
 <20231008154857.24162-2-subhajit.ghosh@tweaklogic.com>
 <2c6ff28f-9031-beb2-f8d0-e7f12b0a07b4@gmail.com>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <2c6ff28f-9031-beb2-f8d0-e7f12b0a07b4@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/10/23 19:22, Matti Vaittinen wrote:

>> +properties:
>> +  compatible:
>> +    const: avago,apds9306
> 
> I see the driver supports two different variants of this IC, differentiated by the part-ID register. Variants are named as apds9306 and apds9306-065. I wonder if we could/should have different compatibles for them?
> 

Yes, we can. It makes sense. I'll implement that.

Regards,
Subhajit Ghosh


