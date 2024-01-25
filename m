Return-Path: <devicetree+bounces-34948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F1583BD3A
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 10:28:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 16BC1B2C02B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2C211BC58;
	Thu, 25 Jan 2024 09:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x6+4eyLj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B011BF3A
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 09:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706174885; cv=none; b=bicLxxOgf9y7N2kcBhLFqebh6pgWi6nDPR/4EStlE4X2rYeHRJlDwtqArVfEqiyQadxGEzDmu8eihELrhKzDxJlhJkevHl0ZBTKvzuihGaVrYK8Trgb0FVoUWBy2uwokflC4kuRGcks1ack+MK0zCIDIVAlbK4Mf4LdrLQriq3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706174885; c=relaxed/simple;
	bh=gy0zUIMX0ecGhpvp4QAVUCRKbXWcUlLlLRZf94hkeOk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QLJxbWZ3eqK3dctUirteqPHWRuFMzaYHFOfMj/w/5kqvjhRW5oLDs2YZTLMcrG4fbifgBEQn+H8XzhnqlWL9APNHIgQUQ8jfyIRe31YgnL2yAC0Qz/G1ItV3zlr4gvKsGMvr4T7g8LLBzX3efQDkghs4E03XMiW7YC2HfuV0KHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x6+4eyLj; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-55a356f8440so7701466a12.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 01:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706174882; x=1706779682; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KH02RcuM2+v9UWcFG0xYMqcwTW43qilDo47iIK70Yx8=;
        b=x6+4eyLjhocUR6N46/NzRVdBcljV/rOLTyeoqjqYvfI9U83Cha43z7H3aAi/aTAm2O
         uxin+Ph/c3HnIwiPvvF4Z2VOhztASGo2JjpW3GJOwl4obtmM3xpQUod2l6rOMh7RVwNe
         M3GZCDLwBh0e7OXN9G39tNrohVDac4grOnp+caS/KIybVzmOOPtfL3YWquQXdebrQYd8
         2A4imYpqPaZNHdFjEgZ/CByvqDsRnCqF1wQgUis2QdEHIxIPi55tvCXbAkG2B9adDVKc
         rLh2sL4TPp8p2prdiBXwGdPbHHlXYgMuY47Dg9wbLQRu6AeMIVOpFHmb3uZ2Cnbj24bB
         WmVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706174882; x=1706779682;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KH02RcuM2+v9UWcFG0xYMqcwTW43qilDo47iIK70Yx8=;
        b=w/lKDuhhWEr8P0BHpipWde/bae+3sV5PEb9P2oBvILoLSLpR2SG720vZ2JgQ8VpBUt
         e4KRSzPpAAb+RrlSaSUv+gzgUwYNrqWercx8taol8HJzab5P+WyagEmoRBPar3wf3knY
         OvgW4LBXCpnB8wvVlUtcS9Jj7L9COKKY5NBR3CA1RE17xw95FlfnUEhw9DXJaUXLXJA7
         IamsfToKkhWAsAAXZUFZ55GZh3EtXvGaHN+3FaHG0qKka7soEyDgoyADAR1ZIiY6nK2Z
         wpb6L8gWZl2uRIayT1Ys1lnL3HVM1aiR2HIXG4c7xnXrVtmuHTVfD97G0uBfQu9cNjya
         P3qA==
X-Gm-Message-State: AOJu0YyBB/dMrGEWrOYgAh+X/+o86Y/P+GGhke7p/yjzuRKqsU3yW9H7
	OoRQk5XufpJthOUnAOlxnsY+DKh/sG0p5wMCMbJjOM4Z8nO4VNOuu1LlLiTVRgXygVWluDbrswm
	T
X-Google-Smtp-Source: AGHT+IGrcysk+o5meGm3pKRBCvTlh9267epGM9XB2KmgkiZ9t0IIWFs273iprtH1A0sD/YdIt6gDAg==
X-Received: by 2002:aa7:da8e:0:b0:55c:7dbe:2c47 with SMTP id q14-20020aa7da8e000000b0055c7dbe2c47mr35179eds.29.1706174881745;
        Thu, 25 Jan 2024 01:28:01 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id f19-20020a056402005300b00554af5ec62asm17356391edu.8.2024.01.25.01.28.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 01:28:01 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/5] clk: qcom: sm8[56]50: Drop the Disp AHB clock from
 Display Clock Controller
