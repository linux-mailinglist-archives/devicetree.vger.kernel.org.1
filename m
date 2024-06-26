Return-Path: <devicetree+bounces-80011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B58829179C5
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 09:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C484284C0E
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 07:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B18415B55D;
	Wed, 26 Jun 2024 07:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HkTfHAS9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A388214D710
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 07:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719387158; cv=none; b=hR7qtpZd810b8pKcdFJp76pQVWjZo2z/hEWLJEutSIHxhb2t/TAljiplCMC9lKtC73lCRdiTvg+ib7NHIoLH5sFeCnlm6x20KnD3smZxlNSU/LJ9Rqnw/eTA0jQd15UzPn15Je1TQIOml5kLCMHxNoZNJzip39kO1vPnXJvEGaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719387158; c=relaxed/simple;
	bh=H3n1860AWJmkkJABeUH25AQfZX7As2YkB3in/1fhWy0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=IacVU76W3OUXZWDN1NMCwp4ZzrFM8q1/Yj44KUCJlyf+2Q68f66K6Hob3Uav1lX7qzrC87Q2d83s+V2AEGmina99yTwFuBtGjMAUBmNJkEVK9aitUNVQrEO5cYpxCJM/89bYC8EsivPcOccz3nJqZw2Ml31sgRDod70Hkz3g8/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HkTfHAS9; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4255fa23f7bso864655e9.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 00:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719387155; x=1719991955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7W4OioQKN0eIBHViOR9QZ+vNRz4LIKL+fXoMKffOCkw=;
        b=HkTfHAS970W+fkqjuokvpKOmj6YJ4mwuV8PU1DWJph3r5w0Lu/305tYWnviMD8b4PI
         oq/qSwGjG3tYTDVaNI33ooQr3Qa1qRNDq8K4FxFjZ0+Dgj8oDq7I0J4F0WKsDw0UGz7C
         OcX16WlwT71wz26d5DMEoYb3VdFmA2WjU6FtC3/QGY9JaUmetntOyQDgEtdxVhiGnpbe
         qduoUxdsWRWhp28Q0l25rwtxahfkW8UDeoIjCIfAD7KS74pJKIJQpPX+AjusPc19pxpf
         gf9xsDaiJkuAABX1BANJyxNZlZ4ZP2qtsxabCmixqe5Wp9ZLP+gFshEbWgLIgoA4Yb8J
         TDqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719387155; x=1719991955;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7W4OioQKN0eIBHViOR9QZ+vNRz4LIKL+fXoMKffOCkw=;
        b=B0+kY0IwR3FAO3rmAICgYDiBP4zUfnIQzySdgNCModpHeqC4hTAENCexfPPYyAl1BO
         kcqz/zbEP9G21CK+219XFUxVBrNAN+1I80B3/nqlVBIeLcRYbd2B00EznrTo/YOOlgWU
         figOQbeFItJhnxoXWq/ajyjWuW2CEdsDujU5HbF+cB6PIObzoouLM5+1+B/K0G5l0A8O
         naO1uTX+No6yEd3tqRqN3BQfH/WdYGWv9VInLzXXguXHyOpV7+P3tKveu+jylGnp9oaN
         /hkyogItMoTrnb3EGCxhXiVZw5q0RLxl/sJ1/hOmkrNUKl/kkZnk7GSnEJ51s6wbaYZQ
         a40A==
X-Forwarded-Encrypted: i=1; AJvYcCXMWnXFgtHCk/0n2oWDIyD+bA+kd3s/p/wzCQk3d57RS51KPu5ttEmWUJMRncpDxHB5eP0TgCROXfjlYzkGGM0qKfTwejRsG2vDvA==
X-Gm-Message-State: AOJu0YwrtIM0sYZuDlGJReAU2Bx6ge35iztFzPJMl/WIfy7aXBI8TRx0
	ys0TJhAcKKsPF2zZUDqCvmho+D8OV5733VD4VzpCKrKzHP/Ug1U6vK+fYvHCKeY=
X-Google-Smtp-Source: AGHT+IHkStzMgEtlbhfEd3vr7XWwRbdJYImOIKudj1b47ahck4Suw5YJPuzNImYmMu5zR3rIDZJ4Eg==
X-Received: by 2002:adf:fc0d:0:b0:355:143:b5f5 with SMTP id ffacd0b85a97d-366e96bf096mr5830496f8f.64.1719387154733;
        Wed, 26 Jun 2024 00:32:34 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a8c8f07sm14962150f8f.110.2024.06.26.00.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 00:32:34 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jerome Brunet <jbrunet@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org
In-Reply-To: <20240625145017.1003346-1-jbrunet@baylibre.com>
References: <20240625145017.1003346-1-jbrunet@baylibre.com>
Subject: Re: (subset) [PATCH 0/2] arm64: dts: amlogic: add power domain to
 hdmitx
Message-Id: <171938715374.1644768.9308792407844880407.b4-ty@linaro.org>
Date: Wed, 26 Jun 2024 09:32:33 +0200
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

On Tue, 25 Jun 2024 16:50:13 +0200, Jerome Brunet wrote:
> This patchset add the bindings for the power domain of the HDMI Tx
> on Amlogic SoC.
> 
> This is a 1st step in cleaning HDMI Tx and its direct usage of HHI
> register space. Eventually, this will help remove component usage from
> the Amlogic display drivers.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[2/2] arm64: dts: amlogic: add power domain to hdmitx
      https://git.kernel.org/amlogic/c/f1ab099d6591a353899a2ee09c89de0fc908e2d2

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


