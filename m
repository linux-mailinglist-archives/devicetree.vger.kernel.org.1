Return-Path: <devicetree+bounces-12239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAEE7D8886
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 20:45:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E54E1C20CD9
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 18:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9944238F80;
	Thu, 26 Oct 2023 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kPPKS60s"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E512F4426
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 18:45:51 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57CDE1A5
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:45:50 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507c5249d55so1872879e87.3
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698345948; x=1698950748; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dfq44KtpvVoTi226YXMj5pM9/ZBtfwTToNeSkmatPXk=;
        b=kPPKS60s7Gx2wy9Oj0La519Iquo3rC/zpwmJcUtDPOl5BZFEGhBWliSCdrgodyjYRh
         5jK0IVIlUKlCy7T/KiRJq3wpNhhOOvtHzl3vEOXogyORYqmZ8A/zsCcjfSu11cMMVCb1
         QB4WwNCYdsZbcoxvaXmJUH1Y2CCi//WwH5xmCteeViBlUSyIfL8IKQX9bMEFgQyywuPZ
         JxrL6ONOYBPUkEqIeNveR8YYp/A9El5QSEpUfapEiflCcjd8otSdt5hIbNMlKWQYnkBv
         7pa/Du4IF8WGy4JoSVbFvT2nVkoxolTHhzH/vpi5N76YxQ/QF0BPiE8x/EVOq2d7r6NJ
         UFVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698345948; x=1698950748;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dfq44KtpvVoTi226YXMj5pM9/ZBtfwTToNeSkmatPXk=;
        b=AGxVUEFyRJhoa6QQ1OaRyEuhoZfUIPS4ySpbGFjLLA868UruDUgoushr4iouAVgSS2
         LRoP0kuHPcdGYQ2h5ZLWPC9/jk/xZtehkZu0ago5Onj71IaN6tYRTsXPYCSgnTjXq6yF
         PzaSR5tiIu2uKoevTKlFRSu9bVKhGxkleKAcs3/WpaxIutXlFWjLqKsKT27BoL9UGsX6
         +tMSW4NSOxUBsojxYxuaYlMARHtC6GOVQBMK6CgrT/Lif5TuJKMazkfpSJima+WSfiQ6
         hTL2TRB4nmQQv/HyZhtW0VSlzy6oS4WriMehAf3CdNFCdb7PsJPmbH9xy2MiWFMkWUym
         E4SA==
X-Gm-Message-State: AOJu0Yz9rkOj0k6M2Gz6D2RGKLHmX2pHIdEdlG1k+2n91xAWsExydtZO
	z8JzJ+Mvje9WOmsBZ+niaxIyig==
X-Google-Smtp-Source: AGHT+IFujQppv52TAisp40xugmwbZaGNvITv9y42W1AvnCP4R391ggguFC+CGFL20f2whKEh/xoHkQ==
X-Received: by 2002:a19:c510:0:b0:503:34b8:20b with SMTP id w16-20020a19c510000000b0050334b8020bmr143296lfe.65.1698345948438;
        Thu, 26 Oct 2023 11:45:48 -0700 (PDT)
Received: from [172.30.204.255] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n21-20020a05651203f500b005079f69e019sm3092962lfq.59.2023.10.26.11.45.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 11:45:48 -0700 (PDT)
Message-ID: <1b99abed-6572-4550-98cc-56667a507883@linaro.org>
Date: Thu, 26 Oct 2023 20:45:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] clk: qcom: ipq6018: add USB GDSCs
From: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Robert Marko <robimarko@gmail.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20231025104457.628109-1-robimarko@gmail.com>
 <20231025104457.628109-2-robimarko@gmail.com>
 <77314fe2-2936-4f89-a347-4eb288507c47@linaro.org>
Content-Language: en-US
In-Reply-To: <77314fe2-2936-4f89-a347-4eb288507c47@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/26/23 20:42, Konrad Dybcio wrote:
> 
> 
> On 10/25/23 12:44, Robert Marko wrote:
>> IPQ6018 has GDSC-s for each of the USB ports, so lets define them as such
>> and drop the curent code that is de-asserting the USB GDSC-s as part of
>> the GCC probe.
>>
>> Signed-off-by: Robert Marko <robimarko@gmail.com>
>> ---
> Applying patches 1 and 3 without this one breaks usb, no?
Sorry, my hands don't keep up with my brain - that's almost another
speculative execution vulnerability!

What I meant to say is:

applying patches 1 and 2 breaks USB

but

the solution here would be to apply patch 1 and patch 3, followed
by patch 2 (unless it will make the USB defer, IDK, it's probably
easier to just test than to dive deep into the code)

with Bjorn taking both subsystems, we can make that work I think

Konrad

