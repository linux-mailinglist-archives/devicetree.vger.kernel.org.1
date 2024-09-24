Return-Path: <devicetree+bounces-104803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 056F098430C
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 12:06:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD87F286AE1
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 10:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AA1F1714CD;
	Tue, 24 Sep 2024 10:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="izdB8/WO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F57170A3E
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 10:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727172378; cv=none; b=rsswDMfndvN0PgYfgLvlVUv1ZMji3bN51XP67+lEcINm6zIPCLbsTGky00Sv2A6bhhDWLCsx+iDRDzYCpAmTJPMRwgRoleE/1TOt5uhsFA82OBi+Wn7PWcOh7T16X6NxLN8j8EQjmQQR1hC5fTrCWONcxMyRw+p9CLBWpes0zEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727172378; c=relaxed/simple;
	bh=lIVBQPIz9WvxZ/5Qn4QVL0JytdqL7JVcONxDHLAE9hk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iCqfsdrBsQJwaBeI0lgbDe/mrXqFkICNd1LfAYnrWd66nesSxp7INOkoX80iOlw6nR9MBxMxYXAVyNQmIv9FowoQHuJklYB+p/gB//N8uS9zCVgU5cYCujabGV4Bpl5vm25grgXkxy7xqsasMprPJDTw7imEVowjhwuk96RqklM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=izdB8/WO; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5356a7289ccso623815e87.1
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 03:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727172375; x=1727777175; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L5WUdwlaY+7OKjZpxVHALfwCLcqC3ZL0IKYRrMssvPw=;
        b=izdB8/WO95Bm1tS5+6ehzyuRPoADS48W9Mx3fF/d1Grjqt+mk2nnphL5AGMqE7U4kR
         deTbHdCYJtIGSX6ViWtleBMR8VSPVekrAzshHuRF4ImKD+haiKpryPHrfxwPNlhfkPhb
         /GG4LyLoR/mjMhIGAU0Bh9SWsa5Md9logt2Oh9uMw3FWaL4efqNEj8vn8YXpyuHYSCCY
         eiroIV8Ehia30f+uxgcDw2yImzdaxSiYAjwU5Z9XumXS9JwKkWGZRG3TuOGjAQbsnx1w
         kHT7/e8vJrJlhdvlJppQUahPGJq8jCoVq6yBczLwpAJskHM46yZNZpQjneIr+PrEpkul
         Qmiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727172375; x=1727777175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L5WUdwlaY+7OKjZpxVHALfwCLcqC3ZL0IKYRrMssvPw=;
        b=llsoGUFhqKhf86C3ESUXaO/P9AAhQii6N6zsEY82QQJb6voFFJp5P6k7LDAzKLphLt
         5T1lGNQoANt+tU3r9Yn4F3f+ZJs1yLxNvxUthqgk2R5SGry2SzjTfvCgvDrKIP9e1UMj
         XjK86R3fbDF2pi2YDhWLw8p4rBbP4UeAtJH+jIgt+uBjgg1gMqOEqH3PSemb8UcrINBZ
         Y55KIBMFe74X5DFzIMusNm1M9cnWiBo5GvrOY8ntFiS9Fyo7RwC1i0Be90hFGmuF8rrh
         16xD9fA6KzyNDLPWc4JSeDDh5N2mHgY1vHzVsnK6e6uvUjMEelMRt2nGlTAAbqlWM2y5
         xmVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYtRVjqlb1HzUHsB5VnQpSuTmu2x/2JGd4vKfXvBR+Pj+EiyV4z9lnpbzqqSimLAo3W7gmgSFnq+ud@vger.kernel.org
X-Gm-Message-State: AOJu0YwlQmeDAT1Y090pWGCrjNEsPv+TdOqqWvtO4BmAzv//w9Bx+VNQ
	G3mw0R+ZjubnwK/rTBlNhl06CHDGUzWdughjSa3ZS3fhempgtloRHDM3FRUdea0=
X-Google-Smtp-Source: AGHT+IHA6rku++B6Q1EWCsxLL+tLpUcxKqA6ZNe9VWurgRBB0ep4llyJVv37Depx3oWts1UG1vLZ0w==
X-Received: by 2002:a2e:be9b:0:b0:2f6:5e3a:a2e9 with SMTP id 38308e7fff4ca-2f7cb30d7fcmr24990761fa.5.1727172374918;
        Tue, 24 Sep 2024 03:06:14 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a864d937sm156713e87.273.2024.09.24.03.06.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 03:06:14 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/9] arm64: dts: qcom: sm8450-qrd: explicitly disable dispcc on the board
Date: Tue, 24 Sep 2024 13:05:55 +0300
Message-ID: <20240924100602.3813725-3-vladimir.zapolskiy@linaro.org>
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

A platform display clock controller is expected to be enabled by default
for all boards, however in particular cases preset display clock setting
is expected. To avoid any probable regression before enabling display
clock controller for all SM8450 platforms disable it for SM8450-QRD board
only.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 7b62ead68e77..8c39fbcaad80 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -349,6 +349,10 @@ vreg_l6e_1p2: ldo6 {
 	};
 };
 
+&dispcc {
+	status = "disabled";
+};
+
 &pcie0 {
 	status = "okay";
 };
-- 
2.45.2


