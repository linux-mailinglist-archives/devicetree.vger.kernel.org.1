Return-Path: <devicetree+bounces-256139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5559D32DD7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:51:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7DF953022CB1
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:51:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBDCF338906;
	Fri, 16 Jan 2026 14:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="M/KRtbmx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB60139341D
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768575055; cv=none; b=ryTVSNUlgKXD4viA6ob1X8/PGemB1KG3ApnwXcLB2iUlf4IJivm8pEEhWMk9eoB+Kgx8GSKUWQc22KLiI4bCcij0zMH6pCqrwMTHmSW82HwMsI8QQA2lPh1WHWd0iJGD7WizdykDBEf5qCgXdM51pei+L+LEAwUUd+68r9d2maI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768575055; c=relaxed/simple;
	bh=gjhNyyiXPMwDxet4wKDSHV0d9wDjmHjHxnL5eNbp+F4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M+6s+p1lOOgD9MVZ+vPANugQqkueMaygHGV/cgXwMnhJcHfKTNBJrwpslT1G+Va5FzGeC0HH56SHEE26FietgmItjXNDOlauyghvaVCW5QPjha4LMH29tQHxHQBZRbPRGyWksCQ2jusce6DNalfrsq4Vz4e5guJsaTaPd9V11LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=M/KRtbmx; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-64b608ffca7so3249022a12.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768575052; x=1769179852; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mjx8cp8u1zTtz+8HPO5dBG1VmcVVPk4nfrHWtFsxXSs=;
        b=M/KRtbmxY3K3nTUwFVbNEsKQliOss69ZFDb7zTwda8rwFtHsq1s0XjqPu9tS602ski
         W36mjZLIA6U7YXlYRSB4ijpJykNVPOZ8Bq1acWrkwV/wzrC4low5lnlA/45me8Edfgom
         ISXeNBoTYnwiH9Na9IioySD4Qn9L19wd6xG048k2Sw0xOOcko+ZTzg3FOrx8LQVON6ZY
         M41HfsU/UbXCs1XdL5HHGbY4BXGhcWk+udSxsSOPT73E4MsItanaxnffuhYGyFs5zU4W
         1KTF2qdMUqOG69HV7aez5ql4o06yFEuAWcicusIskDPstQ6ZoZu4H8UunbZ8iRv44kbF
         KBIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768575052; x=1769179852;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mjx8cp8u1zTtz+8HPO5dBG1VmcVVPk4nfrHWtFsxXSs=;
        b=J9SZV7tifW7MqEOyf/+XfCJdocjAVfMAMRTAPEEFRIsFZjCpZANwkYab72u2X8z+Ii
         Zc1G+6+6kJzYun72qtOMSlQ9bRsjY/x3/sorAVy+obkwqNoXvp0T6G/2Fv+t+M4gPHxt
         SaG6w29Ji70x8jzzJp14fjjjieJ0TwCwSBFP9H3x2BKVNJJ7VTgW4udCDTUI3tccrD7W
         HeoJnck7w7T5pHxpA9YeNDImy4f7r0VP1oTmEIdsFbeywoLnQnOqRai4U85dM2+58/m6
         mhGL75MLb0/EkEnvHW3pLqk3Yop0J33yvELbyuYujsJ60hZdujV9mukZhmpH5Xx+AnS8
         Z8qA==
X-Forwarded-Encrypted: i=1; AJvYcCUtdYqW/suosdoov1kHoBUF1r2qevrVXU34YYieZGIyHxFR8zQZsjJN5TCDQZqvinnD25dCv4G5rmSj@vger.kernel.org
X-Gm-Message-State: AOJu0YzBdZrsfvse95VvQI2pRhHSdEE0bANK6Li27Va17ip+rgtqk59p
	y8+SuGDIXlS4mTS/m0UJxqsahUAM6E1Y2vPB7zdNgcRPAMro/s7I0uFF4kVp07AkN1g=
