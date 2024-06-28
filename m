Return-Path: <devicetree+bounces-81102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A204091B483
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 03:09:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56B5C283068
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 01:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 737CF3EA86;
	Fri, 28 Jun 2024 01:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i9XeR50I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193401D6A8
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 01:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719536847; cv=none; b=Vk3b26Dhv3Yj4tUQetKFcg8bu8Q/jGVQlNjkc6scW+NpNsVTnrSJqirVMISNO9TpMUHndZovPHq7Bj2xbNeTtQ6SEGVhI6+Tf1ay/qACeH6lsJ+q9ptYK6hUJ8VqJt2X1aJd+vtFg9zV/AhB20Ey5HjJDJyMC0HWQIbNUG8v7Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719536847; c=relaxed/simple;
	bh=ZZbdHFT9ZRAwH2jwxwKvq+WMg4pTAYm+sxzcfmphUPY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Tof6lOEHFic3aXUMI45vVX9WVAvpiF6MMiDFEwE3Ow3SrcR9R1gJTAa4vcPRy1JYsbNwhJVdb/RDrIBcpISm0LN7gO8fccZ7s67y0FBBFRgYr0RR3NJnQi7uPdP4H+zYKqiEj281G98UCXXypvHuVO21Si9Qz/GhsbYLzCsGob4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i9XeR50I; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42567ddf099so398365e9.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 18:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719536842; x=1720141642; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dynAb/Zg+8LwHqw/4XbLMs/MXNbFYTrBo5jd++nUj2c=;
        b=i9XeR50I6m+nb9xnfrPel0TRjc5ET8RlXxnweIh4FBk3vvoc3WHiU/Xl1BZATkWjhq
         5Y6cHnjKDhHSx1N8+ZVS7c9YXKPYdkdioppITH9qsKUlCOOSQdaDiQgAt5twENRKPNzX
         HOH3uyc4NcMTyWlK6+0B4r6WFioWlUitt7tEu7X+6LqYYRsa6HMs5OSon0bSNZTXyBEt
         eOGEFtCnajJKHjiaXKs92AJLdqZnsN82E/nGhE8vEz09nA0eK1aR/omy6nJl4NKcXORC
         CS3muZEgvO+DGZYrRdpaIIa/fCuug7tpBokUM2EJfW+flLsYws+40f9wTKiXeglQCJvu
         a+RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719536842; x=1720141642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dynAb/Zg+8LwHqw/4XbLMs/MXNbFYTrBo5jd++nUj2c=;
        b=I9CRxy7EnJClQVPEhZdKDXrEzdnjXdj5cP0B6IijFmmo7Gliz/bivIvx6ckOVgafp8
         ZcZYk69lbqOJP47++7qnxcD1ZTOtJfZxe7oE+kwlSsj4bI5yhUWM33MdahIzb74d9CtR
         GYstyyZac5XuKe82uRvRbX//apvtSAMk7Ya6l957LI4wjTb+EGL9qUqgdOWbzoWjuPoF
         4dGSUHtJeU5pQqRYT940bQna2TkjQwQPifCNLrgmWZyLiGr/x3qy007yfPK4pLK1Zovm
         rO9DlegPiLVWmSQf02PZlrRzkJK1L5wCA5SUvGxej85DnFbqp1v9VlL7GPtnJBw+VX+K
         53XQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvgKWJ+0OYRN23/svYQNPOhXarlUUBQIWWkG2jiwtB5RPZXdSOE/n+dkOqJ7tw/RGwPoGPNPYk7TVxmyg3uevrJxil9XREjms2AA==
X-Gm-Message-State: AOJu0Ywosi3LblNIBmeXGVSqB2NiwH53Vt5YcuHwnOSgRAXlVJKd/tv6
	3uxaGN97iJC0O+tCqwKaBI/KFD4PMyrZy988zBSR9fFvK3Xy3CAQ/bhNAe/5lT4=
X-Google-Smtp-Source: AGHT+IGOKI5oJNmHOq5jyVwdpyCLf2KYJIoEqX0YWFdClIjga1qqCIxKbsEXzORyUUOyqTbaEueFlA==
X-Received: by 2002:a05:600c:1789:b0:424:a403:565f with SMTP id 5b1f17b1804b1-424a4035701mr65078085e9.11.1719536842616;
        Thu, 27 Jun 2024 18:07:22 -0700 (PDT)
Received: from fuerta.Home ([2a02:c7c:7213:c700:2cd1:b0e8:abb:540])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af3c27dsm13075805e9.7.2024.06.27.18.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 18:07:22 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	bgoswami@quicinc.com,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	elder@linaro.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	alexey.klimov@linaro.org
Subject: [PATCH 6/7] arm64: dts: qcom: sm6115: add description of lpi_i2s2 pins
Date: Fri, 28 Jun 2024 02:07:14 +0100
Message-ID: <20240628010715.438471-7-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240628010715.438471-1-alexey.klimov@linaro.org>
References: <20240628010715.438471-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is required to enable to HDMI audio playback on
QRB4210 RB2 board.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 34 ++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 3a9fb1780c90..5487b274836f 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -823,6 +823,40 @@ lpass_tlmm: pinctrl@a7c0000 {
 			gpio-ranges = <&lpass_tlmm 0 0 26>;
 
 			status = "disabled";
+
+			lpi_i2s2_active: lpi-i2s2-active-state {
+				sck-pin {
+					pins = "gpio10";
+					function = "i2s2_clk";
+					bias-disable;
+					drive-strength = <8>;
+					output-high;
+				};
+
+				ws-pins {
+					pins = "gpio11";
+					function = "i2s2_ws";
+					bias-disable;
+					drive-strength = <8>;
+					output-high;
+				};
+
+				data-pins {
+					pins = "gpio12";
+					function = "i2s2_data";
+					bias-disable;
+					drive-strength = <8>;
+					output-high;
+				};
+
+				ext-mclk1 {
+					pins = "gpio18";
+					function = "ext_mclk1_a";
+					bias-disable;
+					drive-strength = <16>;
+					output-high;
+				};
+			};
 		};
 
 		gcc: clock-controller@1400000 {
-- 
2.45.2


