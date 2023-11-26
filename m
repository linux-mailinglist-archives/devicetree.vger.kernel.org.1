Return-Path: <devicetree+bounces-18950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B297F92CA
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 14:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8E98281103
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 13:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3008D262;
	Sun, 26 Nov 2023 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech-se.20230601.gappssmtp.com header.i=@ragnatech-se.20230601.gappssmtp.com header.b="ngN2zc6V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CDA9EE
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 05:04:48 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5446c9f3a77so4481689a12.0
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 05:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20230601.gappssmtp.com; s=20230601; t=1701003887; x=1701608687; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KFWHjjiunXmcW+8F51BgQIKnSbwUITjJ+eyCGFp0Iqo=;
        b=ngN2zc6VK0frURAnjfKb3TdoAy5RWZ0m62Z0kdzvpDMLzwxexZmAR3weLPnveZiV8k
         oaavevSgLQXMnkiKFH94Ut97a7L/79Wq1TI/QsfpaomSTKAhYqpaAyA2IvwSrYD5NThR
         U/U7NOGmC8iKzvRHSsIUCKipwvnwXIXSKrlEewJakqXGYbbgN6GeCnNfSstv6mO4CPfH
         rYaRUsqTKQm9YULwL+yw8BqAZpelCQaZVv6AI+CFy75v/HboYLqM6Q2hrtnSoACgek8c
         XIk8kFODyLFFD/CbYAxzxg+Vmpcy6q47O2C2+zUCkcvNpGdqmGxw2VnEkI26AFKIQVXZ
         wCvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701003887; x=1701608687;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KFWHjjiunXmcW+8F51BgQIKnSbwUITjJ+eyCGFp0Iqo=;
        b=VGy9MrTstMUbC6Rb67pf53IoogsEN4iJUbXXPKbaZPahcN0HySr/PlE1/LYfT89ovL
         Me1ts+2xx7uMb/O/b4e0/4Du79fRfKFGzNmRSctqMVGC+w5WIfPYnf13cbXFuFgntFfY
         oXDOQuGybm8hK6PTsrNmROB39bCgAJU4666NgQodmRDsETkFbu4P3zrkZWokgExPXG3v
         NJnr3QTKS27jOX5mcB/L8d59W8uD/eRg/rLurU9fXFFUsqwO6ZbFxn/4wvh0hmzRK7vG
         34c70KI6PihO4gfBgJKSlGNVw6T+w+YBbmvmjawQ+BbGbHh11x51v5cQkBLrXR37HtLI
         yjTw==
X-Gm-Message-State: AOJu0Yxiv7h6Y0KPNTsGs8TtOBbxgcFrFrg0y/QA3ppF3+m86cX3yVoo
	/idoSiBeFhXf31BeTdquC+dslQ==
X-Google-Smtp-Source: AGHT+IHAu3Suh+5tcM8I9nZaSbdUg2NjA3ejllgK0kXlTOszeBS5N5MrB6WhsK2oQMf9MKU0v4h1XA==
X-Received: by 2002:a17:907:d407:b0:9d0:51d4:4d87 with SMTP id vi7-20020a170907d40700b009d051d44d87mr7954929ejc.62.1701003886867;
        Sun, 26 Nov 2023 05:04:46 -0800 (PST)
Received: from localhost (p4fcc8a96.dip0.t-ipconnect.de. [79.204.138.150])
        by smtp.gmail.com with ESMTPSA id lv20-20020a170906bc9400b00a0f78db91c3sm56148ejb.95.2023.11.26.05.04.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 05:04:46 -0800 (PST)
Date: Sun, 26 Nov 2023 14:04:45 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: renesas: r9a09g011: Add missing space in
 compatible
Message-ID: <ZWNCbQS4N2ucsw6w@sleipner.dyn.berto.se>
References: <20231125233242.237660-1-niklas.soderlund+renesas@ragnatech.se>
 <08b00968-d361-4e95-8f66-4791c25c45a5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <08b00968-d361-4e95-8f66-4791c25c45a5@linaro.org>

On 2023-11-26 13:42:34 +0100, Krzysztof Kozlowski wrote:
> On 26/11/2023 00:32, Niklas Söderlund wrote:
> > Add missing space in compatible property and align style with rest of
> > the file.
> > 
> > Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> 
> These are trivialities. Squash per subsystem please.

Happy to do so, but could not figure out a good patch subject to match 
current style to hit both ARM and arm64. Would "dts: renesas: Add 
missing space in compatibles" be appropriate?

> 
> Best regards,
> Krzysztof
> 

-- 
Kind Regards,
Niklas Söderlund

