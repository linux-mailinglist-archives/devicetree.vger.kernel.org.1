Return-Path: <devicetree+bounces-53473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FA388C67B
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 16:13:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A1A4AB23F23
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 15:13:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B81313C838;
	Tue, 26 Mar 2024 15:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DmGEXlBo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDCF13C803
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 15:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711465989; cv=none; b=LS5bUJ+n4faRfhDtW7EWyRXh0LvseacJnHTK+jMZP/Na72f+gC/Av2FeIulEwkBoZy9qZge0LdQo0WTIBV1PX5HRDszZKCYOYi2gmqWiRwgHGQL4WsaCYku1sqS2X3MBZroVkU8LktqopAze3ZzlNQeMtQNC/mRaWLdbC/Tdx6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711465989; c=relaxed/simple;
	bh=yGrckZogUueV/L3Jdeqh6qT0amJGwcUUTNSGaTDxz84=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lNtOiKvQaG7fAuTRQodWtO3u+okJDSGOH+HcPKLSOfuLvrqJz5rrSRJs25QOiygbHXnQhQIGxp+/cCovKjOEK1sROwnJUEnnGL1PXvNx2cIc7zE3rgPIi+m3UxRftJxX976hga6urPhBfb5ycnUm7luYmVKcw4YCM0pE4zI4uaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DmGEXlBo; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3417a3151c4so5076308f8f.3
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 08:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711465985; x=1712070785; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MO5kE0efurmStG/GDbYQCR+zDRIBosRyTiryNSDJIgQ=;
        b=DmGEXlBoTDYTANwuyKxbgHC1qt3+0kJMjarg6xvzl3H+DU35c1REr+9s8YWsZMvyCb
         m4T093mn9CEeI6uSrCNtTqZTnlVlRAo2YKGem9BTm39uhVCg35EW+D2e+id8FCTQ+Ht6
         lJEoPlvH/EpBAmPL3tPspCLzsFlle1s9Bvp5fgfLfKsJer372QjF7+1IUNjTi1TUfzOx
         HTAiiSi2bDLTnX0g1/VN2J2CCe0gBC6W5ITiYGgyBwerFwtf84s0AvyUYv3dIz1T07t4
         tihRe+xfqk2I9GXc3HLFv5i6cJyvC9O9iSN2nAs0DT4p/8zS0dsNpnv2XUAVNynZ3vWg
         08Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711465985; x=1712070785;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MO5kE0efurmStG/GDbYQCR+zDRIBosRyTiryNSDJIgQ=;
        b=AaaHt7/zGpfZBGkuFs/iGnHqw+fZWz2Bhdma5zQE0L7y6lo2Xh9vDMqv2j+v9hJ0JN
         oLYOC42YpdqRY3IoE/AmcXNPT4LjGdrfX+/82TGHAK+e6796BnpgOYM+3nZn4EifqmVG
         igqRDEmEF24ATg1PKKJlH98oquSFKOEkS3mm0oFKsZMZI7F000KZo4b0Zl9OQEA3s7pv
         uCiQivri/5yLNO4fypQeljZW+Nxf/fxM1NuJbO58nXfFSNM63RZigUsLb9tIOq2Rlr1/
         PNR1MN0rm6ka9uJy25ldr3FGAp4xNBWjKUAIVOg0U6ByEnBACbKuaKfIgKxq2VurBDuF
         hgTw==
X-Forwarded-Encrypted: i=1; AJvYcCXkerNi3qo+lWt2L8rcYNyR8lUmIXVGkrfzuO7XjRktB2PySaTohrrxDoOl155JSHzofjpJuu3/tILXi6jMjfdneMrVhbC+XpWXrA==
X-Gm-Message-State: AOJu0YzbRt6U0+DA7n7FWIo8ZH03GvfrFuMYkTP8e230JjL6YHZJjpmI
	3qBQ9aeAYBi6LkL32TuQUznbdQ+uagv0rwZhEkHneTsr2Vtt8b/8zK73kuMWT4A=
X-Google-Smtp-Source: AGHT+IFCi5lrQmSdawcokiQ4q0iepE7NMWfh2zL5b6c/3HGTHoKQfKiR2ttpjovQABe5RFCfi0MjCg==
X-Received: by 2002:a5d:5051:0:b0:340:5b4:ba31 with SMTP id h17-20020a5d5051000000b0034005b4ba31mr9065045wrt.34.1711465985508;
        Tue, 26 Mar 2024 08:13:05 -0700 (PDT)
Received: from ta2.c.googlers.com.com (158.100.79.34.bc.googleusercontent.com. [34.79.100.158])
        by smtp.gmail.com with ESMTPSA id b1-20020a5d40c1000000b0033e7a204dc7sm12325692wrq.32.2024.03.26.08.13.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 08:13:04 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	willmcvicker@google.com,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 2/5] arm64: dts: exynos: gs101: move serial_0 pinctrl-0/names to dtsi
Date: Tue, 26 Mar 2024 15:12:58 +0000
Message-ID: <20240326151301.348932-3-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.44.0.396.g6e790dbe36-goog
In-Reply-To: <20240326151301.348932-1-tudor.ambarus@linaro.org>
References: <20240326151301.348932-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The pinctrl nodes are coming from the shared gs101-pinctrl.dtsi,
thus the pinctrl-0/names shall stay in dtsi. Move them.

Reviewed-by: André Draszik <andre.draszik@linaro.org>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 2 --
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 40de2b0aa086..6be15e990b65 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -103,8 +103,6 @@ key_power: key-power-pins {
 };
 
 &serial_0 {
-	pinctrl-0 = <&uart0_bus>;
-	pinctrl-names = "default";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 5868c96c771f..a1aff219208a 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -424,6 +424,8 @@ serial_0: serial@10a00000 {
 				clocks = <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_0>,
 					 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_0>;
 				clock-names = "uart", "clk_uart_baud0";
+				pinctrl-0 = <&uart0_bus>;
+				pinctrl-names = "default";
 				samsung,uart-fifosize = <256>;
 				status = "disabled";
 			};
-- 
2.44.0.396.g6e790dbe36-goog


