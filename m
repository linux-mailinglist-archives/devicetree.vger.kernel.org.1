Return-Path: <devicetree+bounces-189944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 704E9AE9EA0
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 15:25:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32837188EC0C
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 13:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1731B2E62D2;
	Thu, 26 Jun 2025 13:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SAYSqkfK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF8F28F93F
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750944226; cv=none; b=J/Q2rwTTDk2FYgfVPOOc//AFnxsmh7DUWF6y1u0osVzep6zNPqoZ9vvU2RZCbetsi5KfG3iza5rU4zqILTWzXMbJUiEMOQxzGvWOwGkExqrYC4kep5A7d1XQtLknECyNHZBLO4Ca304ajpnU3z4BQsVULretN0dHcB0Js8lvj80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750944226; c=relaxed/simple;
	bh=nsHewx2VL2AMVIeqVCjKf9A1TsR7pvGBhC7x1KZydl4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sxSUftO6fbZtKQ0C3O2lPdM1+MzUmfOgwnNrbTcPASjKof5PLoMjfjC5LPwtzf6VdZM9fzR08BlGDzSDcJl9uxVGGuLBcQpEdBrH+YIVfIYHlzxt1pYfC2GCYjrSlV5GsaDrXeqdwXkW7YQLnw4fMnJBtotOpNDdv4x49lr3XbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SAYSqkfK; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a531fcaa05so558238f8f.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 06:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750944223; x=1751549023; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XvZ6uX77hyNJJ7iBgJDLTyukijUbXgdBZZJDIwJY4lY=;
        b=SAYSqkfK5ScK42JoSBrjdwNiAx3k4kBI6o9CiX/AeaK2pKipi1QflrVwElwkH9ERof
         M8w8bIOuRsZFM2TcxRK3jHxw+PGs5fBmSJh7SxcLXtC+cadLqgc3fv2id0/zwFDxOPIS
         VLbu5ZMWL8zBgnTnqnXYIfveGsl2sylbplOARQyeEBb5dJuLRd6Y/b5RSfBv3rHrxImd
         E3kpUxodBLS+M7qc9Cm1xmzZ5ZqwvUSbe2s3RokpmJayKqgf085AZVsM2W1RFKcxz0C/
         0IWZ8C1QJKHJyNG2nM6kBf9EX6I8S7KYUojQ7UrSrGxiEBL7s8R5y9M7q7BKAaRkLw9v
         8WUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750944223; x=1751549023;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XvZ6uX77hyNJJ7iBgJDLTyukijUbXgdBZZJDIwJY4lY=;
        b=b7PlLgbloBAKiZG0YIMyp8j+se6sd8CdhslpHLpT0J46dgg/wmMdk1XEPTzrOu2CuP
         K4tmNlYfQ7Xjri4DUpD84KVUKUP7WBBiCM4HFpuImsqkmOuuw30D4+6vHo5ZiH8p9VDa
         34Hel/IKvESft0K8UlsiG5SNFHi5pcsw++4L1fSP9Eze453X/5PmiybVblm9rg+X5jAj
         r0Stdwf95rjEgXEHtBm2tG4Wk1uPw9+H+uNzRpUIctkT7vo9H0rAJu9R78G8f2k7Npph
         fXDpfOCTSB8YnozlnYhGw5poeIf8QJA3ZRPDrVleUeaKIectzIOK6dFQ9VcvMmyt5Gap
         Gt4Q==
X-Forwarded-Encrypted: i=1; AJvYcCU08tUVm1+M8liodYuxvtwTLfdHIFEWrpuU4CSYNyE6I/jTmG4wrNVpGfSs9dciA6qB5loDlgGPcHBk@vger.kernel.org
X-Gm-Message-State: AOJu0YziB+4ygAXVibeaHyVzcolU4fO1d23IN49/WJQyQi6nO4dmI7W9
	1JBg4Ehma+aeJTT319tbdQJVgrTaNlWX2OvhmgOuNh/t9p+0jN0s8uqPhdbVKBjvFA0=
X-Gm-Gg: ASbGncuJ2M6nkl/OQYTaG0nb4EGvlOk2ezqEVqF5N0emEweNQkbnnrD10Xc0708OgsA
	q7Y69pOz83r6FSsKAh+WQrJO40RnRsPeMrauO23bJifFNUta1OYndefkgxFUc+yNcv8kM/elpKM
	iXwcYR0p1ftKXGo3YzWa4G6Tmsihuwd5PCICM/s5uAn0bkFNMR8uANkuSxjOEf4BagzqzaMRFcK
	ixBf9aWpoP5L/4eKFN7ogyvtjalT9oLDjj1QgeMAgH1vw94PkalqN3abo/ZTM8qbn9Fptsy03pw
	+c8lnfEA729W5PQ/pjy5L+QVh3dUQSl8drE0VDDk5I6zzJKIem459PxNwohAkciXwcsDQy4tP7m
	/XKCoV0+CJ/zCqC3O7pLYQIsti+/VaSatmg==
X-Google-Smtp-Source: AGHT+IHLgWDCWKhldR992iGGgdKmiQvfEEbj/qhGSBInZBEK/oh7BDBrhDGEkY0fPEStJ7yCE/2CSA==
X-Received: by 2002:a05:6000:310f:b0:3a5:2cb5:642f with SMTP id ffacd0b85a97d-3a6ed64b8cbmr5290102f8f.34.1750944222377;
        Thu, 26 Jun 2025 06:23:42 -0700 (PDT)
Received: from toyger.localdomain (p5b29ef66.dip0.t-ipconnect.de. [91.41.239.102])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a3a57c2sm19868645e9.12.2025.06.26.06.23.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 06:23:41 -0700 (PDT)
From: Casey Connolly <casey.connolly@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	cros-qcom-dts-watchers@chromium.org
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
	Casey Connolly <casey.connolly@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sc7280.dtsi: prevent garbage on serial port
Date: Thu, 26 Jun 2025 15:23:30 +0200
Message-ID: <20250626132333.351351-1-casey.connolly@linaro.org>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

During early boot phases there can be garbage characters on the serial
RX port unless it is configured as pull-up. Add the pull-up bias and
mark the rx/tx pinconfs as being necessary for all boot phases.

Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 64a2abd30100..60e4a311405a 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -5742,13 +5742,16 @@ qup_uart4_rx: qup-uart4-rx-state {
 
 			qup_uart5_tx: qup-uart5-tx-state {
 				pins = "gpio22";
 				function = "qup05";
+				bootph-all;
 			};
 
 			qup_uart5_rx: qup-uart5-rx-state {
 				pins = "gpio23";
 				function = "qup05";
+				bootph-all;
+				bias-pull-up;
 			};
 
 			qup_uart6_cts: qup-uart6-cts-state {
 				pins = "gpio24";
-- 
2.50.0


