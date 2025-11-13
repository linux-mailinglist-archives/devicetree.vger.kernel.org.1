Return-Path: <devicetree+bounces-237897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7F9C555BC
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:55:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DBA5B34E622
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:52:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D8F52F6186;
	Thu, 13 Nov 2025 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Akv4npV8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740342F60A5
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998453; cv=none; b=uV+365PmUbrjSSUjv4PUiJ+OSXVG3lw2k+5BL6wdyc0f68QC+SnBcUh58y/PuelD8/vdUH4NSahIH14dII6LMaeXZXoYHmsjKNnmjp6PxTiUiK+Zw4qxw0O4/OcDCVtrEigkxPbyLq2R14nVlj3DKAkPsEVDh/9iwXYOMp0WqL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998453; c=relaxed/simple;
	bh=EpUetIQr71Lt/mjrpgCKfCfZgwS8UnkNlGqQfVuYjcE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iM0DqcL/g8HdKPU0WqeetmzPDA3s8rjiZJ5rxdnWhjNj3E1mmma5yMpeXTRi6SfrJMOYSLpn8e0k93kP4dOKFkG36cAB9s8jK70RZfQsQx0d9bsOKwJihZU5CPO3cI649wy/vlGkc7u9PNxF6hfkyiJm5ro0ojOoO1DACc556lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Akv4npV8; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-297e264528aso2472175ad.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998451; x=1763603251; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wIyypInid2MwkGhGpFAF1f6X6i4zsYo4yuxmmc6uQIY=;
        b=Akv4npV8x+bRhywWeP0/VRjaF6lfIvspJXim4Hg+g1XxXMYv8EDlOQPXR0OpjOZCVO
         VYg85QgOjbI4zcHUW7yWtThjK9xxwlPPybtj6dX639+pAWZ6u8yaB6vFgRbKYXM2qJCh
         0rfZLvJi8xUwq+x0ZJrrKaHG5XQTc+Ukc4sLKl9RwlfbL+15D/PDZQA9qMMUfoNJsdp7
         ex0fat+lBAmmpk+GgagR+kXbFZxvRBcTreTUmXZuQ7d5rtA0vrUTNT+wWfl4QgtWe0bY
         cT4v6Z2GYrjANAgx9cV1HyGJ5YrfojFgzS0le/b385f+8vDKhOQpAkg/LezH6lgPatNc
         KnbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998451; x=1763603251;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wIyypInid2MwkGhGpFAF1f6X6i4zsYo4yuxmmc6uQIY=;
        b=iUo8jEEu06G8Z+CZIr1qSOuZUKb5OyJnJGAxixhxNlCh1uZ+culFG+gAYh4PAUCAes
         gJOqT/H1zm1iZPg2WDBiWDAaABc6MwjG4Vg1sj9SiZKr9IyQfKYy6mj4FK8r2m4gv/K4
         Z9MXUTS309h/ryHLKMQ66GBfY+GptOYEhskFnW+VOt022q0Bz8XjrX8Fh1JTc0djHNvI
         5/HPhdJY4MWyRUEWJqfwHMwG5NP71fMPNGZkngQVAQOUIBsiCRPfdNFk0fMeIDmBLqpT
         UppQR+1lfE8Kal70896jhPwIIgpxajHQa32JMsGJDBHqKpR10wqtKq/1oUlGl605hOCM
         K71Q==
X-Gm-Message-State: AOJu0YwFp3ZNmetBDdWO6t0ZPSo7BqOGALpOihfjO9QfFMCAO3Er1bjb
	T1RsxWfsguEV7+IETUgaoSfD3Nja23hkZD+ZcB4qVafaIP3i+DSmwbatNHR7hkmu0WU=
X-Gm-Gg: ASbGncvCf2A7QXmS0U7WuysXWA1MAmE1YHUnNQMQan+yHvrYzD6MM/xxtvuihcIUHRP
	xcOhzbd/woSderb15LWNS98Lrfk7MhRt5vKnJbBjbifij7mb1pge4dbX0FqMPbJhR2/3q7SxZeh
	eBGdM/8UCM5mkGLhstJklGen79jatqhxZ81F6BigJzbOzb2tzHUYQfsDoT42i/ICj18vsL46Y3h
	5s8QX53MVtTKF2izpNpqgsgfxvIA195yZSKPSu5KGT9z1B8IjdkfzPn5x9Jh6nmdTMlfGfu+yuA
	g6M/ntxrz24c8cvNM54eS56SwEMfDhBFJyeecmYBc2YuQ5BetvguzOTx+G80b3aUQwteyJ4dA/v
	tjzvlwT9wonURRhFFC+6U/qamj5TynuY3wP+lcG+1U8OZXHCaYodajAdYJWn/XPVxxl6xALXz4z
	SeDkqG1mCMKT82F48VFrGtIg==
X-Google-Smtp-Source: AGHT+IGhzNzxLSTgH/bqs1xeC15DK1E1CUXXoyAWh/vc5uUnq6cTBbEqNw4BT6XDJfCz+C9XpqJ0wg==
X-Received: by 2002:a17:902:ec84:b0:268:cc5:5e4e with SMTP id d9443c01a7336-2984ed30d0dmr70448205ad.1.1762998450749;
        Wed, 12 Nov 2025 17:47:30 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:30 -0800 (PST)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org,
	Andrew Morton <akpm@linux-foundation.org>,
	David Hildenbrand <david@redhat.com>,
	linux-mm@kvack.org
