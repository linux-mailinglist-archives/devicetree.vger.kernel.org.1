Return-Path: <devicetree+bounces-216166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 82926B53D57
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 22:57:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 420125A0A82
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 402AF2D9792;
	Thu, 11 Sep 2025 20:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DMuLMZfJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF8A2D7DE6
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 20:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757624227; cv=none; b=ELwJmIxx+sX0vYSC6ldKDFQZHdfv6gU1BFPy/o8sXxX2uSj9CVeSaiWbJa6pVCTdpBAMioJL2IaHtZrk49EH4fMvVBWbSEu3DP5NXrAygbsWpLL8ihNhmgIfk3jqY1JuNzKoT14eI+H0UGf0C5SjVutg/n7CZQao0zkxbW5FFDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757624227; c=relaxed/simple;
	bh=nUEAyXgbLn4v9azKT5n1vztEvNCnWVI0bOzq5dWBoz4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bFTuFmq6fwTBWqEulmUp7URi5kQJW8aeIbMUjHdV8Jyu5yzb75rUccPFooCYoabeZGCun4FKjkQppvGcj5DK6VG1Tk+ZRaRgQKq9tCzH7m2EsKlpGka5YXLGLUITqLJuqPfWQZc+Qb/b1PQ/CoaeQFMmGan1AOvbd2HtSjut9FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DMuLMZfJ; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b0418f6fc27so206461066b.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 13:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757624224; x=1758229024; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C0JmqMyBdGbQ8gI7VodLEj+HaxvKC2psqCBIe1Mn6TI=;
        b=DMuLMZfJNajLmfaPEPIeJslP5wEBbAiy6kG2XpsUU4ilXr/Uiw+bFTqA9gMPqVTnCy
         B/aEBONHFp43C/fatEgZ+tYnFIZMed5ZZKk+676tnPiQNqu/MtxHzN3OG3wcVv7XV4iX
         S9126ms33ZfGkeEdbhIizVmfFrLqy/i4vPbWV9r5GQxRznm1yE9pw4MOzuikkzVMf4uW
         zUPdfi9CUvW8q5iZDLDLbsB8i5L9V9AWxeqTm2UqMuTyRYXDbFHai6NZHTAcogKxegZk
         kfXEtajtuWCCDWbKYhXveNfNTcY/LR2i4Wwk4gxbc4B9FkESTDvsqWqVlfKa9vlBLoiw
         CEQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757624224; x=1758229024;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C0JmqMyBdGbQ8gI7VodLEj+HaxvKC2psqCBIe1Mn6TI=;
        b=eQCpqwGlaBfUGqJMnM5VnKyRU54WDnQJtnrC+xnS5CWB7MFyTWD2KJm9mpsohvNO4U
         v/u/lDDK9eYl2E+9I5DwvwwBEuW4OKsWEhKmAV2G0GJdHc6lnMEUZ6sLKFxZaE+9rW4L
         58s55IQxhCdUXwqfeGRkKfE5y4sQCxy+hZE+yRFKnOIFJyCVjIX7ou4lH9dOo4YR4jzF
         NHRCn9+1QV6+CjLGrZwNw7IDbcvtdQF2xbfL9Fzt0OY5UAGPn5td6cPrTBINyriHfiHm
         9ixB+bhmHRPbS/tm0MRufoP6i+LAKCmT+8ODzxrbybKwwjCzWkPgVlMeZOih/Uq8JZPl
         4MhQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4MtBc7BNHgn7X/F1X4HhgaPtJcvTKgz3lgWZ5feIegJO7zmnwGrKE/broMqGktiqgmQETElriCs6E@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0Jxl8D5q6YooZ3B5xP4L+iyResRi3FmJBX9JlxM4IbhOye0yx
	drUJwz4ffaFCce51tZQxhA6vw7hUj+EU0eFA8XtqhZVSQX1sDc7EdXZp
