Return-Path: <devicetree+bounces-25368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FB68130E3
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDA372832B4
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:05:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCA0F4F20A;
	Thu, 14 Dec 2023 13:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l5VGq0Ad"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A0AF113;
	Thu, 14 Dec 2023 05:05:34 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40c6736d10fso2249455e9.1;
        Thu, 14 Dec 2023 05:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702559133; x=1703163933; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nJWSmqZY8bvpN8lsX+TqiqlmC7a1md8x6ec5Chp6hzk=;
        b=l5VGq0AdyokIU000NZpVM4G0tNqLf0Vhh+ds5+HbkJ8DokYrBFjLjEH3CxjqocxEZd
         t8NLMVm+t0O02+I+Ez+qFLmGDEM8IBxcVpHjFIgPDlrrj6/7s8Azo+dGZ1HG2HMIV/kn
         kB7Ohq4D8onaTKAOHZd4gbrV5l4dqd1W2+ahE3zJ4MxlVuceT2ToDY7pg/u2g1+tvyM4
         zpJ8bu/l+TZzqNpBhfgbEOL8kIhHyCHlrcqeSNtmTGpORl9xLd3U0CjzX1rnAfS39+Z5
         OBn0jRDSnD7L6fXsPoudV21AnpBPqwdNmaLFFA1x0ihzjXiJ/7P3RRGSbAyjSezzjdtA
         nhBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702559133; x=1703163933;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nJWSmqZY8bvpN8lsX+TqiqlmC7a1md8x6ec5Chp6hzk=;
        b=chRPYRYbO8MKZnYkVPp04j4tyLY0rhV5IZLs87hjNLzYLcyUoXt2rrw+bBNJOg5x5l
         zUDFoy3Dta1YsSFsMRb0F9JS9qBvdCVN4f5C6zl9xfOmriwTEhWXeTar4ODuoQZuu8DM
         yTRNelvypl/vQDGT3dHRxw3lMUMRf9g7wzTqpkcvIO9zlXCMg0KPbN4iKoFbSFNlpEIP
         gd9hr6rICqxteNT0o+pN7RQ5+LeTJl/Ljm5y129PfL1928/is5/3DWACvxIuY0XNbqft
         Aa7VfVWDRhzSpuw0TnJDRHWfByacUCZuChVa/h/s5WnjUzjHxCdPJ6+hnDQAsfH+o4H4
         8uJw==
X-Gm-Message-State: AOJu0YyCi2IF+E/sp0ZSgCBW6MIRvzn3IsdgkZv+9q/apjYhKt7pafnf
	OF9t/ha3JUUb9NRcWb+fIQ==
X-Google-Smtp-Source: AGHT+IGFMev6nBsSzAciWcS+OG7FvhlCTEqaypLjwImRq6Y1YvN7eeOXGi70rNdJ/jg8MLMRe9craQ==
X-Received: by 2002:a05:600c:4384:b0:40a:42dd:c82c with SMTP id e4-20020a05600c438400b0040a42ddc82cmr4833668wmn.27.1702559132801;
        Thu, 14 Dec 2023 05:05:32 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:fb6a:140c:b21d:7387? ([2a02:810b:f40:4300:fb6a:140c:b21d:7387])
        by smtp.gmail.com with ESMTPSA id z20-20020a05600c0a1400b004064e3b94afsm27304816wmp.4.2023.12.14.05.05.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 05:05:32 -0800 (PST)
Message-ID: <48498e97-1bdd-4a4e-a5a8-5c196a780319@gmail.com>
Date: Thu, 14 Dec 2023 14:05:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/11] drm/rockchip: inno_hdmi: Add basic mode validation
To: Maxime Ripard <mripard@kernel.org>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andyshrk@163.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <20231213195125.212923-8-knaerzche@gmail.com>
 <wz4e43ateg3gb7745mz22wwyruwavevvpfbqsdxeynejcjxhzn@qbqldsnkktei>
 <1b7402b2-ec03-420b-a81b-3e6ea46e402a@gmail.com>
 <k7ry5xsrmc5bi46pwbkphq4wo3jd5uutnezvttue2eh7sabkby@wvimbjamzg32>
Content-Language: en-US, de-DE
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <k7ry5xsrmc5bi46pwbkphq4wo3jd5uutnezvttue2eh7sabkby@wvimbjamzg32>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


