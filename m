Return-Path: <devicetree+bounces-203636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E3FB22210
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:56:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B706B18C6543
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 08:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D443F2E7628;
	Tue, 12 Aug 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="cYazT4E0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4372DCF7C
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754988533; cv=none; b=VVaMcRVUa9hELHQpOa/EjxcOQooDlZADI/tpZLeDfRAlrAjL1MoYU2dPqD02lfAVwHWZ+MQiA2ISjVVvb2WA3LcPLjF024h86ciODV0MyE3JQW6Wjr41DopgJC9JpfbztLuEwr/QfNnFZMfrSvPPydGM1flOIKZYAsOBwnsPSWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754988533; c=relaxed/simple;
	bh=aFBF5dW26m6Z+lOf9QzPL7466+Foa5N95p4seNu5zUk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mH5HvoQlYyOfZs6VUFCuZG55Oo3++BNUSi0I2aZ+esFg34lfSZh6x4HOSIfDrUmKGH27hzSVi6DwYmaWrBBzrkyxs+VjcAEbQ7CkUQf4rVnl2lR79AmFkuWYihV6T1VLnwzgyMLH8y/XBX6nWkkt63HgEf/Ef052g0N6etpyFUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=cYazT4E0; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-6182ea5a6c0so2926315a12.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 01:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1754988530; x=1755593330; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l0CFpq1HCuyeYFLbDR8k9bWBZ4oNvj1i296rXTBH/70=;
        b=cYazT4E0MMtqGBX9s2zmIqO4LOH0HheT/sseXh61GRUfUAkg2Lv3E++8t3vqWpIxfb
         Ku7FPCSh/4S7MsTXFqiVvlh2c9cNy39fDHjLD/6AX4MrvPU6KV7WQcsNl7dbgZwPalvN
         oPJ25Je98xpZ35PsTYvxugW0OQ7DyObwXgtU9Aapuu61/rfv1Hf1aG6bGEMjoE/sUnP3
         Z6/MqCh7UFQWVoZQkSpzLWCZFQAMYoFa9qYzU8CpKBGf2n22/wrThWduWnD427yDZLMF
         JW5kkgKkU2txC8kwvFFlRDgdmv5vYhFA8MrHlUg8Kd9vHb4qfX2Oo8iGrMzYmOXvqMg2
         dNBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754988530; x=1755593330;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l0CFpq1HCuyeYFLbDR8k9bWBZ4oNvj1i296rXTBH/70=;
        b=q6G15JcODr2lXQoV7jtkUULN9SQGr62Duupr5H25Mb6q09EsRS7FTPSJBkA/B5VdZy
         hGSFIGIGRInm3RQrUy2xdVmhKbgG52ccWqARSBCeUNFpuEWubZILLtFYtbCJJLjeu/Fb
         xEHiqyAVx5Bsd7HmAMCpARrmlaJWDRdhlr9H+R0bpIGoLDp2lMbt205q2qvWzw9VXqaM
         BREDdpWYkFGiMqxVUxDobUeBJWPQN/6fskPwsCTYOokec9VpZBlGCGjQsLDHvsLsh3Ev
         zhHaAgy7Hul2wXWuIFeFckb0zKde/3Qr68yB7pBmLp3vSE7yKXq/QBAMtzvTSP3uqJHr
         fmOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSXUI9/Y/HiBrPN4jE2cSrZvQVlDJqpb2LL8sdmexfBm6ZkoymqbUQfgltrxvKL2/ihhA62IoHCxJs@vger.kernel.org
X-Gm-Message-State: AOJu0YySZVzcrRkuwaiRPobdQ1OxArZf25lnJBQHtWo+cgCpZsw8Gvbt
	g0lT8r1YEbrD5UOqcwiof4/6pm3El88SfyoxubuEPe15eKuXCNT4MkOoZqVfqa3WUGI=
X-Gm-Gg: ASbGncu1VMyTAQnkcloDAUI1z2HPb0etQZXBdAmeFy7MksnPKzCVU1XmBiTmkGjqF3U
	qGTQFcohDUVEGwMdjNNoWa87ljrLsm+OKNm0LJFeuVHvEU/x31p0brvsWrSdfKf7ha+pI4T47Kw
	K834qL38ldOjF3DcBmO4bdZeiqtaq0dH+1q7pgUN1K4NHDE9cH6ON3rIGDXZ7otEGf1Pcm2LBKF
	xIi9rHo4zznP3xjovIg1iSeYoFtYrGav2qbl0e9sdptKB/0A+hdxLR0X7sEQ8RQIW024/Mvyhgc
	J9AgfNkXP+R1qk/6e75AYdJNT/bBwTX/2V+xfITZ5p7kG/Oy2v3Mf/4RGKPyvdxVHiS82ZuQ4Xs
	PU+/0u+MIWUzgoEkY7RjDKnasfePho4ov3W0m8JPZUyjNcpsvefFnSqP3nRTbTafxWA==
X-Google-Smtp-Source: AGHT+IHtFs8w0fVJyzS1M1cginNB7x2BJdFDZRxDj5MXgzQYeyqcq0scZCRhd7hs7865IgJzSU8QUg==
X-Received: by 2002:a05:6402:3111:b0:614:fead:3d56 with SMTP id 4fb4d7f45d1cf-617e2e8fc4amr8958140a12.32.1754988530010;
        Tue, 12 Aug 2025 01:48:50 -0700 (PDT)
Received: from localhost (host-79-44-170-80.retail.telecomitalia.it. [79.44.170.80])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-617df37d061sm7754871a12.40.2025.08.12.01.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 01:48:49 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Jim Quinlan <jim2101024@gmail.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	kwilczynski@kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] dt-bindings: pci: brcmstb: Add rp1-nexus node to fix DTC warning
Date: Tue, 12 Aug 2025 10:50:37 +0200
Message-ID: <20250812085037.13517-1-andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The devicetree compiler is complaining as follows:

arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi:3.11-14.3: Warning (unit_address_vs_reg): /axi/pcie@1000120000/rp1_nexus: node has a reg or ranges property, but no unit name
/home/andrea/linux-torvalds/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtb: pcie@1000120000: Unevaluated properties are not allowed ('rp1_nexus' was unexpected)

Add the optional node that fix this to the DT binding.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202506041952.baJDYBT4-lkp@intel.com/
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index 812ef5957cfc..7d8ba920b652 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -126,6 +126,15 @@ required:
 allOf:
   - $ref: /schemas/pci/pci-host-bridge.yaml#
   - $ref: /schemas/interrupt-controller/msi-controller.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,bcm2712-pcie
+    then:
+      properties:
+        rp1_nexus:
+          $ref: /schemas/misc/pci1de4,1.yaml
   - if:
       properties:
         compatible:
-- 
2.35.3


