Return-Path: <devicetree+bounces-25047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D9950812115
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 22:59:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 178711C20B6E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 21:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41A5A7FBC3;
	Wed, 13 Dec 2023 21:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rARAAgfg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6726F4
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 13:59:38 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40c31f18274so70971875e9.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 13:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702504777; x=1703109577; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5R8Y7jc9NLGPyREc0JUtb8eKm2rIjrA9+VPMF6ejgso=;
        b=rARAAgfggpKaYBcM/H+eaFDB6OIRzvUjMWoS7knwOlkZWyflKfmHqMebXrfScfvond
         faWMupomuwqUe7d8opNtIYgTVM8u9b5NtI0phgapI9bzmBpP3be1ur7XXo0bP1AOcvzC
         a2Nz4K16496ufgzpcmXZ27xDqlGvGDzKX/UOPf6LjAGabLDyd14F3izWsX4EL609X9pb
         FB/qrKN36oYpvz9UaV2AqBoZpHQGt3Ib4AyEwMKzYL2RBt3lK0L0fEsB/bTJUrizz7r6
         ZFs7eZY7gkZqlaEkFufyFhNT1Z1bxC+beVGXRDlubk8EncaQNjQn78wHVP/mqdbZa9d+
         RfNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702504777; x=1703109577;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5R8Y7jc9NLGPyREc0JUtb8eKm2rIjrA9+VPMF6ejgso=;
        b=EqSyBpQEA58LAs0FF/qy1HG7Ydw4/9sFIZ6NaXVzGXTigIIjN3yLW2zrlb2P1y0ced
         vrymk8/cPUVY9Ix9QPHEHcYdRTzWqL0XYGSi8LHomUQt9KeTi0mkDD54ytlIfHsFOZCA
         T7JDXD/yrblR5ESzwY4rXV6nFO9sxCNL7FABjXpA1xOkU23S5MpJBsiSh3+bfdVH1mb6
         yXU38wDCOMDzsvolNKXAwPtrDHwky8rf/2zTGmDndrZ6+tK/lVZi27HAyHlYKTc2GVXR
         Jz/9CWatdyh3Cw26JE0dScMb8m3KKRbyJ1GK0LBLSUbeYA2d6ycwTKxeZdDlRQspxQKj
         PHWw==
X-Gm-Message-State: AOJu0YzQbd5WS89WbQFAFXAExQ+5ZfU5dsfX5yNzgKNcacZu3pBtmkEl
	FR8JHBuhVRm6+J5Nr73/2fniwA==
X-Google-Smtp-Source: AGHT+IH8WBMrcy2RpgDyVtXzThQj76QcUxVNUDU/RnHWzVkOCspImqThjEx7TAvmErkgFn+mKeaRYg==
X-Received: by 2002:a05:600c:1f1a:b0:40c:314a:42e with SMTP id bd26-20020a05600c1f1a00b0040c314a042emr4345008wmb.246.1702504777134;
        Wed, 13 Dec 2023 13:59:37 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:ac4e:a5fe:7f71:8d59? ([2a01:e0a:982:cbb0:ac4e:a5fe:7f71:8d59])
        by smtp.gmail.com with ESMTPSA id k40-20020a05600c1ca800b0040b45356b72sm24189351wms.33.2023.12.13.13.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 13:59:36 -0800 (PST)
Message-ID: <98e93632-45e2-4d7b-bde2-4326d07b3c25@linaro.org>
Date: Wed, 13 Dec 2023 22:59:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/4] Add displays support for bsh-smm-s2/pro boards
Content-Language: en-GB
To: Rob Herring <robh@kernel.org>,
 Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, michael@amarulasolutions.com,
 Amarula patchwork <linux-amarula@amarulasolutions.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Conor Dooley <conor+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Jonas Karlman <jonas@kwiboo.se>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Maxime Ripard <mripard@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Robert Foss <rfoss@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
References: <20231213140437.2769508-1-dario.binacchi@amarulasolutions.com>
 <20231213175330.GA1582432-robh@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <20231213175330.GA1582432-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Le 13/12/2023 à 18:53, Rob Herring a écrit :
> On Wed, Dec 13, 2023 at 03:03:41PM +0100, Dario Binacchi wrote:
>> The series adds drivers for the displays used by bsh-smm-s2/pro boards.
>> This required applying some patches to the samsung-dsim driver.
>>
>> Changes in v6:
>> - Drop patches:
>>    - [06/10] drm/panel: Add Synaptics R63353 panel driver
> 
> The binding should have gone with this. I'll apply it then.
> 
> Rob

Oops I missed it,

Thanks for applying it

Neil