Cc: devicetree@vger.kernel.org,
	Suren Baghdasaryan <surenb@google.com>,
	linux-kernel@vger.kernel.org,
	Mike Rapoport <rppt@kernel.org>,
	Michal Hocko <mhocko@suse.com>,
	Conor Dooley <conor@kernel.org>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v3 21/22] riscv: dts: starfive: jh7100: Use physical memory ranges for DMA
Date: Wed, 12 Nov 2025 17:45:34 -0800
Message-ID: <20251113014656.2605447-22-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251113014656.2605447-1-samuel.holland@sifive.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

JH7100 provides a physical memory region which is a noncached alias of
normal cacheable DRAM. Now that Linux can apply PMAs by selecting
between aliases of a physical memory region, any page of DRAM can be
marked as noncached for use with DMA, and the preallocated DMA pool is
no longer needed. This allows portable kernels to boot on JH7100 boards.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v3:
 - Fix the entry number of the paired region in the DT
 - Keep the ERRATA_STARFIVE_JH7100 option but update its description

Changes in v2:
 - Move the JH7100 DT changes from jh7100-common.dtsi to jh7100.dtsi
 - Keep RISCV_DMA_NONCOHERENT and RISCV_NONSTANDARD_CACHE_OPS selected

 arch/riscv/Kconfig.errata                     |  9 +++----
 arch/riscv/Kconfig.socs                       |  2 ++
 .../boot/dts/starfive/jh7100-common.dtsi      | 24 -------------------
 arch/riscv/boot/dts/starfive/jh7100.dtsi      |  4 ++++
 4 files changed, 11 insertions(+), 28 deletions(-)

diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
index 46a353a266e5..be5afec66eaa 100644
--- a/arch/riscv/Kconfig.errata
+++ b/arch/riscv/Kconfig.errata
@@ -77,13 +77,11 @@ config ERRATA_SIFIVE_CIP_1200
 	  If you don't know what to do here, say "Y".
 
 config ERRATA_STARFIVE_JH7100
-	bool "StarFive JH7100 support"
+	bool "StarFive JH7100 support for old devicetrees"
 	depends on ARCH_STARFIVE
 	depends on !DMA_DIRECT_REMAP
 	depends on NONPORTABLE
 	select DMA_GLOBAL_POOL
-	select RISCV_DMA_NONCOHERENT
-	select RISCV_NONSTANDARD_CACHE_OPS
 	select SIFIVE_CCACHE
 	default n
 	help
@@ -93,7 +91,10 @@ config ERRATA_STARFIVE_JH7100
 	  cache operations through the SiFive cache controller.
 
 	  Say "Y" if you want to support the BeagleV Starlight and/or
-	  StarFive VisionFive V1 boards.
+	  StarFive VisionFive V1 boards with older devicetrees that reserve
+	  memory for DMA using a "shared-dma-pool". If your devicetree has
+	  the "riscv,physical-memory-regions" property, you should instead
+	  enable RISCV_ISA_XLINUXMEMALIAS and use a portable kernel.
 
 config ERRATA_THEAD
 	bool "T-HEAD errata"
diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 848e7149e443..a8950206fb75 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -50,6 +50,8 @@ config SOC_STARFIVE
 	bool "StarFive SoCs"
 	select PINCTRL
 	select RESET_CONTROLLER
+	select RISCV_DMA_NONCOHERENT
+	select RISCV_NONSTANDARD_CACHE_OPS
 	select ARM_AMBA
 	help
 	  This enables support for StarFive SoC platform hardware.
diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
index ae1a6aeb0aea..47d0cf55bfc0 100644
--- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
@@ -42,30 +42,6 @@ led-ack {
 		};
 	};
 
-	reserved-memory {
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-
-		dma-reserved@fa000000 {
-			reg = <0x0 0xfa000000 0x0 0x1000000>;
-			no-map;
-		};
-
-		linux,dma@107a000000 {
-			compatible = "shared-dma-pool";
-			reg = <0x10 0x7a000000 0x0 0x1000000>;
-			no-map;
-			linux,dma-default;
-		};
-	};
-
-	soc {
-		dma-ranges = <0x00 0x80000000 0x00 0x80000000 0x00 0x7a000000>,
-			     <0x00 0xfa000000 0x10 0x7a000000 0x00 0x01000000>,
-			     <0x00 0xfb000000 0x00 0xfb000000 0x07 0x85000000>;
-	};
-
 	wifi_pwrseq: wifi-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&gpio 37 GPIO_ACTIVE_LOW>;
diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index 7de0732b8eab..c7d7ec9ed8c9 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -7,11 +7,15 @@
 /dts-v1/;
 #include <dt-bindings/clock/starfive-jh7100.h>
 #include <dt-bindings/reset/starfive-jh7100.h>
+#include <dt-bindings/riscv/physical-memory.h>
 
 / {
 	compatible = "starfive,jh7100";
 	#address-cells = <2>;
 	#size-cells = <2>;
+	riscv,physical-memory-regions =
+		<0x00 0x80000000 0x08 0x00000000 (PMA_RWXA | PMA_NONCOHERENT_MEMORY) 0x0>,
+		<0x10 0x00000000 0x08 0x00000000 (PMA_RWX | PMA_NONCACHEABLE_MEMORY | PMR_ALIAS(0)) 0x0>;
 
 	cpus: cpus {
 		#address-cells = <1>;
-- 
2.47.2


