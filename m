Return-Path: <devicetree+bounces-177073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CC74CAB65E3
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:27:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BC4A37B8F70
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 08:25:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 607D6223DD3;
	Wed, 14 May 2025 08:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="jz4s1atV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8CF22331C
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211126; cv=none; b=HFNXfMGE67kOn0sDAI/PSARMr3wljRf6qFtZ4VRxvI+GTAHTIric1R6pANjAqF/musA0u6l3cj04HLMInmPKhNxCxBZkzPIiHJhOfW29l+2gNXiqIU2U4jfSjLUfVXG51XuyFwN/tkaM3W7fzg2kxTyKXNs3Q6PaYFTDxErrQPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211126; c=relaxed/simple;
	bh=e2pQqiVOxDgNFEozC0iIGMhFjYoToSACQa3AfvGruJA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BNoG/26osqBHpg8+J0/ApuqwBpXYWdT3ClFSggZPefZQar5zQxKpweoZiPYRB5TihK/OajDCR+50RfPvN9/jww1fxAKJWoLbyJkZCoCNQXhmJAdral80JhooLCC/lL9cQhYkqZt5QGrmQE1CYaidmm6y0xaSgdAH+hKoGm8F4c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=jz4s1atV; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a1d8c09674so3683204f8f.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 01:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747211122; x=1747815922; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pt1EP0ezTYwDfM+B24peCLWSMczcGcs5Rkqpf9JI850=;
        b=jz4s1atVHtB1MpacbKL5RQMtwWYgr5Bxu+2td7xF8msjQFCF/HjVyOP7r3VyrSlnSf
         RkQSN+oAAnliXitvoZuqcdV9VnAE+ESLLkB8ODrB3UdSQxM5LridwnNqxVFNMzORXSym
         duhXNkC804rcnxhkugyM+olBMbw26Lqxyj5To=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747211122; x=1747815922;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pt1EP0ezTYwDfM+B24peCLWSMczcGcs5Rkqpf9JI850=;
        b=wSzGf6XmlnjGd1VRwC+7+vGPfk13bDmpHb1rp0cfk65UtsJc27mN/RwRm9/vDXwFkC
         L1N/NA1v+PYOK+Mq+H337E3dvyOmEMq3VX9H8CwDuQY+sEi+ekcnhQNG3u4pyTTuujYi
         H6MMYfCPSvVPozs2MlNlVKk+HtvVC0IX7ZhfttI81ATdLvBvtQmDj7iUwco3xddHHwdc
         hB/BDWyqrRkQYD4E7c3SC43z3oxJcwtYRlhLIj+LscSUmLgmdXWd7TZKDQgqPyFn5RFH
         3Kw5DbpTce9Nfv2UIlpcMBwCKJ/yzVA4ainsV725wUWU8fhOOSX9JEwQ5YNAKV9p/uwA
         MiIQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgu+R841bOv1EwVmk9pAlXduLrjf+jKyXQiZgT8I5ARMQZwKCLX0mIMf49nvzp+rZEF+BGYKk4OzzB@vger.kernel.org
X-Gm-Message-State: AOJu0YzZzr/Od1i4Fh9nn8o4JUL4ndswh1AMI3tQut3mTdA2ry805KxC
	01waVGaryRMzaljfcgzz4r1mmiOmgRfMur+ZjkCMf1Ruz23v17jeDeyx5iv6qmU=
X-Gm-Gg: ASbGncsgvLGZvUp+krVCXvx1KnVEPsrX1jXxk0zS0PHEFE+QsdiacyEAV0rVk1fRNPt
	KiRy/MdfEElc0y6WfnjrTqEG2QaGPlbzuJ65SiUR9z8e4pQUnh/NZp6F/1pPgTCDebvmI7REXYl
	ajdC501G3oiylrXLfL3gA9AWoHz9b2LeSjkhH6wJ2EBxfpMH8uVV/OyQ6+xAXjkcCV1VsboboT5
	xZHToQxrnhAzwGky8WbXRfTLzXJgh2HuwX1//kc6Sb5R9zDVGSf8ZK00Nk/Zbk+FmFgZbE9nup4
	03XyNkwJNmaPnUs3V5qsveMq+ftxlKVTK+PLqSx7N1pOp/S2GdW6PN7+ntMW9dIg0fH1jJJ83Rt
	JC8Q20Q5qpUv/CNfDD7HRIvWRP5vZdAzj5fiq3yxi7uI=
X-Google-Smtp-Source: AGHT+IFjDXXwQhSURwlfHmcLE4irqIStV0UgnScTM4HB5AXLneqabf/gWJDu9GBdpVyWbqQMxTEylA==
X-Received: by 2002:a05:6000:2505:b0:3a0:aee0:c647 with SMTP id ffacd0b85a97d-3a3496a42f0mr1760633f8f.17.1747211122654;
        Wed, 14 May 2025 01:25:22 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ebda7d2csm30987365e9.3.2025.05.14.01.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 01:25:22 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Simon Holesch <simon.holesch@bshg.com>,
	Karthikdatt Anantharamrao <karthikdatt.anantharamrao@in.bosch.com>,
	michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Wolfgang Birkner <wolfgang.birkner@bshg.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 8/9] arm64: dts: imx8mn-bsh-smm-s2-common: Increase drive strength of pmic irq
Date: Wed, 14 May 2025 10:25:02 +0200
Message-ID: <20250514082507.1983849-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
References: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wolfgang Birkner <wolfgang.birkner@bshg.com>

Increased drive strength of PMIC IRQ pin to increase reliability on the
reference hardware.

Signed-off-by: Wolfgang Birkner <wolfgang.birkner@bshg.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index 04112a83b1d3..ea8d741c6904 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -364,7 +364,7 @@ MX8MN_IOMUXC_I2C4_SDA_I2C4_SDA			0x400000c2
 
 	pinctrl_pmic: pmicirqgrp {
 		fsl,pins = <
-			MX8MN_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x040
+			MX8MN_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x041
 		>;
 	};
 
-- 
2.43.0


