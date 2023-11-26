Return-Path: <devicetree+bounces-19008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEFE7F967C
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 00:28:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 211D4B20A28
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 23:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC44515EBE;
	Sun, 26 Nov 2023 23:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="JQBKF97m"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA5F8D53
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:34 -0800 (PST)
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 78AE93F885
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701041313;
	bh=x/4VKc6j7ZPLGeNJb06p6pcCmpUDLk01xwbpFjzzvZw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=JQBKF97mNX55Yf3Gyc2h2E3Ppw+eHmmbNqFuFmM/Zhm126nXJhsKyqc0xCm7nuL0w
	 aG994RUfDT5oNwldoNpSR60mqWo4rQVXXwQHu8+TmprsjuF+HIZbnDxhCu8eol/1uP
	 ehsYxm1WzCaC+Ts48Fzou0cRMWTucocEXyqrONyIT6SkuhoDRxPa+7QNtxUYeidORC
	 L7T7lP/CuVHI2wjsgAt1Or+CXFo/dKSjH7z2GMInI5iMFkvQQsVD7uZSY/EWaRgQHu
	 NJmsliRbOwSkHtSQkjS8P3vjPv+QwKD0p3yrxNYmIEq0RHBkyfbCPPBxKWOHUPqAAO
	 Y/VNxZ0R3j4Aw==
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-5bd26ef66d1so5042573a12.2
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701041312; x=1701646112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x/4VKc6j7ZPLGeNJb06p6pcCmpUDLk01xwbpFjzzvZw=;
        b=ERJphmkfZ2kloS2PwsjVT722KiVNfeUPeQbffuWzJFFHERqBeh+mEdk4UcpT42XJt+
         lELJcyPAjQSNeVpyNmsHqmFdxZ1v4L/Tv5cLeLtz3CmA4Psxqh39+sgDlKPkWUEt6kEt
         igCZljqhpFA9FPW1eNc+xasCT4Q+W0C0jojWb+76GlQykRTA1fZMNY46NoljBpDyOGHd
         gIMSqf4sxQJaK1kcrqAp5NzZ7SR8SUVKVNpEsKrZclYtvflxXiErQqsehK8uNJkbiD1P
         FZz+QBNxgu25hkTYc53N5jxq6sBhIQ7RXFzoXA6mdXw1vrrnpHgp0CRjcQUR+1oTiwgD
         5AkA==
X-Gm-Message-State: AOJu0Yy8QOdQS2gJDhR3SY67Zq/bjUs3q8TfXWvsdVVsKg7v+EoNYQI6
	pl6iMNru2X1FsxOxBMkUncQxKoB1WedJAQ6cGNjjBjKg4PMtth0pQiP2KaDkmtg35YxoToEr1ap
	IfsnUoYEDRHu208jSo8DSPhA568OdtpVyyO85Zv0=
X-Received: by 2002:a17:902:ab94:b0:1cf:b6a7:67a3 with SMTP id f20-20020a170902ab9400b001cfb6a767a3mr5596105plr.56.1701041312180;
        Sun, 26 Nov 2023 15:28:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGn7gI9RzWm5JEwz0gkJGEdgyWBwAAAeo20KFp29UD271sxXxpOWLxGNhlLdPN5ZwfEX2jcYQ==
X-Received: by 2002:a17:902:ab94:b0:1cf:b6a7:67a3 with SMTP id f20-20020a170902ab9400b001cfb6a767a3mr5596096plr.56.1701041311896;
        Sun, 26 Nov 2023 15:28:31 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y10-20020a170902b48a00b001cfb52ebffesm3123853plr.147.2023.11.26.15.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 15:28:30 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v1 5/8] riscv: dts: starfive: Add pool for coherent DMA memory on JH7100 boards
Date: Mon, 27 Nov 2023 00:27:43 +0100
Message-Id: <20231126232746.264302-6-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
References: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The StarFive JH7100 SoC has non-coherent device DMAs, but most drivers
expect to be able to allocate coherent memory for DMA descriptors and
such. However on the JH7100 DDR memory appears twice in the physical
memory map, once cached and once uncached:

  0x00_8000_0000 - 0x08_7fff_ffff : Off chip DDR memory, cached
  0x10_0000_0000 - 0x17_ffff_ffff : Off chip DDR memory, uncached

To use this uncached region we create a global DMA memory pool there and
reserve the corresponding area in the cached region.

However the uncached region is fully above the 32bit address limit, so add
a dma-ranges map so the DMA address used for peripherals is still in the
regular cached region below the limit.

Link: https://github.com/starfive-tech/JH7100_Docs/blob/main/JH7100%20Data%20Sheet%20V01.01.04-EN%20(4-21-2021).pdf
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 .../boot/dts/starfive/jh7100-common.dtsi      | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
index b93ce351a90f..3af88e6970a3 100644
--- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
@@ -39,6 +39,30 @@ led-ack {
 			label = "ack";
 		};
 	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		dma-reserved@fa000000 {
+			reg = <0x0 0xfa000000 0x0 0x1000000>;
+			no-map;
+		};
+
+		linux,dma@107a000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10 0x7a000000 0x0 0x1000000>;
+			no-map;
+			linux,dma-default;
+		};
+	};
+
+	soc {
+		dma-ranges = <0x00 0x80000000 0x00 0x80000000 0x00 0x7a000000>,
+			     <0x00 0xfa000000 0x10 0x7a000000 0x00 0x01000000>,
+			     <0x00 0xfb000000 0x00 0xfb000000 0x07 0x85000000>;
+	};
 };
 
 &gpio {
-- 
2.40.1