Am 14.12.23 um 12:40 schrieb Maxime Ripard:
> On Thu, Dec 14, 2023 at 12:17:39PM +0100, Alex Bee wrote:
>> Hi Maxime,
>>
>> Am 14.12.23 um 09:05 schrieb Maxime Ripard:
>>> Hi,
>>>
>>> On Wed, Dec 13, 2023 at 08:51:21PM +0100, Alex Bee wrote:
>>>> As per TRM this controller supports pixelclocks starting from 25 MHz. The
>>>> maximum supported pixelclocks are defined by the phy configurations we
>>>> have. Also it can't support modes that require doubled clocks.
>>>> If there is a phy reference clock we can additionally validate against
>>>> VESA DMT's recommendations.
>>>> Those checks are added to the mode_valid hook of the connector and
>>>> encoder's mode_fixup hook.
>>>>
>>>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
>>>> ---
>>>>    drivers/gpu/drm/rockchip/inno_hdmi.c | 38 ++++++++++++++++++++++++++--
>>>>    1 file changed, 36 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
>>>> index f7f0bec725f9..2f839ff31c1c 100644
>>>> --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
>>>> +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
>>>> @@ -38,6 +38,8 @@ struct inno_hdmi_variant {
>>>>    	struct inno_hdmi_phy_config *default_phy_config;
>>>>    };
>>>> +#define INNO_HDMI_MIN_TMDS_CLOCK  25000000U
>>>> +
>>>>    struct hdmi_data_info {
>>>>    	int vic;
>>>>    	bool sink_has_audio;
>>>> @@ -572,6 +574,34 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
>>>>    	return 0;
>>>>    }
>>>> +static enum drm_mode_status inno_hdmi_mode_valid(struct inno_hdmi *hdmi,
>>>> +						 struct drm_display_mode *mode)
>>>> +{
>>> So, mode_valid is only called to filter out the modes retrieved by
>>> get_modes, but it won't be called when userspace programs a mode. That's
>>> atomic_check's job.
>>>
>>> So you probably want to create a shared function between atomic_check
>>> and mode_valid, and call it from both places (or call mode_valid from
>>> atomic_check).
>> This actually _is_ a shared function called in
>> inno_hdmi_connector_mode_valid and inno_hdmi_encoder_mode_fixup. Yes, I
>> probably should use it in atomic_check _also_.
> Yeah, I saw that later and forgot to rephrase.
>
>>>> +	/* No support for double-clock modes */
>>>> +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
>>>> +		return MODE_BAD;
>>>> +
>>>> +	unsigned int mpixelclk = mode->clock * 1000;
>>> Variables should be declared at the top of the function.
>> Oookay ... can move them.
>>>> +	if (mpixelclk < INNO_HDMI_MIN_TMDS_CLOCK)
>>>> +		return MODE_CLOCK_LOW;
>>> You probably want to check the max TMDS clock too?
>> Not sure what you mean here. For the currently supported formats of this
>> driver (rgb only) tmds clock and pixel clock are always the same.
> I mean that your controller has a maximum TMDS rate it supports too
> (probably something like 340MHz). You should also filter out the modes
> that have a pixel clock higher than the one you can reach.
Yes it does have it and it is defined by the phy configurations that do 
exist. The mode is validated against those exactly below this statement. 
(See commit message, btw.)
>
>>>> @@ -602,7 +632,9 @@ static bool inno_hdmi_encoder_mode_fixup(struct drm_encoder *encoder,
>>>>    					 const struct drm_display_mode *mode,
>>>>    					 struct drm_display_mode *adj_mode)
>>>>    {
>>>> -	return true;
>>>> +	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
>>>> +
>>>> +	return inno_hdmi_mode_valid(hdmi, adj_mode) == MODE_OK;
>>>>    }
>>> Why do you call mode_valid in mode_fixup?
>> I'm calling the shared function you asked me to introduce
>> (inno_hdmi_connector_mode_valid != inno_mode_valid)
> That's the mode_fixup part that I'm focused on :)
>
> mode_fixup is the legacy function to adjust the mode to the controller
> capabilities. It's optional, and you're not adjusting anything here,
> just testing the same thing mode_valid did.
>
> mode_valid has been superseeded by atomic_check anyway, so just drop
> mode_valid and use your function in atomic_check like we discussed.

OK.

I just read that mode_fixup won't be called at all if atomic_check 
exists. I will drop here and call in atomic_check only.

Alex

> Maxime

