Return-Path: <devicetree+bounces-19124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7D77F9C7D
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:17:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFD361C20B79
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AB8013AEA;
	Mon, 27 Nov 2023 09:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="a01z+9wn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 887CD189
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:17:30 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c878e228b4so48415141fa.1
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701076649; x=1701681449; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=bEIoGh5O/BzqSyDdvmfvLEUiDH4K1xP/uQvVNiufgcU=;
        b=a01z+9wnmmRIlXAKMaYLJ9I//hXNmqrHWLIPX9pCbGiV2nzr+U5fR0zyy1AjH9O1Pq
         g8GKW2mBUNJCBFTsRrqEZRM0MnRzZQjJgWEtTAzxr0oJt3VWw3L2P1cMpI0rn1Qbf8Qi
         Ztxz5dnrvYDXyvLRwcJuPWsHdXp/dXTR2Y/tMm8DyccHycJA5fEsB64VruFkuy15s8ut
         /spTQQSsfESK0BjiBy6TSYvv47KW4boe3loy5YT3tjitdEVLDkr+8zB9If9qGMsLjJra
         y1uV0WEBnlGD10F6wAxsCSb2QWcffaSju4Coy79dtbZQ2P7nZ/mL/lH8TdSmIoWmeNWF
         X91w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701076649; x=1701681449;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bEIoGh5O/BzqSyDdvmfvLEUiDH4K1xP/uQvVNiufgcU=;
        b=hl8rB8lZaJCmXDbMzRP7VwMAMSZfLVKqvzO9f1yHQyYhzYP3kVAekiMgBkVdyORAZk
         p2hn7zSFR2otPd80XukVG2pDUULYoey3u2qPaarbobODpISiqpoPl+FN3em1OSOeNWAG
         T4xCfXZg32JcKKXxXDROzsh9Ue84jr43+BXPQNNbt/2KRl90w2xZr1jDVzSLDHZ4lo3I
         Cf3+QzVcrJfWkWRDRWNU1Hk6Im2yS985y6g5nGX6eEdaINriJ3OhX5aHV4VrSDZhrzEA
         xYdN/DpNmGzumC+Wncg4wLdvr+3oIaKDjDQhdmZ7LqUdgijATn6FgDWLS3OCHR6rQ84n
         9uVA==
X-Gm-Message-State: AOJu0Yz1dckHGrUb1sgUd0TPBgAiNTHxX+V2ognTTY2AxV4Y111M416S
	xCGPWxhSKSqRlntRo2j/3tOL7Q==
X-Google-Smtp-Source: AGHT+IGy/JmtaB1RId0/b5RlEgolNkKFgTxdlq7MWzbR6GDUGon0doGnidwbBevghTckT6+7ygTSrA==
X-Received: by 2002:a2e:8387:0:b0:2c8:8745:8f0b with SMTP id x7-20020a2e8387000000b002c887458f0bmr6234114ljg.47.1701076648575;
        Mon, 27 Nov 2023 01:17:28 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:fd31:fff0:e26c:d593])
        by smtp.gmail.com with ESMTPSA id dm16-20020a0560000bd000b0032d09f7a713sm11439739wrb.18.2023.11.27.01.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 01:17:28 -0800 (PST)
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
 <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-8-95256ed139e6@linaro.org>
 <1jbkbjdxk8.fsf@starbuckisacylon.baylibre.com>
 <b23ddc3b-d995-4cd6-91f2-3efa59d345a5@linaro.org>
 <1j34wvdtux.fsf@starbuckisacylon.baylibre.com>
 <41a1246e-c885-460a-8208-16844e95e1ae@linaro.org>
User-agent: mu4e 1.10.8; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: neil.armstrong@linaro.org
Cc: Jerome Brunet <jbrunet@baylibre.com>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jagan Teki <jagan@amarulasolutions.com>,
 Nicolas Belin <nbelin@baylibre.com>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Remi Pommarel <repk@triplefau.lt>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v9 08/12] clk: meson: g12a: make VCLK2 and ENCL clock
 path configurable by CCF
Date: Mon, 27 Nov 2023 09:38:28 +0100
In-reply-to: <41a1246e-c885-460a-8208-16844e95e1ae@linaro.org>
Message-ID: <1jjzq3zhaw.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


>> 
>>>
>>> I suspect mipi_dsi_pxclk_div was added to achieve fractional vclk/bitclk ratios,
>>> since it doesn't exist on AXG. Not sure we would ever need it... and none
>>> of the other upstream DSI drivers supports such setups.
>>>
>>> The main reasons I set only mipi_dsi_pxclk in DT is because :
>>> 1) the DSI controller requires a bitclk to respond, pclk is not enough
>>> 2) GP0 is disabled with an invalid config at cold boot, thus we cannot
>>> rely on a default/safe rate on an initial prepare_enable().
>>> This permits setting initial valid state for the DSI controller, while
>>> the actual bitclk and vclk are calculated dynamically with panel/bridge
>>> runtime parameters.
>> Nothing against setting rate in DT when it is static. Setting it then
>> overriding it is not easy to follow.
>
> Yup, would be simpler to only have parenting set in DT, since it must
> stay static, I'm fine trying to move rate setup to code.
>
>> To work around GP0 not being set, assuming you want to keep rate
>> propagation as it is, you could call clk_set_rate() on cts_encl (possibly w/o
>> enabling it) to force a setup on gp0 then clk_prepare_enable() on
>> pxclk. You'd get a your safe rate on GP0 and the clock you need on pxclk.
>> It is a bit hackish. Might be better to claim gp0 in your driver to
>> manage it directly, cutting rate propagation above it to control each
>> branch of the subtree as you need. It seems you need to have control over
>> that anyway and it would be clear GP0 is expected to belong to DSI.
>
> Controlling the PLL from the DSI controller seems violating too much layers,
> DSI controller driver is not feed directly by the PLL so it's a non-sense
> regarding DT properties.

Not sure what you mean by this. You have shown in your the commit
message that the DSI clocks make significant subtree. I don't see a
problem if you need to manage the root of that subtree. I'd be great if
you didn't need to, but it is what it is ...

>
> Setting a safe clock from the DSI controller probe is an idea, but again I
> don't know which value I should use...

You mentionned that the problem comes DSI bridges that needs to change
at runtime. I don't know much about those TBH, but is there
anyway you can come up with a static GP0 rate that would then be able to
divide to serve all the rates bridge would need in your use case ?

GP0 can go a lot higher than ~100MHz and there are dividers unused in the
tree it seems.

I suppose there is a finite number of required rate for each use case ?
If there are not too many and there is a common divider that allows a
common rate GP0 can do, it would solve your problem. It's a lot of if
but It is worth checking.

This is how audio works and DT assigned rate is a good match in this case.

>
> I'll review the clk parenting flags and try to hack something.
>
> Thanks,
> Neil
>
>

