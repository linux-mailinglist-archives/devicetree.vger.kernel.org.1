Return-Path: <devicetree+bounces-15677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F21FC7EB367
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 16:22:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E3CE1C208A5
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2B0941743;
	Tue, 14 Nov 2023 15:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B063FE27
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 15:21:57 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECDFA11A;
	Tue, 14 Nov 2023 07:21:55 -0800 (PST)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-58a737957d3so285464eaf.0;
        Tue, 14 Nov 2023 07:21:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699975315; x=1700580115;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J15sEa7zSm5u7jaEkjftn3VCZWspXJk6JRoiiJKaDmk=;
        b=ZQ2lwwq0HjEbFuJFeUlNE2nacQ7OSoleZomGaIdhkGC27C9SuofrXHoC5JUxTGca5J
         XJ7Q4rdk4Nop9X7IEiNEbmpZ1yHbwgvj85WUwYE0EjYTM7J0thZ8Jd9+WbQY/g27o9oj
         EEHbEHQdo8oDPUOlcReLxJhNAIMOxCUoQa3EC+5qLQPy1K6GQIhf4eU5a7t3ZDABYmEB
         jswTfO4n0+jhVUKJUsAgjbMN1cMmjTgehD+B21xSRqyrTunsIPq8qv6hYTmBfn7Tm7no
         yYpGymrpNwqE5Sie9xko3ukyHPbSe7c0+GcJvhSqJp5hkaNgjSHeJBjQObm71oFU6TW+
         jJeg==
X-Gm-Message-State: AOJu0YyVHkn+0OmZn99GohQTKPzhj1LPsT9mILVFUCom9EHPodUmJqeU
	5YbOV6hjYTiuCggTVWVFSw==
X-Google-Smtp-Source: AGHT+IHMXoKiyNylaIR+nukyu3BetutomYr9uKiRQo/BwHNE+zS/4TczHyQs3K2bQgl/iosqC+11wQ==
X-Received: by 2002:a4a:b588:0:b0:58a:67b1:47ca with SMTP id t8-20020a4ab588000000b0058a67b147camr2790634ooo.6.1699975315188;
        Tue, 14 Nov 2023 07:21:55 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id u188-20020a4a57c5000000b00587bf56d2desm281035ooa.26.2023.11.14.07.21.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 07:21:54 -0800 (PST)
Received: (nullmailer pid 1872956 invoked by uid 1000);
	Tue, 14 Nov 2023 15:21:53 -0000
Date: Tue, 14 Nov 2023 09:21:53 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Inki Dae <inki.dae@samsung.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: gpu: samsung-rotator: drop redundant
 quotes
Message-ID: <20231114152153.GA1704371-robh@kernel.org>
References: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>

On Sun, Nov 12, 2023 at 07:43:59PM +0100, Krzysztof Kozlowski wrote:
> Compatibles should not use quotes in the bindings.

Unfortunately yamllint skips checking these due to a bug handling 
bracketed lists. There's an open issue for it[1].

> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/gpu/samsung-rotator.yaml         | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>

[1] https://github.com/adrienverge/yamllint/issues/516

