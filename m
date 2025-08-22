Return-Path: <devicetree+bounces-207940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72376B3136B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:38:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77E86A00BC2
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A4C32F83A5;
	Fri, 22 Aug 2025 09:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r84JfSyT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23342EF654
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854952; cv=none; b=WQjNZHCYZgl7A+t9lAHAYRBhTHIT9/P8nQ+tIgxwrhl92gpvrFVBM0mMvKLPMYcVEuhBgZt5aYPL3gC6OQ77KpjiNXEAmPsMMIUrOQ8lop4lGYhqf/BYgLSt1SEn+2qbvBjaXEgfAVdrI3kqVHtE7UMEAOs68yXD2zzMzvyJ4hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854952; c=relaxed/simple;
	bh=OV9NBEGNmZ2rTXWu+yVDHywWCMLATKrBxMJPKNHdUCk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UnvyH01igvlBGAsGJQNmwQZ1yrbuGyOJkf18Mi2GL2pxNDCp2kvf+ZUkjdsI0rgV/VGm4GYPE0DKvwd40Z0D4WBuwc/AQ3sqOOLz5eY1W1lfW7VixC5fB9l/8xKY5kg5nsbiX+OjluYdQHFfDenC3MIgG4LVcO16G0pjTCXEPYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r84JfSyT; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45a1b066b5eso10026795e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854949; x=1756459749; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9XDvtosqXE1z2B0OghG2EJFFbUf7Y1I7x1P5I2TiCM4=;
        b=r84JfSyTRiBJoBe4Q+d3trl10l49CRVVnmmnwU4WxGhiNdFoJactGuK5ERrfe1XoEh
         RDpf4GOkYQ9B2KT7pQR/JhV+cCDh1kems6z9EkNcjLlPDI4jg9vNPAOphBFdo6hhpCtu
         dlQWl8+LpG/fL8L29f/Vxb+GfooUvLlBmy4HQU6YepoX1ib3MToqNB+K5thdJNN06q0B
         OSIIcC9vGXO6mbfhQZ5lzYuhH3fdKHnk/co/ozT+yRyvygsCFrY7fAMgYZIVumvA0YeS
         31sG9w2uZVZFWbLZWiZwURU9fR6VqKVa4KbquIRQe/TEoKQP1MDIO175OPHmUBIXDcsl
         dpFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854949; x=1756459749;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9XDvtosqXE1z2B0OghG2EJFFbUf7Y1I7x1P5I2TiCM4=;
        b=rfmwpC7VEyIAabMyeLQ5K3neBo8vHhtFlNvjAmCPCkTYDYwN4KNdC5PDyqDzsD3sBa
         2K5MU6DWCV3Iow9NHHz1GfgZ8dyVBy61wIw4ln1K73tPlVDYvPI0xFS56rtmyc33sLx6
         Pin9ESEXHA6B6LUm80/x27x6HMC33uocfYRmNcf1g4mkTIhoosf8SywJilvTBgXNII7U
         +yDTgqR0YzFNpLNyuwPVwg+8hK8ttFaRiCxB7xHsPEtQaRXeAPOQcziAxhzlPzIrsg61
         RyCINzoS6V/eq0mTnCKZNSFBiI8AbgkeR93/zYH7949OFPlBb/PalOtF6jbJE2ttJj2/
         UK5w==
X-Forwarded-Encrypted: i=1; AJvYcCW/qFo5dO8Js0151B8qlr+7tdCcsI1bCpTHZUSxJylWrpKJo7ow3LS58MVxye/DOb+Ni1Vg+RpSfsE5@vger.kernel.org
X-Gm-Message-State: AOJu0YwkQhMEBDapXneP9Z7Voc+DRLdoSAYGVkrSypZBpYS2l3adHkSR
	pcDE5JXzv1TbHCHG6l8tzVDnPgdEaEnUq3hUtRrdtowYW3N6vuKS2CTO+Zh5+d3dr0Q=
X-Gm-Gg: ASbGncuntF4FrK4EEFwwPAiDYcHKX9oZeq04mWxe76SKNMRBIgPyIPcjG0uj64mN4Qe
	WbONKcxOnbVyBEA09jEzM1dNEtSerRsgtCpFc6i3AQqYpNC8lX1IumAi/8DsVglrlb5pRO4gHJX
	/H+xw0g0F/A1/QVhIA6ygG5xzgQxI3V0ppl+f0VBqAU4I00fdxAlALWl82I40fuMTLJ5BTumslZ
	SynTNfJzD/HdaHLxPdsSqmXLMuXaM/tMgXutufYsMnNhNRNhjldTQwvoNPTu0zjrI6PUrmjRcyj
	+iHEcbNv1F7eK7Pm4tJ54fR/FJ8XpOjD4aKqTSv0XGegwGXO3AOu0/9ptwmgtK11uI3aw1t821h
	xNOVidQy42yT5/tGSnjPcRluffJI5SqwJvOyI31vMtlo0LkdY
X-Google-Smtp-Source: AGHT+IHExVmgqlSBDTxp3UBEsiithGY1ASjzeGyFWNQHJP3V6k3TURzkBS3Q8Xdh3G4H3SMgsocWjQ==
X-Received: by 2002:a05:600c:4692:b0:456:1514:5b04 with SMTP id 5b1f17b1804b1-45b517b9636mr17657205e9.21.1755854948985;
        Fri, 22 Aug 2025 02:29:08 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:c671:531c:f2ff:2a7a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm33831805e9.2.2025.08.22.02.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:29:08 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Fri, 22 Aug 2025 11:28:56 +0200
Subject: [PATCH v2 05/10] arm64: dts: qcom: x1e80100-asus-vivobook-s15: Add
 missing pinctrl for eDP HPD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-x1e80100-add-edp-hpd-v2-5-6310176239a6@linaro.org>
References: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
In-Reply-To: <20250822-x1e80100-add-edp-hpd-v2-0-6310176239a6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, 
 Abel Vesa <abel.vesa@linaro.org>, Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.14.2

At the moment, we indirectly rely on the boot firmware to set up the
pinctrl for the eDP HPD line coming from the internal display. If the boot
firmware does not configure the display (e.g. because a different display
is selected for output in the UEFI settings), then the display fails to
come up and there are several errors in the kernel log:

 [drm:dpu_encoder_phys_vid_wait_for_commit_done:544] [dpu error]vblank timeout: 80020041
 [drm:dpu_kms_wait_for_commit_done:524] [dpu error]wait for commit done returned -110
 [drm:dpu_encoder_frame_done_timeout:2715] [dpu error]enc40 frame done timeout
 ...

Fix this by adding the missing pinctrl for gpio119 (func1/edp0_hot and
bias-disable according to the ACPI DSDT), which is defined as
&edp0_hpd_default template in x1e80100.dtsi.

Fixes: d0e2f8f62dff ("arm64: dts: qcom: Add device tree for ASUS Vivobook S 15")
Tested-by: Maud Spierings <maud_spierings@hotmail.com>
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts b/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
index 62eba17cdc87c088ca471b4cbf5b44af06400fe4..7de191d2aa5ee8d32b20e3617f1ec7cb938bdbde 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
@@ -593,6 +593,9 @@ &mdss {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-0 = <&edp0_hpd_default>;
+	pinctrl-names = "default";
+
 	status = "okay";
 
 	aux-bus {

-- 
2.50.1


