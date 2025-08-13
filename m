Return-Path: <devicetree+bounces-204318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFC6B24F31
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 18:15:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 266641C235F5
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 16:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EF9E302CB5;
	Wed, 13 Aug 2025 16:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="grzu0JVx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB902C1592
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 15:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755100801; cv=none; b=pBQPy7LlGlelk9PeWHb434oXzPE3M1yplge0S6c31QmOsSzYgNyzW3ODi+MQgDWIwovWJr/rk5XjjtMtlsuik3njwEpaXJHu+xUStQSB5ND9AjI+TIQqaC/BnO4jLfIRiHrqf2dbxUppbwPYHQ/Hp9yvJu7gEq0meYA5rWEBgws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755100801; c=relaxed/simple;
	bh=qiKwpUDsQ6u+ZSXEONMrJDU1DbDchi+t8h17TOIbq4k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IYaniWnJ5ov4ZBRRmg5ephlGIyyrN6+Ut7YfIoQzFSyJGrqX1lMLLhAGs64UvMlKvqITXIuP0t378euafESxT+HIOpFXLZ0BOMgvL8m7sZF8aeraPxmZq/vQhgqqnHRWqT3prsrvNtx9JAAIdoj80jVSl607lc58ath67SZLqp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=grzu0JVx; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-459ddf83023so41848985e9.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755100797; x=1755705597; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g/5O3rsN50RWBzdZJkvVZFuj2lxPpa47FoF26sdFJd8=;
        b=grzu0JVxwIQ1TmkL+Nu9EiimjmeQnh/+xb2ofpJSoGYK+iVirn8tr3kzfBxQhRqRx7
         Sr3IxUkm5h9xG8/7qpbNiXspTD+djZVYCIKy/t25eplyg4rUdVc7KP5fUboXn2APIaKw
         YpXbbxOJ0uOYgpaVNQLwkhgQlZwRDKRY08w9+1WFi4/urzJ0MZilpN41Mt9/PP3FhWys
         jxVYHrHI2oHqXh0ceHbBCkBxBVIvNidMgAV6v4mR9wcAoTIEYTQC0OwnqkdXcL+FlZrP
         yiXOtzWOBjMAj+PHwCOF4NYfsqPnVPCzNc8L+tlU1TizKYIxJ7P9BslXyTvdNKZm/qam
         aTaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755100797; x=1755705597;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g/5O3rsN50RWBzdZJkvVZFuj2lxPpa47FoF26sdFJd8=;
        b=CBA7m3zdVuEm1LhspNLXydqxEiGh2BP16OlkdRfRMaPoVkL72Fg0S/duChysdJoJjG
         DIwYXAk9PGzqqvBfhcUok25Kthx2cShHOx9o/fq5D34SYVObVSNJ9pR88dJWuMNYuZvD
         yVBKYIY4fRwK1zeNDa1vuEaX+34diisAoSyJxZAkU8x1XzeugsYxPlw49ISxLOLEzhRy
         52IG5BOJpitFe7nT2NlQCGmvgP/QgoAcSs2pbA11+jBLRReSvN+wI+XaSc+oEjItMlAS
         bExvwU8+QSci9g02/jMN82YADfvNdU/9TPDf/g1HKs9hf4QLU6O/QbZQMTKRFplzLMH2
         MCiA==
X-Forwarded-Encrypted: i=1; AJvYcCWLTlWQDigWZHwnmTEOrZgy8W49JJuEfuHZAlThVfm82LgnIsSyPNtZUOPlyBCQEyDKqhOmKO+RoiTw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8l4hqgPogSusA0uIDsLu1tsAaeeYpsJV64Nb0vDVF8VoabDW0
	vXITF2mefnmCGO39S1aalOcHNcp6llf3BRA+VXpSDBrZxJMOWUAmzWSbAzey4B0ZybY=
