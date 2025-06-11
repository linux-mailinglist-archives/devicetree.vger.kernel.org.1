Return-Path: <devicetree+bounces-184728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 933D6AD5019
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 11:38:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C14B3A76F7
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 09:37:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C05425E80A;
	Wed, 11 Jun 2025 09:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WAv9o0ld"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4C52528F3
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 09:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749634476; cv=none; b=eLiIKXMJ6hW6pyQDqBiSSBN44SIDvAIN80A1GBo8nvgcWpVIqroQhv3RzScpqT7eNP9g6ZiLDDYfNxD0V7bqJNScYAxLbZmDiOcQBV/a50FYh5CSC1ynjfAvo9AnJe0Mvl8/Yw52LQunvrmMpXKdBZmkYs0Ypav3fVCX+73Tm2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749634476; c=relaxed/simple;
	bh=GKoJGEPtGbWX3S6SDM1+Marr1BzItueAulEfS+IMNmo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hPIRbLLPF+wMz6BhRBs5hkAEgUUoz17zb20Gn4QdeMp+G95cIrpJPjGLB1+wLV0DCAw4tdQD+U2XkeSone6O7cuYmbbX2Y5+ciE+bHwu45UftYiZfcXlxDL5/d6O5L0lRu8lF4293dvKFahwbfGEwq2XbvQzyHeM30b3ta6N+Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WAv9o0ld; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a50fc7ac4dso4138492f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 02:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749634472; x=1750239272; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ee00Hv2n6pfIABOlHh41RgmvlkFZztRqY8NW1iNthOU=;
        b=WAv9o0ldOts9ZS3mMAvRQNUW1DAFH6aBIzBXkh3v5wU7e2nSi8HM0HX0yrAu0i7BTF
         UaYpEmWLxnsQeHYy9svhEWnotMkAf0ANw+DNBUKsZFkmXg7pDeHRvA2rgh1kd0PNn4rC
         3q9EAHsVcd3JEnwX6dhclEoO91mJbtizdSDCfDJJPWMGhHpYPKcT3FQ7g7+vdM77Bg1F
         lmMf5hu57DJckE/1WZfzZCCsMQL/mM+IYVwGLCppIHg7b2Rb0EPKYlpAUzPan6Hb+4Ws
         YNt+LgEgiSzD9GqqOIW2Lkd56GvVNQ5inLCn94gOeOWtBpA8tEHk6CQwFzScKENrzdXB
         9Gog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749634472; x=1750239272;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ee00Hv2n6pfIABOlHh41RgmvlkFZztRqY8NW1iNthOU=;
        b=KsH9/lS3weDXzTGSt8pX0jl+hrTbXbeD38NoKC2kwIfomXh40fAQzRl+r02za9SnJ8
         qHRztZy0NUNY7imqGbdoTGBql3x6U7rZZ4mupqS6H6QyDaOg7Be0QkC+Fti2RJXTO9Sp
         nrVRE1RvoFBUZtMdsjd4VP/3Pl2ta0Agi60uqFC6KjPoP8hny/xCGaWasO/bKRdcmboF
         Ti0PC+YOxoKih27TU8+KQNiCNINy7wyO9sMEL2d6u55d0Bmh9t3Alcy4ea4FipomYlGt
         c1LWL/9wecr/sn8w8bkoVY8lxiJuRpBJQkQT451MTlR7U50nPlaR1Iq6//Nskf1IOq3k
         3dnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVM/ISz2Yn6iifOmItxRRibekeYUzXdH6iUa8rK7Zew110NRwn8vdCG8pMFTgeQs+wZXAGayOsPwhkY@vger.kernel.org
X-Gm-Message-State: AOJu0YyACb+4akk77FNIdfGOeJrg6mqkHqYv6C64qdDV7keQ1Wg2kbDw
	l6jn3YfqjAZQMxmGHALMaW5ZEWiDselzyG+6H66Dls1VR1E7O1P8M7kUz6G/Lj3Lsg8=
X-Gm-Gg: ASbGncs16GNLpwU6OmZAFmRiQzz73g9bxlZo79nanamVLU8I4wUKwJDGYCsBGpGga4O
	wmb2AzhRzITe9+cDVPs7Yemp3oDbLpUO6AOD/qimi/I/lB7xpcuh1cxvUIYZSo3awXqzHhM8ptM
	hzQXQLaRYy7JVe+EgqWGURemrWJWrBlGgHm4asYOK6q/g66ULO/dM7mt5YJKacrpfbTGDT1No2L
	gaaxEx6QUsMORroxJcQh5/0liDa7Wws7wN9mm8H2dXvqB5P0Zg1tB83kYB8+/ndWRuXmw8eT3Y9
	oO0HIO0ABSMIRmkO/ZpU3kDrnYKggm4iR+iF+mLggLt1rCBfIUEuxynG9ZhTANvhopuNykdjY+C
	heP18j3yxdOKEjxU=
X-Google-Smtp-Source: AGHT+IEDfONFcz3C9oPCAFFX7yDk+W3ZbpOIarlrBc0Cek5xrML9ciwnj6IGvkq3dbXA+yuDleTE6g==
X-Received: by 2002:a5d:6101:0:b0:3a5:58a5:6a83 with SMTP id ffacd0b85a97d-3a558a56a92mr1506354f8f.13.1749634472342;
        Wed, 11 Jun 2025 02:34:32 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([145.224.65.90])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453251a2303sm15467005e9.31.2025.06.11.02.34.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 02:34:31 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 0/2] Enable CPU Idle for gs101
