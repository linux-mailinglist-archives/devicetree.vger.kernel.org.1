Return-Path: <devicetree+bounces-175718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2751AAB18E0
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 17:36:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21BBF7B337D
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 756F422FF30;
	Fri,  9 May 2025 15:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mu5I6qN+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF5822CBE9
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 15:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746804992; cv=none; b=RHzjPs3dlhy0zZSgdlQGk3tpNNrfEtw+jpXecytrugaZ8wg6IoxtEgTSV75hHn6jFd+o+gIfBbiPaZ3AoKw5jw6ulCLPeoEao+I9awDT4gidfttritKhiS5AZQmlmeghuaTGDcKtjJsGd1PbUv3tOuSWDwNb+66w1vBK7oaV/Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746804992; c=relaxed/simple;
	bh=1cQPManCRf2qssTtiyLAbSJojHVEj61IhLqzlxHSmIg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QxMJ1eWGQMR2/uQALxVpJowq9EcxbYSOOqNh79V3/mKrRkG6dXy/lIlqY7Smm5M5Ksw0WxVAbOhIIqLbv9lXUAb0bYzYzX3Frm2q9UxuQk7Kh7dUNsDIwhr9TmDu00fzNNe8MyRuvcikmSrLjxv8gGIytSym9cqbDgrIwQB8kqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mu5I6qN+; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43cf628cb14so23692305e9.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 08:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746804988; x=1747409788; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yr3gBMo8q6x68iJStgZPxOvmsn126Utqtuli+zeHGe0=;
        b=mu5I6qN+HNYJIw/rtPo92V0y3Op6iHuYWVQgphie592wUpT4hcXi8zK9aVmnNrth2X
         3nfnovSVQfEvjFefkH9YqSHXm/YfBrhCsAaUMC7lsJWlyCWnXFSspwxljZ1bhKpvsS2w
         124BUR8rrEEzr6PHsawiBwf/f+aNKjq0kArMBFM10/w7+EthXVylY0z2Jm3xz635g8FK
         ZKF/TDAeabWhn12nDs04Yv6iFoJzoA4W61CDGtTS2YFP4uyW9WLqMlg/ZV6dmes1Flay
         I115TKcuM+jvd1Pca6IomErXSXS+hESA9r/GijNIQmpbPSZoE5lfy8vOhvLADd07N+aW
         wyGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746804988; x=1747409788;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yr3gBMo8q6x68iJStgZPxOvmsn126Utqtuli+zeHGe0=;
        b=ePNYr934LFcJHHEi4qcxsS0o0qeXU/9r4GSzDoXeRuZwMlWTbtW2ayZsUQLub2wZ4I
         SYZU6TWiC0EQ051SKxefT/B8wvKfm0mK+TivCJPH9FvSogWOXQfgeRnptWc/Lh2Zzu8V
         2CJr8mjGRY4PrFLVLMdJhb0EroGQL3pSu+GE0+cQLKd3u1W5FfNigXPa07GlhLNRN9SU
         Yrbcb0rDxgVpgZoJPvW3ZOOQCia1zv4Hsd2QqAzAxSgQ3vwUC/1Xmjk9ygTwbzz1SbMn
         jL0ct1bAIJG1Si/ZVO4dNWZesj5bEoQmPrw/lVZFRnMMAmteU8XqloRMUgRGSWycuD9w
         LqqQ==
X-Gm-Message-State: AOJu0Yxs93t5C9l1DkEUtOVsyaOJlHBIYwEDLk1ToW62Xi4me6xqyVJV
	c3FG5eUcK/N14remdueZOonQpHSYvy+02doEgq8VR5u7a+hIEnZLIGENv64igXE=
X-Gm-Gg: ASbGncs0OKwqFSKaG3/jGuSF0OwHx1+/mMuJZDWu+s4ZZR2FmJafVjvTM9Vrukx1l4O
	1eJzyHTu2dI4vvViJZIkNQuwnbOVquOAv72NvXGJ7vo5GIe87A+LPuq70gKiPG5BYkvmZ2xOTa/
	MAGM0VJZZL2eMvsRmv/Rd648/nBG6R4Gp8MqxuoaGtcBrDfZC4Fg2eyk9KVnovF84JoujJCDYAi
	3w9D3Tr68pxdSH4tENzF26fnh3jmatvBOvHFpR4xQQjwiVjdYxNXWJwjlWkDc2DwLntZ54fpjBw
	QYjb2lJ3/CL2m9hQACvGuK8tTwPYVRGPxyXqHvJ2PkizMkpXI71kXS0dsTzyYA==
X-Google-Smtp-Source: AGHT+IG1sfy4S5snxPV3S5e2QLDaSy+3C3D6NenHJmcIMFakCtQ2zu63e4yW4tOoetvrZI25/EewmA==
X-Received: by 2002:a5d:584f:0:b0:3a0:9f24:774c with SMTP id ffacd0b85a97d-3a1f6a3c21bmr3326299f8f.13.1746804987712;
        Fri, 09 May 2025 08:36:27 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ec912sm3551824f8f.23.2025.05.09.08.36.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 08:36:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Kelvin Zhang <kelvin.zhang@amlogic.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Zelong Dong <zelong.dong@amlogic.com>, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20250411-a4-a5-reset-v6-0-89963278c686@amlogic.com>
References: <20250411-a4-a5-reset-v6-0-89963278c686@amlogic.com>
Subject: Re: (subset) [PATCH v6 0/3] Add support for Amlogic A4/A5 Reset
Message-Id: <174680498703.3102335.4935499750020158309.b4-ty@linaro.org>
Date: Fri, 09 May 2025 17:36:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Fri, 11 Apr 2025 19:38:14 +0800, Kelvin Zhang wrote:
> Add dt-binding compatibles and device nodes for Amlogic A4/A5 reset.
> 
> Imported from f20240918074211.8067-1-zelong.dong@amlogic.com
> 
> Changes in v6:
> - Rebased onto the latest v6.16/arm64-dt.
> - Link to v5: https://lore.kernel.org/r/20250320-a4-a5-reset-v5-0-296f83bf733d@amlogic.com
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.16/drivers)

[1/3] dt-bindings: reset: Add compatible for Amlogic A4/A5 Reset Controller
      https://git.kernel.org/amlogic/c/87b480e04af45833deb5af1584694b0077805ea6

These changes has been applied on the intermediate git tree [1].

The v6.16/drivers branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


