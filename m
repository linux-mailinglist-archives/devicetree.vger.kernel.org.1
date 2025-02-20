Return-Path: <devicetree+bounces-148739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1F4A3D39C
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 09:49:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2EAA7189CD06
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 08:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CA431E9B1D;
	Thu, 20 Feb 2025 08:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LQeZ4ApO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F101B3927
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 08:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740041387; cv=none; b=a6w0ZTj/2mOuqX9vS5pKvq5AdHBib+4niKimzhofRhzHs7dwMjP73MuOsW03HbyQfXwDPgpBu81yP3x8GcJicoCNiFGgKuluLLtWDe+X/UdmNkhjsoBrUwx4G7C+4snDnwKiVMY8s9NQunQhgNfhJGxSGU8SqWMBMbK7MBwMiHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740041387; c=relaxed/simple;
	bh=9GRQle34YcjfgiWZwko3yDvtJTlH367rXx3Cbqx4DF8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UOJvz5N2s453MR8CKeicTqDR40vcwpQUzybp6j45kaZNRkfSqM8FqEJ0cchqKrbmtt0KMvC01sYJ+7tdvHAJve31NuRorMqqcqEIgSjIEX6tCOXbxzl6zGwlLx+xM9gO4MiYG8U8ZhmSm7asb/7OLq+1qu4XRlVdKR2LjdAmT5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LQeZ4ApO; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-38f20fc478dso53461f8f.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 00:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740041384; x=1740646184; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LJjAYRgPzkjQ/gM/tfY/GlddEkfV8+B5j+nIT1URPMg=;
        b=LQeZ4ApOCQ3619Zpt4UAlO5BsMvylwfiFvzUv3u07AsALu9iH7RjjYGgtCAGRbBENl
         0qtlqC+Fi7C6TnwtJA8dct4+rUmE/4Y/ZXsRoJjGeXlvuIHAZ4xSC/eXipuh4DK+Z6qJ
         SbloEXesOznX7JijPtAtVN7H+gjamE2sLNPCRDFOb6LsaglwsB/5lwZiYic/fa4p/y1d
         NsdQKTeEwxM5UAFlVL6y1YqvOT8Htf6CfX3JerUE1ib++EZaaaGhv3sJJw5sSpOwxMd+
         5LthOLjj1rnwAogLeJuRl0lmGJSAsVB/h/tGrlvK+tTDPtBYLNoLgBbCTIZki4kqn6jE
         sEIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740041384; x=1740646184;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LJjAYRgPzkjQ/gM/tfY/GlddEkfV8+B5j+nIT1URPMg=;
        b=jWpqPn5qxrxIG8jemZm6gQWIGh9aa68vbYBWVUjdz7B+bLAeX/mrj7BSd+8/xrUo7m
         dXT3oQawT8nRFUBOqMjAh76W5aZWHXvyl3IgbKC4WLge2hzpEfeI1U8ydsZ2yG+2a58n
         sep35PIeizKUpuUqWlMNhfOhz4IzrSa0YpN44ZkaV+m3fhi8lRW7WxCCJO7yKpV6F+nK
         ScTNd/Y/sqe6srzCEllKH99OwNa1OP+Z8XOi35a06fO1/LN3lz2q+mYUXNM6YblYgGzX
         yo1mJc5KZoEIzT0Sce4qLtzuw0JMyn3FxdzkOf87Jl7w57xnFUaDR64hRN//v7PtiUIh
         3RnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwlw4ONfko91sbUzyUNuownaVabXC005wV+UcbY+1qzV8rI4+/se0Rgo+D1i0rxP/3nabR8OPZF2jm@vger.kernel.org
X-Gm-Message-State: AOJu0YwAKxWypRQrHfChpc2UvWeXWVDvumiSdG9GPiwNkvrRN/E4VRwq
	dBkPo3FrNpPHNfeJJZ3Ho6frYg/kUMXMnFKr+4cuxwG2bWpI8VrbjrzM1FUoZN0=
