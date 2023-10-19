Return-Path: <devicetree+bounces-10059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7017CF86F
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:11:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1907C1C20C91
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD9071EB44;
	Thu, 19 Oct 2023 12:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="d8UyzsFm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1001120333
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 12:10:59 +0000 (UTC)
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BCC110DB
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 05:10:58 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-6b87c1edfd5so4603276b3a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 05:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1697717457; x=1698322257; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b7TOTIKoWImuAkDVVYCBVqPy3Cdis5b4Vo38tYuQrdI=;
        b=d8UyzsFmlR5wEaODr/yL3J9LGIQEMJWnmNN2KVJDKAwmTsS7vPJqW6T2Pb/TpU/4oN
         eDm1JO7Ypv6w7iBPbWFmEXK7erhcKYeXH1vUvJGEBxxW/uqCdbSQmDNjifIhsRf4BmxH
         fSJdkTYfCF1qN9E6Hmkj4aQ7k1BcjP0i/X4Q7U4Ia7IU1H5eZ/gFzrhZAeHDBIqJMHh6
         ddqy4kEaDYHgInK1QKQwXA9NqlxJaNUH5rOKo6q8VdboUeWJn+p6QYW7FOA55ygVM6+Y
         szzglpOeHpVauLc8I2+wDUZrbOQTkLmJd69MqsdoFQz01Q7WBSLJ9g3zvkxbeAYrbmzE
         Ru3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697717457; x=1698322257;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b7TOTIKoWImuAkDVVYCBVqPy3Cdis5b4Vo38tYuQrdI=;
        b=Eaw+5WkBGLFn9p6oW5ojyyNCYK0pG+5B9DBpdnxDJ9R+CF5HeNg6GAveEHddeHjHhj
         TGt0iAAtVppXPVcS+H8h4BGbIkFqR3FoZFfugnbXSKCjejt+BBXUrUcKW1Jb6N280Siv
         EZJVLHLuvm/TqPIAPJ24+A5M06NIKahvIwWTsQppdgQL8ijk4Y7mfaGOfjTUv1+Cvwf8
         1ONpVrYzuLQS4yiHGSfeXMFvH8LwxFBWFhmM8SZpCmQB7Mv9RUQgqWHpwTpluUAU3D8i
         bJ6voXC+4/z98SuksCxdPISLeJ0vOckf044OXDtdNRDaX4DsG8otv1iUzVhHtvL5hzfu
         Ph1g==
X-Gm-Message-State: AOJu0Yw0zWMXyxGiJ83h3xgsYKSaNYcDZHwNqB+zVcUTpLR0TJWaCtK3
	Ys024PCxpgONKa66Y+L3hPH38g==
X-Google-Smtp-Source: AGHT+IGyjJ5achfYpuzb0OcmwqIHdD90ognp6JgCUWc4UnEvDk50gbaB0ggnIRhz4omdqkMNYXqe2Q==
X-Received: by 2002:a05:6a21:3e0d:b0:17a:dc55:4dc4 with SMTP id bk13-20020a056a213e0d00b0017adc554dc4mr1725217pzc.26.1697717457492;
        Thu, 19 Oct 2023 05:10:57 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:43ac:2324:cc6e:9fa5? (2403-580d-82f4-0-43ac-2324-cc6e-9fa5.ip6.aussiebb.net. [2403:580d:82f4:0:43ac:2324:cc6e:9fa5])
        by smtp.gmail.com with ESMTPSA id a186-20020a6390c3000000b005898a3619c7sm3262535pge.48.2023.10.19.05.10.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 05:10:56 -0700 (PDT)
Message-ID: <5a7d1ff3-8ac4-cdd1-028a-84b9fc240201@tweaklogic.com>
Date: Thu, 19 Oct 2023 22:40:50 +1030
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
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231019080437.94849-1-subhajit.ghosh@tweaklogic.com>
 <20231019-rematch-ethically-9d482ca4607e@spud>
 <6b856b0d-4f69-70ac-59a7-237fd21d1a92@tweaklogic.com>
 <20231019-hurry-eagle-0ffa95b1a026@spud>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20231019-hurry-eagle-0ffa95b1a026@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

>> Sorry, I should have put a longer description and a longer commit message.
>> That patch series adds a new driver - apds9306 which is separate to this
>> patch. As per Krzysztof's comments, first operation is to merge the existing
>> apds9300 and apds9960 schemas. This patch is the first operation.
>>
>> Second operation will be to add apds9306 support on top of that. I will
>> explain more on Krzysztof's comments. Thank you for reviewing.
> 
> Ahh apologies then. The best course of action would likely be to include
> the patch merging the two bindings in your series adding the third user.
No worries. Sure. You can reject this patch then. I will add my changes in the
main apds9306 patch series.

Regards,
Subhajit Ghosh

