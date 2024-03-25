Return-Path: <devicetree+bounces-52992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3963E88A973
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:34:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D5E3E1F39D66
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 299CC157E99;
	Mon, 25 Mar 2024 14:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PLNC0BDi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9415112C551
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711377456; cv=none; b=dzIUD/hDhv79T3uCvBdC1+DNe1N5+PiqyLb3QzI8jsgpDolF9qdkmGx2SwazDQZeaUYdSGRMPZryfw/a2IFS7efEvz0dY6c5mUW8gpuJcqfeAoYIA0xqGjuOsDA3TAAHwr/3cQIUK1gcZ+1T07koGGhBwySSzG9VVOXtda6quas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711377456; c=relaxed/simple;
	bh=sQDownahERQbsy/3yUJWb5j7l1WFTIs229JvtHNRYPU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bhoAtWO7LVTskvLmdwl+t0nsHR5mVZ1EwXUoiM7+v1aFZhYisxkQbvA5uM+fQfCGVrikK+V8GfRl/K5UKqGNljMQjGSWzDBUUeyM1082S0T5PmKY9yeRwr36U3maWL+dUqdE5T/W022fZsYiXViAi7wSZ98wHUCdzdPLBEkBSgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PLNC0BDi; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-229cbc52318so1970149fac.2
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 07:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711377453; x=1711982253; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jW/fuOm8kdNuw3NGoECZHkU27Cn95NEg76ds+zxvtyA=;
        b=PLNC0BDimpMuGWU9r9OAhPCY1JRLPQWUsMs106e9mutWL8IyknjlokNRNjlMtL4yFX
         3c+EcSsaCqSN2AE5tkPorJJjVnxqAfoBi07kGKJweP+EQyMKWyNvMo0sTpojZ0bG2wA3
         7EZwyNOhhkA94Uq5EIc0MyAv2QrH+ix7aF1N7Ig0Zqeq8rihPStel6YWBtfznQJf2qMZ
         jIpBHsZb84FS9bgfNN0X7/JcgvrxFVYhrqNw83YHBA9tPrA+3WIpuwgsZSoWsBMzkE3R
         D44ABpx27toay2dNdnGqhAyWGAzLCGLJUprebzcgOgjWODFoWgfZmgvcCgyEG8O3ODpg
         jfXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711377453; x=1711982253;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jW/fuOm8kdNuw3NGoECZHkU27Cn95NEg76ds+zxvtyA=;
        b=Xd8B0qMu9z00MOrQvSC6tB1wRx8Xv4xoz7TFTuYas+sS2UACibM0dR1oY9nntQtOSf
         OnVCVHdQMBDnIglJjeIGUO04cmc6cyxvzMYBll1SUa5jLBfJoOy41EQBCCR5oI7kIrBk
         /qo0Gq/UJEmsZMkotQAvz5OlL46hiq1KlIwY6+FO0XH/EHHRstzdWk1CKryqWW7Ulap3
         gVFWW1825Feze/UHtk3ffsw9S8EnGv9y3696SUku+GVvJuVMAHhAOm95iPlI8m8EG8J5
         jjVLMl5+xx6rAkG9ae5XSY7UgZHr/mGKMyK+bV6DE5pguXx4/LP+bFFFSzKzY5tUxe22
         tbtg==
X-Gm-Message-State: AOJu0Yw4+Dy8QH2j0XMEh1cBrGC096uEjjRYhd0TxmsKQOLk1vZLfGOg
	lLSMO7K8jQlvBnTCm3OBuZoag8xWHP9ZT7RcxgLgkAEbDY94WJ3B
X-Google-Smtp-Source: AGHT+IF46VGAe4lT/KeyjDVFgf4uKpf+cVl6AX1v4Lkt3h1opIge5Yqt6wlupJOxiq90fY8R6KTN9w==
X-Received: by 2002:a05:6871:d190:b0:21e:e5db:7964 with SMTP id pj16-20020a056871d19000b0021ee5db7964mr7234666oac.23.1711377453699;
        Mon, 25 Mar 2024 07:37:33 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id xb22-20020a056870cd9600b0022a0ff98f9bsm1417180oab.4.2024.03.25.07.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 07:37:33 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4] arm64: dts: rockchip: rgxx3: Add additional properties for WiFi
Date: Mon, 25 Mar 2024 09:37:26 -0500
Message-Id: <20240325143729.83852-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325143729.83852-1-macroalpha82@gmail.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add additional properties for the SDMMC2 node. Based on user feedback
these help correct some issues with probing the WiFi hardware.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 18b8c2e7befa..c8fdb1b817f5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -623,9 +623,12 @@ &sdmmc2 {
 	cap-sdio-irq;
 	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
 	non-removable;
 	pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
 	pinctrl-names = "default";
+	sd-uhs-sdr50;
 	vmmc-supply = <&vcc_wifi>;
 	vqmmc-supply = <&vcca1v8_pmu>;
 	status = "okay";
-- 
2.34.1


