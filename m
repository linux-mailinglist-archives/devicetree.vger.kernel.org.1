Return-Path: <devicetree+bounces-217334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A935EB57592
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:07:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2457C1AA083B
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608742FB967;
	Mon, 15 Sep 2025 10:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Owojt/Em"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08552FB990
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757930797; cv=none; b=qbmp4m+nLmdRltRICoINeFO67XLZXIFMWAQzhkmVTkWzd6JbecH3sIKT8x0T7QQtfScaXN5QYOm/41xEDiMHgkeFaGRcDg179YXbzfn9uScJQUttNdtE71dI13K9hnGe/qeuf+glAF3ZuA7VR3giVshup4dWD581GlPUSGABXus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757930797; c=relaxed/simple;
	bh=ydOKT1/PJG94gTRDvCWS3LKFYBuI9gTVeaXJDFPVqx4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hguFouq1IsjScaRcTmxBYOYoc5VktyGgLE8sjJ9lzTPWzy+/mmwQwHZ/0zPlnW5ukyxJfVZYOtZUMOoCg048N9CPLES2EnzWGKN6wqMeFR2FpRLIriWib4Z2f30ghDtsFf9nRyzxhAIw6GUzSFeDtFkaz0490ApTlRKz5QbWpVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Owojt/Em; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45b9a856dc2so24751335e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757930793; x=1758535593; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VOQbP+sOwhZlxt+ueHzX2J9z+zGJpRh33jkk4ePQOak=;
        b=Owojt/EmvXTER6bu/Ei9ZDB++JkWzlR0T8f8wYV8/T7+wB3Na3aFf40/YTUvvMqiYz
         MuExCgnm9FcBD6vILVf6erC13Pm7Qo4K7m2NEQHFTRxnAzxqvP2QKQkz1PWy2YaIK9Qz
         L+DSq88FoCg4RHlQLhD7QhsEfpTXJRnqEtWsQKgFrQZPj8EdhDNvuLpcl7v9K34EK6hV
         eNxSBnxsA6eU1ry3TGhSaFb3uZckX/ltmlTd7TncJRI2vxI8TyiLbHP3cZ04qBy3u6+w
         xv6IjB+0sWTp4c2Ev3bPMNxNvd+zvMuIgKXkK83g678psNZ1BB9w90KCKXbysGZ1dhOT
         PKMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757930793; x=1758535593;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VOQbP+sOwhZlxt+ueHzX2J9z+zGJpRh33jkk4ePQOak=;
        b=KMpRLLoFJqUIyaZOr6cpE+LXEeJ2Swr3qd0O/pcvLnf13SG4RVp0zpSp7TVTYMkkbo
         NRSH/ST4Mxt9ZkTxHLwAj0G+IeQFXiLVrM/A6ff/G46quFZG6zO5FQMqb9TBcXyCfdc+
         NK+9RBGr0KWqcWPNcpk4xjcDPVTBmP/HXbVkmTnAw9jxyR5BGV4qNBriSg8K65ONUvTJ
         LjF7UCQuFohlJOW5EWDFXupu9sdked6pZHHU2v5t3P4LikaOP2FY3zVek5BkH+cPgxjv
         h37EtTzugjaayHhwb0O7+MFXFKAjP1SaMmSKH2khE7JqPalWRCMaFwrnv27i+TFKqNgG
         h2LQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfg8DsXwcWPo0ocT5B42Oz9ScB5ykvCxfzZ41bVwT88+XIQIcS2aYZhDkmCZon1mO3aDKIpLOwhP8e@vger.kernel.org
X-Gm-Message-State: AOJu0YwCWSPo3CaH7Ax9AoR3WSnLY/Guw0WssLqiiCC6U7OCTuOY69Ov
	b7F9Qex4EPwZ14qSPmhNMCADGkIuJgSsPXDoYVikwxknCEOs71U0lme3k/lvXqh/CRc=
X-Gm-Gg: ASbGncsMyUYsWKqPMqTMtkTsCRkmkUfZLxNzDAE/3FQuaeCSE1LPTphMM+expmPB7Rj
	AxYXu7WSOzc24bv3rUU5MmMOqFmykgnfhNWgXCEy4troDXWgN8FDrIJWdqCrzugPgYz6DY94IRj
	18ITHkmUxmXwHXK5YJdtGg7dwmE1UeQXJ6odK4x8iO9zhJyYe6A4FlhE5oC2bwomJDofLfDHwBU
	I3jeHRdxsG5gpXWTgsJuNTolyH0w+nOvsmDmKdf1vX1ldfhDG2iEDdHmwWJa822x7b7NCKE1OkW
	gCZDT04rVmzzV69C9zohuM3ykeSZ3BmyZ2gLErVtYdJxQbhbcRRTXeXtt9Orecj2zm+d4L5D4Ny
	tftX+MTnzG6BDvVByt0lYiMM6zLNG5Zqj5Fg=
X-Google-Smtp-Source: AGHT+IEzxwtBmYCgbr0PgRIMPx7tGP8Ho6F6LYO4VA23DeY9gbeUHKdAFtYC67Zh77DHAR5Lzon3tw==
X-Received: by 2002:a5d:5f90:0:b0:3e9:d9bd:5043 with SMTP id ffacd0b85a97d-3e9d9bd5644mr3381016f8f.0.1757930792874;
        Mon, 15 Sep 2025 03:06:32 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd4cdsm17209127f8f.37.2025.09.15.03.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:06:32 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 15 Sep 2025 12:06:17 +0200
Subject: [PATCH v2 6/9] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Enable IRIS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-x1e-iris-dt-v2-6-1f928de08fd4@linaro.org>
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

IRIS firmware for the Lenovo Yoga Slim 7x is already upstream in
linux-firmware at qcom/x1e80100/LENOVO/83ED/qcvss8380.mbn, so enable IRIS
for the Slim 7x with the corresponding firmware-name property.

Tested-by: Anthony Ruhier <aruhier@mailbox.org>
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index dae616cd93bdf54bf2d3a3d4d0848e7289a78845..e0642fe8343f6818e1e10656a1d8fec8fb09e7e2 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -1026,6 +1026,11 @@ touchscreen@14 {
 	};
 };
 
+&iris {
+	firmware-name = "qcom/x1e80100/LENOVO/83ED/qcvss8380.mbn";
+	status = "okay";
+};
+
 &lpass_tlmm {
 	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
 		pins = "gpio12";

-- 
2.50.1


