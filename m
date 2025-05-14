Return-Path: <devicetree+bounces-177071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D89CEAB65D9
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:26:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E3371B64E99
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 08:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FB23222587;
	Wed, 14 May 2025 08:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="OcnEbZ3Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A98221F35
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211123; cv=none; b=I8MCJ8T5qJh61W5OhsbUYmIanb+Gs/eKq/Sj51fyz9DtE15jCXY4a7/kyPH6jWCuUAMC/27qvY1QKOKu0SE+3ywMEurrGR2ythd6m/m0rmUExECTrzjajKXstE5zW8Gfj4hlFH5i+6mwXjEJjk7CG7Apvt9o3fR0tgo7T1vHZjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211123; c=relaxed/simple;
	bh=ZipZSEekCOwBPZ18Fcs5qi+NhaNjKzgEVYb+83pi89E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mW6L/QKcPw/BuyKIxXXO78+Yr1Mra6jPsILngkHQR1mKhW1MeIQlNYJnWQKP7Qq6bfCymkrntUhOnWGBEDPg498X5wCBqpEP6LeMWe/dv5GVej1lYioDIi3aOXlUWObxM0Rlb+tfRUA2M16ug3PwHsrFpH3KgHr8tkeT2dGehC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=OcnEbZ3Q; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-442ec3ce724so11782255e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 01:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747211120; x=1747815920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aKqfhyziPKh1buAFQiruekyv9kuJ09baYGjn2NGVAIE=;
        b=OcnEbZ3Q/hL9MPq7JnFY/7xsrGc9O6QzXfOCdi8Cz4R6Fk1+rezpC32LFNFc+jBche
         zu3ZqjeIrCOWcSlbtSm1kcwe5BGGNpaALUjGrjsEiMNEBn9ZTH8qVsY6a1WxLralZqPI
         Txnd8/3sieMgT2G1Hm/bXPJuhRvhFWmCKVais=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747211120; x=1747815920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aKqfhyziPKh1buAFQiruekyv9kuJ09baYGjn2NGVAIE=;
        b=rFIzSApcF5MaqzhZGWjreUiuVPzbDODTZNc6hVmvGfcHdue4afx7+P1AS3PVCq4N7Q
         42ZrBll7+4s52l6drkGPFL74P7TqiKyVYFI/ZUwd2vArToXJ1KJEDx/nb+o6DON9NPew
         HWmDzkg4GlDiFA/P4m3e2OVhVkwXHHGTjEtOHNcFfWkEGfHJc6MBhYeIduJG0ps66kf5
         LYznIJjY937Yp/1/B6yP3aNOpsYacyJFBRSpg9E+JuskClp04vIoBdgpplcl2lxhbwAC
         X7p/b/5EFRhTnSfHK5VdT1vIVzdjfhbJthnFQZcpK2CXOjvaK4xjLpIcZZXbwp9L2ZIw
         DByA==
X-Forwarded-Encrypted: i=1; AJvYcCXrKyXEEno3qqIHR3qCH4DDxZg3kd62ugIqqLnsXiKLkh4djQHvKyjMdtM9Zae5/Vf4VcL6RxIcvjqo@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6dXoxpj3ZgY6bBZXG11QAy9row4KQD+YvHyl3BhDzoZKwXbjq
	z08tywFE7tSv6byl84geV06szpWT5/HgHpNHUFbaOPEZLPibyrtx63zWmWRuGuc=
X-Gm-Gg: ASbGncuRlG4kWRUPQ0xeV9IOcZgN2B2QFbqvEkQJYJx6LBgoXXkurernd0aYGMqhokZ
	cnUzsUwT4PtBl336CebNJMGZQZJMDt3rgg+Lydg19gg2nVe5xwu3dm1Qiv1AcgFMC7BlsD1dXFT
	lsAMSK01PpNzXbg2oAe0sM1Psgsof9YPChp3LrSup/B3nmG3z7nVocPQoHOVmia5yUlE6WDK4Mq
	s1hs04EM55zOQ5zHaT9FaAxuTZmaretIC+Jccj59dFPQ1nFucHgFZ5pnC3OwGuM9sIQgY2aHz8k
	DmdBQuGXJT0BiiA/w7u8RklCTdBmh56MkDdgwsnyBJEz7f6ISdgInzUvu2KLeneFEAwOpbEdFSX
	+qjh8MlfN5QLVwSmDIEIYxd5PRt83bABkMkEsXqZ78/8=
X-Google-Smtp-Source: AGHT+IHcoj4ReIr/iS8EBigcY3fpcStHE6rMJeIJaxLW28FmlfG9AFQQiTloWrHrTZYCmAs4sAUIcA==
X-Received: by 2002:a05:600c:1e2a:b0:442:d9fc:7de with SMTP id 5b1f17b1804b1-442f21696fdmr16799435e9.22.1747211119909;
        Wed, 14 May 2025 01:25:19 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ebda7d2csm30987365e9.3.2025.05.14.01.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 01:25:19 -0700 (PDT)
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
Subject: [PATCH 6/9] arm64: dts: imx8mn-bsh-smm-s2-common: Set minimum value for VDD_DRAM_VPU_GPU
Date: Wed, 14 May 2025 10:25:00 +0200
Message-ID: <20250514082507.1983849-7-dario.binacchi@amarulasolutions.com>
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

Buck3 is called Buck5 in the BD71847 datasheet. This buck supports
0.55...1.35V. Set the minimum allowed value.

Signed-off-by: Wolfgang Birkner <wolfgang.birkner@bshg.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index fd12b97525d1..81fa0a8767e2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -135,7 +135,7 @@ buck2_reg: BUCK2 {
 			buck3_reg: BUCK3 {
 				/* PMIC_BUCK5 - VDD_DRAM_VPU_GPU */
 				regulator-name = "buck3";
-				regulator-min-microvolt = <700000>;
+				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <1350000>;
 				regulator-boot-on;
 				regulator-always-on;
-- 
2.43.0


