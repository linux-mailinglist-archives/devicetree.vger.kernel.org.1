Return-Path: <devicetree+bounces-168905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7A9A94DE0
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:16:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3EC53B227A
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 08:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47864214228;
	Mon, 21 Apr 2025 08:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hbZbFur3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637C721127E
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 08:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745223324; cv=none; b=P6PQftpvYGySW5EMAOBjhHoR7G0g6UNcc+tgZfFu1Dfaa2INd8LL5FhzIgjNKPP4U7XV22WqE5HjgR8Nk6Kj4VF2PRiIq4gHaMkERYktlfMvZMojss0sy+uTpXuigyFhKFWBEakpfkOoidGkYrNezT471RwlVOxsD1Pz5fzEgWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745223324; c=relaxed/simple;
	bh=i2du4lVmWLuvWRHG2K/1O3Jp+NBJz3qmMwCQlIhmr/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J/YaXVDCd6xWQlJOjMsJlMCgPlJF+fv2RLkH/jFbymkvBZCTiMgz8wTvscozk7lV2fTIhCHv5SnI6E1NHJVoacyKUUz2sBMQZP9De9/Kd39OUzhR853yx3rDKIcc56/Jxu7W1B26kSStnsIhJ/a98T0IWFL6hsazyxIGIKZqcho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hbZbFur3; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5f620c5f7b9so3709976a12.2
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 01:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745223321; x=1745828121; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f/d2kV+gEVUtasqwptmg8OTaBsbS+gUd48Di1IsK5O4=;
        b=hbZbFur3aeumj7IGonDKyMClJR7Ivm+5SczZCcXmzeJd4Pv7ERblxb4lJhZNBbWIvz
         qzbhm06KaTA989ueV26QbMUd2iLXBmiBNE8T2xzBxQ0Muh01RoLXNSOnwzTLQZ408tbj
         SWggTqYz2mXCgFOCzQC9CS0MQDavqzoQj/JJ53KVObAsMUdcUTHnVixaJjwLh+fKvf4n
         iN2h3ml4oeLG/d/GBuj6YEOMPFyP4LvTfIO/+V1E79ti2KubOZSoAGAOreiaQsltI4VM
         E11Uv7pAtdRYCEjkH3DLMMApZ9LCP2gGR2ICrRyTxRehLstQQ9/N3Xi3dh5bg0+SkpuJ
         aMug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745223321; x=1745828121;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/d2kV+gEVUtasqwptmg8OTaBsbS+gUd48Di1IsK5O4=;
        b=Uu9CqG46ppqA7PdylBGP46bW5uaCkfjB6OlzPn2F9prtecNKk7VsvD1bW/g7O+ROTd
         40rKwtdxe5qxJy8uy1g5ErLBqY2+6YWBwCUGRpIFZUhDjpXghZ59e2i52e1aIJbltz+G
         eAiRc4KUM+Ac/xmS0B4YYk3cBJSClwWLnwNUP2GttymPVnOdLx4CpIuVmmneIBN3aXmP
         YCdysYKtuOT6jbD248w17kwTejKe592yI/tN3xasSyHxx1Qcc5LrAsdPJftQtjPo05gF
         lzeZAvw/MkbZ6BEbTCwBCB3/5tjR/sRYeubwofNuU8Q3FGBhreumUm1HQrXXt4n5Nglx
         Q1Ww==
X-Forwarded-Encrypted: i=1; AJvYcCUUy9fOsxTE7FHreXkJgprUlbqsA/SLBKRQHJUcFtG15oUabhoQvy0wP0G4FzyZxbAfNQiDilzCDVzv@vger.kernel.org
X-Gm-Message-State: AOJu0Yza+9NNknaXkL0Fq9SDrOu7G3/EQ1zFSTDnrMPpuPuQX/vWew86
	GfoFb7lBpWFyfDEyA2WR71Aa4i6E9vPTp+w6QkFTLb/oUpoMT4e1m12W8ec7rx0=
X-Gm-Gg: ASbGncsBYXOAJYLg9lURV2F7PILaVircwhnX1IEfl2Rb/6+zQWMpIIMqf9yX0b5XzsC
	8JZJNy1oLpkNXxCeBUrOHqVh1zMEcAsZnGyogCl+aJhHmcqp5ZvZc43CyB3Ay2/rT2d3UIhKpAV
	2BLXviBZxVKCkhfyTHGbx5vFqTXMpLzkh7OCk7qKJ2cVwjVSi7usG6Ckf9jZ8ctzkFBTqF0Zz/7
	TMg9+7b9HG19fMPjNebEN81o14Rl8nGFUo/PyemkkVqxed9bN6PC1nYDccP3ayGk0Qnqm5bp410
	bsq1nCROYV6pgNJjwSNEuc+zw6XJyvmaUhAr6D5vv9WQ7Q==
X-Google-Smtp-Source: AGHT+IH8dCmUUiIYwe6aBK5gZa6nt1qsDCGB6UIqEQKGd3SsYK3y8ADeVEtN0scYBIBP9If0pfXvNw==
X-Received: by 2002:a17:907:7247:b0:acb:1908:6873 with SMTP id a640c23a62f3a-acb74d65b95mr1067470266b.48.1745223320580;
        Mon, 21 Apr 2025 01:15:20 -0700 (PDT)
Received: from localhost ([2001:4091:a245:826e:c0c:4cef:7dd:26bd])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-acb6ec502bcsm482604866b.66.2025.04.21.01.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 01:15:20 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Mon, 21 Apr 2025 10:14:20 +0200
Subject: [PATCH 2/7] arm64: dts: ti: k3-am62: Define possible system states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250421-topic-am62-dt-partialio-v6-15-v1-2-6ced30aafddb@baylibre.com>
References: <20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com>
In-Reply-To: <20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1207; i=msp@baylibre.com;
 h=from:subject:message-id; bh=i2du4lVmWLuvWRHG2K/1O3Jp+NBJz3qmMwCQlIhmr/o=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhgzWf4W3NinxJ3hYPDvnfu9vz8oY3gccaxbM3H+3/N+7s
 i/aIpvlOkpZGMS4GGTFFFk6E0PT/svvPJa8aNlmmDmsTCBDGLg4BWAinn6MDFvY/hkm3Cr68rTg
 7qM5hWZxf+aWTr/PKfZr2urecJVru/kYGVbv/qxS4Vk4h38S80nWHbNV52sx252bP2OX37wiiQm
 b33ECAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add the system states that are available on am62 SoCs.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62.dtsi b/arch/arm64/boot/dts/ti/k3-am62.dtsi
index bfb55ca113239be4367a1cf8edf219187fafa8a0..acc8cbc7e57bc5712ada8b4b225e302ffc368e26 100644
--- a/arch/arm64/boot/dts/ti/k3-am62.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62.dtsi
@@ -46,6 +46,28 @@ pmu: pmu {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	system-idle-states {
+		system_partial_io: system-partial-io {
+			compatible = "system-idle-state";
+			idle-state-name = "Partial-IO";
+		};
+
+		system_deep_sleep: system-deep-sleep {
+			compatible = "system-idle-state";
+			idle-state-name = "DeepSleep";
+		};
+
+		system_mcu_only: system-mcu-only {
+			compatible = "system-idle-state";
+			idle-state-name = "MCU Only";
+		};
+
+		system_standby: system-standby {
+			compatible = "system-idle-state";
+			idle-state-name = "Standby";
+		};
+	};
+
 	cbass_main: bus@f0000 {
 		bootph-all;
 		compatible = "simple-bus";

-- 
2.49.0


