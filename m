Return-Path: <devicetree+bounces-224623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CD1BC65E9
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 20:57:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 04AD54EA8E5
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 18:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F7A22C11CC;
	Wed,  8 Oct 2025 18:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PWf6kBI1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0C0281358
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 18:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759949818; cv=none; b=tLwTdXlQ1HYgKPcoyeGLq3Bu1d43U+qEcDHQmC9WUUmP6ss81Wx4rY/hDO0EltLFj79pxPmxWkLAbSnrRUgbZ4yZwdmgihkO3Mg/oC5xWBFVvpmz6yt687T5K8Px41fPwCr7b4OyjP0FpLKc30lQVcA8ExBvl21W7wWkB6L4PFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759949818; c=relaxed/simple;
	bh=bizbubVRMT2tLz50uf4vCXrtjqnMF37yJFdARA55YO4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PSW3aRbHqlUhcuGcAJJbk51GonYcaML4XID9SVTJiyStt8/Y9oWTtfXbMB9SHG0c8UzTGhRnZ6+ElMpgtQChO996vFvDw1cx+dbHHzYKVygDDp3l1UDdSi7Yp640AvntOMYd/RQKGWZr75+YMPEKwQXITQ/LlKS3uRgHq7odJ6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PWf6kBI1; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3ed20bdfdffso279343f8f.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759949814; x=1760554614; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=M+f4Ab/H543K+KtcAIFFIj0xMMQTOuYhxb3COx0E3Fc=;
        b=PWf6kBI1Zda3VaVRVWXT6emMW2D46OXE2NwLklA80XAc+NC9UEs1AyGoX8RFc0AXHo
         siLuzkoToOl2gX9rqz76RUFMUe6ako1fAUXIKv985dZRAOo4LrdyoziqpchpXjjrERxL
         Mfa1XjMUyqGvnm3BYbeNS+HrW9o5LxOBi9dL4XuFxG/Q/cuQHHu3/7yKfWvhzkeOMg+3
         jPldYGn9nC5hH9OFS/6NOrB1peHCsZ+rdbSncwTSckdF3GaBb8jPoQIyFAs8X0ZLOx3t
         q/kpDRiXWaWJvLupt92CqNt6adXrsQ1prytoK8ONJmn8z6qXglKQbyWcdyeFueoAdsoX
         F8IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759949814; x=1760554614;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M+f4Ab/H543K+KtcAIFFIj0xMMQTOuYhxb3COx0E3Fc=;
        b=jGzbkiBZ0XcZdodsVKy8pAFjf9Vt+XkKCj5c/BKKjra5aySS3p0fI2FI5Q4nBG7OXD
         Pjh5QYL9s82mKg1ivEZeQQRzAbr7maYUTBajiY6NfH1JqujjcliS0lrDX1IVaKTu1V7l
         Uy5cYLwVaiFVh5uNxCQbFEDFhRoCLDX221B5n0xzv6YfI0bbEp8gjDVSyIPguuKBxXy7
         J7U4aGqaexgJxoARbHnWAiDcTHn1eJFF6xjNldPOtXp7sz1buWfidUClde/G345AQ3+E
         SQvAVWMVYkx8YnijJiG4nnMkWzWmn9/f590KeYC92KFtWbh9vqPGGgzGmoxFm7GGR8AZ
         BlTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXFuzeDGhOmgo3x7F8UEnsq3bwn3ElK98vAqEljz5JZRLeFOCCRO/ttPq+ZWzBxy9emsCoJ1gyhJPy@vger.kernel.org
X-Gm-Message-State: AOJu0YzP+2JVEpMPF+Am36MN5boTi24cZds5PB35d/m215TqrmPKq8Tm
	PMMQ8Y2QtTrCUwqYCBlh0rgs6b5M2941q3ta0Kqb6a46s3Ahxov63zBPVzQNQ9YvEHk=
X-Gm-Gg: ASbGncu9DXmTYq09ghXn9em4ErxxRtlcEMczK40biLOPUyAemcGWQVHjKwF6lPg6SRG
	l+6X67E7BeR7iGzeKgaElQqGKtD3yWA1kXdBM6HYAXV8wDCJgcMwp9TShVh5G6OOfwMBBFIekbD
	WkXD0x2p+Gp7XcFQ7xRn1rLBYhOnrLWZnobqDzlJ7hLdIg4EaA8hdK2+qCf0NPaekC5ek1UJz2c
	TEOA6r+3sNugs23H0VU9wJYsa50gJGnGgfG06cnM5w4+hAQ3Hb9HxnVom7zbZEKKOpbnKf6suyH
	7OdD1lYV/+ojNxN+koUVDzzn6bz8kYglHgtoDBHeD9AGbn16XxPlrVDMLLen4A9F1Nn7k6E66U5
	4R2IC1Dwf/Qe+qN55/8pI8a8LisZjPBWsSFLEP8iyfDqn8PxH9UPngr7c9vkL+ftNdgHVvqE=
