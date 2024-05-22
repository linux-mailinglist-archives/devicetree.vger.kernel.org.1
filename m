Return-Path: <devicetree+bounces-68299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D541A8CBC00
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 09:29:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C6BA1F215FE
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 07:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B06F47CF30;
	Wed, 22 May 2024 07:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mQ7pASic"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAAC7CF16
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 07:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716362982; cv=none; b=KUs7BRcxvRElpnD5krH2D++4W3Lx8ISG1tbkQUhach7A6IQ4r+RQsPJlxaiJZKSJxIj3oH3UhQSkE8EY8nPCadIsADiDaL4c/8AgNOvgYFKwV9flcjHH0wTTHb1p0xLH1hXYf5JRLHD7aKWAqM9kOsM9C/S+/Uxzdp182Ac5H1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716362982; c=relaxed/simple;
	bh=ujtplpDHHre57IF59IvqEB2Kw8dcbdxqOMgfH/r499o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fwcteateue5cWtwxi0mG24xZH7t8TuxNE1B50TUJRoESmBxuCdKF2ttwsPxNRci75uEFWyGFMzNYuUZwX3mOsH+tfqFf3mCHrOymUrOs4xeRpWpJ30lynuJQCrWlualej3acgttdZ63VcwusyNrzM/HwkAdXyMtjRSTsWpHSf3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mQ7pASic; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-420180b59b7so4267085e9.0
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 00:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716362979; x=1716967779; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2U3y/E4W+g6WHZWhWDHN2owdKPMa1Ox2KTg8IP+L8r4=;
        b=mQ7pASicJcXadKRRc+LF532GzGA6FhKeq4Gjhs/CRwiZUUw5uGxsjUG1h/no63soGA
         zn/nNgbZUhobK91o/j5f4Sci29ldSL/7FsWREAIRY+jK19uSy0xHszuuXyRNVB9orm6C
         VsA6hPxiXrCpsHgTEDxSJerhIzYSIJXMDhygMLkgr7M+3/4NNQqlN4Z/vaxygi39NOIG
         fJp82CdcceZqc127fEnFNOfweiLrH+Ddb3/tisC3OmM+J9pD+4KXpQIZmiSUirt6gXoJ
         56IbT8aJXMt32RYAxFf6gCviHK2jf4MjYIS/YVJsRIJ7UqOu6aRanmY3KC6P5D9mE5Q8
         y2Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716362979; x=1716967779;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2U3y/E4W+g6WHZWhWDHN2owdKPMa1Ox2KTg8IP+L8r4=;
        b=pgPuo7zML20JApW9FkhNW2Hm5mnbAdeuWSl8xCEfo+MnHTfmwkMKlemVZ4ZTcemoCF
         N7CXmkMV2yGldwfTmMT608BM/R0MD2AKq4xHescTn5DYrUdpLo9qRDab5FO2o82jta0U
         QJ79zu2tLJnZ0lJ6Id2w0hFPmQN4ajhE1i4x5psyXkyhHhvb3iLLg8bZdvJaPVNxfscr
         FHSUh3pAS4hfIh4vCPCMjbRdhDFcEVVW/3GDUMyTDPAcmDezUhS4OJZPxt07l1aowXxP
         1WkYg+0DOqHq5iJh2evLh2PdfvyZ9Mf/qXq6ruM11hqySN+ygOgfsWfY17RABBz2GUmJ
         zlQg==
X-Gm-Message-State: AOJu0Yx6qq7tr8ehYMzSP5yScEu9Sx8xDMIvJgOpoTQ1Zy6Q5mOKisyN
	LPdgBb70K3qjJicyOKMssKwq3gYI5Qn+W4xe8HmWdWUGuV0egHkxCR/+2NTRfWA=
X-Google-Smtp-Source: AGHT+IHZr6SGdmsYq7oNUSaghJWy+96UkRVzcYcM6OS/e/jllLwc1HzE5OHDTuC/E4zIrh+PfTxRWw==
X-Received: by 2002:a05:600c:5613:b0:420:1853:68c3 with SMTP id 5b1f17b1804b1-420fd3282ddmr6928015e9.20.1716362979042;
        Wed, 22 May 2024 00:29:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccbe8fa6sm489538445e9.2.2024.05.22.00.29.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 May 2024 00:29:38 -0700 (PDT)
Message-ID: <262fa428-70e9-48d8-b89a-65225c0c7d15@linaro.org>
Date: Wed, 22 May 2024 09:29:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] ASoC: cdns: Add drivers of Cadence Multi-Channel
 I2S Controller
To: Xingyu Wu <xingyu.wu@starfivetech.com>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 Claudiu Beznea <Claudiu.Beznea@microchip.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20240508070406.286159-1-xingyu.wu@starfivetech.com>
 <20240508070406.286159-3-xingyu.wu@starfivetech.com>
 <NTZPR01MB0956937A2D3D8B97DB1C8E079FEB2@NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <NTZPR01MB0956937A2D3D8B97DB1C8E079FEB2@NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/05/2024 04:33, Xingyu Wu wrote:
>> Subject: [PATCH v3 2/2] ASoC: cdns: Add drivers of Cadence Multi-Channel I2S
>> Controller
>>
>> Add the drivers of Cadence Multi-Channel I2S Controller.
>>
>> The Cadence I2S Controller implements a function of the multi-channel (up to 8-
>> channel) bus. Each stereo channel combines functions of a transmitter and a
>> receiver. Each channel has independent and internal gating, clock and
>> interruption control. It alos support some of these channels are used as playback
>> and others can also be used as record in the same time.
>>
>> The I2S-MC is used on the StarFive JH8100 SoC and add the compatible for this.
>>
>> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
>> ---
>>  MAINTAINERS                      |   6 +
>>  sound/soc/Kconfig                |   1 +
>>  sound/soc/Makefile               |   1 +
>>  sound/soc/cdns/Kconfig           |  18 +
>>  sound/soc/cdns/Makefile          |   3 +
>>  sound/soc/cdns/cdns-i2s-mc-pcm.c | 285 +++++++++++++
>>  sound/soc/cdns/cdns-i2s-mc.c     | 704 +++++++++++++++++++++++++++++++
>>  sound/soc/cdns/cdns-i2s-mc.h     | 151 +++++++
>>  8 files changed, 1169 insertions(+)
>>  create mode 100644 sound/soc/cdns/Kconfig  create mode 100644
>> sound/soc/cdns/Makefile  create mode 100644 sound/soc/cdns/cdns-i2s-mc-
>> pcm.c  create mode 100644 sound/soc/cdns/cdns-i2s-mc.c  create mode 100644
>> sound/soc/cdns/cdns-i2s-mc.h
>>
> 
> Hi Mark,
> 
> Could you please help to review and give your comment about this I2S driver?
> Thank you very much!
> 

So you are not going to implement my feedback? Then Review tag does not
stand.

Also, please avoid pings for non-fixes during merge window. It's
pointless now.

Best regards,
Krzysztof