Date: Thu, 25 Jan 2024 11:27:44 +0200
Message-Id: <20240125-dispcc-sm8550-sm8650-drop-disp-ahb-clk-v1-0-0f8d96156156@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJApsmUC/x2NywqDMBBFf0Vm7UASTFv9FXERk0kd6iNkoBSC/
 27q6nC4cG4BocwkMDQFMn1Z+Nir6LYBv7j9TcihOhhlOqWNxcCSvEfZXtaqPx4VIR/pXtAtM/r
 1g9EpreNzpj46qLGUKfLvPhqn87wA7N0rq3gAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1190; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=gy0zUIMX0ecGhpvp4QAVUCRKbXWcUlLlLRZf94hkeOk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlsimVIXDYDCtv1pTKnIrt9mks0y3gW2UWjifWu
 VCieoCzUouJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbIplQAKCRAbX0TJAJUV
 VtvAD/wPCohABL7H3uUrA8gJ+cgaA1bMLZB+k3KUurpKJmMm6vO9Uy1h/rQTDsIN19EvrgoOETz
 TBCtU4zH7jRCPTy+CBUR0Zb6/rzvZA47l/TxiG2Vy2RyPRvrPyohlcGWMmN8GEGIrn3TRUhcnoT
 qKtD6TdZqmzeCwoH8PsuezyTiUe8l4mJOUTDv/r4GxvXJb1itQXz669HlF3zjZ6a3YFZ+nGKczi
 sXRIVDuZFlnSKRSNKH4e2ru7GZi2vAk4d2nWQbRwHMow+iHVC7LY08yGnMrFAza0fc6D8yvGhCn
 T1EPSohGOJ42PFnRKeLC5eKMDZRhT5iZN+wwbUMZaAFhrzrl0tuHpgjgBjwQkHnZ2JfeDwiG350
 n7Dkdjqc8PABVewqRNHIkKd7BHiLtoR+dhWarZd3PYiEi1BMIG7w+w+x4YU+ixM4M/TNrvV/atV
 /BdWEX/OY4f/SDxKIsD/4jGjBAADoS57s0KD5z4d5sYV8YIEJw+MZaJs9QCA7KpCL2RPUnIYgJa
 aiAUUikBZiDlQhN/wYj0v3YF7Sh44P83PspafVewi2G6ZriQ1Ozf1Ym3QgZjqS2KFAAvUBwvYb3
 Pz5/S4F8ffTC+iLnhBuq44lcJHT43Ox3R8rkG3ncsYsDFQUu3xmn6UWGFQeeygalg4bNyNJhBcj
 6RnMzW0Z1c2aoRg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Disp AHB clock is provided by the GCC but never registered. It is
instead enabled on probe as it is expected to be always-on. So it should
be dropped from Disp CC entirely.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (5):
      dt-bindings: clock: sm8550-dispcc: Drop the Disp AHB clock
      arm64: dts: qcom: sm8550: Drop the Disp AHB clock from dispcc node
      arm64: dts: qcom: sm8650: Drop the Disp AHB clock from dispcc node
      clk: qcom: dispcc-sm8550: Drop the Disp AHB DT provided clock
      clk: qcom: dispcc-sm8650: Drop the Disp AHB DT provided clock

 Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml | 2 --
 arch/arm64/boot/dts/qcom/sm8550.dtsi                            | 1 -
 arch/arm64/boot/dts/qcom/sm8650.dtsi                            | 1 -
 drivers/clk/qcom/dispcc-sm8550.c                                | 1 -
 drivers/clk/qcom/dispcc-sm8650.c                                | 1 -
 5 files changed, 6 deletions(-)
---
base-commit: 01af33cc9894b4489fb68fa35c40e9fe85df63dc
change-id: 20240125-dispcc-sm8550-sm8650-drop-disp-ahb-clk-fa011f7be9fa

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


