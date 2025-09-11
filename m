Return-Path: <devicetree+bounces-216133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD50B53BB2
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:39:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 292881882319
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBC5136C07B;
	Thu, 11 Sep 2025 18:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NlWFOPvr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B19F2DC77E
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757615931; cv=none; b=KizZOlY9vQnsYzb59hrDeQObMUOvyKxPV+aXnKcTcjDJ579yKvb3fHvtvwCgD21pkJrc+eLvp+VUAa+ypJW4cyXblxaVnnzQaEgY3eAZRd49v69r6jcN0HXFS7fq8qGqsXpunUlRlrAs4AUiSK09o2vH+Ts/TT5xozw4rkpgEh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757615931; c=relaxed/simple;
	bh=CivzybVT6femLa3DyANzOoNr5Zw6tJRLE5//4WZ20nw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VGYz6KvcaHXmZ3cKODAdzv6fKdcevMtV3vOZGFdll6vYa/lBoy5rHRQblCXPzduEQtOaolpzTfud615VvUu3WlTe/QInAQd+PBqpeTJZv3DPROhONrNAnLA1SsRZCjZpuGB8FgdWnUJYyyUvQa3ShU9UFH7cncQ2b9sRLRFwWg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NlWFOPvr; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-aff0775410eso383824366b.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757615927; x=1758220727; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xFBNEsy8Ttzp7cjciSXICukNb+BZxKqaUl/2TE24rqU=;
        b=NlWFOPvrKIoC3T4X5bM2X87OEqr8V+WnrrMlNDUTv3sJmRhU1Xbwixo4mwfjDzdlDJ
         3F+J4P59MEch/LkMSZn3rF8OtBq9VXhVz61ZcynZJ4uoR4mhCbS56Fhf85damWcO14Mb
         V8yuWcrp3A1heDS/7lHNwGINBuyc0+63bR4+uByOIY08+aYuiTBbqVPLvH+Sw0M6gzJf
         Sxabw/MgQNFJhL10DN42plaYeprmjnaOZxZLxsfKMPIfDcaJ7htyyOx6fiplt5b4enkf
         +LJkIi715PGjccXb9h7irMBQ1GXZJnHtb3+zvpd0A3j8ddku657epv0ju/HFEDRs/t6U
         7Nug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757615927; x=1758220727;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xFBNEsy8Ttzp7cjciSXICukNb+BZxKqaUl/2TE24rqU=;
        b=fzNKk75w/+966ihzGRqJ8QU88fJXO+Wv9T4GeqclS8UTB2p4VjSQsD4u207sL7283f
         KXsjXUA6C8eAo7LCzMLmLK4V05JPM9qVZr4zGh3YQoLD5N3tItsi7v9Hkst4gyOV424C
         5RrFQvWnZD983GdNBcxodQimMPZGnpqrlLy+/IXPhs1Skqgbm+Hzu+mBGWrIt73/uQDx
         PLs10LauGT6lkUh76eFcR6gkhLQjRnDkeIMkEXUx/csBqRcYQOCBoK4pHHKFtNOHMd1l
         SrBQnqmCBVzg1XokSsG1e1m+8bDNIij9UQZpFOZXPFb7MbhoxUrc0dPJ6xoiJfuCOuZs
         3dgw==
X-Forwarded-Encrypted: i=1; AJvYcCXViXf7EGzuqTL5zrDi+A6yEVEfsPN121boWGLKCAyHij5DEGn3fzuTrfuzBe7W05J4xgmI5RhBp5hC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5HQoZVxdKMOtG0y8c/tJ1ITNN12ypF9b2JlpJ6OykBxIFe+AZ
	mnxBgfaD8muCxcUBL4O8uG/PFzB2ED5kvIFGzXIbGSdVeG3sf1SGFvjKDiGKb4wfGbE=
X-Gm-Gg: ASbGncuJlVwp+shWzzmG4fsYuSCnsq81M5sqPoprHA3nVPj6HBm/yxsUGQ/VJFLtNYx
	lEY0qVwfK+d5dz0GcOyO/cYFti0EqJUj4STOYyyu3hrczXCXpSFOuHzj1a8NEMScfLonErZnRsX
	96GeCBYMGJ3/93amHlXrMmp8e2Sc72W9SCiO+YhqnnOiMeF/bH+crIq3xNp3tgm08bEXvrzfSLf
	BgDPwv2YCxKkmLKuhz8eKjUYGl+y+mhMJGSK/u5QaDFLRcSz/dfWZ7PQmYBQc5uKTGE2kEbJMmF
	I6E0wzsE/8gwa6sAOmOpfT6/VVUYUKsvMbDUExnVsB3AW539YbYHFNkamgO42taya05MRpjqdvy
	T4V5npMcUwhV/fnyr4XMcddEdvULpopPWMbIY4BnKJQWYS2+sE4pj+Zw=
X-Google-Smtp-Source: AGHT+IEIEJ/a6KzzrDZCaJ+KLuB4J/84EJLHbvJ08OMC1rr6H2HpSczkvwGDXTGRT+cJBZWD51EhQQ==
X-Received: by 2002:a17:907:96a4:b0:b04:25e6:2dc2 with SMTP id a640c23a62f3a-b07c254393cmr35772866b.22.1757615926925;
        Thu, 11 Sep 2025 11:38:46 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:725:1e09:bed1:27ea])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b31715fdsm183999166b.49.2025.09.11.11.38.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 11:38:46 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 11 Sep 2025 20:38:26 +0200
Subject: [PATCH 3/4] arm64: dts: qcom: x1e80100-crd: Enable IRIS video
 codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-x1e-iris-dt-v1-3-63caf0fd202c@linaro.org>
References: <20250911-x1e-iris-dt-v1-0-63caf0fd202c@linaro.org>
In-Reply-To: <20250911-x1e-iris-dt-v1-0-63caf0fd202c@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
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


