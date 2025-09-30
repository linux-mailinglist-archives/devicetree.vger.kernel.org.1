Return-Path: <devicetree+bounces-222815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 59144BAD335
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 16:34:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07FBE7A2E2D
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0596C307487;
	Tue, 30 Sep 2025 14:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="phDXBWH7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7972306B04
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759242763; cv=none; b=f/eAvSKdZjMCo+ZY9TsEyPoTROpvHomtbRoZWTY7zdYBOHAjlKfgwUDB4k3DUjMJx8lr0oUEqHCyaQT0XpdrA2eK5BhdzgLsWk5sNPoKBIj/f3BP7qxsBjPolTQQ2dt/0U0PrQHqqrd83SYjrPTbONYMSEPPBRd7kzyqqST593U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759242763; c=relaxed/simple;
	bh=feC/R68VglV9TZu4Nvs7G0duXY4qW44dqlbaCoFX760=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uqYYJKkz/1LtmQLqUQ6H6HP/gG1q1PlQkPXsvEvkxSW0yYS1fJBcM4P/L6/dF6y/jAcXy5v6lf3sY0kx42rahXXQopMAFGPEOji3PNtsMIoHxgSq6PohMlc3dxXpZughyKZZHV8SbWAz01dklFI4BadTtaE2hiPxeJ/v8SgZWAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=phDXBWH7; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b3d196b7eeeso487551366b.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759242759; x=1759847559; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V1loSnqQxcluwc+xgRCVoTNWJKsc4VIrA6pvLqnr/gM=;
        b=phDXBWH7bR1dE9u7Mn9oozefEu2SZKtu0Oh2kNgnS0llSf8qNgB+Vsj/GREkP8iRZR
         QPgLnfYKNmMHc3aaLfCTObMtuDZfRkJqO22A/pmJ5A4vcIKZy78rwwa8NmKdvrZyB+h8
         ejpQB7CCT2tOxx/Hpj5Hgk8JBzfgM1lQaQtkQyn2pvOaqaFo7wiP/dAjs0AKudx7R/TE
         M+tlTWSr377Sfy+SacFXbuTYh8HfdsBPZVNGTqMw3PTW+AJ1lTFcZwBbjN/TqP5EXKIA
         zQHKkEs8rDGz75C4lAJp/M9D0G1u2Xkxyoz57QZJKGY2AXKbLyohP6hmCatCH3EY5zVA
         r/9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759242759; x=1759847559;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V1loSnqQxcluwc+xgRCVoTNWJKsc4VIrA6pvLqnr/gM=;
        b=KIc2+mkaPX+7CYnTDPBgO0NndvoMSj7VOGR0IjPNgjA5bZu+Wd7Yc15JaChEharT/L
         O/vtLJKDygsuW6PqUpyXBYKT59nI/1arxG23sNA20IfC9wI8uXUaXcylM58SJkedZThE
         sz0EXjfllEyl79G4sWSnqLfChqNz66TKe5MEPdYJESof+hP0P/U3zgP8CLSImiaV3HMX
         sgp0Z3vW5+Ihl+C4sWa/up/ZdDZUD9ofkexK7PXA2o78jjt25R4L6ptmTirK9mXa5XWI
         KGfEC24diAdkV5DeV4lh4NZtfNHTAn6Apc+yYG67maS6LK4Dn1UYe8JEiNDU9OMHAiaR
         JInw==
X-Forwarded-Encrypted: i=1; AJvYcCV75emY3eHjA4GVDGw7zsnO8MhBjr4asN8QAqjqTQH2B4xzIkixDswSdDsbgPwyq770VdEBzZIG80/2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1ZASUD9Oh2RKK8/yjjpRGgnXxjaL5Xd24jzhgwZ8WBFLIZ3e4
	33/DjSSvi5lQC6lYgvfpyF8ykfzELATVIrM6Q4o6gUooT2z4ezqb69gZ+FL6bezIREo=
X-Gm-Gg: ASbGncuimlaUnVltuWY5P+VT9sXQnBnsAIb7pbFi7rFAUFsly7r81HqrfL/9g4SlT8y
	+1bqYQhocBf8D4oDHRfX1ZJwWlhHIixZujla1LYV2YNS6jAkbyKMg/aHK3jv5mwb+Q4zozQFevL
	bzA/RWNbh3Fuvd2aIwDP5CVVWffcqGXqUIZiW06bLS08ObHmMEtDx1eTnZ8h2DU/LZdUda8fpNV
	aEnvMXMf3GFubqp86y6q07XS2W/EisGQo7VPPgrPq8/2pDE5LdviSNjEp/qa4sjoB7GvNepo/Gp
	YeYQQBR/YPFwDbe7bvsWm8Q65RZlun46yRzpYArqcmXZBtree9ScQd1mfb0w04q68spwaEmmWdH
	hwTz3EAxgqyIynLKwzRZSUMukBvmGkZUGd02vvhzdqap6V7qCx1usdD3g58CtIJl4HDQhXtkp4L
	WWmeKjw82QCYnSHnm7Lw==
X-Google-Smtp-Source: AGHT+IEOuIPYt67EBrcFp1mbmXrPmXz8HmqA/6GOaYFUuT7MdE59lwUX8pXH8JAbJY4iOrx/f02phQ==
X-Received: by 2002:a17:907:d8f:b0:b3d:30d8:b885 with SMTP id a640c23a62f3a-b3d30e807e5mr988200366b.9.1759242759200;
        Tue, 30 Sep 2025 07:32:39 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3dc2cf61dbsm499858466b.29.2025.09.30.07.32.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 07:32:38 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 30 Sep 2025 16:32:24 +0200
Subject: [PATCH 6/6] arm64: dts: qcom: qcm6490-shift-otter: Enable venus
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-otter-further-bringup-v1-6-7fe66f653900@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759242752; l=887;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=LSZDqnF8eZZ0YN5ymjZn52HAvKq4JeCAtEqFnPO+yIU=;
 b=T9HjfdM/hf8lvFA8aaNIljFgr/OXK6z7IUWukKa106HmG0hVjrhebnd+Ohi8ezrUz1r/FYTuI
 02o6AxFWchfCQrsUuOLtCvOelyJsPm8O8t8rIfMmzJmEsjLUaEss3t0
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

From: Alexander Martinz <amartinz@shiftphones.com>

Enable the venus node so that the video encoder/decoder will start
working.

Signed-off-by: Alexander Martinz <amartinz@shiftphones.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index b4c69dc50ed0f0b3cb45341a01c89210bd261993..98c1ad4c21118831f079c83f4fe66ea30c141fac 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -995,6 +995,12 @@ &usb_dp_qmpphy_out {
 	remote-endpoint = <&pmic_glink_ss_in>;
 };
 
+&venus {
+	firmware-name = "qcom/qcm6490/SHIFT/otter/venus.mbn";
+
+	status = "okay";
+};
+
 &wifi {
 	qcom,calibration-variant = "SHIFTphone_8";
 

-- 
2.51.0


