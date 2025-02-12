Return-Path: <devicetree+bounces-145910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8530AA32CC5
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 18:04:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9A94168F42
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 17:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE51257420;
	Wed, 12 Feb 2025 17:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dDJ1sID2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861B2212B31
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 17:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739379856; cv=none; b=rBrPPUTiV3R8Qagli2V9FBnJyW+HCmDgcjKqYGs3KtyvjOlarq39LFVgCviXE52ZFamodhbJZde4MlOwVqXNb2kZ7mZEare0EOYA4YEsBsmixTUSdEFR+SDaZNbOVLfQU4bRkwh4W050+HZXoQvZ28zWyxcXw6oNtFCkQZ3kmLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739379856; c=relaxed/simple;
	bh=btRO2rOJup/wmjNa0o3QQGaXrKePyDSWMf40JjUiMBI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oecHsJdrKk8g9pyVvl8KQPg1E90k0wXTkXmk3j7CLAi8pQb411B9TPkZeCVLAwdXZNKZtLENXhiSoo+gtN4gp1quHcU/eaeRxeRPmtbRvqipTxLED55CZyIY/0OHGT76GrO+4QMkQzYm2ABUUE/8j8cpKeGWSZ/t2wdm/+fjGvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dDJ1sID2; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5de5bf41652so7684672a12.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 09:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739379852; x=1739984652; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lOdSsrVkTURNY/Q7FQn0+ahIqRzchEXyI5DDymGy/g0=;
        b=dDJ1sID2FdBD2F6vx8DMajuhzvKU4vW3GDohexS5/N1zL5cngjYqreHtAsOm2ptJQL
         pXfTyYsbZMi991ESNA1yGZcyRaKDcEnkpZhczFMtfQqvDbFVvx9KsoD96/7MA9rJT+bZ
         MFRs0Wuq/nS7Duiy+Li7cmwTPe6uz/jxglsmYI9LBQ+QTKO/pz2f2yMs+semI9cfnu4U
         j47UogTDVyIO8/RB7y3mCF2FcEbfvexaZJwMAZAFYu2TQuKnFdkOyzEX1axXDvur6bk9
         V/qisDy4C6oD0OgINrmORsGbAi/sbX4xmXkz/t+H0uOiXUaGIrK1hsBHZFU6YA090G+8
         P4KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739379852; x=1739984652;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lOdSsrVkTURNY/Q7FQn0+ahIqRzchEXyI5DDymGy/g0=;
        b=vgVwwcZfB0K9l6YVlnuRsbPYaZZpiewK9hvWif7NV9WbeaujrOwTTb272ydxmqMCLO
         1xE0rc0Wa9pVKRRI00oagmhWLf/por0x9ZywGrXibhcUIoGzd88uTs5sbVCiR2Jn4i+l
         Sq2MzolcZTLC5JsYd2xMGGOtObckyHM+eWFVjNct9GF8SrT+V+qzHYmdM94phB9Q3PVI
         Or8DSwr9y+fXAw7AxQFQCP8c9BreqDQVdaTwpSLeEG9e+o59JPcPLVo2UQSwABxnh+8k
         pwQlqm4zeoOLcZHoivWMpj17tM4FpzNBrPhdU+W4uTivyBy/5a4yl1jYBIDrFVQEewdV
         VrOA==
X-Forwarded-Encrypted: i=1; AJvYcCW1R7P+Oj9ZX+YQhNPkEBwPkjgWAJL2otFnKm0/9JTT/k2P/Nreoat5ZyZU9n1gvwtP7BvV+BE+MnMf@vger.kernel.org
X-Gm-Message-State: AOJu0YzpbIvroFXLmkQsqV384jicygRM5FmEJiSzcdBy9LiQHtJOPwup
	Lj6OJogKCKqgZzdYN5byz6TN6VQPX8C4+kl0NOsMHtcepzKV3dh4K4iuZwfvqng=
