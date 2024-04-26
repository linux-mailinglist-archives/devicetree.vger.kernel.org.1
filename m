Return-Path: <devicetree+bounces-62944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F3D8B31CB
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 09:57:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04CE31C215CD
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 07:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57B8913C8FD;
	Fri, 26 Apr 2024 07:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U+Ug5mSE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC26213C8E0
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 07:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714118255; cv=none; b=Kcc3qGl4rUCe82dNy3HAgeeUW6hyXuJXjq3xvRK5xI7+g87r0gyhwUu27XZXkC1iH66j76LrkDAZznEOVWmnPrUosuUwXcPKAsc9L34KrNU6/JNe+0sw0qHMXq5qfJwU68xuAHPPbBCNxfSwbwlsAXEBZZVu7xuUXgseQZAacRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714118255; c=relaxed/simple;
	bh=wCiBODES6hYe6uSEsz1rgi057khv4znYREqrSw4IVQM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YpIqMeut72Z04fJvWoyjXiipmk+WmB98bF8sfMrirWrQYNYOjzIisC88haXLSV1Mohld/is+BPXMUpc49LKGcsdFvZnXP91rzuA39rpVA+6x5FtlmGhpui4QIB4F3pqpHnestAcMmyFbCI6QlVbZXqawMlrsCaCubWtXkmyQHwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U+Ug5mSE; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-41a72f3a20dso12499595e9.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 00:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714118251; x=1714723051; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=392YvKHUy01C2ane9PlBGjbFseGqGwG2sSPnV1+h06o=;
        b=U+Ug5mSEWLo0n7L40UGxbwAXnimvCa1dlFUN0LYaqh6jbnK5PP+Jqpff7A/Gxe782f
         mYsAcx+aPgfP/5Cq/QiiitK9T5+b8Hch8ZAO0DF31ZehIhsVyMeioxk8/B6FvY1KfCLb
         BMp/kIt9C/lSDQkqekr1kz7TSdpxxSacbRO5mVvz3qnRXo1nudbN6WOIXBM2oNRgowOc
         nlJHszEAbKJnN2TlN2UNyp8UtFaK0/hOhp2pv6eFhQJMKVdxo8UfOFMSzrHkDFRqy8OL
         88gGp6m2vG0Z0Z7Nq25hqQZTKyDXnWA9kFNm0chhmKQ0oSJ/9crtzYVibBOgc+702h/D
         u5WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714118251; x=1714723051;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=392YvKHUy01C2ane9PlBGjbFseGqGwG2sSPnV1+h06o=;
        b=ZswBk6EWBkIeIKozLTPby+vDgR772GR0UGpXesFCx1q5rf+Vwtu4NK/G6PuAwcUQHr
         F2FSJcSxnEcDZk2PvUhpYjY7pLrr15H8+97PTqmZfMHdHR4gZmAonCR7jWA2HMs+WZ/0
         SS6jmrnasGiGLY4rTKpWLWTlqPe3WHSpGhKJQoDqdxlDC3hzfBhFD/gMz2CzqhoEOBLq
         XbdqG+u6SETDnw+ydH2TvR2y5I2STFV8bCyN9RfQOxMHmik/7/fNIm2NRhkuu2cV+jO5
         fjp7R6Up6KHf4OarF5SjN+/CWeK6RzCafIBExGHUfERIFIvvSSq7cItl9M9tgWRj9g0w
         poew==
X-Forwarded-Encrypted: i=1; AJvYcCVN3oB5/VpCKVHU5JA3gDZjk98zhZjkU29pGqkF9agaFmMt6pFmHc389Ae1SnEx/xer/sv0G4d/2zMvjuRzDNQvDopn0an3ILkDRw==
X-Gm-Message-State: AOJu0YwGsn8T3sWCifvXY60N2KhpNwpFL/c01HgMU/Just8kh14klYnF
	GKuKwieU4hVs4BPcTL4AwqSU5qJvTzo2iuFzRZs2lJi5golKnTVhqCa79HZais4=
X-Google-Smtp-Source: AGHT+IHIONkocekx1Nn0xgOaZLdkdZ6ZhZ+MdaNtdhL8VruI6qSiOgyFn8JkOr6Ws3rcaZt3necsIA==
X-Received: by 2002:a05:600c:19d1:b0:419:f126:a46d with SMTP id u17-20020a05600c19d100b00419f126a46dmr1373777wmq.30.1714118250865;
        Fri, 26 Apr 2024 00:57:30 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id f7-20020a05600c154700b004190d7126c0sm25350832wmg.38.2024.04.26.00.57.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Apr 2024 00:57:30 -0700 (PDT)
Message-ID: <35c9dbe9-9166-4358-bfa9-99f205acd8de@linaro.org>
Date: Fri, 26 Apr 2024 09:57:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] thermal: amlogic: introduce A1 SoC family Thermal
 Sensor controller
Content-Language: en-US
To: Dmitry Rokosov <ddrokosov@salutedevices.com>, neil.armstrong@linaro.org
Cc: jbrunet@baylibre.com, mturquette@baylibre.com, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com, glaroque@baylibre.com,
 rafael@kernel.org, rui.zhang@intel.com, lukasz.luba@arm.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 kernel@salutedevices.com, rockosov@gmail.com,
 linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240328191322.17551-1-ddrokosov@salutedevices.com>
 <38ba3618-2a67-4e21-b08d-7e382411e51a@linaro.org>
 <20240417084007.uzg2uc7gwb6mi7bi@CAB-WSD-L081021>
 <20240426073106.3yl2dplvauper3lg@CAB-WSD-L081021>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240426073106.3yl2dplvauper3lg@CAB-WSD-L081021>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Dmitry,

On 26/04/2024 09:31, Dmitry Rokosov wrote:
> Hello Neil,
> 
> I hope you're doing well. I was wondering if you could assist me with
> below problem.
> 
> I'm a bit confused about which kernel repository the series was applied
> to. I asked Daniel about it, but unfortunately, I didn't receive any
> feedback from him. Could you provide some clarification on this matter?
> 
> Thank you in advance for your help.

I was OoO the last two weeks.

Your series is in my tree [1], which is pulled automatically by the 
linux-pm tree in its bleeding-edge branch.

Today, this branch will move to the linux-next branch [2] which will 
also be pulled by the linux-pm/next branch automatically.

Hope that helps and sorry for the delay to answer

   -- Daniel

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/thermal/linux.git/log/?h=thermal/bleeding-edge

[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/thermal/linux.git/log/?h=thermal/linux-next




-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