X-Gm-Gg: ASbGnctykT5TrNxNl9tmtL66xOr884yY3WfYtWDgcBF3DIkPeN+3RtUTBowWo/ztArE
	Kqk2g5YrN+ceLvM16i2tjMDwUOGZFr/qHs1PkNtLgA1obAJNKeuAxju+1u34NehorfeY/UObRAi
	8KpQ+t5qyqY0XZJV/Dz/zkm0GcIpqJbsZfQgByPqnJ7dhPsrFPO6yp/ayDmjiID6cfT5BQ++Evm
	Nj8DBurP7aU3lu3CCeIlvivo8uz1jfLFxbhNBscpeJKBAmBOxk0hw5IHU0kX47pPma1Ben+4ZXC
	TAC/wWrYINuwMCFy9KSPRiRHuXWMSMOJIxYvJLo5TH9MkN7LcMyIemlDXDL0HQ8i
X-Google-Smtp-Source: AGHT+IGlrjw3yzFug/Hb4OGULJMWTF1gWp98xewA6c7xrzvNNBzktDK7efl8Wrgxer7Jqlz1DFDcAQ==
X-Received: by 2002:a05:600c:4f02:b0:439:930a:589b with SMTP id 5b1f17b1804b1-439930a5a88mr33223935e9.3.1740041383895;
        Thu, 20 Feb 2025 00:49:43 -0800 (PST)
Received: from [127.0.1.1] (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a1b8397sm234417565e9.36.2025.02.20.00.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 00:49:42 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/4] arm64: dts: qcom: sm8750: Initial audio support
 (not yet complete)
Date: Thu, 20 Feb 2025 09:49:39 +0100
Message-Id: <20250220-sm8750-audio-v2-0-fbe243c4afc3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKPstmcC/1XMQQ7CIBCF4as0sxbD0BbUlfcwXWA7bSdRaECJp
 uHuYl25/F/yvhUiBaYIp2qFQIkje1dC7SroZ+smEjyUBiVVg1IpEe8H00phnwN7MdRkxqs22qC
 GclkCjfzauEtXeub48OG96Qm/6w9Cif9QQiGFqaWlHo1u2uP5xs4Gv/dhgi7n/AGVowxNqQAAA
 A==
X-Change-ID: 20241022-sm8750-audio-d3e7fb676716
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

Hi,

Changes in v2:
- Use 0x0 to match rest of sm8750
- Re-order some nodes to keep preferred order by unit address
- Add Rb tags
- Link to v1: https://lore.kernel.org/r/20241101-sm8750-audio-v1-0-730aec176459@linaro.org

Dependencies
============
Depends on: https://lore.kernel.org/r/20241112004936.2810509-4-quic_molvera@quicinc.com

Bindings for these
==================
All DTS added here have corresponding bindings, on the list:
https://lore.kernel.org/all/20241022064238.22941-1-krzysztof.kozlowski@linaro.org/
https://lore.kernel.org/all/20241101170309.382782-1-krzysztof.kozlowski@linaro.org/

Other bindings were already applied.

Description
===========
Add necessary SoC components for sound on SM8750: ADSP and relates
blocks, LPASS pin controller and macro codecs.

This is an early release, as I don't have sound yet fully ready, but
speakers and DMICs work with these patches on my WIP branch.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (4):
      arm64: dts: qcom: sm8750: Add IPCC, SMP2P, AOSS and ADSP
      arm64: dts: qcom: sm8750: Add LPASS macro codecs and pinctrl
      arm64: dts: qcom: sm8750-mtp: Enable ADSP
      arm64: dts: qcom: sm8750-qrd: Enable ADSP

 arch/arm64/boot/dts/qcom/sm8750-mtp.dts |   7 +
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts |   7 +
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 342 ++++++++++++++++++++++++++++++++
 3 files changed, 356 insertions(+)
---
base-commit: 9be34b68f9b3a5990fddf4ee5c1437be454d7fcb
change-id: 20241022-sm8750-audio-d3e7fb676716

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