X-Google-Smtp-Source: AGHT+IEts5c5yPiKoS68W/iyUs6BKt7pQ5nnnl0KYwaWTk4HQYO1CJbAcLx7xJ71l3KQM7U2jNMBOQ==
X-Received: by 2002:a5d:5f83:0:b0:425:8125:78fd with SMTP id ffacd0b85a97d-4266e8d8b1dmr3131827f8f.48.1759949814244;
        Wed, 08 Oct 2025 11:56:54 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8e96e0sm31029735f8f.33.2025.10.08.11.56.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 11:56:53 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH RFC v2 0/6] ASoC: qcom: enable HDMI audio on SM8[456]50 HDK
 boards
Date: Wed, 08 Oct 2025 20:56:47 +0200
Message-Id: <20251008-topic-sm8x50-next-hdk-i2s-v2-0-6b7d38d4ad5e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO+z5mgC/42NQQ6CMBBFr0Jm7Zi2Sq2uTEw8gFvDosAAE7UlL
 SEY0rvbcAKX7//891eIFJgiXIoVAs0c2bsMaldAM1jXE3KbGZRQpRRC4+RHbjB+zFIKdLRMOLQ
 vZBVRa3MwHZ21bGvI+zFQx8vmfsLjfoMqhwPHyYfv9jfLrfpDPUsUKM2xlqU1JxL2+mZng9/70
 EOVUvoBF4gka8gAAAA=
X-Change-ID: 20251006-topic-sm8x50-next-hdk-i2s-66838fe961db
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1806;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=bizbubVRMT2tLz50uf4vCXrtjqnMF37yJFdARA55YO4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo5rPyeTJDUCqVYdxwX+n9/KkATX3chzM7TEbZ3bUw
 fLrRoOeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOaz8gAKCRB33NvayMhJ0fFwD/
 4kC8CITQilqkuQlOnmz/sGtbl2oFzz2Ll3GFPQFvq48DXeWVFW0G60pwfaS9zDAjRlF82HZwZ7FThg
 UWe0uyeKpqc3p+DNxlDLGcVULEsJcd+moFhCtsoUvuRVt/bpdrcs4vVVf3rxm83ueq/KQtBvVDiJQu
 pGiij8FqVQrvTQnJX6rsptAj8FpwsPtpM3UoZe5YovG+dRiaYYLhv4wuNX1daJQBR4WKZvIMuUm7Qm
 YFYL3phJgydOzOPzs+MqzoxnhNG4nN4prEVhu8ZOrS+8awuIKuJVHeiNDI9ispy1PeoZ99du5fH9zN
 tCqgmewCwV/p/urlatnoy1AzwMWAKCMu7+TnMilGZci6ypRmxVUfz7AHdKL9AGPpjDPeomraGkO6KO
 LkxtQ7/xdjwRJ7oaOg5yh5fXemoUCh/EV3qgbRzJ1H82VxIgicDljkss+Ucx+hYh4YzBhb5add0r41
 42IQmUGc6oomUPA1MUTKy79Az3TRMhgLlej9KhQM7/ds3n45PnKLOxyGrgVcwYTYTVvv0XFf67Fyj/
 yMLyWMQd12LAIUiqL54W/zFZYvgSmCfaQ1Qn/PYVhvsZ85TwpQeO/P8HNF/wYFuGp2Njum4y9xhV+s
 dv1Krf+wDKs1olTzchtE/pi+AoAzqx4Xv5R/DonQ5sQUQv6ylpCE+qmwe0tQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Now the I2S interface is working on AudioReach platforms,
add the required plumbing and DT nodes to allow playing
audio via the on-board DSI-HDMI bridge.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Fixed MCLK_5 id
- Moved clk set in card code, using calculation from rate
- Removed clock rate from DT
- Renamed dai link
- Fixed DT patchs subject prefix
- Link to v1: https://lore.kernel.org/r/20251006-topic-sm8x50-next-hdk-i2s-v1-0-184b15a87e0a@linaro.org

---
Neil Armstrong (6):
      ASoC: qcom: qdsp6: q6prm: add the missing MCLK clock IDs
      ASoC: dt-bindings: qcom,sm8250: Add clocks properties for I2S
      ASoC: soc: qcom: sc8280xp: add support for I2S clocks
      arm64: dts: qcom: sm8450-hdk: Enable I2S for HDMI
      arm64: dts: qcom: sm8550-hdk: Enable I2S for HDMI
      arm64: dts: qcom: sm8650-hdk: Enable I2S for HDMI

 .../devicetree/bindings/sound/qcom,sm8250.yaml     |  21 ++++
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts            |  26 ++++
 arch/arm64/boot/dts/qcom/sm8450.dtsi               |  40 +++++++
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts            |  26 ++++
 arch/arm64/boot/dts/qcom/sm8550.dtsi               |  73 ++++++++++++
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts            |  25 ++++
 arch/arm64/boot/dts/qcom/sm8650.dtsi               |  40 +++++++
 sound/soc/qcom/qdsp6/q6prm-clocks.c                |   5 +
 sound/soc/qcom/qdsp6/q6prm.h                       |  11 ++
 sound/soc/qcom/sc8280xp.c                          | 132 ++++++++++++++++++++-
 10 files changed, 398 insertions(+), 1 deletion(-)
---
base-commit: 7c3ba4249a3604477ea9c077e10089ba7ddcaa03
change-id: 20251006-topic-sm8x50-next-hdk-i2s-66838fe961db

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


