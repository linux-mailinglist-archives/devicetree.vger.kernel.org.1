Return-Path: <devicetree+bounces-73180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9AB8FE258
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 11:17:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA483284E8D
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 09:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5EDC13FD84;
	Thu,  6 Jun 2024 09:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HzY/sz/8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D6413F015
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 09:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717665206; cv=none; b=iO4yUe6EDCdIJY9VFLAuwXWPJaRkKTfvGEv/UIhXXy9hwO25jscwCJ3tcmP8tR59yCdt7Hq7746ATeVdYrEJYuJ2fLRW+XF7aSGfJxnTGyKOYYGZtOp2DhL5+sXnwTlrjFoF8VEdelrpoEDGmehZ/Aav2cSidtwkWDtXVyrxqv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717665206; c=relaxed/simple;
	bh=dD7n6UNHt9TJjT9VcKfmZT3jI4APvC7V6fUeeAl+1Fc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=RH4MAb4wA7kK3EuuIayXPH4yuLJPjqttdphhoTcUn5zHgqIsmjrTf0oMzpdJTHLR19FySEEBU/WILoqAhoArDSJ/Ixbi/FKF0V3IHfnF03dy9+nKse0PJYTcoAiB/ydie4X6u53PavH3s3LB4xKGt3HDQfrnF1t40YXW/IIL93k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HzY/sz/8; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-35dcd5377c4so789339f8f.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 02:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717665203; x=1718270003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8rV+wPIak8jDJVIln2KU5nBsAQyEDveq8MoQL7f6Gpw=;
        b=HzY/sz/8uhE4iWoloqNuhHh98Nwot6PU9Emay4FmM5u1J6Ii+uumqNi/cIbg3FykYk
         vuvZ9rq4PrX6vZtxdHNHl4Y3e7XZk01oU7/mgCxBnZ8L9PaSLD5x+sZEwmQf/9mFSFQc
         MvF9pOi0QeNh2gcixrdLbSBgUXSMSRePjme344wgvTLQ8ian9V55EJO4sKwO053oCotq
         BAjL8+qV1IyZIeZOIXEwdhr4CsdgqIL7Ev06MDPcP/ih9VramLP6L3Rvvunh6X5WRoGj
         MefzJwKxmUghITwb08SuhBeyIWatnqtAlh0dzn7wcBB2rHWIoQB8EUwp/zJjSITh1dQo
         Ue3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717665203; x=1718270003;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8rV+wPIak8jDJVIln2KU5nBsAQyEDveq8MoQL7f6Gpw=;
        b=fjMZMaVCrXg/IEcNoJwlR8UMcMZesgGWNWc1wZKjsCxFMF2hpM3tiw7sgLX/Pazltm
         JYlV4CfWJf0PVqY37Jo1J7BGdX/aZb8te/6HPmPXAJ4cOrwvlArWPKHe2q9RxE3fFM4W
         6m9zyQXci1GV1/CkbtBVyENjV7DPA3mfsiqQhKQKG+aSiOJ5VAkMaquEJawdIXZp3/LX
         RLJFc6p0kG/dxHhB33cftTD6Hqfrah6J9ZMjA+l4xBgKCQplaCerH4avIvnTuWkT3AFs
         n2cBoKxcvtD+2C0IQjC2ACyynqHdaRPLmITix/2AveGaMDRQyKy3NRbE5I0iuV2nvZg6
         dLug==
X-Forwarded-Encrypted: i=1; AJvYcCX4gTm6deCpec665CsogCfyeMTo6CZTeORgozkLWSaTUnpZZj73o6iL9W9YRKSlO3i3uELlCeIjPugOwawJ8Sl6GZrL6fSPbxi+wQ==
X-Gm-Message-State: AOJu0YyI/jJobmqTw4mQ7Fh0QXi8xYzs4GLKgaxZD05Es8QNGEvFBzJf
	s4Cq5w9T0BKdcOoUa1CUt9a1Zos/Dzb2TjBUxiO4l1th4k4olnEiiWcRJ5vHy/k=
X-Google-Smtp-Source: AGHT+IENoBRX9GZB8aiNkmV7wcMdCnCEvVTAjFXuir5TAL6BESM6I1wWByFMmTrTiJi75bRLz3bAJg==
X-Received: by 2002:a5d:5f8f:0:b0:355:2212:45fd with SMTP id ffacd0b85a97d-35e8ef7ea42mr4942853f8f.46.1717665203266;
        Thu, 06 Jun 2024 02:13:23 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5d66d01sm1027407f8f.50.2024.06.06.02.13.22
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
Cc: Yuntian Zhang <yt@radxa.com>
In-Reply-To: <20240606090615.3946433-1-christianshewitt@gmail.com>
References: <20240606090615.3946433-1-christianshewitt@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: meson: radxa-zero2: add pwm-fan support
Message-Id: <171766520246.3911343.18150781840775151395.b4-ty@linaro.org>
Date: Thu, 06 Jun 2024 11:13:22 +0200
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

On Thu, 06 Jun 2024 09:06:15 +0000, Christian Hewitt wrote:
> The A311D on Zero2 needs active cooling and the board includes a header to
> connect a simple fan. Add pwm-fan support with basic thermal properties so
> the fan runs when connected.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[1/1] arm64: dts: meson: radxa-zero2: add pwm-fan support
      https://git.kernel.org/amlogic/c/1d1239a1b0e502faffe43b97d530232285b9f061

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


