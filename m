Return-Path: <devicetree+bounces-73179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 320F08FE255
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 11:17:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1EF521C2264C
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 09:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C44A913F42B;
	Thu,  6 Jun 2024 09:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l/oTEzst"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1616413E8BE
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 09:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717665205; cv=none; b=SqqPV46yGdyoZINkZ6KZlOmHDD3Eqsr74Ct7hkVq3PS5YEu8QwboYyv+5CHOm+TxHJfNpfPJotPzD8XUCia7n1LX9cUp2jMbwj6/9TgVoyY4t01E/zWn2ob2EKZIThsNjEnGYZ7ybOyXTEUmgtS+IUHNvMhho8CgvUSoECqDVYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717665205; c=relaxed/simple;
	bh=F0B5pouwjTcP0qY0I1Qy0jEZ2tGEYkR4bBNg4Abg9uw=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QidmH0EwP6m/ya9GBH2Pw9i3FVvrfzRjcje1cQFiwo7QKD3Cn6YMjOj9iCS/wBMAiVRv1H/GmOTymsGpi1FEZ9FDeJ9WMCQ9ayz0KqZm612QbzaGBL2HbHuk+5mlH2K3XWDv4oWExiFi6FiF9XQH95ee9Dn9s/ZjJc8BKgJb7T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l/oTEzst; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-35e5604abdcso1150465f8f.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 02:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717665202; x=1718270002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W7rpMUxvdA5zrN/keRF1fVJunWjqm1VTxYEF6BZM7Jo=;
        b=l/oTEzstKmsRNxTffyer3f4XXoK5NtzXbj1HJHmldXuJK3RQtBd9NR1Kut43as+9ie
         Pa4O5yKOCt5i6LBkiCGlMyBVvQxi9iSS3OplDMR72IPjagtovdWvBBofOmAp2orS2biW
         EqMxwrOY4xwxR7VSbhDBMAEBzbiT0X1RpPVWEgh4AZevVFJ7s4l+vXd1P1q80HvSg7BG
         0x8Wyn8BMve4j/WEA7rjgULfSxhQ3xZyyMDGpa2FIRIE1bDwAcGqJr5keaicyYK48bPI
         0xHDKk9tn2ZEaKBXzM1qakyvUBM54AKxFZ2g1lOSk883VZWRLAcXiraBOiS02ijVDt7L
         uXMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717665202; x=1718270002;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W7rpMUxvdA5zrN/keRF1fVJunWjqm1VTxYEF6BZM7Jo=;
        b=rYuKh+99G18uvcsancKbrDqjH60GaSqpHxEdaVIhMq5UrkcrOrRUQoHjwqWhq3ywHD
         YrUMsSs6mZbKTDsjmjdbvXOc8bdRlLMBNXgm2VOz7rGFqNlKU8/AKSjU/FQ0I3vDIVDF
         S31oVTDLclgq+q7U7tmABfY4cPH6ulV/7INXpFZ5unmnIeDkNrHfD/mDP8FfNuLwISzV
         8siM90fE8zZKQuoupCLKAnm3xwNAH2vTpKewa2nvLqDkNC+NT7UBJosyjvOHgGakIHty
         Fl3ZgGNDtH4aTYLwvs8AjtrWRxTdCEzytNIGXhEUtj3hn+1S8PX2i1RGpzS30SgFjoy7
         2BbA==
X-Forwarded-Encrypted: i=1; AJvYcCUvnXCWFTE75ME7FxHXWbqIfAFT/CPeyI6LmK4fnx404Q+NCMGncBBlUvWhHlFqcPalV9gD5YjzftZE1szgUVpMCJeliAGMljVfGw==
X-Gm-Message-State: AOJu0YwabrkWf2WYrb+nfw5m5cznineGYcr0shPdblMeQWsOvZ2BdTvD
	aILoUvqQCdqLyxpDOl8IH/rTODt+HSeX/7bgS4xDg8wR7NvXugdyGOzt87AFrfA=
X-Google-Smtp-Source: AGHT+IFQKjrQYwhY3ByaB3QNZ5M/lCQEAWegoA8wwUo0uLlFLQU8G3ycDlNa4frEBxGxxqP5Z+Q2ng==
X-Received: by 2002:adf:ec4f:0:b0:35d:c0c9:ec14 with SMTP id ffacd0b85a97d-35ef0d844famr1864724f8f.19.1717665202384;
        Thu, 06 Jun 2024 02:13:22 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5d66d01sm1027407f8f.50.2024.06.06.02.13.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 02:13:22 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <20240604084134.3315841-1-christianshewitt@gmail.com>
References: <20240604084134.3315841-1-christianshewitt@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: amlogic: add GXLX/S905L/p271
 reference board
Message-Id: <171766520161.3911343.1016095410760803619.b4-ty@linaro.org>
Date: Thu, 06 Jun 2024 11:13:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Tue, 04 Jun 2024 08:41:33 +0000, Christian Hewitt wrote:
> Add support for an Amlogic GXLX based S905L SoC and P271 reference
> design board. The S905L is a low-cost design similar to the P281
> (S905W) and is similarly derived from P212 (S905X). However S905L
> omits support for the VP9 codec and uses Mali 450-MP2 (not MP3).
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[1/2] dt-bindings: arm: amlogic: add GXLX/S905L/p271 reference board
      https://git.kernel.org/amlogic/c/f36596adb56f0381c0c46c5fab23ffd201f7e646
[2/2] arm64: dts: meson: add GXLX/S905L/p271 support
      https://git.kernel.org/amlogic/c/f6386b5afa81724164263c30c48de733e0aab74c

These changes has been applied on the intermediate git tree [1].

The v6.11/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


