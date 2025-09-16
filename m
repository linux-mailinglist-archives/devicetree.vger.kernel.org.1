Return-Path: <devicetree+bounces-217886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C0410B599DA
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 16:27:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E401E4E4E76
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 14:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 105C632A822;
	Tue, 16 Sep 2025 14:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dSuZ369x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E94280A56
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 14:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758032389; cv=none; b=MPBYi47Me2n0W5PXALCbiKT5Ab7i/2zBgczs8V/lqAlvRDVBbQfuhL+PtQ6f1HiZa5/Q4cNZBmVVsowl8QD4GeIxr3hD5qPJ6QL3EYODgZz5ZXJ4L48jl1eJEzRzWGj2j9sZ1hAmA2+yQnty7XHIlwQ+wsd8mi490iWtmJaNAjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758032389; c=relaxed/simple;
	bh=IkW4nK/vinXYi2bfrKKAAwnIOc30dbD41Dd6dOR/Ldo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=u9nMvC7cbyQiPJLVZWYpS5KzvuHz5t0tLu/O9Gq7IY69Im69rjZ5cEH4iv4KncNBrbYmktHGrlHnL5KKMzLzr0L/J64t/OlSHtkSCjoIrf+lCj2GLTkVZRBWkp/YNZUAc1IY9YYZL2pnvRBQyRJZHKyGxb4Pl1Zuoe4BCPOw2E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dSuZ369x; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3e957ca53d1so2490160f8f.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758032386; x=1758637186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EtjNvPki9FX33kkHGpqKgjuJyKPvLiypLHYyt3prAwM=;
        b=dSuZ369x3at3HvOo1zi/P7neUerMH16IN8qEEjX/PgKSQp6+YOLK16HhHDMsCuCwvA
         vdT32WSgailg55IEn4kbgpql03gu2tJ+bGlDZ6iBECv2RGbTYBnKio4s+lusm93A0mrf
         dxnS9OCGdk1u6+H9a3bFve10aKB7Vf3U/YEjlyH26gfYQCsfoV3hXVCBB0eOr7P9TpbH
         9+vDRmi9PoQHSY7IUGgA9rPsJoOPjTmiBsv+7hlO9AZWC8MUuX9PegxB0phvkcoOPawu
         yokVmsQvr42UZCdMAwj9yulPaxWHaC93PHenkaF4RPYQ6rm63Rmqt9b4lz72bD4KhDgL
         fG6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758032386; x=1758637186;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EtjNvPki9FX33kkHGpqKgjuJyKPvLiypLHYyt3prAwM=;
        b=MY+3Lszy3hTrh4STubPOCF5y6s+mbZPip9RzwR8JTSjSq/1FlXZnwE7UaLDYAplEeG
         RXhDFYmP/cBAqGX9sAjgAeQEPdwpKREvWBOUboHfvPZJY7BjiJUMLYiQvlbGgSEDxBoK
         J3WlH33EtnoPfNf7IJzo3p3OTe+4+JN7zo8wi8X/zwVfrZNg5T7xauzWZQSqf47Bejpv
         tHQ25Ciz2fTKp1chdDayuIGbcbFD99dZvd1DwcSGerNij5m8JNU5MKFIOQ/VaMWmuw/Q
         HnaiPX0DrrmvOsV0QtdVkyv1ybOONwv7WXt/Pr9Tn6b9CuzsHCV0xlzq0UmrZVu/Om19
         3/Zw==
X-Forwarded-Encrypted: i=1; AJvYcCUtWZiahLMyS0t9Yx5evHYkQK3TueDyWFrrmatvanCJwaFTB37yBwloNGxpT6CFmD5UpYRFElFcPsqz@vger.kernel.org
X-Gm-Message-State: AOJu0YwqD4IkQUdID1X9eCa5D/Bj6Yizl+OSinCU5zAwxlnZA+RxxjwQ
	6a4YbaEcR7M0sflWXDvp3k/BiXIw2AKb0pxNNUA/Z1cgCFi3rOqe1U09fsaeQfGolVc=
X-Gm-Gg: ASbGncuX2BUWh3OLob7ZsWPeEYwjDvW11Sha+ey1FMewzi4YjoOf1rtTq7F71kwdfpF
	9PgICMLH8SqcW+/8oER9J+bL5Ja0iB3v0YYGLJs6/sZnQaYh+Ap297JvtEtYooeHO+B29mAqPp4
	7uhO2anyuWIqhehMmQZ4y4S62ZgJejYk0Z0DDMAu48juy14y5Td1EEG8/GLXJGeIj4stxFSwXZL
	3yRrOWehiVatmD0KqH4+8S5jKN/o+Hes9U8SoloUiO26q02mQV/gJehObo3brc8j7GI3t3hTaAH
	H6M0wSlvefUYSVahjPbz05OJTKE1aux/6np46N6ZCq1S3jT1Gq/yYpNG+ivK4Mdm9I3F5/hLLY4
	b3zRX2u3oP/5wRPVcHhFt/J6oX7f1b84=
X-Google-Smtp-Source: AGHT+IFdcw9hqpwZPogQtp5veCDSAw8ABo2+U1X+L5NI/DxNsiFcjHEYgUJ3E2vGvtEZVPnSECGu8w==
X-Received: by 2002:a05:6000:18a7:b0:3d4:eac4:9db2 with SMTP id ffacd0b85a97d-3e765782b5fmr18609594f8f.5.1758032385579;
        Tue, 16 Sep 2025 07:19:45 -0700 (PDT)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e037d7595sm220245015e9.24.2025.09.16.07.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 07:19:45 -0700 (PDT)
From: Eugen Hristev <eugen.hristev@linaro.org>
To: andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Eugen Hristev <eugen.hristev@linaro.org>
Subject: [PATCH] arm64: dts: qcom: lemans: Remove unnecessary cells from DSI nodes
Date: Tue, 16 Sep 2025 17:19:31 +0300
Message-ID: <20250916141931.601957-1-eugen.hristev@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warnings
Warning (avoid_unnecessary_addr_size): /soc@0/display-subsystem@ae00000/dsi@ae94000:
unnecessary #address-cells/#size-cells without "ranges", "dma-ranges" or child "reg" property

Fixes: 73db32b01c9f ("arm64: dts: qcom: sa8775p: add Display Serial Interface device nodes")
Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
I haven't found a pending patch for this, so here it goes, sorry if someone
already sent.

 arch/arm64/boot/dts/qcom/lemans.dtsi | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index fd6eb6fbe29a..a551f2a274a2 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -4524,9 +4524,6 @@ mdss0_dsi0: dsi@ae94000 {
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 				power-domains = <&rpmhpd SA8775P_MMCX>;
 
-				#address-cells = <1>;
-				#size-cells = <0>;
-
 				status = "disabled";
 
 				ports {
@@ -4606,9 +4603,6 @@ mdss0_dsi1: dsi@ae96000 {
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 				power-domains = <&rpmhpd SA8775P_MMCX>;
 
-				#address-cells = <1>;
-				#size-cells = <0>;
-
 				status = "disabled";
 
 				ports {
-- 
2.43.0


