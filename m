Return-Path: <devicetree+bounces-232039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 37193C13C89
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:26:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 937083549FC
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ED083019AD;
	Tue, 28 Oct 2025 09:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gX332T8P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409132FE054
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761643538; cv=none; b=LYoY5Chz/wfybOFBcKblQv9vjiAX/3W6mnz5FHDSLptibv9HSArWuOI1Km3SV154b9QlY4Q5ZihcfqPmmUq/mmyQYLqY7t9nJWC4l3APQdoxldT6l98THnGlF0aJw2+V7sdQ51vROF/rmhfb0KexDAgR5x4YOcltu/3yKemKF6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761643538; c=relaxed/simple;
	bh=/Iii+N1pB+IX8ozivJEIczKINrVHiSyEufjWtYoS9l0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=i81j0+J7Goq1wm9dQ3Zk3X2JeiJyqkFSUQCVIC6orr/xWw0nhypqomF77jbkJObUsP228IWo5VFRVICOllybTGFECPncjt4y/J5bzmyXwcgVnuo8YSV9YdzHPmnOuw6dcm5S0u/P+fRPEnoCEacDlwEQbPuS3dW/A/vBtExCpNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gX332T8P; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42421b1514fso4031660f8f.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 02:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761643535; x=1762248335; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eAEySv2XWlwHuqdOI9fzzrs359mLloz83GdyEXxt2mU=;
        b=gX332T8P5aM33tKcdtBbI+kbhYvc+VvpvHoy68n3pCyd1VQXx8CFjdOJX0fs3tyjMP
         I6DK9D7rxBevhg4tJTo83L/DtnoQGgqkJPXz031eq0WzlyRnYTDsOOoNZnv8AYIPgNTQ
         dWjKJsw5epuhjco3d1G1S+pIDmV/eBeZjk6gkIt5LTcdr15UcT9qQM6vSKnxuzR7nn+W
         ksFAj2hLeA+zVlUOOUN5e3vbxBkpCaf/BKNyt10oBfZiIRoXKih0oYcQvq5iJ61q31lD
         d6eKu/Y0feK4iK4grTBoBo8fWIVTjWJbbHgWarUHSZh5jZVG0C8h5ygC0SewEMKEIP9d
         l/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761643535; x=1762248335;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eAEySv2XWlwHuqdOI9fzzrs359mLloz83GdyEXxt2mU=;
        b=W+ZMRoKXB7P4GkZ96QIcXPbCdp/MqwvV/Fq3f5mO3mumr9rbFXgs44RHL9DDT1ILMw
         GyX4eb19mAjLdLQv+1S9nyMg92IOarVIXZpZhJps0hn5H9Q05t4JRe9k1i5ElqCMzYxh
         tonTKkaP7tDlxWV9VPt6alNNt7RWNkZdtvCeyt2MQaoxGfw6lY5U0zz32O556PVvCImE
         z29lTmtKA90T7Xgw5Id+3mG+D+ZPuWzHQgwj3ggzR7yDPoH9Xl8mqE2fmhLEuxGQyeQJ
         qAK0sw2Cf3vMOaMK2JtqoSBo6PupdoB/2IB1Se9uDuclbyXXV4bDjRz4sG/OhYt6k9Qa
         PlNg==
X-Gm-Message-State: AOJu0YwsVm9VvGSRtfarJ2OSFuUXRY9cUV2ZnWBqzpSQA2TjQ16sSoxZ
	BC09cGuwFE0Ve4X94Uc0ik5eNSDRdu6rYy/lOyAuXd2vURun4rJRp6R1
X-Gm-Gg: ASbGncs156uJLk/yXo/Uotpx8+SelyW2MgbXcLjvUHo6TDiu4tla25ShNFCFzFUasLY
	d8tzO6mJGS9/hi2y35Wj/ZkiU+ecvEMdtwOzPdvXPdFduuF4kvjoWfRU7eHnUs9Hc+ytqBKu3bq
	wFewAbWN4yU3qiZqsABC3a21ts5sijaC6MdwzvVyOFmAxWsZzMqF+Bx6w8fGs/wzV+7xkWXsGbX
	yTs2C8ZncdM9CoQOJ+AnIXKJfD9BCx41Qb1QX6DcZGelaS4MsN1FFf+rHaWMxTMiODmPAGLMU+W
	wZ5Iu/d334JTD40rDLJPQss8QNTjtv8su4qsUJ7BMXSDnnCRa0p8sHJIkXhnuJNfyFwh8C9c4nu
	MWp9zNz50nYfksgnr6qDo94JeuoKz4i7qrAINn1blZEseonq44cZHjG/nP6qX9fenVBk=
X-Google-Smtp-Source: AGHT+IF3+1mOM9sG24twLPTOS4d6Ytk3inqVnLJlDJGYU4qNs2J8zRECxVSlGJ/pgP5nQ5QB1eWkjw==
X-Received: by 2002:a5d:5886:0:b0:428:3cff:3240 with SMTP id ffacd0b85a97d-429a7e36fccmr1692146f8f.1.1761643535448;
        Tue, 28 Oct 2025 02:25:35 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df5c9sm19231079f8f.41.2025.10.28.02.25.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 02:25:34 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Ion Agorria <ion@agorria.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/1 RESEND] ARM: tegra: add support for Xiaomi Mi Pad (A0101)
Date: Tue, 28 Oct 2025 11:25:25 +0200
Message-ID: <20251028092526.7349-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Mi Pad is a tablet computer based on Nvidia Tegra K1 SoC which
originally ran the Android operating system. The Mi Pad has a 7.9" IPS
display with 1536 x 2048 (324 ppi) resolution. 2 GB of RAM and 16/64 GB of
internal memory that can be supplemented with a microSDXC card giving up
to 128 GB of additional storage.

This patchset includes some schema changes not yet applied. They can be
found here:
- https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250909143432.121323-2-clamor95@gmail.com/
- https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250912065146.28059-2-clamor95@gmail.com/
- https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250912064253.26346-2-clamor95@gmail.com/

UPD: patchsets above were accepted

---
Changes in v2:
- added fuel gauge interrupt
- added CE gpio for charger
- removed always-on for vdd_gpu
- improved pinmux configuration
- added camera regulators
- removed usb@70090000 (already disabled in common tree)
- set correct modes for mmc devices
- removed thermistor thermal zone (not used by mocha)
- fixed pmc interrupt polarity (removed interrupt inverted prop)
- configured OTG support
- removed bluetooth reset-gpios
---

Svyatoslav Ryhel (1):
  ARM: tegra: add device-tree for Xiaomi Mi Pad (A0101)

 arch/arm/boot/dts/nvidia/Makefile             |    3 +-
 .../boot/dts/nvidia/tegra124-xiaomi-mocha.dts | 2790 +++++++++++++++++
 2 files changed, 2792 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/nvidia/tegra124-xiaomi-mocha.dts

-- 
2.48.1


