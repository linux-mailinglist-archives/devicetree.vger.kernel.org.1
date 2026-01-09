Return-Path: <devicetree+bounces-253203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A036FD0858F
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 10:53:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2C016302E60A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 09:52:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2545433554B;
	Fri,  9 Jan 2026 09:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J1lMPgbW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD468334C2B
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 09:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767952369; cv=none; b=LyFLxBHzx+dA2ec8grRoKZhoJcsvuuBYjhcM/p37iy9YZNMcyM68ML5d+RI3SmdqxkSlZMsU6MOWEXjTC+9l4YdByGyJtqoZukHes3Kq9SFHJuxIxLcx1Rmc7gKSEKGWKl86eYfcgf/tlwH9HNuJ1LtVw9inA3NtpOfvLGwPYuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767952369; c=relaxed/simple;
	bh=k7t2jg8TSxp8KRoqzxovCHEUEWlAjgb/zGHb4mBEL7o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EWyDRiacunX19DlE7h9WkxHinQ1urD03R0bSar3OHmcqhBJdaR/YapLlwCHIqiaYU80B3KxBlNF3X2cl2e2OAGKs6GrmPRQdpUoP/vuQkdo49yoAbAOhas8jr9Bgk4ulCqh9kONbSu61luS1pqUTmhUhwtoqCKQhAMDrCJqckkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J1lMPgbW; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a099233e8dso30402695ad.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 01:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767952367; x=1768557167; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=02VxwnYRNqoWSCIf3F0v0qpEcuEEv+/n0v8KVZh4ubE=;
        b=J1lMPgbWkXoKb4sSxYAyf+etGN+1ntQVrbX2bHi7jrnopkpTnp8XMNvfJM78Hw1pkR
         fdfF2P7dxIMXo9X7OJFOo85ZXH6oP7wPOvUijT7/Ba5/ZFBh8rh0kl0toipudjQv2yM5
         JI2jGz24q85pjUWmujfV6ScU7Caso0t6dK0BzIMYo3MfmRJaRQRE7i5geV61hKlWHW0E
         n2Fs30ZGoh55Xk0gyU+wSRftaBbjPAsrj5WulU7AGKVZhWZDIkDjTYxO++C4mP0MARDi
         ekhQCJwjoaVlwXLwBvmqkNk8rpsYdCBf7UCvSlxt8YhC9jjnp/yd+Cp4S85VY/fGnpmZ
         j69A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767952367; x=1768557167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=02VxwnYRNqoWSCIf3F0v0qpEcuEEv+/n0v8KVZh4ubE=;
        b=Nyry7T+2NmUBtG6CVruhqGYsPEYoYi8K6zmHg5sIXAM7uJrqiApTXaZ3KCKHYpdlns
         iEB32bl2PpZe17OvxY/yauHB+fQUW/V+OI6mW2l+0bmYELdsKrxiL5WMD+7vLiKgSQ5W
         46Ct1YJNO+Duye9zDGkcjWYSI4OpmBkUZv35YAG6jwBK8cfabN/0yk8Tv4Ycw3z9NpZC
         owugB4hLo9VWaFvhsIuR7ArocM0ip1cMwjdxW9lr0cdrpZisSdN1/Ysofs8yvQRFgTEv
         Y4hEYE3gm7EVmAAbN1bPv2Zvoib7pGjcOFZz1BI6Bd6+pPNUnQp//0CJt9TTu9ImQGXN
         ynkg==
X-Forwarded-Encrypted: i=1; AJvYcCVQOXc3UKPDIXio5IQGpp3mR83FzsRjOMQPgi8mM11gWfd9KUa6wQT8QC0g001UiLk7GitlD2iMvNSZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyjQhtdPh4Ori/iYvkekpDz3sPHBmDhYzcjME5JUYfoHkhcWzTY
	VG4HpFOURIV6u2kR0EqvMTf1UbCvYi8/KX9i+12oAihiQr8QTd7oC++H
X-Gm-Gg: AY/fxX70O+KVFugw6bcHwAgEfwSLKyF8AarJWm9BGlYZypnHJtNFBwaWRLL25Tvh34b
	VDRESLu9MkOD99IY5NAUS0/J9WyPohnWVOoU8PzyA2bJmGGtTfWn1ghxB1N70g66IrLb68+ItXl
	+UeVrM74UokevNa2o2lFtSiUOjMKCuRPFvo7Uo0uBiMfxKNJIEPeA/VHpZxzc8uN6rQDpnYfTxo
	iq9oRqoEYpUPEie5AVWvDU28BI2+RqguLTbZIoTnj4IVKr/77/U5DCvowN5p2XlYo00DrIphLwn
	sRuXvMjUp5RTIhwp3fw6opAOmv4uCBkHbWucLsCYmlXHJf/8yxsfk3nJcZAxumik8yLfbNiBxV5
	oovW7ix1gTeAOiMzaqhkMyOA44MObwjuYIy1ZaPasrgIC39Kh0kgVYehw5yyho9qqaPZs/QQFjZ
	R11SnR+9eAbAGRSDiaE4x3kk2FEJL8ivEkpurVwbKcN6rdfOt6JgBBh2EPoA==
X-Google-Smtp-Source: AGHT+IFwb6T+56+c5A4a0khX6vNwn/D3tNsn9h+y9Uq+Yt2XiF6Tyn0uGmIMVI5X8uXiWztiG5oUKA==
X-Received: by 2002:a17:903:41c9:b0:2a0:a33f:304c with SMTP id d9443c01a7336-2a3ee4c0025mr98527435ad.57.1767952367068;
        Fri, 09 Jan 2026 01:52:47 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2d79sm103081795ad.56.2026.01.09.01.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 01:52:46 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v11 2/4] arm64: dts: qcom: talos: Fix inconsistent USB PHY node naming
Date: Fri,  9 Jan 2026 15:22:18 +0530
Message-Id: <20260109095221.2847067-3-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260109095221.2847067-1-tessolveupstream@gmail.com>
References: <20260109095221.2847067-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The USB PHY nodes has inconsistent labels as 'usb_1_hspy'
and 'usb_hsphy_2'. This patch renames them to follow
a consistent naming scheme.

No functional changes, only label renaming.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 95d26e313622..c7dc507a50b5 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -4304,7 +4304,7 @@ osm_l3: interconnect@18321000 {
 			#interconnect-cells = <1>;
 		};
 
-		usb_1_hsphy: phy@88e2000 {
+		usb_hsphy_1: phy@88e2000 {
 			compatible = "qcom,qcs615-qusb2-phy";
 			reg = <0x0 0x88e2000 0x0 0x180>;
 
@@ -4412,7 +4412,7 @@ usb_1_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x140 0x0>;
 				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
 
-				phys = <&usb_1_hsphy>, <&usb_qmpphy>;
+				phys = <&usb_hsphy_1>, <&usb_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 
 				snps,dis-u1-entry-quirk;
-- 
2.34.1


