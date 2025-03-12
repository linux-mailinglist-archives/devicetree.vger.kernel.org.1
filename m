Return-Path: <devicetree+bounces-156893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B001CA5DCF2
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 13:45:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54510189AFE0
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:45:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0525824338F;
	Wed, 12 Mar 2025 12:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WIIRAKbp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354DB22DFB4
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 12:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741783499; cv=none; b=j5YmJ1v77wgpruQonhPWGIHDqcDhnDHpiGYwvSM7P9hmKffIdw2d6791oxMSvHtKW+BCD84J72Ijw4fVJlDYNM5inqXqym4QB4NE9raGulVYQwMya9KxomfUVgSTWhaSqnp+AURocs9iLY1iO4Mgi6Mfk35NMu5vhIaj5glwOAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741783499; c=relaxed/simple;
	bh=dugoWPwMQFye1tjbr5v6MqYrHgK2V18Or3EmpGw88M8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=XUDol8QujOgdQjxgZJ+SCUn1+FMXgmZ8faDCtWbnXyl99vktJsRVeY7uBLP/JJNRDOwNVzVHYQSw8QHwYAw94WyNaQ/kIR5wm3AOO2HLVvvl+S9F9JFmjKhaVMBaukcvA90QwT6AudTOMxyHKJN0l66rvh28dsvjPwL1Z3nEQw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WIIRAKbp; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ac2c7a367d9so24697266b.3
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 05:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741783496; x=1742388296; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fqxvnfXkMdskA9Oi1IEowXOJ/kfq6q8SsVkxfIwpyH8=;
        b=WIIRAKbpJNUUdiPj+YwEOCrko4lmBc5+sv7WruxX4q+UQcbXZcNzfkwCoj/lv4dPjU
         arq+vrpfGgYB149JU9IFU3/1DDUht8u4qSTUpAXvdqedyxT2GXW7gsyz3eT4W6Qkpizd
         GqOmN10vBezh6QNek3UoOaNsuzt1ahn0vMshG7KnJ/w9gWOa6QEQgKLQwCYJ+EfPVTQ1
         32LA66qqyMcx1PYjrnsaRtRZhi8FVocJslZEUKUuexclxf8/M+ogtnJ6tNFw/w0LxX0d
         C73uOjNvKgUWjBRBeg3w27Ce0/F+V7Ch/qp7kWGmcvM7yxXzz8LczEhr+3EJicow4Ops
         H+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741783496; x=1742388296;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fqxvnfXkMdskA9Oi1IEowXOJ/kfq6q8SsVkxfIwpyH8=;
        b=jznMYwsXsMBZhDKDoKR4/aHefuHwOaYiOBAx74BEbr90nd/XlwgDPkcKO6umqiugi5
         LTHPdbtGoUP9IdfrVCsAaune0H611z0nTAXxyESDwjoYmaJq5AqLLwIDexYpTtHFMFs5
         KCIYquc4AaRQM4noWQOvy+fmdRyqw+5gs6wVKbkhjuOFrtjvoIYZKnV1M3K9c0RxMMPu
         DUbI9EHN8Gp4I+FoEvpVs3zMB59U82BJG4qcIRhVx1wl+3fpSNMS/31LFhU5Jp/IMy0h
         u4mxg3B7Acr4p7noGT5jxqGN9aIrTor0As5d8V408t0ktG2qC5aNW7Zmz5zDNuLfypnj
         sPyg==
X-Forwarded-Encrypted: i=1; AJvYcCVvEkfa0htlkc+kpSLnCundrnoIPzMGhh7UySzRCIRBa0dOqkUoZuffQrEidzQ3a4M0Xa/A/cIQ3P7j@vger.kernel.org
X-Gm-Message-State: AOJu0Yy50OFrO0RuPerc7nsd14ifi9GACaqaE8Uw+oIA4lSzPRO9ArJX
	nhmM9eOcbk7DSx+mbJVrd1/JmPEm9OzfAB1HLPZpVpRB4VO0Le8WI6Zh7syD5TJZtqLMPOURH16
	4
X-Gm-Gg: ASbGncsxzsS6DqaOUkQ/nwRYr14fpG6Eor3o/JhL7vFTVHelanK1vjZAv9CzAQ4OjZB
	2ikpdoijfo5mjOjrxXmUCMwQW5I9K3tfFjGb5bJEkSdXbVSP8BpSTTLTJ2ob2MbctKgCUSAJt9r
	IeIiagzv1v+5W9yh2LoG0QuLPe0tDtqWfPxT2R2esLeho3wtu3JJbGXvqczGOugvXsND0s9Z6Jw
	6DCHxks+eJvjkMMjyBQTD2vmGwsNofxlLw7pcSJo4kIJR98URczTN6pkuYa6bfFHmwwnTqZWNrx
	XuOuJZ9FhIB3X7XR1ZCClYi0JmvV5MtTlxusYfxRxCfZbMfmGrTkgsH8NDw=
