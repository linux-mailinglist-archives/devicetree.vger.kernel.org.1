Return-Path: <devicetree+bounces-19180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1193B7F9EE7
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 12:47:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 421141C20DC9
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E26421A71A;
	Mon, 27 Nov 2023 11:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nEg+V7LB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1794F187
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:47:05 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40b34563987so22965105e9.1
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701085623; x=1701690423; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3tA3boN6EG4yS9sARU9W7D9LN4ahR4KmDV0zSEVrFb0=;
        b=nEg+V7LBIaLbiPtIHMYgKvHXwNi2+b7HjwYtp7LGjgmofHn4ps0bc/zPZ52Y3QP0J9
         48ODicnGQzPeJ6xxCxxOoS3pnUOpxpZ26+h85QamkTcmylL4kBlbK4zmTO+SA4lNkm/I
         ldD+0iKWoGLLCiaqbllKuKtBz5BwbnfigdQ+OjLc2tff0ehjZAeERZULXuzZXowcIgEZ
         88LWwHs0aQIdiaGpnL3kF7QKjY/bwqJ6kU/vDonUj6MDD3rHlci5/dKC15FaT5+wVisl
         xAr2ykvWJbdpFrEVNH+B735//7T1pTO9LFMAD1+ayQ+lm7KzGmaq6Dy554aANxr4N0r4
         ZBxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701085623; x=1701690423;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3tA3boN6EG4yS9sARU9W7D9LN4ahR4KmDV0zSEVrFb0=;
        b=b/JvQs9mhjPn8CV+G9qZkb73DrXI43Mrk+EzLpap9o7eMBTBwSYS22tYlsfMr3F5dx
         T+MqoZ7qqm9W2Zgh0plZ2zEuZo/91lOcEwxQPcX3cUNmAXxS17PA5ozqMTcxvPJKWaVs
         susSuVRGcv93UVCo/B1iuQAYFm9mA27iSwtepvNhQoiBLtsui2URsOLCje+zDBI3K8cm
         wII1RX4d8/HNKroxEUGSeJoKwA9o0Ar9vDhL1G3/Azwi/yArTLXny36WumknlsPWnZ8z
         i1ZjnfP8hhls9xkApFrETooNMZCAgFd9YTJ60xqXcsLqMi/92YkiNjjQb829Vg57ozvd
         X45A==
X-Gm-Message-State: AOJu0YySKagG1LVoKUw6WUBcmXgv4N9Ki8WgZnhdNkz6MDBZ9o40CF+x
	SJ5q4iewICvwnADPIom6QNe/IQ==
X-Google-Smtp-Source: AGHT+IHFHh5s3DrJkF+ahST3zPitBaks2yNwrnyWDMDsu2R3tzZh+/mmIzmyi63lGqBAWzE/QyPjfw==
X-Received: by 2002:a05:600c:6d3:b0:408:37aa:774a with SMTP id b19-20020a05600c06d300b0040837aa774amr12532754wmn.17.1701085623387;
        Mon, 27 Nov 2023 03:47:03 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id s8-20020a7bc388000000b0040b4562ee20sm1681859wmj.0.2023.11.27.03.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 03:47:03 -0800 (PST)
Date: Mon, 27 Nov 2023 12:47:01 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org,
	ricardo@pardini.net, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: Aw: Re:  [PATCH 6/6] crypto: rockchip: add rk3588 driver
Message-ID: <ZWSBtZAwn_58UtcD@Red>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-7-clabbe@baylibre.com>
 <trinity-a0ee3146-f23d-4f6c-b29c-5fe446c4d4ad-1699797868421@3c-app-gmx-bs50>
 <ZVtVkACNHTcCjqGp@Red>
 <trinity-a9a71294-1396-43e4-9ed5-9ee2914ef093-1700838301802@3c-app-gmx-bs48>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <trinity-a9a71294-1396-43e4-9ed5-9ee2914ef093-1700838301802@3c-app-gmx-bs48>

Le Fri, Nov 24, 2023 at 04:05:01PM +0100, Frank Wunderlich a �crit :
> Hi
> 
> > Gesendet: Montag, 20. November 2023 um 13:48 Uhr
> > Von: "Corentin LABBE" <clabbe@baylibre.com>
> 
> > You are using kcapi-rng but the driver do not support RNG yet. (and probably never if I continue to fail having good results with it).
> > So it is normal values does not change.
> 
> which functions does the driver support atm? or how can i test correctly
> (and which kernel options i need for this)?
> 
> regards Frank

Hello

The driver handle AES(ECB CBC XTS) and hashes (MD5 SHAxxx and SM3)
For testing you need:
CONFIG_CRYPTO_MANAGER_DISABLES_TESTS is not set
CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y

Note that I have already got several report of random hashes tests failling, but I am near to have a reproducer.

Regards

