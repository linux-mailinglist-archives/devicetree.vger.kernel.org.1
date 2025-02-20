Return-Path: <devicetree+bounces-148742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E005BA3D3A2
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 09:50:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C0F16189DD7F
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 08:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B70271EE7DC;
	Thu, 20 Feb 2025 08:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o2pBD7oE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DCE1EE03B
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 08:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740041394; cv=none; b=QCk6qessDmNFxh6YOzh8PV18DLqlyAYlT3alECEzo3fFvObqKmHL4majgmoh+9eURCKOSB7pzAodiDjTCGUqN8wdvEL55WE1k2PZ3VCD5tcVBmoaAJDTg4UD+njjvQqiBfcucq5uXMHnguC/kgHqVafg/Ln1+hfU3fIEzWcLdzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740041394; c=relaxed/simple;
	bh=N8uFxJ/OSVfCTHYL0fWdJhMBm8t6zWJNTT/9BMTrCWA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GH9+ooO3C28amanuIFDOxmuIktzBiMK0wzzaaSEXkm2Vfu8kXIj2YkLPxSRhD8tzi2NgM5afXLG3CmdfUTdXwp/U8B6m8k29vrtXErY7EYOCqY4ulHFd9ZWniF7UGLruW1br3H6OhcKzhA0F/BMMjsRZzuQ1SZl+znRzfO4C5ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o2pBD7oE; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43992f474d1so1007425e9.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 00:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740041391; x=1740646191; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aJXzQcKpjC6CZ1FPt2dx2EE9wOEBpGIIanU5vnzaL4Q=;
        b=o2pBD7oEOZklFXfSRASil452nxtVcRCPVhA4RbzTpMpklF0SPgo5ULEiYtywIUAxP2
         zRdwOIdbyztwaPE7R5QQWrhyRPxcrEkq3xOzV0nd9cRSzVcT/JiIRa0wIBSzFOnkXE00
         iAM0dSrLTrcCSpkGp5zAfgUfugc0r6IwZF3M/vGqGZpyNJ3Xrc9yWN0pcufZov/VuJKl
         izZ7pTNsJDHyHnL34EJlBdIdrdEIyUM81vyZiHSBoclRceE1sQ8M6nNvEBLU1PWwGES5
         S+qvQ0uCvygTdnS1ikN1oHPMIRH3DuMos+ShairTkSxxtiI+sjLrSYzVZ2/dFjNhizAs
         WF1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740041391; x=1740646191;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aJXzQcKpjC6CZ1FPt2dx2EE9wOEBpGIIanU5vnzaL4Q=;
        b=QWetWTvR6LkNklmeMqzrGsqg2f7m1lsiSlN5INMQ2H+NwTm3RQDKzZ91zUSNRZNgln
         P2QgaJ/lixMykTOdUs9IPQGp6rez24rFMyYAYvGY6GTD4J88C7SlvmUNJooJPhI18q8e
         gSheqtbJPYtNmLbV7Tp+bz/OOgcF7taMhDu97aDsCFIU72QgBxonFMag0IjYPTicezxF
         jVaIC9Foj3yBKYN6ZjxBJs5ZKKCRhukb6hkVrbC1LHrDJY09xSmCkxuU0UhjD4gqZsjD
         y1wNAvnlRz8RLz1UJGA68lMH6z1he5VsEpEEqCke3D1xYNonM7actlSwzk+OosHVTuIN
         d/KQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbO1OShbDkcQMA0r7Bsg5d02KbK8TX/AFBICwd/9yXlYG/J7bJA4Nc2OCl6q8PKtdrONE+DwOVvOlG@vger.kernel.org
X-Gm-Message-State: AOJu0YwvRE0fyij1r5jAHT6yYmEiyV8iQHvLnT2FoO6CeRoG6247P1BV
	3yLPHXJQ2euU6p+VePnyEPw2T91ZxcUp8bVBhuLF3xP0yHm72PuSRi6DORw0Rlk=
X-Gm-Gg: ASbGncsuBYnSpyV66cI8vfB5cQPWS0JL/kpQYvR41afHs/iC7qkZwLVMn4XVBOSdgI3
	8iSSkXkJD5Jo34Ts0MsH4IgOocDNK6/2jsBmlddXH6CFFZfJ7doS7K71MSMP4tN/XKkuPM2GMAZ
	xRotEo3HfoADgIt3rZGj9ecrVEw8caIl8osTIVHJ6HvaPqPikvUU05s0IiHoUXmfuyNZPr1UcAv
	AmM6Hze/aKBdVBCyGoH9jJPuj/+FB5cZzFalCtTHEqNW+jr3MnfG6LJM8sLuvqbb2A5s7wM4Wm3
	19bOg1AGrIlou6oZdAjFqkWH/bcB5d5ateZ6x5JgyegRmr2UAhjYKq/YQnrt8IIA
X-Google-Smtp-Source: AGHT+IHXM7cOccdUhSXKFU3mEX2nF2lbPQQVqigJRm6lDJmZRSlAds1B2+C/UsvisVUpZJ7YUOjKHg==
X-Received: by 2002:a05:600c:3b94:b0:439:94f8:fc7b with SMTP id 5b1f17b1804b1-43994f8feeamr35786635e9.0.1740041391025;
        Thu, 20 Feb 2025 00:49:51 -0800 (PST)
Received: from [127.0.1.1] (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a1b8397sm234417565e9.36.2025.02.20.00.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 00:49:49 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 20 Feb 2025 09:49:42 +0100
Subject: [PATCH v2 3/4] arm64: dts: qcom: sm8750-mtp: Enable ADSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-sm8750-audio-v2-3-fbe243c4afc3@linaro.org>
References: <20250220-sm8750-audio-v2-0-fbe243c4afc3@linaro.org>
In-Reply-To: <20250220-sm8750-audio-v2-0-fbe243c4afc3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Melody Olvera <quic_molvera@quicinc.com>, 
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

Enable ADSP on MTP8750 board.

Reviewed-by: Melody Olvera <quic_molvera@quicinc.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Firmware release will follow up later.
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 9e3aacad7bdab6848e86f8e45e04907e1c752a07..8eeed7f2f7766326cfc7830002768087e9783b9b 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -784,6 +784,13 @@ &qupv3_1 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/sm8750/adsp.mbn",
+			"qcom/sm8750/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &tlmm {
 	/* reserved for secure world */
 	gpio-reserved-ranges = <36 4>, <74 1>;

-- 
2.43.0