X-Google-Smtp-Source: AGHT+IG5yUVd6tBYIwxswRaXrHfjpfduiNh6bBkk43blqNSYrSYHDkMmjzb7Mk3TniW6hr1HNfB3Gg==
X-Received: by 2002:a17:907:3e0a:b0:ac0:b71e:44e7 with SMTP id a640c23a62f3a-ac2b9ee628fmr344602366b.12.1741783495826;
        Wed, 12 Mar 2025 05:44:55 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac287653d1esm628955866b.125.2025.03.12.05.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 05:44:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 0/4] arm64: dts: qcom: sm8750: Initial audio support
 (not yet complete)
Date: Wed, 12 Mar 2025 13:44:44 +0100
Message-Id: <20250312-sm8750-audio-v3-0-40fbb3e53f95@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALyB0WcC/12OywrCMBQFf6VkbSSvJurK/xAXaXrTXtCmJBqU0
 n83rbioyzkww5lIgoiQyKmaSISMCcNQQO4q4no7dECxLUwEE4ozIWi6H0zNqH22GGgrwfhGG22
 4JkUZI3h8rbnLtXCP6RHie61nvqzfEGd8G8qcMmoks+C40ao+nm842Bj2IXZkKWXxs+vygv3Zo
 ti+AaGkU9Y7ubHnef4AvMSQ6+cAAAA=
X-Change-ID: 20241022-sm8750-audio-d3e7fb676716
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Melody Olvera <quic_molvera@quicinc.com>, 
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1448;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=dugoWPwMQFye1tjbr5v6MqYrHgK2V18Or3EmpGw88M8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn0YG/HNTDqNjYkTljJ4c91te3ZeogYOBeHXHrl
 cPvOHx5VUCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ9GBvwAKCRDBN2bmhouD
 1xpgD/4voMn5T5AJDOokmvSKHK4yTYc9rQLTNFgLpluYFPyul5FpQoJq1+/QLDDcXnDn4zFhfun
 yzCFrzuFKm08TzDZjDb/ayRQ504stxGN1SdOBX3FTD1I/aeXAVKVXKB66MWjaZkQmQ80kUp5Z22
 JpCtlXEo9PK3T+0SaqyqHEoG+K/Li7OKsJB2vlzC4/tsFPcucDrmXF2SLM/Fu1RgvnIG4XQkHWU
 bn24ZO2CyDtYYh6SmHIuBHvZsjR4e2mBCTNnt2RlCARa5KV7FX62EwOWhNubyqJglQc7dYCeo2J
 O1DRRGLp9iviEFzieU2lHEgDfYT7wgAyjllhM6uca/LIhwIOFORAt/tKvx71cf3IsdEEAWuRkEW
 ZfzrJZTZrKd/VpBttbIhuBQutM2NZthFMhB4t5w0/Mw4396FE4lbelJZC9Z7Za/VMPJDaVJvPf0
 MqOiAdBwNrdOleXLrS6Fv3VUwnlQwwTW/4qmL8ipumgGLYD5JYZPp5ze4wr9OZq0G9OElSbyJag
 H3tgIGuVahYjMtDtMys/z1XsAje4+tuCMUbl5klizU6ixM8wnvMs/4XiU2FlGvK3oW5tyjekJI+
 zSlaQ2k8hW3lkAEsAunhjVoUEHprkpkpMzqTZNkYMEjG4dv6ygtpw0Kn3BRBVUKhrAZLIgaB/1l
 u3SjRaLzJG9Bxhg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Hi,

Changes in v3:
- Add Rb tags
- Correct va-macro region size (0x1000->0x2000)
- Link to v2: https://lore.kernel.org/r/20250220-sm8750-audio-v2-0-fbe243c4afc3@linaro.org

Changes in v2:
- Use 0x0 to match rest of sm8750
- Re-order some nodes to keep preferred order by unit address
- Add Rb tags
- Link to v1: https://lore.kernel.org/r/20241101-sm8750-audio-v1-0-730aec176459@linaro.org

No dependencies - everything merged. Bindings also merged to mainline.

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
base-commit: eea255893718268e1ab852fb52f70c613d109b99
change-id: 20241022-sm8750-audio-d3e7fb676716

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


