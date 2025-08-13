Return-Path: <devicetree+bounces-204313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B754B24F10
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 18:12:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56A13683005
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 16:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B1612BD58A;
	Wed, 13 Aug 2025 15:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IXlw7xUA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC8E299A8C
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 15:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755100795; cv=none; b=M4YvlbwPmtERlI+1qVvK+xJ27UPN3qLAqbN20t14BFK6kW1yEUeXVWovALccYyy/gE+vy9J+r1+OrnpYSUG/xhAfD2/j81vtBArF9G4ZDu9WFRHrfqUPC9geV0LTvTUGWRgUi4fWa+caONCF3J/8lT9hmEiYVyVv9kUxgpEg1xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755100795; c=relaxed/simple;
	bh=BJacCqalYuhTrgJ6z+lyprAGp2ZxuB+c08EcKO9oezw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tfaNeVJ7i/NwpONcoecHqsvV+EKTvLb6O4nNX99WXIEtUpFj10gnUwffEARkLwGBmkOYb61WcIsiHD8OwRxGjA8jOKFgj21uGzIRPVfYZZLC8xO2Dci/8tqW0YFhLjS6MdmaL9LsWDEC16j+q7lAUmfNsKqSKx8Rnz0DbdpHp8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IXlw7xUA; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-459ddada9b1so62802875e9.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755100790; x=1755705590; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hflNaXmnDmYKGXSSuXmMvcjUzpmt1x6X6QV1FeYHqQc=;
        b=IXlw7xUA2Q9iHS/OLdpohKsscOduB7bIYYDciRBHIMli0wu5LhxNr5sckMojQPyd4G
         JxR9tYkQ+14SaHBUIq836RU8R2ZVPECGwvqVNY71a9ezP7Gy0XgRppkPUqZICCiaNjOG
         PBCtlAI8wrjfCtsPhaEVIdhERpPYw8tNNZzcWfGOqNOlclaQC98weDGNu6xAHHxOhU1l
         fgUwxWDMBC2e7jQPacCJzN657o+2okrvols94IOmdqPwARR0vLMaXnWr2fThUJBxOed/
         yXonYw4eYxgbA0Kf/HBEXPFkp8DxVYRuzKDQRUCifiKEMKIBkSQTLoJd9aQRDu8jG2J2
         o8Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755100790; x=1755705590;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hflNaXmnDmYKGXSSuXmMvcjUzpmt1x6X6QV1FeYHqQc=;
        b=sEhK4SW8hUZNqyv/Tn7vmYTIIA7aFeQ0jUf3A2gwp9zK1Ez/Xcr8D+av1FqaWEfzfv
         to7pSfcbPSVpa++DP2WO4B+SMdMuaN4JuzXE6DVH1DQH9ZCA7UuR8DALqOBfA2sc2+qF
         dC7e6eyfE8unRpMQnrQaNCErz0DdYJpx8xMPhKK1UxDs4ytxVx3QKK0ypKAvAzYr63gj
         c2Jan+bEFQI9/mTEfVMmIWO/5vIoX8yKGs9/kzHMnpSYnh9TIbHnLAVgB1HhBVbmyJRH
         BWPe4EZShHUDCOBZvmI3Kf5pxsXpBCsDJPLtJwlx+h6hUis4DXyAVlIs4zgR5jsusmNr
         CP9w==
X-Forwarded-Encrypted: i=1; AJvYcCWMWnRuV+tpEweeVKqnzgls8tEtMD0zGZj4GYSBaiI+RcNchqfEpsJ7D1mwTqqug1ymds9jKNeepx3M@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ5hVxMOomjQE8VkDtJ7KI+J57kg043iueVmnC4C2GVQLHq1yA
	s0cXQwRUNIPQq5UGGZlZu8Gg3LGA9uofcJpABuo6Eyrn8teufegtsKQNefycm/YUCIA=
X-Gm-Gg: ASbGncvt5xFtB2xG7UUwhPqqd1KUaIhD7r2d8BAIrnXnHNEaEHbCYCF0JVhDWhqLE7v
	SD30IH3iOpA+mtDB+Y0I4HQwW79zBpT5EYv1lpu/GJB8lefgzDQtr8ZcFpqqsiqITTsFOILTK5B
	FI2aYAYVwwEJBe3bnbt0IOHpBMzZLMabCu6x3kK+2iee8clYxP8y6CoSoIlljiyygp/OlNC1KPw
	5UogAlMVNGwSm0ejRK96qhpdKrBeZ3qhy1neDliabUF2s6a6hiPapYSNnXTmMUL0+5TI/VyEaeW
	4A6kaPrrjtqyjAoyC8ZqJ1rvJfhYr/9sDd96Si+8xRhpe0GDvNcieR74PsxaziWXL4wirAshlVk
	QFuan9IfjxK5vUvmaFlEoSMnE4jQIGUd0dAVewg==
X-Google-Smtp-Source: AGHT+IHxYDkUcEsCLbIRyFMqaOkoGUJMUYCdTh55vftfsZFEQiSSGKWq1Gxa6ZrB4wY4xUh/ZJMJeQ==
X-Received: by 2002:a05:600c:1553:b0:459:df25:b839 with SMTP id 5b1f17b1804b1-45a165f7ea6mr27766545e9.33.1755100789993;
        Wed, 13 Aug 2025 08:59:49 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:4537:5d58:c08d:204b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1a517c26sm7087755e9.7.2025.08.13.08.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:59:49 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 13 Aug 2025 17:59:00 +0200
Subject: [PATCH 3/9] arm64: dts: qcom: x1e001de-devkit: Explicitly enable
 used audio codecs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-x1e80100-disable-audio-codecs-v1-3-af82d9576f80@linaro.org>
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

In preparation of disabling the audio codecs by default in x1e80100.dtsi,
add the missing status lines to explicitly enable the used audio codecs.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e001de-devkit.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
index 2d9627e6c7983daedba87619ba01074ee22b43c9..636264e130b7d4c82cfe7d8a24508cec20ff997d 100644
--- a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
+++ b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
@@ -974,6 +974,19 @@ retimer_ss1_con_sbu_out: endpoint {
 	};
 };
 
+&lpass_rxmacro {
+	status = "okay";
+};
+
+&lpass_txmacro {
+	status = "okay";
+};
+
+&lpass_vamacro {
+	/* Not directly used yet, but needed for fsgen by all other macros */
+	status = "okay";
+};
+
 &mdss {
 	status = "okay";
 };

-- 
2.50.1


