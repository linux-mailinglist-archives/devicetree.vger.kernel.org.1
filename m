Return-Path: <devicetree+bounces-19109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AB97F9B83
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:19:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D40781C208ED
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 08:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DBF311C9A;
	Mon, 27 Nov 2023 08:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uE4A3wjM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63A3B181
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 00:19:03 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c5056059e0so50484981fa.3
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 00:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701073141; x=1701677941; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y2uKGv73n9zPoCLwWnUxIRJtwy7BLdOeRGasRuwlLaI=;
        b=uE4A3wjMo4CkVq103Rlpv7zNjK9hI+Pn3XTN6sxwxdVjZywhlMvFiJB6zCqt1ywf5L
         opZqbGY1r7GTU3UlNPymHDtyW1lBOy7DS+cw+caJFlaOtTDKLY2LKLhm5Fr523d/hkHV
         eiVhgaPEkbKFuUHjR+dEI001nmcAIx7gUshpKnK3RQpnczryRhcDGzVX6iaKhYy9yLk+
         kwQAEopheE9qHtDZE3HmtwnC0XpQnl7puWz9hLQDQw6gUQ0nYAVdlGKcyDjZZZK6SqDU
         i3roQYHBDUum7kjiJZhUlcEJdmp6OCaMTZ6+Z5E6aZwe2FX8iBiYXVIVr7eiDp4OUGOU
         qv7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701073141; x=1701677941;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y2uKGv73n9zPoCLwWnUxIRJtwy7BLdOeRGasRuwlLaI=;
        b=nqcdJcXpJjOhR33PsKukkRx5lNc/+SQ3K8z3A8LiyqQREqsBVjz3WalzsYDGQCnhEI
         95fMKfvXLwDVd6vuQCxEVWbHhlGUJTYkv3a8D7Yw9kfm9tOZQQ01dUtbu156LmiR30aN
         cHyh8TfdawPPf21onGw4yntjMLzBwYWBL2X2RimfSfzmT/VY7IE8ReHY7hApQj8NUVIS
         w+sk8hLBQETmE7Evy8Rq6sd2qP9vAasBw87ec1s4HwlbEL4pHb8QR1jKoIF0IL1vzQ3n
         gn9qi+hhEnj7kwp6pEeYV3KfU6eyPi3traOCQwdqr6+ChrokRoDfJZZIsn26GjSX5Lll
         KVZA==
X-Gm-Message-State: AOJu0YwKQ+FBPMeRGTtzJw8jafFSNmuo20bpNx34ZMjGTPEGoGvIbqwt
	quDgvjK1SONMa3xRXkr2RBYRDbrBejE+A5vYNSWGkgn4
X-Google-Smtp-Source: AGHT+IF1gTyhMEF3F7i1LRqkM6Hdwo5CzhiNmHsO3on2+Ni4UBjAsOeQokHh2iH61R/I1gEzM9biJw==
X-Received: by 2002:a2e:b5d3:0:b0:2c9:a05c:547d with SMTP id g19-20020a2eb5d3000000b002c9a05c547dmr1718714ljn.34.1701073141585;
        Mon, 27 Nov 2023 00:19:01 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id be7-20020a05600c1e8700b00405442edc69sm13516568wmb.14.2023.11.27.00.19.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 00:19:01 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Nicolas Belin <nbelin@baylibre.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Remi Pommarel <repk@triplefau.lt>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 "Lukas F. Hartmann" <lukas@mntre.com>
In-Reply-To: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
Subject: Re: (subset) [PATCH v9 00/12] drm/meson: add support for MIPI DSI
 Display
Message-Id: <170107314034.1083800.1585049254380328915.b4-ty@linaro.org>
Date: Mon, 27 Nov 2023 09:19:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3

Hi,

On Fri, 24 Nov 2023 09:41:11 +0100, Neil Armstrong wrote:
> The Amlogic G12A, G12B & SM1 SoCs embeds a Synopsys DW-MIPI-DSI transceiver (ver 1.21a),
> with a custom glue managing the IP resets, clock and data input similar to the DW-HDMI
> glue on the same Amlogic SoCs.
> 
> This is a follow-up of v5  now the DRM patches are applied, the clk & DT changes
> remains for a full DSI support on G12A & SM1 platforms.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.8/arm64-dt)

[02/12] dt-bindings: soc: amlogic,meson-gx-hhi-sysctrl: add example covering meson-axg-hhi-sysctrl
        https://git.kernel.org/amlogic/c/beb9c30ba4188e481991d91124c554f61a7ec121

These changes has been applied on the intermediate git tree [1].

The v6.8/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


