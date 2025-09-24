Return-Path: <devicetree+bounces-220650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 31455B98FFA
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 10:56:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 26DDC18972CA
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 08:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F0F2C3761;
	Wed, 24 Sep 2025 08:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ipHZwCzc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0FC2C027C
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 08:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758704181; cv=none; b=tFNOn5+QJnzvmkYQUO2zjKPT209xEx7FwC5PrN8pLVkcXkJ6NNlSTdtrA60kAagvnxhdtWBY1dFYlc8TgcmoiUN0b/cxPCJYtkB7ep17T5wPon/Ru6Z03L8kWeDalJI5QqKGeYZ5MVynj3G5Buw7NjyFpuYcpu6GOllEMaEJYNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758704181; c=relaxed/simple;
	bh=iX2qPdqdDaU+LvuFvkbfMMNYxz7QHrakF+xXKOTXLV8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=n10b4yA3IqlDA8AUqOJBYrvAIYOIBSSAXx9l+31ra//y1olTaRTnwQ5llg3/paAi7HLjXyAGBOYmCuXSamVV1Em9YjhckHn8UnTAv48Nzr0AzcV2Q0l90roA7dbkviJecrmLBBgR8GHNKBORdcyNPw3p2rMVbCzCyr7TWDSf0KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ipHZwCzc; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3f44000626bso2773453f8f.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 01:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758704178; x=1759308978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3+1A7Jfz8pBcO0Bhp0hsCdGQXjpTyyhLH0OvHF0N0Os=;
        b=ipHZwCzccCB6LLhHSGFp6Q4LprWdwhUdGI8tsTI6d0lwAUtHJLXuNM4t/Vo/kjkNWa
         W0w7VtIap6monEmy/p7jyNV6Fh4IRUVnS1scHlzh10GaIMtNuujMCmLTgcdNovA0zifl
         L+ctCdc0q0KR6uIzfC3CKzbOh1Mn/sW1vbGEz5O0t+v27KXFnSdyK275YM2KqsdRBfW/
         kQIN0nvZr1GDs/CVXz3EomeHfr5vRSUTYClC7BCx77urCmy3W8cQJW0S2YeDl7AcFx+y
         Cv3+GAFvly4w65yZtomzqrqDhtotHTx/favpq1YVlgN/JznTDA0f15epnMDsGytqzs90
         Nimg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758704178; x=1759308978;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3+1A7Jfz8pBcO0Bhp0hsCdGQXjpTyyhLH0OvHF0N0Os=;
        b=SoK7VDoazQEjgOaqoz2V8jI8w9f8gdQ7T0MpdxXffhSURP11VYozgvFQXrWq186y2q
         UVwAJ06vGZa4HR1zAsmSJ1IfMWZVCeUySMWlmwanHch6Ge/Anj1vOvAwO+0aITbZX1X7
         0aztF9DWVd7blNaCAGiJ+RcG0lnTz4mb6ZNprbbANFN5xQloFCRHhoUYt/hcgy5FtGN+
         rlvxukrlV+2/JTewHVsDm+Qne/yWaU/WEiWSasCQ1TV5HqyzttuJgii7jk7ehf1RapUx
         QJfpTA5vlR9SL3cFZ22Z6joycDJOccwJm24sw9ohIYSI+mfr3U9Rp1w0Vj4Pr9MCbJ5R
         jI9w==
X-Forwarded-Encrypted: i=1; AJvYcCVTCJqtLul5Lz3NVmw2OOKarhkeOP95AhHxNVgZP5FNl6d+65nEFg8rmh0Nj9GMGUsBFBRP8cwdriSC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3eD11IFCJtTtH2Y3q6tZHIVhJvajoBsSQVUaHG7DYeVAZryas
	gTOtRwR876AZGyaAwrrXp3L/VL6LTf54v+GGlhkqUIW/obGvfEVXrwXS
X-Gm-Gg: ASbGncttBZOSL7mjtS4CNO/JffLat3BpN9AHu+4OAwmyoq1WprqyENTh/O8aT5fnNYx
	zMyPS4e5FkXOhn9fuFH0JCEU1Tu3I5FsHnQxZq0VnWIgFekROVgxXdCgvsdcsB7x6lTlNW57pOS
	vCyM2WEsk8lbfK0LQfrY+dqwpUCOK3N4JFqC/XVx40ngQTI39fmjrGvka0Zy4rkwR1aLlbRacmR
	BS69uDFf7zsu7HUq1J6btajKa0sxzAbH8nteYZfPTlqlW0NDOcJio9Irewch2SBsvLJ2PDOarVw
	KfcovZv5XO97xxJjhmMqJbaLMJHtIVb2KYjCp/fE3S8CF4B7sR1Cp8qkKQ9xEB2OAHp23/iwdF8
	pXr8IwLKG7M/sddqYxynfT9ofe7f6Srli1IvGbs2G7OoAspUAW4+Sq2wBbxR8ESw7
X-Google-Smtp-Source: AGHT+IFsIXsQJRVx0IId4V0ByF2DFXWaJ2yupkNUOMJBnlYYIer+UD4cK/Vz2Jf/rXM6xy9cx4VDYw==
X-Received: by 2002:a05:6000:400f:b0:3ee:147a:9df with SMTP id ffacd0b85a97d-405ca95a206mr4825807f8f.39.1758704177759;
        Wed, 24 Sep 2025 01:56:17 -0700 (PDT)
Received: from cypher.home.roving-it.com (82-132-239-193.dab.02.net. [82.132.239.193])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3f0e28c83d6sm22415983f8f.56.2025.09.24.01.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 01:56:17 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	Phil Elwell <phil@raspberrypi.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: broadcom: bcm2712: Define VGIC interrupt
Date: Wed, 24 Sep 2025 09:56:05 +0100
Message-ID: <20250924085612.1039247-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define the interrupt in the GICv2 for vGIC so KVM
can be used, it was missed from the original upstream
DTB for some reason.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
Cc: Andrea della Porta <andrea.porta@suse.com>
Cc: Phil Elwell <phil@raspberrypi.com>
Fixes: faa3381267d0 ("arm64: dts: broadcom: Add minimal support for Raspberry Pi 5")
---
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 0a9212d3106f1..4cae17c04b50a 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -270,6 +270,8 @@ gicv2: interrupt-controller@7fff9000 {
 			      <0x7fffc000 0x2000>,
 			      <0x7fffe000 0x2000>;
 			interrupt-controller;
+			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) |
+					IRQ_TYPE_LEVEL_HIGH)>;
 			#interrupt-cells = <3>;
 		};
 
-- 
2.51.0


