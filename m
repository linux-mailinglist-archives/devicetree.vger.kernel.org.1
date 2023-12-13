Return-Path: <devicetree+bounces-24695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17ABC810EFD
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:53:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ABD3CB20B7A
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 10:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7886022EF1;
	Wed, 13 Dec 2023 10:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aHKu3hja"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 532E398
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 02:53:43 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-33330a5617fso6858238f8f.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 02:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702464822; x=1703069622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9AVoR1uUGIhIdM0n8dOyva32mu3rDmn4zFFnMFBtCJg=;
        b=aHKu3hja6RKi1QETcTzcsQlMx22KOP00reYI/dJ2yTwfH1vRgXm3ZIMbNOOeLCbDd1
         Ldg1TLNxIOEkFjUj4Gi6pqcKbbhWvJzsP5GrmPlL0l9kfnTYUKyTnN1akzNBF1ChMN3J
         ztgkQKqvb/15GgM1jWrfDHczJURGQ3WCUoig4AKnuy6belJuYH9mMEBLPDur7Z+7k6ss
         qlolCJgKtXhUTblSeAOodAhcxx5vCevRDlZ7g1Xv7ol0RUjk4H7oLPjriFAOPSEF28mt
         kgJ4cym7IhQaIAgdRVhnYtJ3uV49XK9zeZ0I4yXmMjXK/59khmE5TVcAvIh8mEsePIK7
         dkvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702464822; x=1703069622;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9AVoR1uUGIhIdM0n8dOyva32mu3rDmn4zFFnMFBtCJg=;
        b=XFZgfKq3Soh6XgCJGSTIsefXjhXCLESG/tP+Zw+A6/x9mUlVH1hh27SmnoRrWmPnHo
         A0vkNqj6z531fqGKGGl7HxRODCGRs3UQDJqNXQLiUbsshJzfIk4HYbwgI9HGY/9nTW0o
         NfAV6DYPR71di0mQOVj3lb7qFdxUVdxdxQyNZim6c8hWV9VawlEXx4zLMvKS+u4hh8d+
         rr4LcXwlB1b8aMGae3oUozzPJmf7/PiIWmp3OiKQGl9Q5SiOd7fZNPFVrBQE+niI8mZk
         0bI83BKC62erO5I15QKxNNFA7U0QYXeQLQl8kOXVPU+CYrE3LFmcvyKIOhdky8m9OaIo
         4dIA==
X-Gm-Message-State: AOJu0YzaeMet0JcLDLaU5EkQU+6WPnE2kk1VSFBxPHVoKvoxgEi0gUtU
	CE82KM4j9qB0iqNVdvEh4aarZQ==
X-Google-Smtp-Source: AGHT+IGuvTKym5GzSffelzfLsWJCS5S1+vASIQD6/JxyNREq8dMO2z30KqWMSeSA3exaeQI7tcTbNg==
X-Received: by 2002:a5d:6811:0:b0:332:ea44:8989 with SMTP id w17-20020a5d6811000000b00332ea448989mr4509472wru.30.1702464821704;
        Wed, 13 Dec 2023 02:53:41 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id dd14-20020a0560001e8e00b003364277e714sm374761wrb.89.2023.12.13.02.53.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 02:53:41 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Brian Masney <masneyb@onstation.org>, David Heidelberg <david@ixit.cz>
Cc: Rob Herring <robh@kernel.org>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231212200934.99262-1-david@ixit.cz>
References: <20231212200934.99262-1-david@ixit.cz>
Subject: Re: [PATCH v2] dt-bindings: panel-simple-dsi: move LG 5" HD TFT
 LCD panel into DSI yaml
Message-Id: <170246482066.875647.5449342592487224704.b4-ty@linaro.org>
Date: Wed, 13 Dec 2023 11:53:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Tue, 12 Dec 2023 21:09:17 +0100, David Heidelberg wrote:
> Originally was in the panel-simple, but belongs to panel-simple-dsi.
> 
> See arch/arm/boot/dts/nvidia/tegra114-roth.dts for more details.
> 
> Resolves the following warning:
> ```
> arch/arm/boot/dts/tegra114-roth.dt.yaml: panel@0: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
>         From schema: Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> ```
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-fixes)

[1/1] dt-bindings: panel-simple-dsi: move LG 5" HD TFT LCD panel into DSI yaml
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=fa97e21e74df5ef63a442e4cfd13fd113fc8196e

-- 
Neil


