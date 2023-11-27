Return-Path: <devicetree+bounces-19110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8E37F9B88
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:19:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A680B1C2074B
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 08:19:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E31E125C4;
	Mon, 27 Nov 2023 08:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m9SsTyS0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24CAF124
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 00:19:05 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c875207626so47948271fa.1
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 00:19:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701073143; x=1701677943; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wu9Mk96O+s9apHEY/wkOo5PiW0m4TNq81XUGjVgZkHY=;
        b=m9SsTyS0s98aHV8ln25YF0JT75N1DxEPM/fBaV5kPlLTgSd4CyS60U/lhKHUFCnqNv
         +DDln2LB7M9cKUtxEwenL+u6Z0VlFU76jWFhGVQFFDQI5aCbrC7RJ2PRaolMhR4dgMvB
         X5VpMRQlwKnDG7HqpTIRa2IwfK8iHf3rMFoGqfom5dMdFo7v8q6EYN3fhEAoetxPDNJ0
         MvTfM11jhDpppWr/YeGHlep6zWgeyVBlZDtlgHnhozN8SDCOWejt/ce2WVlN7XyHlKNv
         CVOl1XUQtmqOFR/ry3KvmslqS97+VDu7Iu/IOfmrDEczYgKRm+lxpVVP1ChoUyXLfBbb
         lOBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701073143; x=1701677943;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wu9Mk96O+s9apHEY/wkOo5PiW0m4TNq81XUGjVgZkHY=;
        b=L6VgfjcC6INEUnU8yFf1eH+ECVBjL3tK5vPXokFpcyZELpeqkxm4CxbWxocvP+M3bd
         KhgUjCqXWIt2PxNLzKcxf7Uv5Iq506GAPuMDq92DkQ0VGy7v7RimWXu2OAVEH3t5lJH2
         +TmY14jV+a7BcczVjFVlEohFSfKMjnHjIZpZhDUeGXx1kxFyZ2a5/oCPzmM4Jt9GMs9H
         2qSUQkQKdXXF042Mcs96s22fxAWjDRp1TtA/fnxgCwj0yglmR4nNPUiqmJIvHLssw+4l
         FfSlH/KF5L1MAz75hSCH1HbyE27tbTcSUhEu87SuS8ke9UG1AkmtLjv7IZYK5TPSE3UI
         LtwQ==
X-Gm-Message-State: AOJu0YyOt28w7hF69kHtzIgyzXJDRH0XhdWbQeCR2bfq3pZ5gY67Gos8
	AbBAOAKcnsL/uhduS+BlbXO+9i/qo7mpl8h48UYhKo4s
X-Google-Smtp-Source: AGHT+IGDxcSkbC3AUO/tKAy4+hS1vqUZ4qPAywCnudeSjQUPPsFylnyIVh+mXWyWIPbyzr0UEtVDmA==
X-Received: by 2002:a2e:9d8c:0:b0:2c8:744e:dced with SMTP id c12-20020a2e9d8c000000b002c8744edcedmr6794598ljj.35.1701073143490;
        Mon, 27 Nov 2023 00:19:03 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id be7-20020a05600c1e8700b00405442edc69sm13516568wmb.14.2023.11.27.00.19.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 00:19:03 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231124094700.58071-1-krzysztof.kozlowski@linaro.org>
References: <20231124094700.58071-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: minor whitespace cleanup around
 '='
Message-Id: <170107314264.1083800.3287643351535378638.b4-ty@linaro.org>
Date: Mon, 27 Nov 2023 09:19:02 +0100
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

On Fri, 24 Nov 2023 10:47:00 +0100, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space before and after '='
> sign.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.8/arm64-dt)

[1/1] arm64: dts: amlogic: minor whitespace cleanup around '='
      https://git.kernel.org/amlogic/c/35b47cefe8955f4c34fe45e5a06cb3376d6a8aa6

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


