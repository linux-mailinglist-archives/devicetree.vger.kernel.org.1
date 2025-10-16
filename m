Return-Path: <devicetree+bounces-227479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB1FBE1F42
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:42:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4769B4E2C37
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01B862FAC09;
	Thu, 16 Oct 2025 07:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lwvrmy0F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F80018024
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760600544; cv=none; b=lmI0dNBVaUdzvJAO9v6ozXsCccKYcLWoKh2EZUwrLdYkh16tSsJLMDXnO//PxCqzeDSs/6Am8W4MZ/5owGPmLRHgGeNz2EJ1yZaaeWnj7Qjm62l3Atqbj4D7lbn+qm0SlXSjlkABECAEU0//iZLW13Ve4kP6hwSr8KWvKG5qP78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760600544; c=relaxed/simple;
	bh=TI1ysOXPP4hVMHn60o6TUG3RYzs3fDZDuOhKElmj1NM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=akJ0NhnY65t5VGRN/3mGJNNcF/n7/WMDguWvww1sAi2Dh4RB4ktCK9UgzLDIsisN/ufYd2fR4CYb0Ldw8kXxirPknnCgMvrPV2CGXxFjQoSF+PrtzEYxXw8XFxVsIqhe9CXlgpkOR4vc4FwC37WCnIEW6Hkmt+ZIIPONryRbX7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lwvrmy0F; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-57f0aa38aadso616544e87.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 00:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760600541; x=1761205341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e0TL/ekeJOQg26wztgmTDgEuvDo0zmkivmyNIAbPqQQ=;
        b=Lwvrmy0FR4SSoTtcsz+k6eel0nldj4A65RjZdGhN88JE/tBUxH96s4h+YSwUtVEMd6
         V7+0OEX1S4NMBNnqFbagKcBO5U2sHUPKo5su3skF2mkklIze/l+3Qw/PB0SyOnR6a4z1
         PZNfDKybX+ET5BdHo4XTi1drTMnryJO63v44eDZ2zyFNOb1xBrVFKGVjE8YmSriA28qP
         w8STUjf5qEqlONfS0WIu160nY+7oGQ5cOulO11V6tMwFM4Y2kai6iiR0cvAPC54EfU1t
         RR5hrpGkGY7HFzWmLaPyTllMQKV069nSrd150HjZPXCMo8VMIvucyem3reIAd1/q7GgI
         6y+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760600541; x=1761205341;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e0TL/ekeJOQg26wztgmTDgEuvDo0zmkivmyNIAbPqQQ=;
        b=J3FMKvOxFKFnR/m/wV3KStl+8FX9wVuP+r/CCQ2rmue3ZHLi0spZJnn4iR9QsilKH6
         mYhMfbmFpQOavmaoURlA79DxVX5NLj/j+GuJuZRrd6euT4LHf+JW5z0pAiUCC/qbGc6N
         xh4p3hC8yHtjGPofPSPsk55VhUufWd2K0cab7UjKnFeWXeO0845G937L3Qh9EugeeHI+
         rjm3glecRQtLZBdpxa2uMv0LEi9f4rn6vfm+PPLTf6pK51sPEYSRsnrdM2z2Zc1BY/m0
         ffBJDPhMTBMxIqPEYAQIMwmPyTstmJNxsR3xAKMTWVjMXLFhYeuNdLv7ziE8UAahm5r5
         EkHw==
X-Gm-Message-State: AOJu0YyCaoOYXr8t1bAcI9Hu83Ki6Lidv8cZ5N/Mr8QP9hLVrbpetlCV
	pxLGkmXFMPQABRIDspSljNts+YMRgGqzjfTQtRVGrGRBgw4SvTgofqj1
X-Gm-Gg: ASbGncs5okwnSR7/sq+SmPJVM0aaNYU05RxiHQ1qeMwO73EC+KGwuy6pe0G8hyfQ5Au
	C2TF6cpPCw+u2qDUmvM9K5vQDe5yc1BkWvplqFuQ4KnVrC/6cslcj8NAyvJoE/yVReuv6uDVnCi
	3+b5pnpQD9jOCkbTinTcYTUQkwMuhgXZI6V/xz8f00GfauTVqneWaJlzcZKaCU8/WFrnuAXcdFf
	DAvY6wsaGTa61028nDqmmTTke7jREWxp3uXdkw+iuxapCwcpvcpC1XpOAS9jFwvFsFEvNG3WbR/
	POVTDLJbOl3zh2aWC2Dz2Gfovlb4ABs+CfjEDBlr07gz/bTICXi55+sYUF/FmSpzkCDXHY6xR+Z
	yeeiTJTOFjSaoNO1f9dqB4Mge1Dum8hvqRk88P56AyeRYy2E9O1IgKKgIyKFkV5E2y7MdLlQtRo
	tZ+g==
X-Google-Smtp-Source: AGHT+IHbI5nRs9M56J22ztjzyvcXIL8I57Igr4lqZlKhfr5x5C0oH/gLGKHadu7CjkSyNXpdSbLboA==
X-Received: by 2002:a2e:a99f:0:b0:372:4d3d:aace with SMTP id 38308e7fff4ca-37609f3086emr82578691fa.38.1760600540863;
        Thu, 16 Oct 2025 00:42:20 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea14d46sm53226121fa.34.2025.10.16.00.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 00:42:20 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/4 RESEND] ARM: tegra: complete Tegra 4 and Tegra K1 device trees
Date: Thu, 16 Oct 2025 10:41:48 +0300
Message-ID: <20251016074152.8759-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Complete T114 and T124 device trees.

---
Changes in v5:
- dropped clock and reset names from TSEC schema
- removed clock and reset names from device nodes

Changes in v4:
- configured tsec schema to cover Tegra210 TSEC as well
- added required to tsec schema
- reset-names preserved for consistency with other host1x devices and align with T210
- added clock-names to align with T210
- operating-points-v2 check https://lore.kernel.org/lkml/20230119131033.117324-1-krzysztof.kozlowski@linaro.org/

Changes in v3:
- added tsec description
- swapped compatible back to use enum
- clock and reset description dropped, added maxItems: 1
- reset-names preserved for consistency with other host1x devices
- dropped interconnects and interconnect-names
- dropped isp nodename
- dropped multiple rest names for mpe/msenc
- dropped tegra114 msenc example
- fixed reset name in second isp in t124 dtsi

Changes in v2:
- dropped accepted commits
- added EPP, MPE and ISP compatibility for T114 and T124
- added TSEC schema
---

Svyatoslav Ryhel (4):
  dt-bindings: display: tegra: document EPP, ISP, MPE and TSEC for
    Tegra114+
  ARM: tegra114: add missing HOST1X device nodes
  ARM: tegra124: add missing HOST1X device nodes
  arm64: tegra210: drop redundant clock and reset names from TSEC node

 .../display/tegra/nvidia,tegra114-tsec.yaml   | 68 +++++++++++++++++++
 .../display/tegra/nvidia,tegra20-epp.yaml     | 14 ++--
 .../display/tegra/nvidia,tegra20-isp.yaml     | 15 ++--
 .../display/tegra/nvidia,tegra20-mpe.yaml     | 18 +++--
 arch/arm/boot/dts/nvidia/tegra114.dtsi        | 64 +++++++++++++++++
 arch/arm/boot/dts/nvidia/tegra124.dtsi        | 64 +++++++++++++++++
 arch/arm64/boot/dts/nvidia/tegra210.dtsi      |  2 -
 7 files changed, 230 insertions(+), 15 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/tegra/nvidia,tegra114-tsec.yaml

-- 
2.48.1


