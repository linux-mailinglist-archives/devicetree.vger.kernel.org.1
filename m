Return-Path: <devicetree+bounces-142297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F3FA24DE4
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 13:17:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43079163F69
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 12:17:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F281DB133;
	Sun,  2 Feb 2025 12:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XjvaC8a3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F56C1DA2F1
	for <devicetree@vger.kernel.org>; Sun,  2 Feb 2025 12:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738498577; cv=none; b=ZAguj+bvchNXAyttvdqHkQGrX4byXnG4soHTv1UQ741Soj5rKutaGySwghmftk4I8byqN+Xir8Q1LNcHed5oeo81YtEQefdQ4cTZCdTWZ66HgQaguip2Se7c7HpJHZ08VjSFHf5U3wGZWqVwL9fCla+PjmYUcLAfq4JlEvyR2Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738498577; c=relaxed/simple;
	bh=bnFY74SBqBhj50zQ7HIO+wjy7JugjwXGjrF/pgpBgeg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UhicGt1UQGTift6G4iVnzwXF2OarClusxyGML2Xci8+Jf8bYsJ9DnQa7DbigvnOVywd5esthdh3fkI0UVv/4AxXwLeexrF13JcL5nGHdQyiw7g4Qwqyc6hlwOFYgiv/hooFLcdxhGmITgN6Z0EWHFBhCkUSEm98Fd+dtIuXrtjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XjvaC8a3; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53e3778bffdso3423749e87.0
        for <devicetree@vger.kernel.org>; Sun, 02 Feb 2025 04:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738498573; x=1739103373; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dl2JKZ1IRhnp1wS++WB7EWKXLLWje8GjFlU5tMr+N/Y=;
        b=XjvaC8a3b7IQdAv80RLwNFFNTb5XKUaatkgybRxWxxAjl3DJHysQcAJjKppWdcDgiX
         0daQFehyX80f3o/qfsW5SXEv7F1ajfpafUEN68CYsXlRilLnIRVVAFEBWRj+J3/KXX71
         2jGBXi4NzVQX+e+12L/ztq89yCfAFtxSwZqKFwHzFRBVwJxY5qWTLQWnPaqSqWDSXD/8
         IYV166HnLbhAar5T0ZuRfU9L1fQwpAnv5ZNSNKpoujnqinpnsYDd97kc9WJoCTClWs70
         m6G7/uLLMdq/GRn2KHVB2tYKVhxSjxDbYeSnWpNmFsdVnK1N5KolavBOE3dl7ENA6uX3
         qtHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738498573; x=1739103373;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dl2JKZ1IRhnp1wS++WB7EWKXLLWje8GjFlU5tMr+N/Y=;
        b=v+kmhPE9klT7YVxsJPh8lojDdU8LGCCxXTnT9fYYVlpjBmiRf+MpNTGDhFA26U1GXr
         4UwBpa9izrD8urWSGZ4u8LllbiVNklSxm0Sv4VrGovFLrtTEMLdeahhosQcG/VvdEO1j
         HeVGvSuuV8sGBBcu0O9AlbCbXzhyW1f1/nMlsw2jwC+SDa1ra1JomScUvY78RewPxH2d
         CDfsmpjMw3XECrlrw35BLkPCczc4ZpB936Ni8M9SsrMDm3rFu54b4xJLdXQCl0IeYG4Z
         pe0yva+RzRU7trxVD6Xis+VgO63eUUvmY8T7G1JSU47nPWV2zwIz3F7Y4INkh5rwJdGI
         GI1w==
X-Forwarded-Encrypted: i=1; AJvYcCUyHCiW3/yIQ9mVLiva5IsikEI+8atliBua13frefj23Oxn5Dtq8zJFlR0RxII1pVDFFd7mqshXyO/Q@vger.kernel.org
X-Gm-Message-State: AOJu0YyHYSI1CkgEb5M4UyG5YjaU652S8Zd+eCbKpLQIIWkWyeGObJSa
	eUBX+2Km3WmVf7MLO56WFcB7DLHd2ki7iABUq1OagIYMGR0xNl26G5J+nfVpVPY=
