Return-Path: <devicetree+bounces-32364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 096B482F1B1
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 16:38:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C4781C23681
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 15:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 611AC1C294;
	Tue, 16 Jan 2024 15:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XOJdlMI7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4A6A1C2B2
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 15:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40e86c86a6fso3226085e9.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 07:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705419515; x=1706024315; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j23It0IuiUroSCWhj0PbPFmrnm7HHPIjuz5iaZMj6Ng=;
        b=XOJdlMI7htmqqojzaByDzH9N57lPW91ckWcExpcEDZJV3bSDTLEmJ5Oqza/3Q4D+iP
         GbvpU0qtXH/w6xg71dhr+aDeHUWm+Vp8b6ofO7fexeY0tdj4hcZEIPX8ZKKmk+eTfs/g
         ahC94EIB42o1MYjSygZx9ugoh6emRl2i6JdEKjgA1nlGPQGYYOFkV4tVBQ8KK2Xc0I3m
         O9NpwetgK1fDdTnHSAeTh+pf26+Bq268p76IEJT83pGy+aVgbl74E8atB9pNKArjd/JB
         dYVle1PVHRRMd6eFcJoDGoBkm8DKBU0I42DC/CwmyyCxXWyTS6aetei0RV9eyh/mvXSg
         dl6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705419515; x=1706024315;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j23It0IuiUroSCWhj0PbPFmrnm7HHPIjuz5iaZMj6Ng=;
        b=njOKJ+hgMd3J7LZuWOwBfk/pKwX+gZrLoxY7WG8ZAtdjeBewH2mgai0YLbKJqPqm7x
         2CdzDqZyfaftuVLQSDzQfsOJOlOHwqAlaKok4laOGCrxhKdCUj7QC5cUWVgYhgEyuY5N
         I1+0fgBeNHxCthpApqmYtlLs8sR7tr+2alQzQdn0BV0EuHw9JeU91PaPvN/vip3sBzL9
         TNZLEVEmQjexPXHajh1FVuXuGET7LlAgH8p/wOJBYFVUppQyFBgHvZzXqZULoQ+p7Gga
         ijpVlxSbgF6k/UVaLgJm+e/1TTnQ6P7hruBQbAWI+LXz2bcOneN22TfbN4yRN879zy9a
         WidA==
X-Gm-Message-State: AOJu0YyxyHQOMtPjQ1S7cKjJQFFNcdlJ+10qGoWD5zjn4+pWyEqC54C1
	5+LHb94vlz5/Pwymz22nxDBf+J86N5R2lQ==
X-Google-Smtp-Source: AGHT+IFofYs+TOqujuleYZ0THVO9V5vRRggjAVkn1zTZEBw5Ywb0Azkc/icqAhQUDcJudaP4Sp+CyQ==
X-Received: by 2002:a05:600c:257:b0:40e:7e40:10c6 with SMTP id 23-20020a05600c025700b0040e7e4010c6mr716196wmj.182.1705419514820;
        Tue, 16 Jan 2024 07:38:34 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:fab3:687:ead6:5b40? ([2a05:6e02:1041:c10:fab3:687:ead6:5b40])
        by smtp.googlemail.com with ESMTPSA id bi7-20020a05600c3d8700b0040e877fde55sm339538wmb.5.2024.01.16.07.38.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jan 2024 07:38:34 -0800 (PST)
Message-ID: <70b359c6-f094-4874-b903-1dca07d0db7c@linaro.org>
Date: Tue, 16 Jan 2024 16:38:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845: Fix wild reboot during Antutu
 test
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, andersson@kernel.org,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Amit Pundir <amit.pundir@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20240116115921.804185-1-daniel.lezcano@linaro.org>
 <CYG4WTCOBTG2.11PA7Q4A3H93H@fairphone.com>
 <5db88d48-4868-49f0-b702-6eea14400e5b@linaro.org>
 <CYG6QOFYOX79.2ROURJ8FK446C@fairphone.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CYG6QOFYOX79.2ROURJ8FK446C@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 16/01/2024 15:03, Luca Weiss wrote:
> On Tue Jan 16, 2024 at 1:51 PM CET, Daniel Lezcano wrote:
>> On 16/01/2024 13:37, Luca Weiss wrote:
>>> On Tue Jan 16, 2024 at 12:59 PM CET, Daniel Lezcano wrote:
>>>> Running an Antutu benchmark makes the board to do a hard reboot.
>>>>
>>>> Cause: it appears the gpu-bottom and gpu-top temperature sensors are showing
>>>> too high temperatures, above 115°C.
>>>>
>>>> Out of tree configuratons show the gpu thermal zone is configured to
>>>> be mitigated at 85°C with devfreq.
>>>>
>>>> Add the DT snippet to enable the thermal mitigation on the sdm845
>>>> based board.
>>>>
>>>> Fixes: c79800103eb18 ("arm64: dts: sdm845: Add gpu and gmu device nodes")
>>>> Cc: Amit Pundir <amit.pundir@linaro.org>
>>>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>>>
>>> A part of this is already included with this patch:
>>> https://lore.kernel.org/linux-arm-msm/20240102-topic-gpu_cooling-v1-4-fda30c57e353@linaro.org/
>>>
>>> Maybe rebase on top of that one and add the 85degC trip point or
>>> something?
>>
>> Actually, I think the patch is wrong.
> 
> I recommend telling Konrad in that patch then, not me :)

That's good Konrad is in the recipient list :)

>> The cooling effect does not operate on 'hot' trip point type as it is
>> considered as a critical trip point. The governor is not invoked, so no
>> mitigation happen. The 'hot' trip point type results in sending a
>> notification to userspace to give the last chance to do something before
>> 'critical' is reached where the system is shut down.
>>
>> I suggest to revert it and pick the one I proposed.
> 
> It hasn't been applied yet so it can be fixed in v2 there.

The patch was submitted without testing AFAICT. So it is preferable to 
pick the one I sent which was tested by Amit and me.



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


