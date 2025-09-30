Return-Path: <devicetree+bounces-222810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 49361BAD2FC
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 16:32:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D336A189E367
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 003592FD1DD;
	Tue, 30 Sep 2025 14:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="4yngYK1t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C1821323C
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759242757; cv=none; b=CWVUkm1bRoSJa3RF2Qlwfe1q4X+ki0Qa8/ZLDw+ItfYR2U26+VnjXP1I4+3/jWzdPaXQCGWV+CHB+JUmhkI06YoI5iJ5T8nLCGc7Q78vsnuA8HsIirJT8p8ybKKr2DIR1F25NsLpmabSzdeOawMetTjzjDMGkrc/M25ZBxU3lEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759242757; c=relaxed/simple;
	bh=e33Ua60plf36TGZ8AqkpnW6fFz1iOr2OCUIOOUwqFxA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JqMOrKZKcV/apeSb68VHSeSRtNuOQLKymMMVo9q+Qk20UN6TW0muSIvPBDauVgsHmhUF6koX4uT1xhACC4BD92GriN8KhT+zjNg3tt56exchR7aa24vACgW8T26TXTPEMccjMPqCuf2XMmyU+Sg0u6O8CczYMpXHQPFbISYjy8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=4yngYK1t; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b07d4d24d09so1155152866b.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759242754; x=1759847554; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jIXFkHTmTBNdoxIiGuiXY5Mb/iVkGyXh19PiQ5Z7rqw=;
        b=4yngYK1txH4CiwIHx7cTJTv8qMwBRP5wznfEtNYWAAWxDTExd1ieTWuQvp6mcLkqpM
         Q15XYAZ7GtE9WzwWhtAfZj8bMt0LhuuzGnaQp5+1wiDkrqCa/6JzMPbJzz9FbTga/0qp
         9/j+2H9e3Ve9dSvHF4yiiIzrhXXZ06WUYVHO/DQb8rqIQ7tekvWttW9Y7MWbDQ1/1UBH
         2hM75zMfneGfyvsWApdPQxm1ph0QzFwnV8yT2gvICe94nU42aaTiMJK8KtUyThP+ZRUu
         Q4jIitb1SgPUZhJhErUejthTkwCO41lk20Y/v8KUxdFX61BDMAcxTQfgOiHo/jIgpUXb
         /FWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759242754; x=1759847554;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jIXFkHTmTBNdoxIiGuiXY5Mb/iVkGyXh19PiQ5Z7rqw=;
        b=d3o2Qo6+ZrLyl2HodWMjDwxm1g8xsaH6NYgm4zWNeLjrBXdC9LFLZTpnc7r+2oWbYK
         cBs6xYCiOqu9Osntqd0XNPbFC0dd3G6nG30Y3QlC4GraN8yRcuvAbjEFcz4cYeZyaBCO
         DJ8JcJy8fVKGfWjj3ROEonYraQuOr9Byv+fuU5R036gGs4QFcuLx6BC1TOpq6rH27UvJ
         2vDLWL1SLmt/PZDE1YU82C3FbdVIONP5WyHqZvH7lk7wovFRmtPw70qWMWxkOUcu7pUH
         +lIttjgdVmZk4bxd7pHmw9cYRAlix/kDSwruTAVfThmew9j6UiIp7z9cfuJjlCpqHKAR
         iyQg==
X-Forwarded-Encrypted: i=1; AJvYcCWUeVpfdDOsR+zxJJV/ArEBGwH4Wyioxrri/rgdG8SX7OueTBnNMmZNf4OI4nyVwIANY4M6C1kKFZwi@vger.kernel.org
X-Gm-Message-State: AOJu0YxUEGyTauTnL9twDOmTkMksrkHIOurgkRNnQ4XWCepuIbxe6FcW
	yQg31n4AGHIOLQjzGVmH7JLPPBN4FyOSPyhF1takm2Sya5IifSf1n4wFcyQfEK0peAE=
