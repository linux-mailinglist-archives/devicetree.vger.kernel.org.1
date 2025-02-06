Return-Path: <devicetree+bounces-143548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC63A2A5EF
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 11:37:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECE6A167B0F
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 10:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55B16227583;
	Thu,  6 Feb 2025 10:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="THGFrobb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055C922540E
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 10:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738838260; cv=none; b=Ih6Rfi2q3JOTcQX8d52vooPdy5DCm1f6m+zxUw84q8RfaeC5R2ZsbU2zGeHBjDw1uxa3Tj3QuQs/MzcUR670i4vE15ilVdY4uv5UN/eK+QlK/q1mpo7YAw8mfFvvTSsFLeQB0dVzdp1NPNccyB+7lfqeNfudQ2p8aUdqF3HtUY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738838260; c=relaxed/simple;
	bh=MzJqTBbgVZikYINge+bhb7KDDv91pVxB3kwYflM5OHU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=vGSYSq3uv8dquxJ5nNcI1MRxjpSTEDQMYGfAeZbNJJ1QgzX4aMinoNkZhyZRuzngwme20YsaLsoEpZ0dhB+JTFmME32Bi7XxuFuIEoICy6L0q9mnoxYqr4r6JIPYWdKDIJwwG3TX+HbiGZSTYubIC3K5gpWoT0OPUPhKtoHFJJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=THGFrobb; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-437a92d7b96so7127435e9.2
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 02:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738838255; x=1739443055; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lDuu/5ae2pAl9B/nnmOid8arcrDr7kGudQUK+fpcdUc=;
        b=THGFrobbZOLPpyTYrPCvogOGK0zkbUtMM/2Yz3k/A1+pPClpoOessNAQapSn4OthZc
         qo59zpaHsDttKvHYg019y+7xl0Z9I/ZSjPcCIHjhXFkAHkvOw1GGKFQjjhmaXiuUC5xg
         ibdBInV1K1zukikvXv7BEoJ6jv19mkJJyu0MkYV14NL6WEn54mOH3rmizp/1K5kq1jTV
         HLWGsLri4HOrsuYnNNcE8Qv97kZgI6Dbsn4RxUNfabpjAIgRNkOlv2DqJc2qcqpnIqwa
         KCRybWYmtRD7NP/LQ1HS6fLUn4mqoJ/LwJrutb43H6Qoyp1aCYIr1WW+AUQor286uYbt
         Fhcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738838255; x=1739443055;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lDuu/5ae2pAl9B/nnmOid8arcrDr7kGudQUK+fpcdUc=;
        b=V01n9o9Pa30u6UIDAVX97QmsH4a/vamCFt5Dt3m+broWwgKcZKZu5VmL+b6FkXrIxn
         aNOgGpV9xxi/oqDcanUe1SM0ejzRFEtphWiN9eljuqqDARTeBJnWulYY3U+dq967g6R3
         ChWA9zgPPyJKwVdapKRXygeLLDUwWO2N2QV98WzUR3UB6Bsq/26i+lp03Y1p/3z1JN/r
         x1Nhz6PpBGhUfx+SbAnegRcvMHZxG27KYXgyORJsodMDHifLAi63nhW1JyZ1X3xnv/Gp
         aOkuPQZWVTuiw7z/PcEsIgKRdBXceBd8LgdB2BOtyYFmJTNwjTh9bNw4LzrE/59M2tfG
         03yQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeVCZH45/enTDUZeqWbS7EvJPYwt4+o1poWOtnU5Q67ZyY7avKNJX60nHbKTbnq6X07p9PSUQGIRNs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+/mt+7UJb5RAa/c6+HMYGoXyLMyHKfcoxGSgIEUpSUcXKBq2p
	sUGKfk7A5MFcfpnhGnRW45W+jFg8JI6YSF5JEvvhaPUdsFXZfNEzZLHTlf7/xzc=
X-Gm-Gg: ASbGncsjlBYGRZN6VOvf6r1MDZROBJZdVfr/f3nqVPpa8pgEvDCn/hiKt1wf05aKRPa
	NwCx50s6eCJjTykMYq3FEGMP4Wa2/bBxsOye8ibIao0ZWhlHP5o+Qsq457QYiTt4sYKSvu8EAZ8
	EwtbhOsrvzjtxYF720eOWzGd+fvu418iSFWvW00PaQLWvBwojJljRggQizrUZnIcopFbyQRbufq
	hdsOp2IxJfnurnBsK3Flfwi0wlcre+WjbYhX8zzk3nru20CPZHXUoB479M3gZ99fJLS9IREa7lv
	yGVQHPUaVal60zk=
