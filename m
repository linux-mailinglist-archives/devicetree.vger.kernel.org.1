Return-Path: <devicetree+bounces-104809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAB498431C
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 12:07:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2868FB25826
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 10:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D5F9175D34;
	Tue, 24 Sep 2024 10:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NVwiXJcw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A2816DEDF
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 10:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727172393; cv=none; b=pq7I8GrHW+oiObdYeG42Ga/IYDqrHyTEtXHFuzSn5xtJtpkkghPOoxw/19RNxVhGcSnZ3DE+gCw33pcFlJn+cnWtYRa1FuaKdFypUwLwlw3Utn940aMfQ5BP2GG85FJXamyiWXMVnq0RF/wTEwnHMcIOnQOe/kPItNCZzFRMfQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727172393; c=relaxed/simple;
	bh=k4KlAGXh4ZhoNVOj+GmoOae0vh13C69gHyii10Bpp8s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JTO6cCU6L45GMvP5xXB9VY0RJm9ATREUb4kvZWKC1rggjs2g0jQUb8klzJcz8IkM/NChkoEmud4F2tEjErfGBbammNFuur12O1piv65JHKPhmPpWeOZQeTEe/GWpyDHU+XiZsEfzJhJYlc+AazOutLtuQ9d6oUMH1fVbyOa9Aeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NVwiXJcw; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53567019df6so319193e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 03:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727172390; x=1727777190; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tuPf5wcpYTuwtsDhcn0pvrCBSJatT3E+g0dWwC7g/+I=;
        b=NVwiXJcwBolOmkmpVN9B6+adPtXDK2JB40TSXazjEQzQeRVbCD4fiPn41U0aUBWDgy
         NTbFyYTpKc1ju7iCO5yj534oMQ4ea/GVnuMQRdkQNUeE591ktc+gUDCtTQEVwTi1KKNN
         yrNEtpfuEUvUqChOdYfaO6NZMGBdOYmuFPIbNxGg//yG/LoRFNFCx4mrepXSnuA7vA64
         kgTGIy46rkKqBSo6aYl6avh75mcc3BFbAc+zyOfKc09g/rFlrV5L++hi+0sRFuKV6RSH
         nkEXJRQg4lF6T2EnVkGIYKeUJgkQYEjSVeUTmN3+/Y/8Dka11FmcZ6M4avce/ld3rpCN
         HxYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727172390; x=1727777190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tuPf5wcpYTuwtsDhcn0pvrCBSJatT3E+g0dWwC7g/+I=;
        b=QToTq7GwmGzxfK3XH7SzbSo7BWwD5pLiuReRCtQTZBgihb3eYItXIM1TDvNPP1R4tK
         aNsevCRPUjo2NqZh6KZowoKWu0FPr4zihTMm+8bWzNOxDTean21NbKoEIoSlWcAD01Zv
         YjluSgpeLUJ5jLqmZb5neRJJuSTtWQ/PHwKoJwPqqcpuIsoGdLn/Q7wAmrTE9zr7JK7/
         yPyNqkdTZrop2bSG6On5qYcRpKx2RIWojhfaLxvAvoR9JlAwAW4j1DDeKzs3gOqM974+
         vWQ9kvLXcSVpLVViPB6JtBcDXxvGHbyFx4TdRDyyfDiB9Fp5fiklGkkuUnZ7wr0Ywf8w
         8D9w==
X-Forwarded-Encrypted: i=1; AJvYcCWb45jdqLuDhqeIA6qOvf8D+BG4DNpummWo+DyQldwcK0gNXdDzRi8xuD1OtfUOH8Zqx9qe6Mh9ihFJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzoKOeyjlUDm+yUFZ/xA1agxqZZyQjP5bBJuXkoydKUJggOidk4
	hgdoj2UJpU4i03spPPIuls+2mtVM/+NBAgJaaWhXbq+5rn5Y2n6FTKzMfO4ucz4=
X-Google-Smtp-Source: AGHT+IHmLtYZaU1Zk91moHDHsBUU4FekfVpxk5T+jz2XbND9hZFQIHw7d9uhHjJAvCCFsqWJ2Ouh6g==
X-Received: by 2002:a05:6512:23a3:b0:536:7362:5913 with SMTP id 2adb3069b0e04-536ac2d0367mr2290045e87.2.1727172390061;
        Tue, 24 Sep 2024 03:06:30 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a864d937sm156713e87.273.2024.09.24.03.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 03:06:29 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 8/9] arm64: dts: qcom: sm8650-mtp: remove status property from dispcc device tree node
Date: Tue, 24 Sep 2024 13:06:01 +0300
Message-ID: <20240924100602.3813725-9-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240924100602.3813725-1-vladimir.zapolskiy@linaro.org>
References: <20240924100602.3813725-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

After a change enabling display clock controller for all Qualcomm SM8650
powered board by default there is no more need to set a status property
of dispcc on SM8650-MTP board.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index c63822f5b127..0db2cb03f252 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -585,10 +585,6 @@ vreg_l7n_3p3: ldo7 {
 	};
 };
 
-&dispcc {
-	status = "okay";
-};
-
 &lpass_tlmm {
 	spkr_1_sd_n_active: spkr-1-sd-n-active-state {
 		pins = "gpio21";
-- 
2.45.2


