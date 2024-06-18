Return-Path: <devicetree+bounces-76956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9C490CA83
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:54:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57C921C217EB
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 11:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB7C15252D;
	Tue, 18 Jun 2024 11:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="trGnVFtx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333A6152530
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 11:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718710640; cv=none; b=KTKUpXTNUhSIPGx0R78pO0O/h0RGHRHFK2NbdNhaF/VKlPJER22fcba+Ak6uF9eqP27ROM26WWaxgviyzpG6Av34jz86FLnB50s8Po3BPfZsSPt0WJC9nTF9CgpAmJjNRoewY2KVD8CJqOzYeszEUX5nmRUuaR46WxZFuUZ0cJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718710640; c=relaxed/simple;
	bh=HBavAFMGNXFPQuEZJctmiA+u/ZSzWkB2G1t4ZpxtkAU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fCO8IJK4MEqfygJm6E6YP1h6c25OX/OJbkSfxTPpV90BfEXMn71cVt6kFUlhDSjJqJLKlXHIaWfPRC+2xERBrVzHPAmJuSSE4Vyf117vpkJfZBsNA35GwCWKKKj60FdoLduocSUj4qEiV8FO0/KmFdEsny9H6tsBNCj3P3VB4aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=trGnVFtx; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4217926991fso47726575e9.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 04:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1718710636; x=1719315436; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MNFhFsMuCR3JzVpbfDPPfZyD9hhD06jT8f7Cvk9VHLU=;
        b=trGnVFtxWrrvOe04TgnmMKqlElMWuQX/+AENI+jU36lkkKVABVKqeYs7RgU6a66+xM
         KCqs8Aw3Cd3oVdhEecRPAudPGb12WKNbv3npQsmCKFPueW5KcS9BH8GkLR0dX0D5Qwd8
         NW0CNgz3UUnyjpj4/WrI5m6j1nBEvDcIoOoRNscFwYZkRgqHalMf1LEW5w/j7tOhMMtp
         k9+BDW1D0sq9uR8NCjqD6QUDi7SC2AkOHskK4BO3kyTpRQOMZHz/u0k2A6bwXV5J2bDm
         76m923SK/wsp/cxVRVVlHm0v9Ky/nkwtiNQU+jq98BwW2s0W0am1W60P9UzmoqvfqUSU
         9/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718710636; x=1719315436;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MNFhFsMuCR3JzVpbfDPPfZyD9hhD06jT8f7Cvk9VHLU=;
        b=B280qI58AnQRkSDma7dPyBfS+etnmtm+N+hg9jhTiPVouqd/+szwRWefXw+0AK/XTD
         Y3HCSXTv/+HkNgTjuLJE5adAq3Ty8RAmGnIsUj/7fpnbzV519lZn2H2a3IAzP9GuhSE1
         hHB3w4h3HwNliV1FF2OwaIb3NzUifnjpojxEZ7lsctYKFBEDUcMtlh7gK+Iosm21kMrC
         HceM4Y2k0dfjnSYjxgkQjFB2HhNYb/U403ceMgmqJYTD6a2xRHL+cab9Y56CptLWb7kj
         D1zGKki9do2Yk1DQPp54rEKc6eYXDf/tAcbxjNSr9dDtRk8hbCGr4PR6HBzuNIQwiLcf
         a4nw==
X-Forwarded-Encrypted: i=1; AJvYcCVfn2xTj7Cwofn8qTA11THkalOEehpigW/K6C+wsXPVW4urD19+lGfqvxJLRE1wHEaPuYxy/VWbsYSaD6U4PSt5+abd0HMbNE72uA==
X-Gm-Message-State: AOJu0YxRWTi9/A9XGj014YLjqWxe6IuPv75kDwCc/TG+kEfGZFq8Hxm0
	wlSnnAaEZcF0d3uO8YPi6oL/pBWp8+6DzQfwcQ0WFlUqX71E2AQZbQG3rnjm1JY=
X-Google-Smtp-Source: AGHT+IEkKPX6JB+CVD4NP2W7dGUx1o04BJP6SVB5Vk6qEZ79NuxuyGaMjWKm/C/X6sMP5ctfytwVVw==
X-Received: by 2002:a05:600c:4706:b0:422:384e:4365 with SMTP id 5b1f17b1804b1-42304821335mr101579035e9.2.1718710636358;
        Tue, 18 Jun 2024 04:37:16 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f6127c1esm185260555e9.23.2024.06.18.04.37.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 04:37:15 -0700 (PDT)
Message-ID: <82c982ad-20ae-4f36-8797-440828317d32@freebox.fr>
Date: Tue, 18 Jun 2024 13:37:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm: bridge: simple-bridge: use only devm* in probe
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
 <20240617-tdp158-v1-3-df98ef7dec6d@freebox.fr>
 <deirqqoap7ta3iwmmvg6uxzalfe22yirjp6et2a74ffh5ybi64@vekr6l7sl22c>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <deirqqoap7ta3iwmmvg6uxzalfe22yirjp6et2a74ffh5ybi64@vekr6l7sl22c>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/06/2024 00:28, Dmitry Baryshkov wrote:

> On Mon, Jun 17, 2024 at 06:03:01PM GMT, Marc Gonzalez wrote:
>
>> Once probe uses only devm functions, remove() becomes unnecessary.
> 
> Breves vibrantesque sententiae
> 
> With the hope of getting an expanded commit message:
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

I'm not quite sure what else to say.

Using only devm* functions in probe, the remove() callback is
no longer needed, since devm unwind will free all resources.

Is that better?

NB: this patch is not *required* but I thought "might as well
change it while I'm in the code".

Regards


