Return-Path: <devicetree+bounces-157571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E183AA61346
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 15:04:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B00E1890C84
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 14:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4EEB200118;
	Fri, 14 Mar 2025 14:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X75HbMkD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163FA1BC3C
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 14:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741961026; cv=none; b=LxNvv0Uzb+3gX2SsP008ZcIZrihB6HRZqiF4iVRHTq7hoFUgDy5x/+QDR9Hhofc1uW/CqtJRvqnmGfXwj+1rUbBCRdE4h1ym/eOm7fMD73jntNxoYq1lEAIU0IQ3emG9fOt9CYV+cEk7eXRxwBUqw5PdMkYsxrRKcUb9elSUXmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741961026; c=relaxed/simple;
	bh=pxJDHvkqM7uHR1MrrOabNXE1KJAbMRipuo/qn8mCmfE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IB83ZHtRDv9OLC3/udk5doc1bIdQYKO2tfaWSr55m1xVUFrZNTyaaUdKvHCMkKh+3M/UE4BCQvOnr7QCr4DLkkIa+hrN0If4Uubnon4/zIw8j86UsU3v8Glz2gZ3r8/KQ9sPoOKAD3YgFG6eN9RHE4ky9otHFB/NPQ45cbMWKaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X75HbMkD; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so19220885e9.3
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 07:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741961022; x=1742565822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DfJf8Ga9vB90szm23Um7D9SA1QG9ZKGN12DmFyfILjU=;
        b=X75HbMkDp6dvMPUjo/MdBhCRVyZ104qZTB4okzpjPGofD/MSHr5QM/w5khedXfjbP3
         +vsd7iyYv0sb4KF+ZKN+AsT/esNXWpbtWnNLV9vPr68cMMHxMl78mPP5sBP6prjQ7F/A
         GdmPeo1ZBpyvVvmAyL5GS6mAunereP54lViB3OWIeLe00L2dS6rtfctMs7ztPnWk9C1V
         y4t74t2bNY9XrGfsYpEWUYRdVgRLi+banYi+W2w8eCLyHzesprxCku3a4WonDSN9FNYz
         ROzqZhQVg/y9Zs5iT87aM27YpNMxOjV6wQsKgIxWTj7SRqywX9be7Mu0ZATtS6L0G5xp
         Xx1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741961022; x=1742565822;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DfJf8Ga9vB90szm23Um7D9SA1QG9ZKGN12DmFyfILjU=;
        b=SNUkMgDKJUqj2g57ScqLX6hsVK6RyK102F8pFmSfsPf0f0tl7TO0/gnnrZxkwSplGl
         mWXdBma1g7KpXOQxgtadrCYB2r+KoLGCYNAD2feJHhWa8+RyP5DFCwR4vnCU6H1CjvYg
         mLgjrDc+XJ2Aje/Fn32K7SK8ZFd4CZ19oiQ+C8ge8zcw3BAUZs2h3gn5d8BcrQdDW6n0
         3O68/DpheGuLoowR/lhmCwF+fOgaKRbT/Ud53xo4zsrqTbZ2egr/9fS4xJgljK7k+NLJ
         B46WwUavKl0cZtYACoGeYClOvyYLxQYbHtOnCR6Qx3HyfYHSuBasTjOHHf3lwdFJluKD
         J2nw==
X-Forwarded-Encrypted: i=1; AJvYcCVy3GTH3MSbTUkYVAF0oCIaCaa0y/btvufETH8Va+wP52/oVDd4iJL5XTpOyuU7shdLWyboBkPuRHHp@vger.kernel.org
X-Gm-Message-State: AOJu0YzFbASQubj+hLCdD3NjXA/b/sHIgIUNDOQqTiDh1iUB90ydhfPE
	Cgr560NWLnx4NK4KB7sTMcdC/g/ZiOn5hAxoTtvCYpbWvQ8qbY6VI+V0bwGWtUs=
