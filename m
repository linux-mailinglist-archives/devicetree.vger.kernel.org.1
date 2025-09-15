Return-Path: <devicetree+bounces-217333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ECFB5758B
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:07:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 427F43BE836
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E0812FB998;
	Mon, 15 Sep 2025 10:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vm76JxYn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711DE2FB625
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757930795; cv=none; b=u0SK9IpDIOYeVuHIC+uiKYkZ1DfcL0nMZnue7lI/hA0Q9az8HYnkG2tu15/FTrPTAz931PlibUQq16//osCK1BoQLTIA2q48M5LbUR64mZU2gcpqGkB3DZ8B++vt5a9ScIAj5NBRFtoaqtMV2pcX/b46mxS2GKfhWvwEeIZ66Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757930795; c=relaxed/simple;
	bh=lPVsvFsNhFfkyen8EiuPo58L2CyLDTz7q3IsZ3ltpEo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cXPpWXAWSGCwsY0QgqX4MN2+Y0ZZJVsjfIwz6syz/5EN+ErFDFz7W8mCo5BQEJ3OoNC/rEcylIG+DdwXxVt110SEkWqm/PJoIVqepZsZSjOmHfC7h/xmCB+4XXPL6bcDCeNxlCDeR5IFqd0+evVmzzVAttEQKxUb+Rgcprfx0iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vm76JxYn; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3e4b5aee522so2394614f8f.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757930792; x=1758535592; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0P9I5GceZCsWfYioaUyTdRDDyk+XfjON/ECPS4nrgn0=;
        b=vm76JxYnxaZsGSldFk50TYjaHuqnLVr0e4G9ThCDq8LE8BjvXCRi/HxX/lXRd4s2CV
         lMMroxq0UmQWndz8vJFRqamPLgMh31BAp2y/poP31c5LFQasuYm7VIoTvk4P376VLvsb
         CAucuWVrtt0UUhsGWiPScWnuyQrQOxzn1nW+TDeekV4+NATyP1/+2rYUBW0n3DZ9XwxA
         8fdawHod8lG8l46d2hRH/EPzxpN8qmUYmkw1q4pVnL59y/sksZ1x4GAUE+VSC10SaOy2
         u28PEn4PU9gaTzxyQydQUrs2YGn01E0mr5XkXIj4PqjKInTX+A/BYezbJudwFt6hhO8S
         JAWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757930792; x=1758535592;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0P9I5GceZCsWfYioaUyTdRDDyk+XfjON/ECPS4nrgn0=;
        b=lUgPLYoHdrPhwcDZWUG9dZAjs0aBCIFqBmDm02OwBE/hn8ZiOBeOz6h4oqo3GtJ7ub
         QlbniihGiGxU9Aw0GblUmHqodYxFHPwVWl5hSecJmOU6gNrLbiWMF9rogVmrkJiMb49w
         aqyc7Qsknz4QORB3KqIxS3MJ0fcBT73CMgA/ePyuFk9ISDBM6JnqEtDQx4VIptWLWKMt
         mKkGRAAFQlnM7p1m09/to5f10o8XrDWwORJNa4zPnPnk4C9MY1NuaijvdXhGEKDX5tUE
         20QBR7zVzQ6KYfwqO3hH7dhSHYrJvKi8UF1n3pfuXXSzBNKRJAo8K0PSSkJ4lkQchZvm
         rH7g==
X-Forwarded-Encrypted: i=1; AJvYcCU2DOKhWrJakEFDH1MxkiUshEGksEzLxCouqE5jQJL0SPuPlnW/KSbIm+cKOhdvr8u7Vb1Ejt+yX9MY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4FYikG6sGRqrnSlZC3oaFm6hy2NXjVgKXEExb41qh8t9xgljh
	LscO8q0XC5tsjBQnNGwVlGtyBQ8N0iTgYykKgVpYIwRRuvxFFhMdij97glFvkLzngAitTx+mYdY
	psOhpQ0g=
X-Gm-Gg: ASbGncsh7LwYk5quFF80CInyC6o24Wo3j5OBXvfKu4rpt4UxXhK+sE7C+bVIKdbFvx2
	IsOOJ+KHeP5h2ZIDyOoP8gkgq3azqYEjLa/jl5RbR+zp6b0c0AV9Rw9oy4wSPs8Y72tRpxDQgJ7
	tNrWVwO4mScUA2m4oxmmfIfNvwbPmOseZY6jQzF7z4sOZeacY9TsMtlektSDVbwDWr01tmW0iiW
	kEY+QxieipUwcDNJhc0ZDFbYRjAdlj/tVGjak95B0HO6dBLD3kbQ9ufXtj38T3D8tB6xdM4NV70
	KLDOvZfUeV6/ssCJerFo2kZqpeM2uxf9TzPCsOqTaJvoDg4qNfphm37VktgWJ9KEJjr1syi2To0
	9hicFuQPbX5Ubkp4P6pgvVypJaQGIaXlIvNWusdSyLgb9jXEDVbk3hxGt
X-Google-Smtp-Source: AGHT+IENWQx+UcTcrrly0QwCzyfPQCRYOIixkTX1wJC/Ai5bWPg14xN9tzDlmLGksLlVWk3hcK94eA==
X-Received: by 2002:a05:6000:144a:b0:3ea:a496:9b8c with SMTP id ffacd0b85a97d-3eaa4969f1fmr3260601f8f.45.1757930791820;
        Mon, 15 Sep 2025 03:06:31 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd4cdsm17209127f8f.37.2025.09.15.03.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:06:31 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 15 Sep 2025 12:06:16 +0200
Subject: [PATCH v2 5/9] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 Enable IRIS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-x1e-iris-dt-v2-5-1f928de08fd4@linaro.org>
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

IRIS firmware for the Lenovo ThinkPad T14s is already upstream in
linux-firmware at qcom/x1e80100/LENOVO/21N1/qcvss8380.mbn, so enable IRIS
for the T14s with the corresponding firmware-name property.

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 23213b0d9582822e9503e4acf18c62d5c8c7867d..0a989e9d3d23146cb9689b68ba6c5779283b3c98 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -967,6 +967,11 @@ touchscreen@10 {
 	/* TODO: second-sourced touchscreen @ 0x41 */
 };
 
+&iris {
+	firmware-name = "qcom/x1e80100/LENOVO/21N1/qcvss8380.mbn";
+	status = "okay";
+};
+
 &lpass_tlmm {
 	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
 		pins = "gpio12";

-- 
2.50.1


