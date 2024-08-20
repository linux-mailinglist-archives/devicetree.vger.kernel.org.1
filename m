Return-Path: <devicetree+bounces-95297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D55F9958B64
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 17:33:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E159B24D5E
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 15:33:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58C9E18FDAB;
	Tue, 20 Aug 2024 15:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t2rcW0Bk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B2943179
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 15:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724167991; cv=none; b=D7ilM1eD0mqHQE+nYT79AxR24cs3aASpp++uXNL4yFA53rmLI3FAjbFw3BYB/WDHde8ItpRk6THdUs0Y2xa4EqD2Z9xhNmnEqYWasw3Z1IBZcsLf48kRD3GKD8kZ9qfG59Y6u3StHfj1aWFMo9KjTxNBLf9cJxgqWqnK2QtaWfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724167991; c=relaxed/simple;
	bh=+OaBQfutS39xGSin3zGP1Qk7YgYb1VUUXjVp4qNqfSc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=S8Y4Ut8H6XKBJD5WDoOc7Br6SV5G3OIm+sjy4FHEotQQ55D9pS6q9lZd5t1RHYLCn620wsiZs4c2TEJgn5COBoXS8DmzoZ2Bl++VtB10SUGkIuTYl70Hr7ZAaIpog7s75QlCZZVXOgTQfhnV3cRK7+VRbFNkVjUgxPvXr8Iv9Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t2rcW0Bk; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4281faefea9so45051945e9.2
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 08:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724167988; x=1724772788; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wuviY/QQQrSO9+Z2BJ5lMr1fzmIzONdeW1It0su3NKk=;
        b=t2rcW0BkOajWycxuzQ0P8jp2+e6XeGWDz4r7YcJmG5EQF6cULEZLEMWwS1+B1Diy2Y
         yLbA6ilvtscu70c9ZgOv9DV31CGwwOtV/LXWA2E8n5oUk2xcy/vwBdRi95sDwtJ2I8lh
         5bYw0qwr0MvLzi4vGHdZDDMW3gk6jHt+hAD77p0/vwMpnVj7zXl3THE2yuJ6qy9DRFsa
         1ycDWp7Au7b9GAENwVrbMzFXbN6UTtLG5n2uCZI3AaJGBtTsCOD2MVK+0vXpu4GF1hfc
         I5MIalWRP7k8JtxhRGilNtC9lClseC793uiBM4Lrq2E8c2ov8tU1YRAhIrxdPbxeVYa0
         982Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724167988; x=1724772788;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wuviY/QQQrSO9+Z2BJ5lMr1fzmIzONdeW1It0su3NKk=;
        b=BCGy6YznnvBqlN+9HZ+d6Cy7NXkkqDo9beHgwiH1HCIdmwSDFrEAGL+Ovl9fXBNJJ5
         B2np3CLFpui+fpNNZRf5D19AGVyu3ou6/IiKy7k0DLxorovevd0tvDYWaWtZXXQkuJIz
         bkZ9ZA5O04WTnoA9x5ifFJPnF4ojGF2jP4hV4O+mb+5KNaHpSMlLX5AKWhJc8FGdkv4b
         x4rcLWII40HdYzAhPhHfBYnnzkMABsfcqlb0FM0psXGI4OxQokESwP3BLlk9tMtNj+nI
         FFha8YrLkWCafTXqtWXDPMetIqCFIZnElvkWNkN9hiF2F26gkqqjadhq9FZS5/WYgRew
         3SBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUlcIt1RZD4CagfMh0VD4Amv2HtfWx+6x3ZjsVLzr9BSgjPUxV/Qx+qMGHX1tfougccILHKbQgOwcV@vger.kernel.org
X-Gm-Message-State: AOJu0YxVGw6HXEdY8s2bpHktbzCJQ9hfYE48ssC2IEOv4ADErja3dvJP
	th6dQCvOzXwdh8b6Wg6bmRm4OuEP9fY360aK+0l64XqUFjnUpmuws1zq+jtgnWo=
X-Google-Smtp-Source: AGHT+IE777Bx6pTopHtMljghqFepuFOm8sSMWy9wA6vpKgN4DJRs3RE0ahQDEyikg2nfhn/BYaFEsw==
X-Received: by 2002:a5d:50c8:0:b0:368:6ab:ba69 with SMTP id ffacd0b85a97d-37194651b3amr10028009f8f.28.1724167987318;
        Tue, 20 Aug 2024 08:33:07 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-371898aac62sm13311675f8f.101.2024.08.20.08.33.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 08:33:06 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20240719-soc_info-v3-0-020a3b687c0c@amlogic.com>
References: <20240719-soc_info-v3-0-020a3b687c0c@amlogic.com>
Subject: Re: (subset) [PATCH v3 0/6] Add new Amlogic SoCs info defines.
Message-Id: <172416798625.3053719.9732912917440614135.b4-ty@linaro.org>
Date: Tue, 20 Aug 2024 17:33:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0

Hi,

On Fri, 19 Jul 2024 16:08:08 +0800, Xianwei Zhao wrote:
> Add more Amlogic SoCs info defines, include S4, C3
> T7, A4, A5.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.12/arm64-dt)

[3/6] arm64: dts: amlogic: s4: add ao secure node
      https://git.kernel.org/amlogic/c/4b26afe7d216183bcb2b1aa2c0096cafdf7a9ea2
[4/6] arm64: dts: amlogic: c3: add ao secure node
      https://git.kernel.org/amlogic/c/84ed73ee34d152032633e540f159c482ede4c10b
[5/6] arm64: dts: amlogic: t7: add ao secure node
      https://git.kernel.org/amlogic/c/4c23177c51884f5307e67875b1dc87d98543be7a
[6/6] arm64: dts: amlogic: a4: add ao secure node
      https://git.kernel.org/amlogic/c/b2d7fd0ecb292e77a2d04cb6836c909cb6b6655b

These changes has been applied on the intermediate git tree [1].

The v6.12/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