X-Google-Smtp-Source: AGHT+IHIVDvAZ9KeXkry77mCaFFi9ouZZbUWyjp2SQ2uFzjZsUsdi1NEo0buPV7KcrlM4TESdEMANQ==
X-Received: by 2002:a05:600c:19c9:b0:434:a684:9b1 with SMTP id 5b1f17b1804b1-4390d42e700mr50795305e9.4.1738838255209;
        Thu, 06 Feb 2025 02:37:35 -0800 (PST)
Received: from [127.0.1.1] ([86.123.96.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390daf4592sm49995885e9.32.2025.02.06.02.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 02:37:34 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 06 Feb 2025 12:37:13 +0200
Subject: [PATCH] arm64: dts: qcom: x1e80100: Add the watchdog device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250206-x1e80100-add-watchdog-v1-1-77147510c2d7@linaro.org>
X-B4-Tracking: v=1; b=H4sIANiQpGcC/x3MMQqAMAxA0atIZgNpRS1eRRxKEzWLSitaEO9uc
 XzD/w8kiSoJhuqBKJcm3bcCU1cQVr8tgsrFYMm2ZKnDbMSRIULPjLc/w8r7grN30rBtuO8ISnt
 EmTX/33F63w/IFxdzZwAAAA==
X-Change-ID: 20250206-x1e80100-add-watchdog-fa8e3d23d760
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1166; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=8Sbc+9AjrkQTbCMtMMCPQAPcIf7iIHyukTUIWEOh+Rs=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnpJDo6bB6c3SE4b4sty/ynLLRh8FoK4/mhIlPh
 aEjYPvfHUGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ6SQ6AAKCRAbX0TJAJUV
 VpFlD/0RcRNFyKskPmOZGdfJ6wlhOK8bdJzD/4oj0t3qW115KMecwBLdABzi4VZwYKcgZUqBBLp
 nsT6osKBBZU9F14X3w5mm+JZfNUAuth5pbJ8LN0G8jIbPBqJnURGyr9Jc3lf2oS218sXNIqVtGM
 +6hgmVc2h7cFKO/MWUxhEWiDHYQXGw4mB/QWCXDXQhUlofaGEQcsKbDJym6jnzzbG1ReYfpoQI9
 SenfGJR0gq2h5M+PP5RZsXmj9kzDg9ashdKAYqxnUqA1hNeeZgS2nF2wNT6NFo2JhgIArpyL5RP
 8/F/V5/rnftSaEMCxoBWg6ASCJSyHmN0jUYy6EEWTS0g0FeOs2Vgz2lp3sc/Lir1L+6N1RIKoZz
 9Eo821r8NFCLavqN9LAtuCxVc19Pfg9qXIAo6ytnqRUWcTCWK0JLvgz3TZ5YWszXUeHm4VDCDol
 +O5mY5j4x9PV+eDshwg9a+P+G+pQjXBrFE/356j4sRPGZrPgRpb9ujnjsH1UJJ+0hvnF+Sx5ZVx
 Zb6GJHacS5rgy86nNpYeGIx8swzgmW5If94zwBZwvn3kdkFQ3J25SwIvJuYmsk7HFMCZ6qdeU6q
 XPmTd/ZB3UP07xHf1smalfUOrIYclcntoFLCrJpsVeQ/x+b1iOhyx4nCHhcBpU+4RjKk+sw4APF
 NAnC8G7rZI1NW2w==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

From: Rajendra Nayak <quic_rjendra@quicinc.com>

The X Elite implements Server Base System Architecture (SBSA) specification
compliant generic watchdog.

Describe it.

Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 9d38436763432892ceef95daf0335d4cf446357c..007815699e4b9137c3b5cf72263c9dd3a64e6bb3 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3708,6 +3708,13 @@ pcie4_phy: phy@1c0e000 {
 			status = "disabled";
 		};
 
+		watchdog@1c840000 {
+			compatible = "arm,sbsa-gwdt";
+			reg = <0 0x1c840000 0 0x1000>,
+			      <0 0x1c850000 0 0x1000>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0 0x01f40000 0 0x20000>;

---
base-commit: 00f3246adeeacbda0bd0b303604e46eb59c32e6e
change-id: 20250206-x1e80100-add-watchdog-fa8e3d23d760

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


