Return-Path: <devicetree+bounces-2855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6324A7ACBC1
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 21:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E52AC281292
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C10DBDF4B;
	Sun, 24 Sep 2023 19:57:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6450ADDD8
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:57:48 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F228B83;
	Sun, 24 Sep 2023 12:57:45 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9ad8d47ef2fso619503666b.1;
        Sun, 24 Sep 2023 12:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695585464; x=1696190264; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=owBEiPjo8kmSbGl4IiHWAo4a1hvNNIGG1E0LxgF/aws=;
        b=TWFPw/UCRfw3dwqDzBto2VxyymbryZ04w26qzHHYUnmyPdzwpa4pHOq57FxnXP2MSm
         7xuqZO8zxfIuLIgvu0T3x23SjDFE1iPdLfiM3K9NJgj+jZqgycscBGg6SSmuUawaSWIY
         WwOs7hQyh2nEo7XaqUIhopNebJu0p67lucRTqgQwIWAd6sjMW/putAoNhKwgUcH6bwA5
         J7sWYtIh1kfVmMA1WrtjUgFTH5KKv7OBUw66p9DPADBflSdnM+a25CwDHzXs3HpQ0lMm
         Ts4HQWuHEyd2jfh8icFOE4wLidfLxwva6fSExn5Omtwz3YlJ5123r8oMuCa3Q/vW1mR4
         bqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695585464; x=1696190264;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=owBEiPjo8kmSbGl4IiHWAo4a1hvNNIGG1E0LxgF/aws=;
        b=rSQBPNObS5JujoI2+5X3/MOchMkfbYC8+XfDPxXEfUjo21m3i/rf2DUc8NIEtpoxjB
         n4phZ1fbvR35GnOonYStkQvhVZLyHMGNtfD/pfDmnePbxKXf3UdHn6upfRQIhT/6rzZw
         Pp1Xjs3lgTVfxJiTzDf3HrxfgupefkB8ys9dnjb/DBMn92MEMu9sCRhWkN034Uog4qpa
         PNPRboBFK7ftUjUbLdioOOf1T84/9BvbpWXLvGLgzLLPOmF8yoTpkjc2xDXP09Pz1iff
         HDB9yxH5FyV+66yWWGnDs3OD+fO8eBw0K08aVlDhOdIsXHTzehIqINwiSf4chaI04cjR
         ColQ==
X-Gm-Message-State: AOJu0Yyl9HIfB+ZBKbpOitX+2P3q9K5gTYYFTJltqG1BPrxDr7xypbD8
	c32U86IkrHqcQPspf0Fpnt0=
X-Google-Smtp-Source: AGHT+IHgRbH+oZxXnW7DSFcjW0FdkC++jBJp1GLixNan10k/I9XRdW5IA9Qmek9gs6wKNMStmzBCgg==
X-Received: by 2002:a17:907:b1c:b0:9ad:be8a:a582 with SMTP id h28-20020a1709070b1c00b009adbe8aa582mr3926830ejl.21.1695585464270;
        Sun, 24 Sep 2023 12:57:44 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id t2-20020a17090616c200b0099d45ed589csm5284209ejd.125.2023.09.24.12.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 12:57:43 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>,
 Martin Botka <martin.botka@somainline.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>, Alan Ma <tech@biqu3d.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Martin Botka <martin.botka@somainline.org>
Subject: Re: [PATCH v3 0/2] Enable Security ID for H616
Date: Sun, 24 Sep 2023 21:57:42 +0200
Message-ID: <1942306.PYKUYFuaPT@jernej-laptop>
In-Reply-To: <20230912-sid-h616-v3-0-ee18e1c5bbb5@somainline.org>
References: <20230912-sid-h616-v3-0-ee18e1c5bbb5@somainline.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Dne torek, 12. september 2023 ob 14:25:11 CEST je Martin Botka napisal(a):
> Hello,
> 
> This patch series enables Security ID (SID) support for AllWinner H616.
> 
> SID support is an requirement for few things:
>     - Thermal sensors
>     - CPU Binning ID (cpufreq will use this)
>     - EPhy
> 
> This patch series doesn't add support for the consumers.
> Those will come in the future via their own series.

Applied, thanks!

Best regards,
Jernej

> 
> Cheers,
> Martin
> 
> Signed-off-by: Martin Botka <martin.botka@somainline.org>
> ---
> Changes in v3:
> - bindings: Make H616 compatible fallback for a64 using items and enum
> - Link to v2: https://lore.kernel.org/r/20230814-sid-h616-v2-0-0267749b4471@somainline.org
> 
> Changes in v2:
> - Drop driver changes
> - Use fallback compatible in DT
> - Link to v1: https://lore.kernel.org/r/20230811-sid-h616-v1-0-d1dfc9f47b19@somainline.org
> 
> ---
> Martin Botka (2):
>       dt-bindings: nvmem: SID: Add binding for H616 SID controller
>       arm64: dts: allwinner: h616: Add SID controller node
> 
>  .../devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml         | 4 +++-
>  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi                     | 7 +++++++
>  2 files changed, 10 insertions(+), 1 deletion(-)
> ---
> base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
> change-id: 20230811-sid-h616-37b773e59571
> 
> Best regards,
> 





