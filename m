Return-Path: <devicetree+bounces-19965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 254627FD6B5
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:26:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56AB71C21215
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 12:26:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B91C1DA5E;
	Wed, 29 Nov 2023 12:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WJy9qKOq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F008410C0
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 04:26:02 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3316a4bc37dso4605964f8f.2
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 04:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701260761; x=1701865561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qVd0mk/E8WAISTN9cwzB6Xw3Z2qd3DG26hbJb8vpXqs=;
        b=WJy9qKOqwTWuAsKDPzsTAQtS3T59gjjnEMvVxKazNthlBS0gUib8ZjiPE31DpWpzlL
         dKE/f5kC5MHnu7lqeWfUZAt7eKjHgIDr+cR5LR9EniB06B7iuALeXxUoRdjVxb3oQdoA
         wKFClJMZtlvgbMArd/+WLrHl99S3IQ2K117KnmbZ18Tcz7C0bSd/mVoWFCMhcgcHhEc2
         ozlAwuM+LwiEnFdDIR7z3metlnBJJiE21mq4WPQbYNch2yLraDMVRarSeaBqmIC6XDpF
         28k47PwlGCZIo05I4DLQk5AkwDhmLfuu5v1mwPUWE10TcfihI49aY+GI6zlWtvybYLGf
         3ZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701260761; x=1701865561;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qVd0mk/E8WAISTN9cwzB6Xw3Z2qd3DG26hbJb8vpXqs=;
        b=l+mNCuqQLffOPHF2FatOWSdKY8LSYim/qnqckYj075Ofymhzvc/xmLqu6TXc87ybYo
         EHt/ppqnZ5HW8M9AfRQyVWJ1tLlbuBCvxBuHAx2QqZqYgwSClT4o33PMt6cWws3mgoYL
         h3tS8g8lrmg+K4z1Ar4ladD6gLJ1vq8P3YGBooFcAx3y1zj5XOAc+8TMsuOhDpUbejsw
         bO+ZM6T00cLMoaajizyQu1IgkSvtvzD3CmuFTbiWzuZO8XfZBNhv8j+m1GIT0C5ve6Y+
         /PJsAfyu0vTyrD1k+sT1dSXQq79HAYjop3+zEO7G0j8FHW9kfOuW+3k8VmwaZ/ZhrBii
         YOQA==
X-Gm-Message-State: AOJu0YwkPPFJj1ALIqKcrtSHbRQUuc1W6OIGsmG+OuM7AUt92VN2RKRl
	YolZ2uPJvUePCemtU6SX8JlRRA==
X-Google-Smtp-Source: AGHT+IHQ3EA5vBpnyDFB4fnqV7h4/enCyNJtRFRN4wtxlHs+OMVVOZDfwzbw0/OUV/fl7njjlBzgEQ==
X-Received: by 2002:a5d:46c1:0:b0:333:1077:b35c with SMTP id g1-20020a5d46c1000000b003331077b35cmr3785511wrs.47.1701260761421;
        Wed, 29 Nov 2023 04:26:01 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id n8-20020a5d67c8000000b00332e84210c2sm15542543wrw.88.2023.11.29.04.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 04:26:01 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 Kevin Hilman <khilman@baylibre.com>, Rob Herring <robh+dt@kernel.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 zelong dong <zelong.dong@amlogic.com>
Cc: linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 yonghui.yu@amlogic.com, kelvin.zhang@amlogic.com
In-Reply-To: <20230914064018.18790-1-zelong.dong@amlogic.com>
References: <20230914064018.18790-1-zelong.dong@amlogic.com>
Subject: Re: (subset) [PATCH v4 0/3] reset: amlogic-c3: add reset driver
Message-Id: <170126076055.2880660.13057388884278592366.b4-ty@linaro.org>
Date: Wed, 29 Nov 2023 13:26:00 +0100
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

On Thu, 14 Sep 2023 14:40:15 +0800, zelong dong wrote:
> From: Zelong Dong <zelong.dong@amlogic.com>
> 
> This patchset adds Reset controller driver support for Amlogic C3 SoC.
> The RESET registers count and offset for C3 Soc are same as S4 Soc.
> 
> Changes since v1:
> - remove Change-ID
> - run scripts/checkpatch.pl and fix reported warnings
> - sort dts node by base reg offset
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.8/arm64-dt)

[3/3] arm64: dts: amlogic: add reset controller for Amlogic C3 SoC
      https://git.kernel.org/amlogic/c/a5468f5ea9a01acf29d02745abae7b82482989d4

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


