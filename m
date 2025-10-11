Return-Path: <devicetree+bounces-225577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FD7BCF269
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 10:44:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C7F9D4E4137
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 08:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F6D223ABAF;
	Sat, 11 Oct 2025 08:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O5DuNRQt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37629239072
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760172239; cv=none; b=pLYKMZkPM9GvsCN2UIpe2mI6F8rn26Iz0V27xbXBsM+SoitHm9uB+I65fS5UrS3D708kt8V4R+x+GsvadHr28i+MNpclOCQb8dSIhri5ZzfwIeqPSCSgAmeO5KLYjtSChv9etCLXO5DAcwCaJb3hoUq0mZqYlIgOlAXjn6XWrVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760172239; c=relaxed/simple;
	bh=nIQkVkS00h/ZO5JRy6iR8QPChIVXZPi7LdPe3MlLTBo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=uvNQ4tFiRoaneC9hGiMYNzXBddUXKmmEqJijt3mLqTr+Bnfj0DwjW9Y8Szh6pjLdDoiVmR0w1QvwfK18zlxIeh5P0IfkkYnKJBFUqwAnI2cNAU2ubTNtz0dRLvZ9xznwQ59QS2tIxkBXL5L1Xu8ZlV+ghuNskFhdS64ecGxWpLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O5DuNRQt; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-78af9ebe337so2181858b3a.1
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 01:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760172233; x=1760777033; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VqCd8yW9EYi9BPy6lU/qWlREPsP6CT/SF7s5Ft32XtM=;
        b=O5DuNRQtwvGH5+igVtg+6vsBk/2wnFLdS5+Ei+kZIGED2MX67fS9D53HV/p/Fi1k+D
         LHiWVtFKetOSTdNIDl2d8IW29fXquialQiDQY7N4tVJM89WryinaHrMBHTILLTek6dkE
         iYk9sqFAhSP1rh8BfFUmPpOqaAuSKSCRjaPdlw/TSRySVgZWQs5nPp3Zusb++XMxef6y
         5r1y13HatTxSup5ukmRwXDxhVi06OUoDJ3mMVi3Y1tzBORjXfAgOYOrYLMAuzTpEiul0
         Pca7FRKmI/kw5ZBvIN1NsPcHRyOCOQpD6sg+tPO+uVKgF+qRXxxLYwqimoLJB07WKsIx
         jpXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760172233; x=1760777033;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VqCd8yW9EYi9BPy6lU/qWlREPsP6CT/SF7s5Ft32XtM=;
        b=lbdI8NaRxaAYxzfQyiODJ1PS3jo1erm9bs3UmCbLeNprQ0UWfRu510pYEn8zypJ2nC
         lBKfkIE7VM/jIEgGjFhKhTbkbJffuOB0oNLfDEIB4ySTch2zNikGBHzYqea4VIG5yVja
         Mghz7s6V+kTRtSYNBDuG7xa2U78nG0ezJZMcewqp6K8A96DNacWZu2Mmpka90BHkDECB
         0ox3A3prxWo69UOPQCp0u22ropEyZjRJChV+NbpORVt4776Lr1aroDQ3yMe4q6cInsYC
         Xs/QWmx5s++NiUJCHf9JGWdpF3txtJyRArBs9bwoXqjkDd12DNAMJjejDoFFpo41WR7g
         48qA==
X-Forwarded-Encrypted: i=1; AJvYcCXnRIiLUcfX0rAe3eHbdVaH2szuGFKe45/h9sE1KN19gMylp4920aecyAP1mciQK5nUXVtaMLoxYu4c@vger.kernel.org
X-Gm-Message-State: AOJu0YxxEbh6E+vAFxsI43uZMycn4kR/G44vfLe7m5OJ+ex3SD46sy33
	tIwv66HwSCYJHvqV90M5K4Vz9e7RNzXfZ65QYn8oSkZwYqvUGJFIl1KM
X-Gm-Gg: ASbGncuW7Bj0NsO/2kit90+8rRIl4BJo8XfNkjm83wbQRR/jtUR/YmO+TPBdnODoGVK
	x6M6rSh5PQ4JlvyCQ49RsxU5lAsFB+RnBkDtsRV8pG6cpiYOMOSlAX9X5etO2wDf+LtJqqFXQgL
	d67QV8Ci3IBUnRgi5cRkWRLSgtl/r0CTyteLJR5ylJlfrCui/+vBwEAMa1E5V5IG5jORsysP8gB
	bVbnvEywMNcNeal2NPo4z3gEGrnEo5wdMWbXODhpTiRL6i4faanhc25HDmsKjg5FEUmI5EYzABX
	aXeVFBm+mM4SwT9UqOPxpIWcJMHZNjWvfDdETuC6q52FS1WhbdUMcqop63aRmrvuTd1bpdrPNJs
	jO8j28B91gfwYukEKjHPaTBf0nmK2ag2Fd3EJCrX5DVi6mmGbsyclQ3mv/z8quOf3fPNq
