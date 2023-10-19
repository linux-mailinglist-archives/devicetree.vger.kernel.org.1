Return-Path: <devicetree+bounces-10010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5077CF5B5
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:50:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20559281401
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3308D518;
	Thu, 19 Oct 2023 10:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="FyMqDZwR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A4223B0
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 10:50:20 +0000 (UTC)
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00BC2FA
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 03:50:18 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1c87a85332bso68033645ad.2
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 03:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1697712618; x=1698317418; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F+23JhXChJ2upiI1yweoZc95DCKyTZufxmMJiUGUuS4=;
        b=FyMqDZwRb+QEk92GcepdsEvKfOmyKRHRB3D1MaTgocUSqfGef/GfErWJXR7t3zOndR
         zOdICYYevKX7yHX3w0aWoGU3SPcC8tyofNq0f2Dcd72l5XnLgdHdMTRmIMFHxGoqbU47
         gCu6IGzqBG/8y4fXFeo8/f8K8RnyKk/e9orHe16wmFrM2+UKmpiufti/bv73hFbrWRHb
         fx4dKUVkjP+QY5OxBer1h3DDuB1T/Sy/h/iW4LFsBNt4vDS1fklk/B1fJ5+39U18ItZ2
         p4jhVPUUoMz2jp9y6notl3kSdBk/tGhfRQ1a/z4AHTb9ZjIqDrb/gqfnWb+3MroMlSie
         wgtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697712618; x=1698317418;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F+23JhXChJ2upiI1yweoZc95DCKyTZufxmMJiUGUuS4=;
        b=nsWNUgJg0oDZ3oAJZU2ejqzrfHl0b+2DO6wMW2zaqebuZWABJ5okRAVOIrfc2tXm14
         KnXT1ygSWFxaXxKGjC4bDLfvAG68dw2eAnLFPO5n2BwvVHFuh5m2INDeNXEDs9GjWBVx
         vfoG5Nwiv/VNB1csWAK8rQ900wAbodtFiexje53hV2Bbx8dDG+hetwJERcsCscNfxmGj
         SCkxrZrb7kcXakP0uKwZLzMdm9Lomu6uC5ScPq7WkjN3tWtwYSmN1P1VJd7AV8QpH7t2
         7yAsFD0W0kqnvd7pBSE1UFgkl/rCLfwklK0XG3i5cAW+DXW3nDgNWuUs5SGXST+YpEUr
         ruxQ==
X-Gm-Message-State: AOJu0Yy2e3757lRdE6JWQp0ahL9vRf2smv2mhranMo3XZKWNqGMbU7og
	VvJf3EMWR23C+7+OgUg2mp35Lg==
X-Google-Smtp-Source: AGHT+IFCyfxJyRzphA3v3M3Qp58I614V6//BnX9R0uapcsA82NS8ukmHZJFgqxcRKdAYmP2SozoV8A==
X-Received: by 2002:a17:902:d48f:b0:1c9:cf1e:f907 with SMTP id c15-20020a170902d48f00b001c9cf1ef907mr2142794plg.57.1697712618416;
        Thu, 19 Oct 2023 03:50:18 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:43ac:2324:cc6e:9fa5? (2403-580d-82f4-0-43ac-2324-cc6e-9fa5.ip6.aussiebb.net. [2403:580d:82f4:0:43ac:2324:cc6e:9fa5])
        by smtp.gmail.com with ESMTPSA id f18-20020a170902ce9200b001bc18e579aesm1612043plg.101.2023.10.19.03.50.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 03:50:18 -0700 (PDT)
Message-ID: <6b856b0d-4f69-70ac-59a7-237fd21d1a92@tweaklogic.com>
Date: Thu, 19 Oct 2023 21:20:12 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] dt-bindings: iio: light: Squash APDS9300 and APDS9960
 schemas
To: Conor Dooley <conor@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231019080437.94849-1-subhajit.ghosh@tweaklogic.com>
 <20231019-rematch-ethically-9d482ca4607e@spud>
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20231019-rematch-ethically-9d482ca4607e@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 19/10/23 19:21, Conor Dooley wrote:
> On Thu, Oct 19, 2023 at 06:34:37PM +1030, Subhajit Ghosh wrote:
>> Squashing Avago (Broadcom) APDS9300 and APDS9960 schemas into one
>> file and removing the other.
> 
>> Link: https://lore.kernel.org/all/4e785d2e-d310-4592-a75a-13549938dcef@linaro.org/
> 
> "Yes, they look similar. I will combine them all in a single yaml file in
> the next revision. Thank you Krzysztof."
> 
> Yet this is a follow-up patch, not a version 2. The original patches
> seem to not have been applied, so I am not sure why you didn't send a
> v2?
> 
> Cheers,
> Conor.

Sorry, I should have put a longer description and a longer commit message.
That patch series adds a new driver - apds9306 which is separate to this
patch. As per Krzysztof's comments, first operation is to merge the existing
apds9300 and apds9960 schemas. This patch is the first operation.

Second operation will be to add apds9306 support on top of that. I will
explain more on Krzysztof's comments. Thank you for reviewing.

Regards,
Subhajit Ghosh