X-Gm-Gg: ASbGncvakLjeWdmzu4JxTqTbfBAV9TWwRrbFjhjw7LeExkwPC/+Akq0RFkp9e6ZvZ2f
	S115GA/3dmRnghHq9r0J1gskj3DhzjgGMAzjLOfwJ6eLCJGRmLf5C2sNoM6z51DdNrpZbWaSqHm
	ATtzj4zZy+RSuP1Rs/MmbUtVkXci7CGeVA+didpcIoq7K5xoSyZOJWxyvrVJAUQpPgG+s7RPdsr
	TjDC1GNDVTscBr+IErMFEmf81dTf5shtLHMA6BoNgqLmrAC1JzS2T1GlVV3wrat7L81+tvpM8JH
	Bw49VzlwrZulj7e4OipUsSBdPDVCsFfUzlI81XSs6IAmJ4pr67vSJ6f5UksPwD5bL4C5gshzxVL
	7xSasW2Y/Mg5Edaxo3hLa/uMIYyQN1GG8d89euw==
X-Google-Smtp-Source: AGHT+IEKYtoxzxuy+5t0PBzrNJANU2HNWNNftC9SgcRXHpB7LOzIj4yHz5DFjPniOubwnabHZeKWQg==
X-Received: by 2002:a05:600c:3b1d:b0:445:1984:247d with SMTP id 5b1f17b1804b1-45a165a2a9fmr29523415e9.7.1755100797405;
        Wed, 13 Aug 2025 08:59:57 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:4537:5d58:c08d:204b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1a517c26sm7087755e9.7.2025.08.13.08.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:59:56 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 13 Aug 2025 17:59:06 +0200
Subject: [PATCH 9/9] arm64: dts: qcom: x1e80100: Disable audio codecs by
 default
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-x1e80100-disable-audio-codecs-v1-9-af82d9576f80@linaro.org>
References: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
In-Reply-To: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

Currently, the macro audio codecs are enabled by default in x1e80100.dtsi.
However, they do not probe without the ADSP remoteproc, which is disabled
by default. Also, not all boards make use of all the audio codecs, e.g.
there are several boards with just two speakers. In this case, the
&lpass_wsa2macro is not used.

Now that all boards explicitly enable the needed audio codecs, disable all
of them by default in x1e80100.dtsi.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index f293b13ecc0ce426661187ac793f147d12434fcb..7b90dce872773970b62a6d37f5c9c70305710050 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -4160,6 +4160,8 @@ lpass_wsa2macro: codec@6aa0000 {
 			clock-output-names = "wsa2-mclk";
 			#sound-dai-cells = <1>;
 			sound-name-prefix = "WSA2";
+
+			status = "disabled";
 		};
 
 		swr3: soundwire@6ab0000 {
@@ -4209,6 +4211,8 @@ lpass_rxmacro: codec@6ac0000 {
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
 			#sound-dai-cells = <1>;
+
+			status = "disabled";
 		};
 
 		swr1: soundwire@6ad0000 {
@@ -4258,6 +4262,8 @@ lpass_txmacro: codec@6ae0000 {
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
 			#sound-dai-cells = <1>;
+
+			status = "disabled";
 		};
 
 		lpass_wsamacro: codec@6b00000 {
@@ -4276,6 +4282,8 @@ lpass_wsamacro: codec@6b00000 {
 			clock-output-names = "mclk";
 			#sound-dai-cells = <1>;
 			sound-name-prefix = "WSA";
+
+			status = "disabled";
 		};
 
 		swr0: soundwire@6b10000 {
@@ -4364,6 +4372,8 @@ lpass_vamacro: codec@6d44000 {
 			#clock-cells = <0>;
 			clock-output-names = "fsgen";
 			#sound-dai-cells = <1>;
+
+			status = "disabled";
 		};
 
 		lpass_tlmm: pinctrl@6e80000 {
@@ -4379,6 +4389,8 @@ lpass_tlmm: pinctrl@6e80000 {
 			#gpio-cells = <2>;
 			gpio-ranges = <&lpass_tlmm 0 0 23>;
 
+			status = "disabled";
+
 			tx_swr_active: tx-swr-active-state {
 				clk-pins {
 					pins = "gpio0";

-- 
2.50.1