X-Gm-Gg: ASbGncvujAoA7geyQQLbuufIwAJaXa8JjAO5fCCJSgacIolH7VQEGVYD7w3u+PHXy05
	lbq4mZjG59HiLY9M1HzrQ0n9vw9ci69pFJHmp/GTR4+5ZUWf3NosFhUIuLZiiIj4K6EgwkY8zeg
	BQYjiDvZIcaammOZ4Du7ErkuGEFRP+Pk+3Una7IS8ULQXOAYv6WUhLdwkU+r45Kt4Apkq4aF+nb
	oEsQ/ylMxvgtIChNxXy1GrVxsdKE1VXo9rrjJnoFvflOa6wGXvCAjHxjXJziiclonVYVlViblUJ
	rBdTIPSsrU2WJrPEgArGHePgOxZP
X-Google-Smtp-Source: AGHT+IEQEtIiwT19pSZM69pmOEInJBgSECAuQB4A0NcaYOGmILP2pTTU6UgWdVc9CPww0WfLyZjaUQ==
X-Received: by 2002:a05:6402:4403:b0:5db:f4fc:8a0c with SMTP id 4fb4d7f45d1cf-5deade0fe18mr3056067a12.21.1739379851631;
        Wed, 12 Feb 2025 09:04:11 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:52e8:f77:3aca:520e])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5deb9f6e46bsm819230a12.71.2025.02.12.09.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 09:04:10 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/8] dmaengine: qcom: bam_dma: Fix DT error handling for
 num-channels/ees
Date: Wed, 12 Feb 2025 18:03:46 +0100
Message-Id: <20250212-bam-dma-fixes-v1-0-f560889e65d8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHLUrGcC/x3LQQqAIBBA0avIrBtQMYmuEi1Mx5qFFgoRSHdPW
 j4+v0GlwlRhFg0K3Vz5zB1qEOAPl3dCDt2gpR6llgY3lzAkh5EfqqhI2qid9UZN0J+r0B/6sqz
 v+wGlHPoaXwAAAA==
X-Change-ID: 20250204-bam-dma-fixes-1e06f2a6c418
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

The bam_dma driver has always printed an error to the kernel log in these
situations, but that was not enough to prevent people from upstreaming
patches without the required properties.

To prevent these situations in the future, enforce the presence of the
properties in both driver and schema and add the missing properties to the
affected platforms.

[1]: https://lore.kernel.org/r/CY01EKQVWE36.B9X5TDXAREPF@fairphone.com/
[2]: https://lore.kernel.org/r/20230626145959.646747-1-krzysztof.kozlowski@linaro.org/

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Luca Weiss (1):
      arm64: dts: qcom: sm8350: Reenable crypto & cryptobam

Stephan Gerhold (7):
      arm64: dts: qcom: sm8450: Add missing properties for cryptobam
      arm64: dts: qcom: sm8550: Add missing properties for cryptobam
      arm64: dts: qcom: sm8650: Add missing properties for cryptobam
      arm64: dts: qcom: sa8775p: Add missing properties for cryptobam
      arm64: dts: qcom: ipq9574: Add missing properties for cryptobam
      dt-bindings: dma: qcom: bam-dma: Add missing required properties
      dmaengine: qcom: bam_dma: Fix DT error handling for num-channels/ees

 Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml | 4 ++++
 arch/arm64/boot/dts/qcom/ipq9574.dtsi                   | 2 ++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi                   | 2 ++
 arch/arm64/boot/dts/qcom/sm8350.dtsi                    | 6 ++----
 arch/arm64/boot/dts/qcom/sm8450.dtsi                    | 2 ++
 arch/arm64/boot/dts/qcom/sm8550.dtsi                    | 2 ++
 arch/arm64/boot/dts/qcom/sm8650.dtsi                    | 2 ++
 drivers/dma/qcom/bam_dma.c                              | 8 ++++++--
 8 files changed, 22 insertions(+), 6 deletions(-)
---
base-commit: c674aa7c289e51659e40dda0f954886ef7f80042
change-id: 20250204-bam-dma-fixes-1e06f2a6c418

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


