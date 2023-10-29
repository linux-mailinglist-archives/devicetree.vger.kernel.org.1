Return-Path: <devicetree+bounces-12683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 139337DAE12
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 20:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 89D4BB20CC2
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 19:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC048D527;
	Sun, 29 Oct 2023 19:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mZMy5FL7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C741D2F9
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 19:56:32 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C70C4C1
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 12:56:29 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4083f613272so31648515e9.1
        for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 12:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698609388; x=1699214188; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MBjaEDFH2L20pCiIDxvatCP6Y3N/isgm8vU1EI+Cv9k=;
        b=mZMy5FL7v4eWKOG7xM+D1+YMg8qx3cN4t9c2DV7n2W0YFN2jyg7KOJp61ZzyZR6OfG
         XMD15AVBEXELLKSDBYK43x2uZocQOZSswHgFdl2GHPqi0wesU/ZVlzVDYqsg3NEuqrRQ
         Je9PwRlPwcTiuVZKuu3ZQT+eXEVqcir+AFINJxy/+B5K9ANAqqbtTKYu+BVfU7pFo+SA
         lPjs8JD79BqU2Myj0exYjuwVxmMocB98uhkW6WdNCj9AAJ91sHcoG2xa2FWf9DE7q1pK
         6jJhnP4p/BzIlE+iSLPx5G+2jQHZKxVWFxz/WpalKEwnfjesS/Mvg+BaUI0dr4WkHGgE
         +/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698609388; x=1699214188;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MBjaEDFH2L20pCiIDxvatCP6Y3N/isgm8vU1EI+Cv9k=;
        b=rxoyE4HA6+1urwVFc/dNbPAL+STBDKD9L5IqPPTfq6LzxPzFFxMYhwJkws/68nAUNO
         JMhJHuyRqERJEMqhjmC88FAelYlmba+GUo+undnWxrp096J5IrI0aQLACJc8u1WRc/Wd
         xjg9Dgrzmmv9GBQNajMpVi+PLjSfvJ1gwpSvz3KvuZNbfuu4ukh9Alac+/piL6TBPwuz
         Bipb9T7PjRwnHSi40nNH9yiqCgrFySi5UhEM4RR6Mi4hrT/xKT0S5P3klrgiO/P/WErv
         I+7FPVD75UzlbJMPISi6GnEgRKrcHitIiUzVNfrRASE7Sn9wgbO4DsP7THO2xEDlkdxH
         GPiA==
X-Gm-Message-State: AOJu0YxGkZeL6FXFyD/dAcHXbr8GHCv5WidjJ3z+4b8dSdl7YByvVjHB
	F1hivSURp7x6wlBqXT2fVIOICA==
X-Google-Smtp-Source: AGHT+IEi1Yyfb3UFTgrRlCELfvUo+XrKxRvz3CPs1ECtt3zmTkP2oaRcalosIGlPQTA3Htg7mSge+Q==
X-Received: by 2002:a05:600c:4f81:b0:401:23fc:1f92 with SMTP id n1-20020a05600c4f8100b0040123fc1f92mr6929891wmq.25.1698609387737;
        Sun, 29 Oct 2023 12:56:27 -0700 (PDT)
Received: from [192.168.1.15] (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id u7-20020a05600c138700b003feea62440bsm7385225wmf.43.2023.10.29.12.56.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Oct 2023 12:56:27 -0700 (PDT)
Message-ID: <298df163-c4f2-4075-a33f-661276b2e657@linaro.org>
Date: Sun, 29 Oct 2023 19:56:26 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] Input: synaptics-rmi4 - f12: use hardcoded values for
 aftermarket touch ICs
To: Pavel Machek <pavel@ucw.cz>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Vincent Huang <vincent.huang@tw.synaptics.com>, methanal <baclofen@tuta.io>,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
 <20230929-caleb-rmi4-quirks-v1-3-cc3c703f022d@linaro.org>
 <ZTzlChOS0OR95Ykp@localhost>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <ZTzlChOS0OR95Ykp@localhost>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 28/10/2023 11:40, Pavel Machek wrote:
> Hi!
> 
>> Some replacement displays include third-party touch ICs which are
>> devoid of register descriptors. Create a fake data register descriptor
>> for such ICs and provide hardcoded default values.
>>
>> It isn't possible to reliably determine if the touch IC is original or
>> not, so these fallback values are offered as an alternative to the error
>> path when register descriptors aren't available.
>>
>> Signed-off-by: methanal <baclofen@tuta.io>
> 
> I guess we should have full/real name here.

I must disagree [1] [2]. These patches have my SoB and are being sent by
me on behalf of the author, who has no interest in contributing upstream.

[1]:
https://lore.kernel.org/lkml/c1bf62a2-e381-c796-2219-17a578987a76@marcan.st/T/

[2]:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=d4563201f33a022fc0353033d9dfeb1606a88330
> 
> Best regards,
> 							Pavel
> 							

-- 
// Caleb (they/them)

