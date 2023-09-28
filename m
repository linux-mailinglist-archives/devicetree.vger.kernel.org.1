Return-Path: <devicetree+bounces-4126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A007B1501
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:37:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 5A7E5B20980
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 07:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E09F31A64;
	Thu, 28 Sep 2023 07:37:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245AD538C
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 07:37:22 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 202CD9F
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:37:21 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-502e7d66c1eso20440529e87.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695886639; x=1696491439; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OdEvpR7e634F6Xq7gphI0yR6+BY3xXYw+rzm/HECnb4=;
        b=oUjU9k19aJD1i006n0Drky1DEhTr21HRFAKoZLkOfFG7Qyneswn/luach8U7sBVSm8
         /6uoiaCR1z9Ivjxet8ibzokUoP3nQKF5YMFTOPiHr4gu0fEHGMlZIgSsBSh2BgELnbXP
         uo3D9F2GJUFVVxRgFufHGclLliJ4yi3i5YevTttP9ED2ZAtQ48mxxGTO7k+J/Lf7BaS3
         6zSmwCNg9WjbWYVMOMk8uJB0jqBFjpL71RABl66+PbfcL1F0UtFu8MRJ1EVPFhAsRxmm
         sh1WXE8IVyEFw6Su2vaduTL4b3QO0G0Kz4gdl81WNgXLk/BrjJrwdYCzys9H4WtqPVq6
         7CtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695886639; x=1696491439;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OdEvpR7e634F6Xq7gphI0yR6+BY3xXYw+rzm/HECnb4=;
        b=FYlOYbDVz8bwvgiDBHYFP7lKvW3kAPQKY11rKCjV2jiNoFTHZ9AttSWxYFmdc4yyCv
         RJp9Z2MAbEWWujbPzB7jvCFTrBLiQmCW/CR6UZvl+C5limNr6+PonUq4XehoyM/4ZKb/
         0rGOROmOfz1J/lOIEMTVyzj0GY3Am7SnLuxESceWaWbAgN1eLmr8rTHXRdf/Uhea3ALH
         D/vANI88LoLhmNDwp4dKw1fyYEpgqjcWc4uorx7laBUDcAQbQeL1gXbSx8ksKgUK/48e
         4NDYs+t7x+VfIOEd8llO9wdfkwsYUPGhO5WSx8mF0T42BcEbZHDuY+LLjvR9IIKo+FP5
         0Hgw==
X-Gm-Message-State: AOJu0Yx+bBvulIf6mqpmpAGkpxIZV7FQaeJ5z07vOBtNZWi4wOei39Ee
	Kcc4PqvZb9+nP+gclj4RHjdxvw==
X-Google-Smtp-Source: AGHT+IEiAv4nqQ0UosPBmy5DqVigj7fS+2PeREuoogljv96EOrQq59RDc/DzJ9LREX0UxZnPslp5hA==
X-Received: by 2002:a05:6512:1103:b0:4fd:f84f:83c1 with SMTP id l3-20020a056512110300b004fdf84f83c1mr480905lfg.64.1695886639123;
        Thu, 28 Sep 2023 00:37:19 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id s13-20020a5d424d000000b0031f729d883asm18744112wrr.42.2023.09.28.00.37.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Sep 2023 00:37:18 -0700 (PDT)
Message-ID: <5828d18a-6ec3-68cd-b97e-3f4a181dc953@linaro.org>
Date: Thu, 28 Sep 2023 09:37:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 4/4] thermal/drivers/mediatek/lvts_thermal: add mt7988
 support
Content-Language: en-US
To: Daniel Golle <daniel@makrotopia.org>, Frank Wunderlich <linux@fw-web.de>
Cc: linux-mediatek@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Amit Kucheria <amitk@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230922055020.6436-1-linux@fw-web.de>
 <20230922055020.6436-5-linux@fw-web.de>
 <ZRTBFJPL3NwWpMSP@pidgin.makrotopia.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <ZRTBFJPL3NwWpMSP@pidgin.makrotopia.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 28/09/2023 01:56, Daniel Golle wrote:
> On Fri, Sep 22, 2023 at 07:50:20AM +0200, Frank Wunderlich wrote:
>> From: Frank Wunderlich <frank-w@public-files.de>
>>
>> Add Support for Mediatek Filogic 880/MT7988 LVTS.
>>
>> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> 
> Tested-by: Daniel Golle <daniel@makrotopia.org>
> 

Thanks for the testing tag

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