X-Gm-Gg: ASbGncsxcCUjKnoo4g0lmTlhXxXpWOeJOqweaLy5SAGI0ez3Un3RvQAQHgBYiiXZa2O
	c2XyAhyrPZNKR5nIg4T+/tH6V4VrTiO7qo2aeCGTdYP2QHToa204TGj0jrEgXy2nyu++3m5iBSo
	pozV0WWPZTSu7w2qZscxsxOvBDTU1IlbghGEnBRwaDkdas+rQPkKFaEwjQfpSoavxF2GcfLFKi0
	050vdeoa99dhSSST7jyEos3i1pXTBa0E/pjlJxxgrk7t+iZE3H9aeWkP1WxY6QcJ57zWOedBcG/
	Yn/oVQYVlOLjdAj6HXDOcoG7PfmQMKCuepyFoFpwSGw2BUVH9TchtoxCY821cI4MPlHgTVpSah9
	3nodob+g/oAoVXRTpcLSagC0l13JS//4=
X-Google-Smtp-Source: AGHT+IF32n+ghR2lvp3OruPrYSdGU7Y+rlNr3st/nMIgdWGllWQUKQeSB5kNG3qCsFPT9IxV4Ues/g==
X-Received: by 2002:a17:907:9705:b0:afe:764d:6b22 with SMTP id a640c23a62f3a-b07c347fa5cmr49768566b.9.1757624223756;
        Thu, 11 Sep 2025 13:57:03 -0700 (PDT)
Received: from [127.0.1.1] ([46.53.240.27])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b07c28f190fsm38775366b.39.2025.09.11.13.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 13:57:03 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Thu, 11 Sep 2025 23:56:57 +0300
Subject: [PATCH 2/2] arm64: dts: qcom: sdm845-starqltechn: add slpi support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-starqltechn_slpi-v1-2-93ebf951a932@gmail.com>
References: <20250911-starqltechn_slpi-v1-0-93ebf951a932@gmail.com>
In-Reply-To: <20250911-starqltechn_slpi-v1-0-93ebf951a932@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dzmitry Sankouski <dsankouski@gmail.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757624220; l=1353;
 i=dsankouski@gmail.com; s=20240619; h=from:subject:message-id;
 bh=nUEAyXgbLn4v9azKT5n1vztEvNCnWVI0bOzq5dWBoz4=;
 b=27svf7Ue9vYWwhzsEw473UyOaGIigV5yMC8y292nwZYZx8smqYzOpcLd5YpIxLyOkNEf7ioH3
 7TNd6E/3hIbDI+dM/LRkxqhQEgg05+jN7I+Z7kRmQ/a1S00gttS36VN
X-Developer-Key: i=dsankouski@gmail.com; a=ed25519;
 pk=YJcXFcN1EWrzBYuiE2yi5Mn6WLn6L1H71J+f7X8fMag=

Add support for Qualcomm sensor low power island.

Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
---
 .../boot/dts/qcom/sdm845-samsung-starqltechn.dts   | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index 32ce666fc57e..2c1157ee7b2d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -902,6 +902,14 @@ &ipa {
 	status = "okay";
 };
 
+&slpi_pas {
+	firmware-name = "qcom/sdm845/starqltechn/slpi.mbn";
+	pinctrl-0 = <&slpi_ldo_active_state>;
+	pinctrl-1 = <&slpi_ldo_sleep_state>;
+	pinctrl-names = "default", "sleep";
+	status = "okay";
+};
+
 &usb_1 {
 	status = "okay";
 };
@@ -1028,6 +1036,22 @@ sd_card_det_n_state: sd-card-det-n-state {
 		bias-pull-up;
 	};
 
+	slpi_ldo_active_state: slpi-ldo-active-state {
+		pins = "gpio8";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-high;
+	};
+
+	slpi_ldo_sleep_state: slpi-ldo-sleep-state {
+		pins = "gpio8";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-low;
+	};
+
 	touch_irq_state: touch-irq-state {
 		pins = "gpio120";
 		function = "gpio";

-- 
2.39.5


