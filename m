Return-Path: <devicetree+bounces-144664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4EAA2ECD9
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 13:52:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F4051884303
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 12:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85DF6222594;
	Mon, 10 Feb 2025 12:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LSZpazow"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F0A28E7
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 12:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739191926; cv=none; b=HAOWbnjzK/4e/tDTqgFjXSi9u/RGGMfy78HUoDiflCXSfzoNtyIP68h9EgPha9GPGYM7xr/S1Rg8r75iOiazwXlooPQsTCHfMVfk1OPP/t7gOphRdhOYh7AsKLnwzyyBBMMhzGZLNETbm1y/LF0ad2CXCq2Z9cvNyPmn/zOg9k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739191926; c=relaxed/simple;
	bh=XQa/TfZllLbPwu6jv18G9VcuIA3/df1URiLusiD2l3o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hY0IEVL+Wj+Faz39I1ersHtL5lKOD+9HWRmzQLTXvceOqQly56JXmgNxoYxgk0GC5WA8UFe+kDIbst0Q7DN3+L65q6e4geNxDqgjfKNI+5ASFKq4K9cEqw8agevU++P4KUxkgCpvC90qelWQkxXbyaC86bXoJYPdI+Te9CSDdTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LSZpazow; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-38dd14c99d3so1911870f8f.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 04:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739191923; x=1739796723; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ndgp99sk2+qm0AJX1iEOr9hIRvudwvRxmxME0Ub9m/4=;
        b=LSZpazowM2dV73iaK1UOw6IF37AnRhxMN6mW79wcqp4KfecVR/DeDp9mQ4D9/mvbbt
         5O3mrVA0PqiLAFms8BgUssVY/WA0NRqiiClYqzKEAFhhkE3MilWeNJx+QBkqtG6Xlegu
         k4VG1BSakccRTHN7qqSmA2nMeU4A5XLdP/c0XxKHDBx6WQ7tkUx0tYukgLnC9cKwHgT0
         OqF+shbGLCd8Y0Xqebs0TgS+97u2dVTXzvb1oKFeGn0rPN4rHnqUPmkEgzQe4t/TsLzt
         XOA/JkImKzOv9jqIam41psr9RChRXyNDhXHx9Ym1lSPpIT4P+9yLHYdn8mJye8+WBdEW
         W7AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739191923; x=1739796723;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ndgp99sk2+qm0AJX1iEOr9hIRvudwvRxmxME0Ub9m/4=;
        b=SYrCg0KVinFnxeaSyudNU6ECciZdvlqjxm0UlJcho0QZdPYwTF01rxoR/GCOrB0vQg
         0syjteJr1xR8F9qxgxhr6KsvB68D4P1s5GyfF7qMvJPmm2s2fOn0g1PdA7Jv2fX5jiKc
         /Oz698cS3g+iVpwNxIv11Kfg1XZPtAlU3iKfKdq0+UIicoetElS4BXq8yeGQrt5HgAQJ
         uUVBk3Th//Sh+txc9sG+cgBoOXzYQVcifFe5tSGX8E2ETOXCiWwnar+Bwila/EPVfrLe
         ThLwRsSFA610obfheU7tdOFsd853OCVwSjfNVn5byL+aiAKu3MUduFzSP1Xr/CFltayt
         9+/A==
X-Forwarded-Encrypted: i=1; AJvYcCUhpK1QCS+GuVGb95eLBXOtupbEk0bY1iL6UjgOJRGtC047CWv7qDr0G85KwlW7ufA0u0ybNjhgTlJM@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7abN6EIO9uCOv16iLzC5jKYgkM8Vk0MrpY+LQlmLRfFyyDROk
	fGAqCwV5Yux0K5JTHMpZFAaOP42dJp55RJlUZYh6fDqLP8JStZWQYVXNB2QsWy0=
X-Gm-Gg: ASbGncuJY8ZI4j3HGd834S/VYf1lrbxax1dJaYng/tJDuBuG5qVELJSxDMlGphtesbR
	0AafdQV58PMuN6UlgNJ62u+s4zKXCBlGWv2V0LGCCfyjjD1nQxXOYtdqjNmMcip11E9hqrhTpjL
	iixgWw+knb+FlIweOa40weh1NG83mGt9F6U9JHHjlwVuRa5km7JqP7Pnnrxd02TuYiTQtn7aLc0
	0sQ3H6RHVQY9RSK9B51hiSxU/m0Uurtt7dvFfAMzwy6mrkjrQAwGn698yRiZG6tpzsY5DpGDqlS
	T5fFsjBHya9OB82Qna7TF8YFyKrTV3wyLf/lgPt+79w31Z2UOuAG4S1lzbkIrTrZ1UJVPMAiOZY
	=
X-Google-Smtp-Source: AGHT+IGusahsybY44rc6nO4AWzY0imCi+cXnlxDgiDZzKI1dgfuiNW8fncCJWn89N3rzpgZLceWGBg==
X-Received: by 2002:a05:6000:1243:b0:38c:3f12:64be with SMTP id ffacd0b85a97d-38dc9135899mr9939327f8f.35.1739191922884;
        Mon, 10 Feb 2025 04:52:02 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7ceae3a3bsm85819266b.129.2025.02.10.04.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 04:52:02 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/3] gs101 reboot updates (DT)
Date: Mon, 10 Feb 2025 12:52:01 +0000
Message-Id: <20250210-gs101-renppt-dts-v2-0-fb33fda6fc4b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAHH2qWcC/32NQQqDMBBFryKz7pQkVqldeY/iwsSJDpREJhJax
 Ls39QBdvgf//R0SCVOCR7WDUObEMRQwlwrcMoaZkKfCYJRplFEtzkkrjUJhXTectoTO3kfbWt+
 a7gZltgp5fp/J51B44bRF+ZwPWf/sn1jWqNBNnrqu9rZ2Tf/iMEq8RplhOI7jC2o0bRuxAAAA
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Hi,

These patches update some of gs101's reboot / power off DT nodes to
bring them in line with downstream / bootloader / EL3 monitor
expectations.

In particular:
* an unnecessary property is removed from the DT
* the shutdown SMC call is aligned with downstream now
* we now implement the requested boot mode as a notification for the
  boot loader 

Cheers,
Andre'

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v2:
- keep SYSTEM_CONFIGURATION register unchanged (Peter)
- collect tags
- Link to v1: https://lore.kernel.org/r/20250206-gs101-renppt-dts-v1-0-cdfe993fb3c5@linaro.org

---
André Draszik (3):
      arm64: dts: exynos: gs101: drop explicit regmap from reboot nodes
      arm64: dts: exynos: gs101: align poweroff writes with downstream
      arm64: dts: exynos: gs101: add reboot-mode support (SYSIP_DAT0)

 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)
---
base-commit: 808eb958781e4ebb6e9c0962af2e856767e20f45
change-id: 20250206-gs101-renppt-dts-cb8ab6bf6294

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