X-Gm-Gg: AY/fxX4g4FewCFkjAVFoy6l/QXCVwTRwjiKumkf31u+UM1NER5PA2aUShwlbUg9h4g3
	XaNE6KpATNQbJJj0hSHFnUuMQ/8D7tsU4F5Km+su1lEXCVlgOOmkYODXA5auGLpnhk9KbUou6KN
	Q0FOuMPF3Iwy7v8UtE5x+oI7aAbsfQmeVVzF5fJWyN8klAUYNgUpSSflpMV4+zYtUZ/zFKfpRWj
	GH4qS03XqkVtqpnoeWtBW06EhMP3aoscGHF7i6wnGGJBCPmn8iONnH4bSpxgx0z06Ln945rhZ9j
	KBLj6xs7qaGtif+90vRdIQB0mdeZ/Fty9ZwJAf2m5qjjaB9V7a0m6q2mbAM1Y73ZvBUkuoSpKo4
	XNm8vtgfep7K7/yH/arNHMUoBtBKFBtIFsA1ilaCYFS8o8TR+Lxdn/4owShAIpqU6PHLKuloJXD
	+fWRB4aFDH+Jgyh4BE78MH+2EX59VCQnyJn8yF/py/fWzxvsGbyR6GKdd1KPTOJ4D9
X-Received: by 2002:a05:6402:1ece:b0:649:2347:e15f with SMTP id 4fb4d7f45d1cf-654bb61af82mr2022241a12.31.1768575052026;
        Fri, 16 Jan 2026 06:50:52 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452cdab55sm2699427a12.10.2026.01.16.06.50.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 06:50:51 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 16 Jan 2026 15:50:48 +0100
Subject: [PATCH 2/5] arm64: dts: qcom: milos: Split up uart11 pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-milos-fp6-bt-wifi-v1-2-27b4fbb77e9c@fairphone.com>
References: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
In-Reply-To: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alexander Koskovich <AKoskovich@pm.me>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768575048; l=1821;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=gjhNyyiXPMwDxet4wKDSHV0d9wDjmHjHxnL5eNbp+F4=;
 b=9aCWGUk70yj5LCtl1yQkbB+PuccQDjLr6m/nWRrB15aM5nCuUYvR/4W9Y8+MxDkkNrS7kb8u2
 C+9KiWmMFacBR25AAZ//iePt3boxN4/eIxF6O2AZgcmfclRZmZWZ7i9
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

In order to set the pinctrl for the individual CTS, RTS, TX and RX pins,
split up the pinctrl configuration into 4 nodes so that boards can set
some properties separately.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/milos.dtsi | 26 +++++++++++++++-----------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qcom/milos.dtsi
index 0f69deabb60c..024e1c9992fe 100644
--- a/arch/arm64/boot/dts/qcom/milos.dtsi
+++ b/arch/arm64/boot/dts/qcom/milos.dtsi
@@ -915,7 +915,7 @@ &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
-				pinctrl-0 = <&qup_uart11_default>, <&qup_uart11_cts_rts>;
+				pinctrl-0 = <&qup_uart11_cts>, <&qup_uart11_rts>, <&qup_uart11_tx>, <&qup_uart11_rx>;
 				pinctrl-names = "default";
 
 				status = "disabled";
@@ -1835,20 +1835,24 @@ qup_uart5_default: qup-uart5-default-state {
 				bias-disable;
 			};
 
-			qup_uart11_default: qup-uart11-default-state {
-				/* TX, RX */
-				pins = "gpio50", "gpio51";
+			qup_uart11_cts: qup-uart11-cts-state {
+				pins = "gpio48";
 				function = "qup1_se4";
-				drive-strength = <2>;
-				bias-pull-up;
 			};
 
-			qup_uart11_cts_rts: qup-uart11-cts-rts-state {
-				/* CTS, RTS */
-				pins = "gpio48", "gpio49";
+			qup_uart11_rts: qup-uart11-rts-state {
+				pins = "gpio49";
+				function = "qup1_se4";
+			};
+
+			qup_uart11_tx: qup-uart11-tx-state {
+				pins = "gpio50";
+				function = "qup1_se4";
+			};
+
+			qup_uart11_rx: qup-uart11-rx-state {
+				pins = "gpio51";
 				function = "qup1_se4";
-				drive-strength = <2>;
-				bias-pull-down;
 			};
 
 			sdc2_default: sdc2-default-state {

-- 
2.52.0