X-Gm-Gg: ASbGncsPD4SBGUKX7hx0m0FUetczFsU27LyeRCY4QtlH6jxjT/FCbqDyOv5QXg8eI2R
	a3tqsfrA4MuzEXNViMA/geuR5bjg8L3jqTzor4plxR7LNKxEIcSNiCuzcIPDOs6hHG2vZSrJsWe
	ek9FIO/qhAcZbQ6vDkTeAuKU+ERt01vMQA+0UP5kNJkCFb6VgyVuGOczlmIp/JhIbgmdqIq6CyY
	hM8t6y+V8XGWHM0nClFuomxhKdhnk+0+UrTA3xcUJK/Zy9fhRnFrgq3wZ5F7dnXC1Ncaf4Pf0wi
	Kyb/HsVZnAhC50sW++hBriC2UQAbaUo2fLr3z9kGkM1T9Wqo1n5VuTpYLXL90r8C9JIzn6c2Vjx
	hfcB3krojhmw/QqMwIjbIbPE0tTfYs5LUizp9DGa8HKlLy9yjtHpM077XBMgxxuq0DgQJI0lFdw
	qPUgY/Q+W7/h5V9MDwzj3owBmG4XeD
X-Google-Smtp-Source: AGHT+IF4zIeQ3qsHZ3+7UkuA/aOdurdD1kBt+SKdxxprt50KcUOpEsL/VmP3CuG2akjIJLRWC6zMMQ==
X-Received: by 2002:a17:906:9b52:b0:b3e:1400:6cab with SMTP id a640c23a62f3a-b3e140077cemr768626066b.17.1759242754466;
        Tue, 30 Sep 2025 07:32:34 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3dc2cf61dbsm499858466b.29.2025.09.30.07.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 07:32:33 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 30 Sep 2025 16:32:19 +0200
Subject: [PATCH 1/6] arm64: dts: qcom: qcm6490-shift-otter: Fix sorting and
 indentation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-otter-further-bringup-v1-1-7fe66f653900@fairphone.com>
References: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
In-Reply-To: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Casey Connolly <casey.connolly@linaro.org>, 
 Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759242752; l=1473;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=v6xz/ZGwlg/QGlKUsUnQN36bAJwH/12cvFwX4EAV52I=;
 b=i4zuAYPuetFXrwGGozmgWJMqu0/p6T19lPn9Mw22TYB9UCGPqRugYCz9/k18mXnwUbkTDkMGp
 /WXsZdhO6SYC/NFQ30eCPSEPTu8dCpDT+g2/wr3ktFUkmwsMCKeGG+V
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

From: Alexander Martinz <amartinz@shiftphones.com>

Make sure the nodes are sorted correctly, and the indentation is
correct.

Signed-off-by: Alexander Martinz <amartinz@shiftphones.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index eb8efba1b9dda422dd0295db2a52420a1a23d070..8d45e6ac0e445b9e20bb9c1520f804623c505653 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -857,7 +857,7 @@ &uart5 {
 &uart7 {
 	/delete-property/interrupts;
 	interrupts-extended = <&intc GIC_SPI 608 IRQ_TYPE_LEVEL_HIGH>,
-			<&tlmm 31 IRQ_TYPE_EDGE_FALLING>;
+			      <&tlmm 31 IRQ_TYPE_EDGE_FALLING>;
 
 	pinctrl-1 = <&qup_uart7_sleep_cts>, <&qup_uart7_sleep_rts>, <&qup_uart7_sleep_tx>, <&qup_uart7_sleep_rx>;
 	pinctrl-names = "default", "sleep";
@@ -920,10 +920,6 @@ &usb_1_dwc3_hs {
 	remote-endpoint = <&pmic_glink_hs_in>;
 };
 
-&usb_dp_qmpphy_out {
-	remote-endpoint = <&pmic_glink_ss_in>;
-};
-
 &usb_1_hsphy {
 	vdda-pll-supply = <&vreg_l10c>;
 	vdda18-supply = <&vreg_l1c>;
@@ -950,6 +946,10 @@ &usb_1_qmpphy {
 	status = "okay";
 };
 
+&usb_dp_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in>;
+};
+
 &wifi {
 	qcom,calibration-variant = "SHIFTphone_8";
 

-- 
2.51.0


