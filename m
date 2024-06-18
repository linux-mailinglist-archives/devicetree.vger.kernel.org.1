Return-Path: <devicetree+bounces-77170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 163BD90D8EE
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 18:19:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2DC71F2760B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 532CB13F441;
	Tue, 18 Jun 2024 16:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="PZ4cFKzO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D07F4DA0C
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 16:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718727435; cv=none; b=A64W7jpStauoahrt9MKUSd1PB/byr/Xa++cvCA3Fwdb5uEc/Wk4KWTcPw41mQjnYAw8CiEtGEMdMOEf1W+3S5T1nFDjrWZd3wcAMxSmoXfsI5AmJanTMEqQFbtbfWBYEn5VBbRjxfBlcqocCikyDmUDzNhk4UnCalTuF3fJesz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718727435; c=relaxed/simple;
	bh=7+6hZSyifi4q0VdNnymGGHzK+Ia3yAxK/zaA1kFECXw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CMRE9IAOgz4pmnJdsLhHsjh/wMrlTN4mxk2eZzbSnzczMB03t6wmn5BL8ao0rcIYCfPMA03Pb6Q2h3mKmhyHc8OtalFXXa6PYMhxAjHi+ybsc1eDzuYPn9wcRg2FP+WoLL2Xlc6ZCib0A/y1+nX1rpmRGLpGrTpZF5U0P9/OdDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=PZ4cFKzO; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4217926991fso50235505e9.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 09:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1718727430; x=1719332230; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6FzirBsHs0R3JqR4YNWkZT3Jk6K5qZO8hZgNAdkFmfQ=;
        b=PZ4cFKzO2fmq45rvGih+lp8NxVvL3kKsHZ8Q+jztNpVC3iMsQS6PiFpYLwZVjnPz8c
         A4rjl3SebDbNgD4X7Aua61ydv9zsFhVBHzyBtyI+MohD3hahabyn1yNotCHTrEgM2Qwh
         54Z74zELjUALJaYJssbNfgmZEDMy4BAC8rQI10WglksUaxje8YJAt0VRUP1Z3supHTQH
         5lIaBg4sSZOGUZMGIMhOx/mZ2gEVB1wxs5QF8a9j+V2KZKcqWctenO3roRK5RtKSa3mQ
         6dgmoMTbRJJ/z0LESSz094MvuLZwjWjvlh7xirg2jOaoEyQOT6E0hVteGfhFB/xh+L64
         MPGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718727430; x=1719332230;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6FzirBsHs0R3JqR4YNWkZT3Jk6K5qZO8hZgNAdkFmfQ=;
        b=KIv8HX5EB1XzRl9vIZPdMbXdRZr3YSlMk+2DWGI4pYe5/iQx6Y4cV0UsOLjHM0vIfh
         I+NiLhNM35XmVLhp+BkZtzu9v3rS1GNiHEQu4kR6ZUYSZK8HqsyLyuXlJFz87PhNMQJO
         NgZmHpvi1StkLqCRuNBWeyen5BLNadp4xVcdN5Gx156kODEWHGmwlFBIuRFi4pqYmU0h
         r+OkxJ/lHA5W0AzC9AQm7wukXjjNwaN/ADsBSagi7K7ZB+xxywrywDDMPmyS+hgE3NvT
         p3HV685thP0jGG2A+YCB+KL5T9xWnthE9U1X+2CozHA4Xvk9xYxT9Eoi+E42NFCvclKp
         eOIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXx5LavcLqLK9Gq/34vO5wECZPlb18OUtrxOD83cKmpbaYJoeRZsNjSYpx8XqDWMmFxKIwUNSwW7P86tHsJ+R0l5QIY4nn7i9A7FQ==
X-Gm-Message-State: AOJu0YzngFOB0QWu5sMGiMF+fHN0k275KWJNOm6m6yzVsNoIA/3VJTVS
	MA+yBacTwdFOEF1uEVDJBeIatF6YYKp+DQmhYRZ+XmrG0xxGJC4ojsEYmeRvxm0=
X-Google-Smtp-Source: AGHT+IF+K+0VwyL4Nz2qQsPpxwaMm6n06pjMOi71rdpTsWHLKiONMkYyVEv1qp7d+YAKTtxVv/0VTQ==
X-Received: by 2002:a05:600c:45cb:b0:421:7983:f1a8 with SMTP id 5b1f17b1804b1-4230484d391mr123768525e9.32.1718727430252;
        Tue, 18 Jun 2024 09:17:10 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422874e7060sm229060085e9.40.2024.06.18.09.17.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 09:17:09 -0700 (PDT)
Message-ID: <1b34489e-6449-4023-826a-b0e1331319f6@freebox.fr>
Date: Tue, 18 Jun 2024 18:17:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Basic support for TI TDP158
To: Maxime Ripard <mripard@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
 <fac01fa5-f257-488a-854e-716bd2634d85@freebox.fr>
 <20240618-impetuous-passionate-jaguarundi-d7bcc1@houat>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <20240618-impetuous-passionate-jaguarundi-d7bcc1@houat>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/06/2024 16:36, Maxime Ripard wrote:

> On Tue, Jun 18, 2024 at 03:07:16PM GMT, Marc Gonzalez wrote:
>
>> On 17/06/2024 18:02, Marc Gonzalez wrote:
>>
>>> Marc Gonzalez (4):
>>>       dt-bindings: display: simple-bridge: add ti,tdp158
>>>       drm: bridge: simple-bridge: use dev pointer in probe
>>>       drm: bridge: simple-bridge: use only devm* in probe
>>>       drm: bridge: simple-bridge: add tdp158 support
>>>
>>>  .../bindings/display/bridge/simple-bridge.yaml     |  4 +
>>>  drivers/gpu/drm/bridge/simple-bridge.c             | 85 +++++++++++++++++-----
>>>  2 files changed, 71 insertions(+), 18 deletions(-)
>>
>> Series has been NACKed.
> 
> That's a gross misrepresentation. It wasn't NAK'd, changes were requested.

OK, my bad.

Changes have been requested.

This series is obsolete.