X-Gm-Gg: ASbGnctLCREpmSljfRXLQUrTX1BC6VnUUPgi4x6SW+Eamjelu1DtLpOqGXwm7mfnlVs
	PmLVRp2MSWZ4KQEAsA4N46XD7vM/v+21+N9BpmoeHX+R388Yt95d1h0OfBetXhjkeZqqlZJnO49
	j+tWv8iC3Pqz3hieoP69ffhMhUqZVtEp+2ZZJZc0qX/nN98bFUqmyeul4Hjk/eqBGmQL2p70wYO
	McGvajWLvG9xSvyPVu65q+yrhoeZC7qtZdK2d2P36BQQEO6mY9AWrH9bLEVWcyK8HLJMuZCl7fQ
	WfGwNz7sSqiZeSQ8YLOBWxM=
X-Google-Smtp-Source: AGHT+IGuBcOzQL927cB5FV4/ZuTsXXAU3wO7PgScQvvImNPVGOdUn38v0cBF4Hvx3gUbQcbfzEj1LA==
X-Received: by 2002:ac2:4e08:0:b0:53e:350a:72a0 with SMTP id 2adb3069b0e04-543e4c3c390mr5333833e87.51.1738498572765;
        Sun, 02 Feb 2025 04:16:12 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebeb0a4esm950663e87.114.2025.02.02.04.16.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 04:16:11 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Feb 2025 14:16:00 +0200
Subject: [PATCH v3 4/6] arm64: dts: qcom: qcm2290: fix (some) of QUP
 interconnects
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250202-rb1-bt-v3-4-6797a4467ced@linaro.org>
References: <20250202-rb1-bt-v3-0-6797a4467ced@linaro.org>
In-Reply-To: <20250202-rb1-bt-v3-0-6797a4467ced@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4082;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=bnFY74SBqBhj50zQ7HIO+wjy7JugjwXGjrF/pgpBgeg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnn2IBBLPEdQCC3ksfcheS8J9refVsucnZOUYFO
 K7LsNfa9eKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ59iAQAKCRCLPIo+Aiko
 1eElB/0SrSwPCWoZipLwTZBl5iMAVtXzwAS1zuxbnoBHv1w2dV4fGQ0i9ZjaGAi/Sgln+/0WNy5
 BMNHiBd/Tel+OkzyAhlo1IEhfA3lP5LScEymb1Zmfk9zs9cgdajCH4XM7rtmVV0ozJVqgoz778g
 JAfvDDfbdtBGrw4BMvmAZWNGCN6yw5uprlhmlmPj+wFgvwiKwtYnzFJ6svx1hEesxbSX9Ef0B1F
 AuV12GuNiEhEaxVeIEhQFIIsUYPFvCrsNsRZojRT47xkVHXsQyV74XBbCXr0UYZmv/SK7XCBtjI
 GEltn0XJ+KdGTI5TWiVNpOYMlRejSDdLynXT7NHaIGNdNhY5
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

While adding interconnect support for the QCM2290 platform some of them
got the c&p error, rogue MASTER_APPSS_PROC for the config_noc
interconnect. Turn that into SLAVE_QUP_0 as expected.

Fixes: 5b970ff0193d ("arm64: dts: qcom: qcm2290: Hook up interconnects")
Reported-by: Konrad Dybcio <konradybcio@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index f0746123e594d5ce5cc314c956eaca11556a9211..6e3e57dd02612f3568f07f1e198028413f463c69 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -1073,7 +1073,7 @@ spi0: spi@4a80000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1092,7 +1092,7 @@ uart0: serial@4a80000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				status = "disabled";
@@ -1137,7 +1137,7 @@ spi1: spi@4a84000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1184,7 +1184,7 @@ spi2: spi@4a88000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1231,7 +1231,7 @@ spi3: spi@4a8c000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1278,7 +1278,7 @@ spi4: spi@4a90000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1297,7 +1297,7 @@ uart4: serial@4a90000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				status = "disabled";
@@ -1342,7 +1342,7 @@ spi5: spi@4a94000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;

-- 
2.39.5