X-Gm-Gg: ASbGncsnby3Zk+COQbAWMAs/jfYaZyDW3d+1H7wAMCUEA4fVU0Tsa9GG6XuMYhVZZ29
	HIcTGVVR7UkjDf5alF272Qx43KUcnrUgtctYFHea4Bf5vaVKwRVCXOMYkHCgjuDO4KWJA7Eo36k
	ALhknusIWllDYM7wdy5KJxMixiK9fa7APiMG1Nxh4SUej4wCBF83Uf096BNMhTzD8ROWtzMzDpb
	vvBnVRP5U9QNJ0i4Zm8htzNh+q76BmibuZaDVNtOOO2ppMHVZObazZcpuheaPSHZTEWFvZXI6gW
	q6f9KY3Lb/6Yu2fxinbQ92Z7jr439Nu7MPZpgDfg/I0=
X-Google-Smtp-Source: AGHT+IEonzHqZfnBCRYQlfonbOnPQxvgulbGIw/W6HLD6It30BpUPgq+V9lDW+DY/K6ZIL0S87HICA==
X-Received: by 2002:a05:600c:4706:b0:43c:fdbe:43be with SMTP id 5b1f17b1804b1-43d1ecd035fmr30872895e9.27.1741961022202;
        Fri, 14 Mar 2025 07:03:42 -0700 (PDT)
Received: from hackbox.lan ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d200fae32sm18156455e9.31.2025.03.14.07.03.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 07:03:40 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sre@kernel.org>
Subject: [PATCH v3 0/3] arm64: dts: qcom: x1e78100-t14s: Rework devicetree for LCD and OLED SKUs
Date: Fri, 14 Mar 2025 16:03:22 +0200
Message-Id: <20250314140325.4143779-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Lenovo Thinkpad T14s Gen6 comes in different SKUs when it comes to
panels. The only difference that is important is whether it is an OLED
or an LCD. The way that backlight is handled in devicetree between OLED
and LCD forces the need of two separate DTBs.

So create a common T14s dtsi that describes everything except the
backlight handling, by renaming the existent dts to dtsi. Then make the
legacy dts the LCD version, while adding a prepended oled dts. Both
include the generic T14s dtsi.

For the OLED version, I do not have HW to test it on, so OLED specific
bits will come at a later stage. Still, add the OLED dts in order to set
the stage for it.

Had to format it using "git format-patch" since b4 doesn't currently
support -B when formatting the patch, and the renaming of the dts into
dtsi (plus the panel properties being dropped) would've not been visible
enough for reviewers.

Changes in v3:
 - rebased on next-20250314
 - picked up Krzysztof's R-b tags
 - picked up Sebastian's T-b tag
 - Link to v2:
   https://lore.kernel.org/r/20250310141504.3008517-1-abel.vesa@linaro.org/

Changes in v2:
 - rebased on next-20250307
 - Dropped the RFC, as it seems to be agreed upon already
 - Added dt-bindings patch to document the new oled and lcd compatibles
 - Added panel variant compatible strings to each dts and included the
   the panel type into model string as well
 - Changed backlight PWM period to 4266537 to match exact period the
   PMIC can do.
 - Link to v1 (RFC):
   https://lore.kernel.org/r/20250306090503.724390-1-abel.vesa@linaro.org/

Abel Vesa (3):
  dt-bindings: arm: qcom: Document Lenovo ThinkPad T14s Gen 6 LCD and
    OLED
  arm64: dts: qcom: x1e78100-t14s: Add LCD variant with backlight
    support
  arm64: dts: qcom: x1e78100-t14s: Add OLED variant

 .../devicetree/bindings/arm/qcom.yaml         |    4 +-
 arch/arm64/boot/dts/qcom/Makefile             |    1 +
 .../x1e78100-lenovo-thinkpad-t14s-oled.dts    |   12 +
 .../qcom/x1e78100-lenovo-thinkpad-t14s.dts    | 1506 +----------------
 ...dts => x1e78100-lenovo-thinkpad-t14s.dtsi} |    6 +-
 5 files changed, 77 insertions(+), 1452 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts
 rewrite arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts (98%)
 copy arch/arm64/boot/dts/qcom/{x1e78100-lenovo-thinkpad-t14s.dts => x1e78100-lenovo-thinkpad-t14s.dtsi} (99%)

-- 
2.34.1


