Return-Path: <devicetree+bounces-4293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4567B1ED1
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:44:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BDFFA282176
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:44:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB523B7AA;
	Thu, 28 Sep 2023 13:44:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A093AC3D
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 13:44:37 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66A9C19C
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 06:44:35 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40566f8a093so98936725e9.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 06:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695908674; x=1696513474; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PrYF5cdJqo09uMp8BBlyHLC/J6XK4bPMJmhqEe83tas=;
        b=oAjg9Akwf34yKjYzizU4q6iI3Mr2qPo7YTrPJz8iMNibdgUwZ6nYCRskiYOc4XPajf
         JB5exyydirfrl7uZ36hLpMxap1GNzivZFQFtpbnmNWAFAUJUmcUq/6TxzPebGlZOwmgg
         uhOhfaDEHc3395dZ8OqVFJ47nu01xTn/DjUJQdoG9RueFEWMunKVwgo6VL9yIRs6CCu6
         UjXwsidnV36NYfirnY0ROU3qCiOBqXen6NJRZi+aYnXxfl20JqX/HJ+BkMuLmamjqS1s
         nXA9aGLJR3TiwHof9JmoZk0UExVaYSrIzVzdItq09UQy4vs3Rpgi/uiZfP3lD+anJ3OF
         GmJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695908674; x=1696513474;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PrYF5cdJqo09uMp8BBlyHLC/J6XK4bPMJmhqEe83tas=;
        b=RYfa1wtJCBvZeTl+UFq3unR1XxBYKA2JQLWk9xkX49zn8mFP+hS8b4EKprCEqwfU6n
         CfJ0vgkRm7BR8VGB87DKovqYgI30ck+OITD/uAYSnWm9x77EA+YWeKtpTPc5lUGEZRcD
         /ZldIFUlG4qHoERdQlTxHqPehlWvL2+DvAMMxr8XaVC8MlDBalaim/NxERx635Jjrjxf
         /DdUs5xNQjzVWcO6wutPB0uw1eKFDFmmXlIJY+8Af4ptZl3uL2xrVc8RYcPZWx7aFadi
         DAfENcqeWA8HT1WHYODXOBo5qf4WRe0eUo6yNa2mOxk1qLbtTc7U+dtKeNqNJ5L1WjiE
         Jeuw==
X-Gm-Message-State: AOJu0YyUWOY5W6xlKy1bAU7y7i0wFj02sL3CAT+kw5xOQyQ1Ph6afpnR
	geh04NJYPn8C2x64yoDfR6onIQ==
X-Google-Smtp-Source: AGHT+IF2+xfi/KVQH7ypTN5t283gXFIlAJzfSJTdp/rN8KCzkAVZjEsqWZSmUk6APKq35IqZcUKj7g==
X-Received: by 2002:a5d:43c2:0:b0:321:67f4:8bd7 with SMTP id v2-20020a5d43c2000000b0032167f48bd7mr1083284wrr.32.1695908673682;
        Thu, 28 Sep 2023 06:44:33 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id s24-20020a7bc398000000b003fe2a40d287sm2769316wmj.1.2023.09.28.06.44.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Sep 2023 06:44:33 -0700 (PDT)
Message-ID: <f5e3700d-5f4b-7ba8-519b-ffda8ff04a0d@linaro.org>
Date: Thu, 28 Sep 2023 15:44:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 5/8] dt-bindings: thermal: fsl,scu-thermal: Document
 imx8dl
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-imx@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Amit Kucheria <amitk@kernel.org>
References: <20230926122957.341094-1-festevam@gmail.com>
 <20230926122957.341094-5-festevam@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230926122957.341094-5-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 26/09/2023 14:29, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> imx8dxl also contains the SCU thermal block.
> 
> Add an entry for 'fsl,imx8dxl-sc-thermal'.
> 
> Cc: Rafael J. Wysocki <rafael@kernel.org>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Amit Kucheria <amitk@kernel.org>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


