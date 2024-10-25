Return-Path: <devicetree+bounces-115745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A33E9B08CC
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:46:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E8FE0B26F62
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 15:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E9E1FB8B5;
	Fri, 25 Oct 2024 15:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jn7hM+gt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE657184522
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 15:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729871015; cv=none; b=WFHtB0c/1sYQFL0LeA1R/mQL3hUzanntx2OYSC3XRtsj6WRAQLj2By1T45maGfxdxPcQSNsqheIur5yWj/UlgFVNjesjRc4G6zFf5mVkYpcybK6UsXk+NBM4U+6MBOTC7G88YQMFuvtF6rvV44zNgL4OBq+5QgdK1I4cQb8dqiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729871015; c=relaxed/simple;
	bh=XvlW0vpiMSi9SfklLNRt5xYJcsZyzHInLa7y2PlPt9Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FTulMjh792eec+D550bdqq19ZHjoPZLKw5fLt2nnQz5NWd3DGu3TkHjjYvPS2MWLN3RudokjqNJ3d6yfrIOcd7/qSSiaVpn61qI346CTE3K4tMNDlzTazxnXKnVYgC6sJJ01Zdas16wd+TtU+fHuLbXV1G/xrmR9NmGrcYTVuFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jn7hM+gt; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4314c452180so22497965e9.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 08:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729871011; x=1730475811; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NhFbw1mBYu2Nay5X01WxZV5YBpfYsMrhWbGTAJYzk1Q=;
        b=Jn7hM+gtHeNMD70IekwblTx/2nKgcq1OYolMI/exMolcSFxWw/FVGiyKu3qUjVJPQU
         LiIrGwLdUAaE9HBrAIu4ErRpYGeU4U5jvdUkLjA6MhUlgYP+Oiu+fG+nRGbfznq0VUjk
         yuPwy39OQzf3uMN78Fapf6GS26cpgq+k43RFHySgBVOICayi4cCtCMakZ59yI/U1sekq
         WM515F1LqylcAZFvnfggg3RVm4u8lDLqy04d8hWzOjbJNOGd8DQFG9LjsmwQ+BwGCNzB
         S3t5WGpvD9a2JQ9yUjUXdT5p3m5iwkJLton8jHE4WPN5SSqxpQKbJTpCLX4dUkhIkWiT
         yb4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729871011; x=1730475811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NhFbw1mBYu2Nay5X01WxZV5YBpfYsMrhWbGTAJYzk1Q=;
        b=peGnYDwxqsRNQaKSXDMtC8EomcYjxYomqfa9nLXqXLE930QSHY10hGlgRRPXLWn6Q6
         1IAU20IJfg7iqUjPydJeeNnBU3lVLI//ooTIg4JvjpKDLHImeuQj/h2Hig+HV4sB3bSM
         o5He9C0i4L/LvYdPpPHUypmhu425DN/5BAsrvjrKbNLB2zt9xYTaOKAam0On5n0OcgdM
         ZqY8fW9GHd+jlbONYJh71VC0VizzwD46UbPpcQRmTLw3ZT188MCdz1aTcjbNcj0P1LEe
         SgLvgbs9Vuwis4AYu73INOW7LUVHOi+yXjvRhSSFXrJAPTyKdiSV1hud1sPDaLojsKvS
         EW9g==
X-Forwarded-Encrypted: i=1; AJvYcCUvYExS25lcqBhkhdUEt6PenDDDZXhquhGXSIdKGsj4iHQUDD1q2yUUewwp1oNuczCuIArW6gXb82dp@vger.kernel.org
X-Gm-Message-State: AOJu0YxdsubOy3sh9jpNE2rc8Axx1hU61/IJF/roYEIAVczjbzMmZswn
	otMxKUo/QAhKq5elHBh+i1hcDqyHz1/MC1J5+tR06cnyiGzjlsxl8qH0Ynba79A=
X-Google-Smtp-Source: AGHT+IEpR+L7S48fUXzS3mEfaT/r/b5+mLSfBoyEeFTAJU9NB8MaARkwZJjkqVqUt/KjOOIyL0+4eQ==
X-Received: by 2002:adf:e8d1:0:b0:37c:ca20:52a with SMTP id ffacd0b85a97d-3803abb20cfmr5145111f8f.8.1729871011022;
        Fri, 25 Oct 2024 08:43:31 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b479ffsm1829092f8f.49.2024.10.25.08.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 08:43:30 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 25 Oct 2024 16:43:28 +0100
Subject: [PATCH 6/6] arm64: dts: qcom: sdm845-db845c-navigation-mezzanine:
 Add cma heap for libcamera softisp support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-6-cdff2f1a5792@linaro.org>
References: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-0-cdff2f1a5792@linaro.org>
In-Reply-To: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-0-cdff2f1a5792@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Depeng Shao <quic_depengs@quicinc.com>, 
 Vikram Sharma <quic_vikramsa@quicinc.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-dedf8

libcamera softisp requires a linux,cma heap export in order to support
user-space debayering, 3a and export to other system components such as
pipewire, Firefox/Chromium - Hangouts, Zoom etc.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso     | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso b/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
index d62a20f018e7a7e1c7e77f0c927c2d9fe7ae8509..c8507afcd1e0d1f9b14b6e4edcbc646032e7b6c9 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
@@ -9,6 +9,17 @@
 #include <dt-bindings/clock/qcom,camcc-sdm845.h>
 #include <dt-bindings/gpio/gpio.h>
 
+/ {
+	reserved-memory {
+		linux,cma {
+			compatible = "shared-dma-pool";
+			size = <0x0 0x8000000>;
+			reusable;
+			linux,cma-default;
+		};
+	};
+};
+
 &camss {
 	vdda-phy-supply = <&vreg_l1a_0p875>;
 	vdda-pll-supply = <&vreg_l26a_1p2>;

-- 
2.47.0


