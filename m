Return-Path: <devicetree+bounces-217331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8F7B57588
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:07:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03C613BE481
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D352FB970;
	Mon, 15 Sep 2025 10:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QPu3WDvA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DE42F90C5
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757930794; cv=none; b=DNg14JyY9ISKcQJlxCYw6gbPWn8plXmEgpAFXeO098uz8+21qZ6yXJGLtmXoS3HO60ZGfeNYgg8xB/z/ztpMqOh1J4bgrvc9UhVfTwwfklISgZSxQg9rnfcC0hUlJESlb0V5InbGN+7LGF9rPmXHVbRpBE269McK1sofMVusd7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757930794; c=relaxed/simple;
	bh=CivzybVT6femLa3DyANzOoNr5Zw6tJRLE5//4WZ20nw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JiX+MJYAr9r8wbL+/96cfvKH7eHGpHpwnWjT18JX//uKliR5O2ojfzpnFDtSk+R3et6QUSiOWiCTxBSBQl2EH2HQl753X5zPNxRoGIoHBWbBtw0D+2aHPSY9UhFvnzwhrxlGI+1OdJbRuaQvyYI3pt3UK581eFemMxmr1o2FTTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QPu3WDvA; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3e9ca387425so963908f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757930791; x=1758535591; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xFBNEsy8Ttzp7cjciSXICukNb+BZxKqaUl/2TE24rqU=;
        b=QPu3WDvAyaonIJ1Dai7C5GhUEcB7qSipkp8bfRyPt5hFdXmcnfxacnuLafW9w8apev
         USZ8JPGgBV+Gf+9QDBMipYKws92Poe8CNoMXDJ3k8cxXa45fzysJ+Sivo8rP+nYO4kq0
         Eiyh1VkBkJiaRcx/W6Alfd+0Yi73kMFuO+92AVE522lqeiRiN6dRGX2DpX0FELvpcSh5
         0H4VGWz9ZF5r5BwPz9MTljt+KFh0tbAyTSekhGbr1IPhBHyvPD4xLrkCqxYCo5OGclg7
         JBzOutpLewApmB7wbvBsmDm+7XcF0nN7XH18jxNIhFa3Te7LWZTE0LONqCqLqP6YG6M0
         ypxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757930791; x=1758535591;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xFBNEsy8Ttzp7cjciSXICukNb+BZxKqaUl/2TE24rqU=;
        b=i7IhN5KIAKowpbAfSc8JvAf1OcwAZouNIu7Pw9ifX/08d5Zcv/U7rjsqwdhr2aVTd9
         QzulziaY0H33dqraE4EJu+uNA7ISNbCrpd+PepykkZTdCyFWKTfwMQNq9+u9b48hIKCc
         CvFwGKf1+NgBT8Ce6IEVGUQw9KtFPZS4eAVC1+I1MX7ZmAM/2kZqq9J0ghLIx4bjinmp
         uWCfPdDHuePpsCr/eY3yuuy8d+iSi3JisjvvryUPosibLzbzYbr0GIZMkpxclLqefMQb
         7ovsAsdtAGHNdAqK4rmJllXZgQw/QDtEqDhz80rjTFuRdGz5ijCTmr7Sly4/CeapcSYu
         rh1g==
X-Forwarded-Encrypted: i=1; AJvYcCUiRTsAnv/NJyu7JmvY5rcva0xvFMwzz+Ho/BnU4NL/Vn21z4/p976kolFBLVus9FQG3KgcEy3zVGd0@vger.kernel.org
X-Gm-Message-State: AOJu0YzmhnHB++lJaru5nT6oRzLFyKfbqf42HnFMR2QBICC1jJeprM11
	f27W3N0P7RLPNLYbaKojkx3E57gTg6TyTRN47APHDSXIGZi61vya9tjQAzArSWyXc9K6zIkKWLT
	uYHgYlvI=
X-Gm-Gg: ASbGncs0I+tSqf7yV1CKYoPSPX331D7jlCAWUVJg82a3fyh2d2GJeggiRVl9ePdNksC
	mJqfEsLzrsrHBk2sTO51RhtDY2N+21YUg6qDwk+oWcChTTGqSQQk4dUNS+PkK6CbueetJ0pvxkY
	sDVVUdDNFyu0WLxd3+uSMdqvrq5C7Omio8yHjse1m90Wa5e+lPpHGaTN35HoyaXVzmHKZc6mbGk
	5kuhvEeUUUBpgyOaGPkaNxlibWXm3qO7Ggom/4b7h9hXmnl6ftHJ/3qRO+QaQ2PiKsE8+otD/KA
	LkLUdOVHhcX3TVJHLHCxn9oImlhnB2jIaRm+zDLkTgnoBDVV7Jtt92E1UvLOc2U0s2vkqMfLowZ
	T7nvHGp0pMyA1/oE7rM/9TlrR8h/MqYlLO25azMJ1TLcA3g==
X-Google-Smtp-Source: AGHT+IHN9nN/WsNaVjDToDQ9YspQkvCA8d89vfCeKt3nRTtRQEdxmZtJnxV46PeT+eqbRJvfHa+ngw==
X-Received: by 2002:a05:6000:4024:b0:3eb:5ff:cb38 with SMTP id ffacd0b85a97d-3eb05ffd028mr1770106f8f.20.1757930790847;
        Mon, 15 Sep 2025 03:06:30 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd4cdsm17209127f8f.37.2025.09.15.03.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:06:30 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 15 Sep 2025 12:06:15 +0200
Subject: [PATCH v2 4/9] arm64: dts: qcom: x1e80100-crd: Enable IRIS video
 codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-x1e-iris-dt-v2-4-1f928de08fd4@linaro.org>
References: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
In-Reply-To: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Alexey Klimov <alexey.klimov@linaro.org>, 
 Anthony Ruhier <aruhier@mailbox.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>
X-Mailer: b4 0.14.2

IRIS firmware for x1e80100-crd is already upstream in linux-firmware in the
default path, so enable IRIS for the CRD to accelerate video decoding.

It looks like the X1P CRD might need a different IRIS firmware (possibly
even changes in the Linux kernel driver), so keep it local to the X1E CRD
for now.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index 976b8e44b5763b2d6c0f4786bf5809fee29dcecc..dfc378e1a056a8af27ef4b646f7589e7198dbaf8 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -16,3 +16,7 @@ / {
 &gpu_zap_shader {
 	firmware-name = "qcom/x1e80100/gen70500_zap.mbn";
 };
+
+&iris {
+	status = "okay";
+};

-- 
2.50.1


