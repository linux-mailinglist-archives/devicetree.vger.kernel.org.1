Return-Path: <devicetree+bounces-4128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9C37B1505
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:37:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 1DC621C208E0
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 07:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8E4E31A6D;
	Thu, 28 Sep 2023 07:37:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AA92538C
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 07:37:34 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2B4DAC
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:37:30 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-32488a22810so180426f8f.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 00:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695886649; x=1696491449; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tLZwhKDgfdFsd3vZ+zpeV363DbF016coL6R25E3ugY4=;
        b=GjQIMHypTa/x+Lc8QHlTPz/L4cuzr9tekM8BwgmAVK3RuSVBpPsqaAE9HjX9rnxxfI
         N+rOmT5dxeS43VCyOmCBP/A9I87TqGfRgo6RmOeanouV3ldd2sy6iH6zKfyYrhmhHhfn
         Q8qsr49g9JMeS0dzi5D4oicZaAoxEtF4s333rvjMftnPwUc0ZNQMqUZnx5aq/ELz30+v
         VXwjBd19gqX0mgvKzKOr2+KtEzwYc8dwEAgr52lhcYnHKQHviGWP1oIEK/bzqv48SzXd
         k/veb/nFNHeOufO8B+krcA6AV/Mw4LxivL1ZegItkvLBTU0nWNzDqFHbzljONvvJ9Xjr
         J8Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695886649; x=1696491449;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tLZwhKDgfdFsd3vZ+zpeV363DbF016coL6R25E3ugY4=;
        b=o/Lg1H2v9KC8jaGXalhaF8e7RvLLuHDLMIVBljSR6szmdk15SkNSRJHJnwhvSKhgXS
         VI6B6IcsB/tPN2T1BlP5lcmBVKdDl9OJToWFcWbFpN8xI2lPUJwqLhxll0lVJH8weOcz
         eso+goYuuLVEdV73w+4vNW0iUBJEuKFCasC3HWN/XoPJl1J9IB5tJGyR1q2Rep/8PcV2
         7xbPA0Q/08Mvjou8E3dLPrJ8vcgOwR9goFuxkqw5/et2lXKxV621mC1+GXWGTMQLPXSs
         ahtWlRSQoGGCVMYxeXZuBOHyTDOfsRKqmzmXSEoFntUUsPd6/S209eLLNf98+GtZ35wS
         BDbA==
X-Gm-Message-State: AOJu0Yz21YsoTNPdai3CVVI1q5GpMxLXw9tJHiNl4/1YlHyMtw60jk8N
	OVSlRcEw+eIJnlmHsMjFQInvDw==
X-Google-Smtp-Source: AGHT+IEykS3sv6+IRCprkWFIYzQut6WfxhajwABJSA3a9n4e2P7oAuta+iEBJdwMvKYwA8NZgiIIoA==
X-Received: by 2002:a5d:4b43:0:b0:319:8430:f80f with SMTP id w3-20020a5d4b43000000b003198430f80fmr449720wrs.49.1695886649008;
        Thu, 28 Sep 2023 00:37:29 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id o11-20020a056000010b00b0031c52e81490sm18876523wrx.72.2023.09.28.00.37.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Sep 2023 00:37:28 -0700 (PDT)
Message-ID: <dc0460ff-9b72-d739-cc1b-ae6d3a2bfa82@linaro.org>
Date: Thu, 28 Sep 2023 09:37:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 0/4] add LVTS support for mt7988
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Amit Kucheria <amitk@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230922055020.6436-1-linux@fw-web.de>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230922055020.6436-1-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 22/09/2023 07:50, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> This series makes allows soc specific temperature coefficients
> and adds support for mt7988 which has a different one.
> 
> Frank Wunderlich (4):
>    dt-bindings: thermal: mediatek: add mt7988 lvts compatible
>    dt-bindings: thermal: mediatek: Add LVTS thermal sensors for mt7988
>    thermal/drivers/mediatek/lvts_thermal: make coeff configurable
>    thermal/drivers/mediatek/lvts_thermal: add mt7988 support
> 
>   .../thermal/mediatek,lvts-thermal.yaml        |  1 +
>   drivers/thermal/mediatek/lvts_thermal.c       | 89 +++++++++++++++----
>   .../thermal/mediatek,lvts-thermal.h           |  9 ++
>   3 files changed, 82 insertions(+), 17 deletions(-)
> 

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


