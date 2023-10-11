Return-Path: <devicetree+bounces-7754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 459767C54FA
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 15:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F419C2820EE
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 572611F19F;
	Wed, 11 Oct 2023 13:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="TU2uBtXl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD0AA1F195
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 13:10:27 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F8718F
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 06:10:26 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1c888b3a25aso44974495ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 06:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1697029826; x=1697634626; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5wOM+rVlEncWtIcaSta6xu6eHLCRdmG5bClAcyA0Ctk=;
        b=TU2uBtXlitx+CHhGMa+FWij7ZLeN35+OYF0js5BuGZ8lPVqauJZoZA7tb2mimsUfJ0
         xUt6PlDDTDwrx11IceUDHWfe5Giceslm7D4fwItNpZyjBfHXkJmgoen0z2yYtRqUZ9Pw
         mHiYrAN8VhTPrL0yI6a4taCGROmJkH35jYtT+MIuI6O+qe4te51UxTm0ID7Uej3Gni7N
         C7sqgDefBY5vm2MSIDA77vQkBHGB1mucxOv7VYOXqUhSIR1fCZ1M8ZIeUgrMv/BVd3Vp
         Z+mMEHFUiXxaxrEXCjfXfVLWmDQDuzUWK23oEAza35A2PdFv3b6Y1j4a/Uo6XGQfOVLb
         SZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697029826; x=1697634626;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5wOM+rVlEncWtIcaSta6xu6eHLCRdmG5bClAcyA0Ctk=;
        b=jugxziWC8THYbfmk6hKiqQBguvApAfU0260TIILZJftJgO5ZBqG+rZlC2NSU2PgvaE
         N6/njZ6CEQobRr80eHfgbD4KC+/ZyK43hdv6nnR+HUsX1zdG2VQociliPX6V3g0Ibs9o
         2s0P2r2kxqWQgFRccRwrurwxOJ+KtGzjx/nt2227VMXefb+J/CgfBU4pSPi/oll3YAr+
         MF2dIi2YEYt89ni7Is2acppWgdGVKBz8+oNFjbSpWQWED7zoOIoQFDTJ1zYOro5BGqpA
         dfDFzmZVqzo7luzvxyNopqhCK9i/LpIytkOwRJVtAi9wy2j3NMu57HTRuwy/kwsSAqVN
         N2xw==
X-Gm-Message-State: AOJu0YyTpukHsaG9cjfEx4Hn2fslrhqqVL3euyuTpGwVnebveb56XN2U
	I78IB+picAz8mmQDj9s4x7N8Sg==
X-Google-Smtp-Source: AGHT+IGseWVdcAxiIA+AskawQ8BaACwpMMfoE1sBY3gJ6+fKWdR+1i5OXDFpqQOlX5oCL6NaPrPcEg==
X-Received: by 2002:a17:902:bf0c:b0:1bc:3944:9391 with SMTP id bi12-20020a170902bf0c00b001bc39449391mr16639073plb.25.1697029825684;
        Wed, 11 Oct 2023 06:10:25 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:92f1:e901:1eef:a22? (2403-580d-82f4-0-92f1-e901-1eef-a22.ip6.aussiebb.net. [2403:580d:82f4:0:92f1:e901:1eef:a22])
        by smtp.gmail.com with ESMTPSA id a4-20020a170902ecc400b001c74df14e6esm13834862plh.51.2023.10.11.06.10.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 06:10:25 -0700 (PDT)
Message-ID: <689dc368-b504-4863-3603-13ba43fe4697@tweaklogic.com>
Date: Wed, 11 Oct 2023 23:40:18 +1030
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
 <20231008154857.24162-2-subhajit.ghosh@tweaklogic.com>
 <20231010145130.3d5ff9c7@jic23-huawei>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20231010145130.3d5ff9c7@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 11/10/23 00:21, Jonathan Cameron wrote:

>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  vin-supply:
>> +    description: Regulator supply to the sensor
> 
> Why vin?  It seems to be vdd on the datasheet.
> We tend to match the datasheet naming for power supplies as that is normally
> what is seen on circuit board schematics.
Got it, I'll fix it. Thanks for looking into it.

Regards,
Subhajit Ghosh

