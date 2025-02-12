Return-Path: <devicetree+bounces-145918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98575A32CE6
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 18:07:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5EA116A3FE
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 17:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE073261394;
	Wed, 12 Feb 2025 17:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AK/CMOyD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12A2260A5C
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 17:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739379866; cv=none; b=ErTDH2W5MKJ7Erz4/xqW3W0MDZVHNLhaJik/Iz1WkD60Rub+26Fv8Mohj7zXNtwmhnv56RtSeZ+x88blKflZ3MZfRzlZu8Rs/7meNh+OPPQnmj0hYKnfcrGGPoZGVggI/Jvgy3ZZYPvt1jlVDWfVsm4xRqmNYvVfqiFNFDmORsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739379866; c=relaxed/simple;
	bh=75avUCDFzU7VeEjRm5mXzklFEoM13F5FbLiujKtYn8A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iJ7It5jQba6dT2kaSkrJhR6jyWbsnOpCw/MYvfFtUzciBhCJKPPXkMuDs9oYY1RtwUV4QVEa4xk7iSOxT8s8TOCDT50fuQBzXefJ4s0oaKrw5GOTBbL/jLvGkTrfUADMornihuCn5hLHVNqKIO55WF+X/A6aVDX7U5QxCZzd5rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AK/CMOyD; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5de5a8a96abso7708303a12.3
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 09:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739379863; x=1739984663; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EdKs3PqjzG7VzXlZTliJiBHpYVpLmHoLigdOAH1jHUA=;
        b=AK/CMOyDspRGKpErBhsx0x9jrTAGA3yTTLt7nv3f+Fx2CyIPJ8DHxEoqmLc5K1hGKZ
         7xM5cV+T1dpMq+lEh3xbbIJDdeBsBw98IBI7YElHf08W/M/gTDDBcZwPRZfCGPMqgwKS
         5RWMre8Xn6+4kv6HflxGMaHOzPQAZdr+ZFOjVIarO1+dsjl2eT/KrMBwUfvNbXM8bhYp
         f5532u0xDJZrRL2tFFzo0qaTgT4tn381+/zK3aBfc1QTsRJzfxK6uhQLiTFZ9TRHV4Ge
         UTRpH41YuCwEiFoaHMdB3Hao8rfmhuzp7697rEOeP8LuVkiX0Q/6gC7DItrxry0BAnV1
         QLeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739379863; x=1739984663;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EdKs3PqjzG7VzXlZTliJiBHpYVpLmHoLigdOAH1jHUA=;
        b=bVYmpcoCQDDbwviS6Dm0goLDxXWNmBwLxYtq4QxDwbSQ9wud7dz5AnkwJve3jRstjl
         aPwvCQzNH1h8lmaT68chRdkm8kFYFLcuhl2Eps6SmnUht37T9WdmYq1EHf0K1q/6shf7
         r0QMBmdGQYFZGr47mkwKGUOxLOogSGl3bEuV5RjmFNosSzUmu0D38BImSz88uZuix1rU
         pchpGI1lNqGJZd6dfj537hMz7hZZ10OOI/kzEfwtkZwirdOIBL8DOUhmylDlkVCIDMrN
         hDRY3reAQXe/yG2H1D5xVj2DFObxmSPl+AYtAyJBEewvJObxB0jCfxgIdo0iC4+PtN/+
         C4AQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1dLJ0deUYpxoZs52s9oMKRwI7fJM9UZ/OXQSKkxJzdQWvupN4oJ31nJPIil/5Ng8LozoZafdg43sV@vger.kernel.org
X-Gm-Message-State: AOJu0YwfSovMmy8O46OJ4BI05sZYroqaxdnpg0MJSdrUPZNccn8+ROCs
	sq+UXRVtStSswpNenS2B2UsXtLVojEA0Te0kyH6QBbDshozweat/9W1fSAoRcwE=
X-Gm-Gg: ASbGnctzzsqyg9Bx3AdhMYfIRTBU1PczXOInMvfrcekRFZlThZ1lmgHFydGTasmpZni
	6mrrVkIZwz98p4jm1zLcWxOfNOfkf1XultxRvPmOZ8i/UNENM8iNtOwibN21sayVbOnarM+zLr1
	g0An6ueUzbzIiFBshMlDoW+Mft2Af8HKUvAyv593+gdmDqm2zjS7vPeqFOJhAjAMcVlIFQ7Y6CZ
	YZT/aD83SzeEGFC/o9MXVxffcFP0G3Yf9sHPhgY1XJwmsoUTvbBdJ/JLEh0x2NyIr/+v9soTrgC
	bTgdo1L6tpiDdYItdRI+oPxOFvrT
X-Google-Smtp-Source: AGHT+IEbKqXhYNAGULvZAeRYgXuqy5Tc0W6a9RU0CYtO1rrnjvygarfucO6BvycCtWQunp05lZe0WQ==
X-Received: by 2002:a05:6402:518c:b0:5dc:d8d2:e38f with SMTP id 4fb4d7f45d1cf-5deadde71e1mr9275663a12.31.1739379863190;
        Wed, 12 Feb 2025 09:04:23 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:52e8:f77:3aca:520e])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5deb9f6e46bsm819230a12.71.2025.02.12.09.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 09:04:22 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 12 Feb 2025 18:03:52 +0100
Subject: [PATCH 6/8] arm64: dts: qcom: ipq9574: Add missing properties for
 cryptobam
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-bam-dma-fixes-v1-6-f560889e65d8@linaro.org>
References: <20250212-bam-dma-fixes-v1-0-f560889e65d8@linaro.org>
In-Reply-To: <20250212-bam-dma-fixes-v1-0-f560889e65d8@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Yuvaraj Ranganathan <quic_yrangana@quicinc.com>, 
 Anusha Rao <quic_anusha@quicinc.com>, 
 Md Sadre Alam <quic_mdalam@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

num-channels and qcom,num-ees are required for BAM nodes without clock,
because the driver cannot ensure the hardware is powered on when trying to
obtain the information from the hardware registers. Specifying the node
without these properties is unsafe and has caused early boot crashes for
other SoCs before [1, 2].

Add the missing information from the hardware registers to ensure the
driver can probe successfully without causing crashes.

[1]: https://lore.kernel.org/r/CY01EKQVWE36.B9X5TDXAREPF@fairphone.com/
[2]: https://lore.kernel.org/r/20230626145959.646747-1-krzysztof.kozlowski@linaro.org/

Cc: stable@vger.kernel.org
Tested-by: Md Sadre Alam <quic_mdalam@quicinc.com>
Fixes: ffadc79ed99f ("arm64: dts: qcom: ipq9574: Enable crypto nodes")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 9422900289725774da8cfea9848529891038e57a..3c02351fbb156a314b7911def3caeff0c14b92e4 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -378,6 +378,8 @@ cryptobam: dma-controller@704000 {
 			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>;
 			#dma-cells = <1>;
 			qcom,ee = <1>;
+			qcom,num-ees = <4>;
+			num-channels = <16>;
 			qcom,controlled-remotely;
 		};
 

-- 
2.47.2


