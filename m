Return-Path: <devicetree+bounces-15291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C00F97E984A
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 09:56:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03C1EB20A06
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 08:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D4E81944F;
	Mon, 13 Nov 2023 08:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="xzR8CkdF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6979718624
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 08:56:28 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64EFB10FE
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:56:26 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso611606066b.1
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 00:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1699865785; x=1700470585; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mASKoKAO36kXxxMIcfJoCKkWeIfM9SAibAagzp3xhpQ=;
        b=xzR8CkdFZFvjC5RM4klrN0DKCXoipWjgczpVUZDYiP74iCSmWvARruR7QKQd81Q8pe
         5JebVBXSwjgrgt+F68SUaySd+L/UnKxrUuSN69H+iBikOi8Q3DlBGWaddWMGLneO6C/f
         XUKnTz5N3XPGbcrg8gVXDHGSeWDPV1303y0IQRJzJVmtmS9aTxCHow/Tno5cfkQsWJMa
         RR4diMZNQgwzO1hoKnSZTYoG3+NlPbRKj1Q9onB9FPJhc6ARo1WQIrSVnx+kenk4ziXQ
         ZMT0G7qc/Jg1LDiRq5SgX70P8KsAdYC3hbDZOdR7jspAzk0YBOwVpZPyG1BBQ+diWQOT
         eg6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699865785; x=1700470585;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mASKoKAO36kXxxMIcfJoCKkWeIfM9SAibAagzp3xhpQ=;
        b=qCOamoJCkfz2yU/EYYOwKtTNzGgiXdbyTccm5Mg9z6whKZQVzgdDwB16t70IXQCmRz
         Ksd51gUVdERSmAMG/O25GdAP6mhHwJAIm4WbV7KdjD7IwrQBx7bGFpnG+XS85IUJQ8dJ
         47XlbUlLsIEQcjUs+ERXYRfQziHl0XbgZAz34SR81Ifp12dWVr6nBU5yMmUXAd1KF4hO
         boD7ATugmhG1FFaxuikjm2Czkgp6v32TEVB3/MTSpjANZZ5Z2ROgpsMqdlIbLTmjB4OH
         BYqO6yTMQZtMcJkjFWsyakysoGuipsUrJkX50jhsViOl51Xjis+0w7G0b0QrwC7F6Zwt
         Ygcw==
X-Gm-Message-State: AOJu0YxKoBWLQUAbdhG14hLXnSBmp4SZwx6n9MMqVvIZwzLdz5P2pphG
	gU4hBnStJL0UJ/1rQOvKvLtUvA==
X-Google-Smtp-Source: AGHT+IE7Xh4bAVV7Uk5gawxmAUg/+51LSmrF3fXwuOSPA/6+9It+cRS8vElyhWnE9YuoVEbsjK+vcQ==
X-Received: by 2002:a17:906:2a91:b0:9be:85c9:43ef with SMTP id l17-20020a1709062a9100b009be85c943efmr4563373eje.62.1699865784972;
        Mon, 13 Nov 2023 00:56:24 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (k10064.upc-k.chello.nl. [62.108.10.64])
        by smtp.gmail.com with ESMTPSA id kk22-20020a170907767600b009c758b6cdefsm3673538ejc.128.2023.11.13.00.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 00:56:24 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 13 Nov 2023 09:56:14 +0100
Subject: [PATCH v2 03/11] arm64: dts: qcom: sc7280: Rename reserved-memory
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231113-sc7280-remoteprocs-v2-3-e5c5fd5268a7@fairphone.com>
References: <20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com>
In-Reply-To: <20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

It was clarified a while ago that reserved-memory nodes shouldn't be
called memory@ but should have a descriptive name. Update sc7280.dtsi to
follow that.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 0d9cc44066ce..7bfe93713eb6 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -91,68 +91,68 @@ reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
-		wlan_ce_mem: memory@4cd000 {
+		wlan_ce_mem: wlan-ce@4cd000 {
 			no-map;
 			reg = <0x0 0x004cd000 0x0 0x1000>;
 		};
 
-		hyp_mem: memory@80000000 {
+		hyp_mem: hyp@80000000 {
 			reg = <0x0 0x80000000 0x0 0x600000>;
 			no-map;
 		};
 
-		xbl_mem: memory@80600000 {
+		xbl_mem: xbl@80600000 {
 			reg = <0x0 0x80600000 0x0 0x200000>;
 			no-map;
 		};
 
-		aop_mem: memory@80800000 {
+		aop_mem: aop@80800000 {
 			reg = <0x0 0x80800000 0x0 0x60000>;
 			no-map;
 		};
 
-		aop_cmd_db_mem: memory@80860000 {
+		aop_cmd_db_mem: aop-cmd-db@80860000 {
 			reg = <0x0 0x80860000 0x0 0x20000>;
 			compatible = "qcom,cmd-db";
 			no-map;
 		};
 
-		reserved_xbl_uefi_log: memory@80880000 {
+		reserved_xbl_uefi_log: xbl-uefi-res@80880000 {
 			reg = <0x0 0x80884000 0x0 0x10000>;
 			no-map;
 		};
 
-		sec_apps_mem: memory@808ff000 {
+		sec_apps_mem: sec-apps@808ff000 {
 			reg = <0x0 0x808ff000 0x0 0x1000>;
 			no-map;
 		};
 
-		smem_mem: memory@80900000 {
+		smem_mem: smem@80900000 {
 			reg = <0x0 0x80900000 0x0 0x200000>;
 			no-map;
 		};
 
-		cpucp_mem: memory@80b00000 {
+		cpucp_mem: cpucp@80b00000 {
 			no-map;
 			reg = <0x0 0x80b00000 0x0 0x100000>;
 		};
 
-		wlan_fw_mem: memory@80c00000 {
+		wlan_fw_mem: wlan-fw@80c00000 {
 			reg = <0x0 0x80c00000 0x0 0xc00000>;
 			no-map;
 		};
 
-		video_mem: memory@8b200000 {
+		video_mem: video@8b200000 {
 			reg = <0x0 0x8b200000 0x0 0x500000>;
 			no-map;
 		};
 
-		ipa_fw_mem: memory@8b700000 {
+		ipa_fw_mem: ipa-fw@8b700000 {
 			reg = <0 0x8b700000 0 0x10000>;
 			no-map;
 		};
 
-		rmtfs_mem: memory@9c900000 {
+		rmtfs_mem: rmtfs@9c900000 {
 			compatible = "qcom,rmtfs-mem";
 			reg = <0x0 0x9c900000 0x0 0x280000>;
 			no-map;

-- 
2.42.1