Date: Wed, 11 Jun 2025 10:34:24 +0100
Message-Id: <20250611-gs101-cpuidle-v2-0-4fa811ec404d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKBNSWgC/3XMQQ6DIBCF4auYWZcGiIp21Xs0LiYw4iRGDLSkj
 eHupe67/F/yvgMSRaYEt+aASJkTh62GvjRgF9w8CXa1QUvdyU63wicllbD7i91KwuJsx965oR0
 d1M8eaeb36T2m2gunZ4ifk8/qt/6TshJSIKExaIZWY39fecMYriF6mEopX0EpP56rAAAA
X-Change-ID: 20250524-gs101-cpuidle-cafc96dd849d
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: William Mcvicker <willmcvicker@google.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>, 
 Will Deacon <willdeacon@google.com>, 
 Youngmin Nam <youngmin.nam@samsung.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2240;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=GKoJGEPtGbWX3S6SDM1+Marr1BzItueAulEfS+IMNmo=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBoSU2kMagcpLknWWW7k11DizyPziU2/a8+js0Pu
 9KZxxegILKJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaElNpAAKCRDO6LjWAjRy
 utAqD/40EU+hi1XmIgZg+0irXTE/wDqmf+2p7hDECqt8sXZCZ1fyVhtVKyn5Y2/s3cCxl7gRyYs
 pT+ZIR33kahPtdf42bQ77nuvZQcC9mFfnWp63DlEecZJbp3vA7nzubISj6HCT5DQuzognZrwWat
 hwvU/3bMBi1kEv8ps9F35MYRDcv8I+PKzd4PP6nABxCCQpq/W1KoAVCzV7fo9Z3eDi50p74DKKQ
 ARxuGIS5gix2ERxxD0q/7HtuQPeTZUOW8tg2dUQ/d5Kaxmyofy1KcHyxL5oLXQ+VW8U0cueBXSv
 OnSsFvRWSFI0EWenF6m2eXOWKhvWcmihRaOCY34ho7M4e+1rHPOT7y7tZIs6jm9Tb/wwaWXykfR
 RlSxd1Aua+24Y3tF0LMfYYVP4y3heeXi7B5xxaHlXi93JEbtTu4qPtxYBIAb8lfq4eUgf7BlsoX
 0N2mY1ZjS7fYz84IlktzuF2DGm3eOFPrtL45V9mivm1ZangwJsHSUTTig92G5rX5oL71S6CtCKm
 kM93dPK4eir4K5aYbXGB4VB3BjZ0mE9dxm0CRyivIE5aRyNaq94N8Pp8X/MXorkc/U8bS6JOHZb
 nab9eZuV+F6e0D7UaAeBklm6uFSdKdLQrarsHrsrFwXIzkkIdiSs7edhHt8sfUv8G+NZNCfoJga
 VsRqDK8JBJHyPPg==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Hi folks,

This series adds support for CPU Idle on gs101. In particular it
achieves this by registerring a cpu pm notifier and programming
a ACPM hint to enter the c2 idle state. With the hint programmed
the system now enters c2 idle state.

Note: the driver patch has a runtime dependency on the device tree
change to add `local-timer-stop` DT property to the CPU nodes.
Without this DT patch the system will hang in early boot as the
local timer is shutdown. The DT patch was originally sent along
with Wills MCT series in [1] but it can be merged independently
of the rest of the MCT changes, so I've included it here to
(hopefully!) make things clearer and easier as it has a strong
dependency with this patch.

We can measure the impact of these changes upstream using the fuel
gauge series from Thomas Antoine [2]. With the ACPM hint now
programmed /sys/class/power_supply/max77759-fg/current_avg is a
postive number around 150000 microamps meaning we are charging the
battery (assuming it isn't already full).

Prior to programming the hint this would report a negative number
around -150000 microamps meaning the battery was discharing.

Thanks,

Peter

[1] https://lore.kernel.org/lkml/20250402233407.2452429-5-willmcvicker@google.com/
[2] https://lore.kernel.org/lkml/20250421-b4-gs101_max77759_fg-v3-0-50cd8caf9017@uclouvain.be/

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v2:
 * rebase onto next-20250610
 * Add #ifdef CONFIG_PM_SLEEP to avoid
   Fix warning: unused variable 'cpupm_pm_ops' [-Wunused-const-variable] (0-day)
- Link to v1: https://lore.kernel.org/r/20250524-gs101-cpuidle-v1-0-aea77a7842a6@linaro.org

---
Peter Griffin (1):
      soc: samsung: exynos-pmu: Enable CPU Idle for gs101

Will Deacon (1):
      arm64: dts: exynos: gs101: Add 'local-timer-stop' to cpuidle nodes

 arch/arm64/boot/dts/exynos/google/gs101.dtsi |   3 +
 drivers/soc/samsung/exynos-pmu.c             | 137 ++++++++++++++++++++++++++-
 2 files changed, 136 insertions(+), 4 deletions(-)
---
base-commit: b27cc623e01be9de1580eaa913508b237a7a9673
change-id: 20250524-gs101-cpuidle-cafc96dd849d

Best regards,
-- 
Peter Griffin <peter.griffin@linaro.org>