X-Google-Smtp-Source: AGHT+IGTnRLwiun6qqczOPoNp2kFINO5SVtG6H2filW9Od839rhihT2CIxXWcMLbKI3mPbR5HTEQEg==
X-Received: by 2002:a05:6a20:939e:b0:2fb:add5:5583 with SMTP id adf61e73a8af0-32da8133300mr20569059637.24.1760172233455;
        Sat, 11 Oct 2025 01:43:53 -0700 (PDT)
Received: from Black-Pearl.localdomain ([157.50.164.155])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7992d09659esm5401090b3a.45.2025.10.11.01.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 01:43:53 -0700 (PDT)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Subject: [PATCH v3 0/2] dt-bindings: mmc: ti,omap2430-sdhci: Add json
 schema for the text binding
Date: Sat, 11 Oct 2025 08:40:22 +0000
Message-Id: <20251011-ti-sdhci-omap-v3-0-9487ef2de559@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPYX6mgC/13M0QqDIBiG4VsZHu8fapm6o93H2IGY1g8rQ0M2o
 nufxWCjw++D91lIchFdItfTQqLLmDCMZVTnE7G9GTsH2JZNOOWCCqZhRkhtbxHCYCbQVHpVSy9
 FRUlppug8vnbv/ii7xzSH+N75zLb3K/HqIGUGDBotbOOcsVKqWzcYfF5sGMgmZf6rNVXHmgMFy
 TWXStNacf9fr+v6AddTdwzoAAAA
X-Change-ID: 20250519-ti-sdhci-omap-907f847f7530
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Barker <paul.barker@sancloud.com>, 
 Marc Murphy <marc.murphy@sancloud.com>, Tony Lindgren <tony@atomide.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.2

Create a YAML binding for ti,omap2430-sdhci and fix vmmc-supply
property typo for a DTS file.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
Note: The property "ti,needs-special-reset" was not removed from DTS cause it will
      disrupt the compilation for other compatibles as the node &mmc is used for all
      compatibles for some DTS files.

Changes in v3:
- Reverted the changes on removing ti,needs-special-reset, ti,needs-special-hs-handling
  cap-mmc-dual-data-rate from the DTS.
- Fixed a typo to resolve the errors identified by dtb_check.
- Changed commit message to justify the modified changes.
- Defined if-then statements for compatibles to add required properties.
- Removed "ti-hwmods" property from the YAML.
- Link to v2: https://lore.kernel.org/r/20250908-ti-sdhci-omap-v2-0-72927890482f@gmail.com

Changes in v2:
- Changed MAINTAINERS to "Kishon Vijay Abraham".
- Renamed the YAML file name to "ti,omap2430-sdhci.yaml" from
  "sdhci-omap.yaml".
- Dropped unnecessary or unused properties from DTS and made these
  changes as a seperate commit as there is no user of it.
- Removed previously defined properties like ti,needs-special-reset,
  ti,needs-special-hs-handling and cap-mmc-dual-data-rate from the YAML.
- Changed the commit message to elaborate the reasons for modifications.
- Removed the pattern property for pinctrl and redefined it in a regular format.
- Modified the description of the property "clock-frequency".
- Changed the subject line for the binding patch.
- Link to v1: https://lore.kernel.org/r/20250523-ti-sdhci-omap-v1-1-695c6eeac778@gmail.com

---
Charan Pedumuru (2):
      arm: dts: ti: omap: am335x-pepper: Fix vmmc-supply property typo
      dt-bindings: mmc: ti,omap2430-sdhci: convert to DT schema

 .../devicetree/bindings/mmc/sdhci-omap.txt         |  43 -----
 .../devicetree/bindings/mmc/ti,omap2430-sdhci.yaml | 202 +++++++++++++++++++++
 arch/arm/boot/dts/ti/omap/am335x-pepper.dts        |   2 +-
 3 files changed, 203 insertions(+), 44 deletions(-)
---
base-commit: ed61cb3d78d585209ec775933078e268544fe9a4
change-id: 20250519-ti-sdhci-omap-907f847f7530

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


