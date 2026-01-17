Return-Path: <devicetree+bounces-256354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B26A7D38C0D
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 05:06:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B275830194C5
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 04:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEF163093B2;
	Sat, 17 Jan 2026 04:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b+alE/LN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198B42F747F
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 04:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768622801; cv=none; b=PUMeksIhL4hYsTyFNaOTbfXXo/0bA2vwOdoh1SFcU4547tu2KQhM+xRB0q/iIYH6u57tmC/2ofh0d2/wpwe0MDnGb/RzumLarDGSzxeGGtQm9cHLryRVaJy6e76ytjGNxqsmZTvDm9xnK6WEuiQ1LE8EwllBzTqhqlPT+Uf+g8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768622801; c=relaxed/simple;
	bh=j5d2RrDJbaFE8PaCtfXNVURlAND2nYHnXS+BKcopDbk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uLyHVEKRar5Bf0zgJqY6mzTRAp2QTO19ZIMbdrCI9XuguQwjiIam5P/7NdU+Dl0qd4iMHl3Gyx6/7uNC6PjbNF5F+50K4Zvwwkxlrd9d+FoOYbx3+tBqrC/6+SYNf4OlmTqdDd43y2EWz6vuJ53ok/N/uYJALuqV1YFMDo6O89g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b+alE/LN; arc=none smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-8888546d570so35177226d6.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 20:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768622799; x=1769227599; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kuw9AoKIr45IdJhxw0HWFSd71z+YX9K1Qul87DoIZrk=;
        b=b+alE/LNZyfCZFTzGVrhjLiFnC1ixWnAMz3U1e7qN5blGi3D4Fg9SSuJhgwcgAcQRU
         XIr92kza/9YX5a9glHry/4My2v2I3zLw4AIBOVgxnwZcNeXSP8jjPo6s1d10pfw9l+BU
         8psE+dwX9SLyl+DVMOYqsA5YUXei1ZZqo0/sWE9/AmMNfQa+aMNxJSbwqMRrk78VqcKf
         ZI/4rQRbIIo90Rmu9zSaD+afKJuRXDJKSZ3F7AL5I2erSxzTX5MHWk2yVNy+Yn9qnH76
         xxeWs7tU8JFHHzlpho3Pa1FYCdjKks5DpMuRJ8eftI+pk01zBFMEikC5xA2PkF4uNzBv
         6zdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768622799; x=1769227599;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kuw9AoKIr45IdJhxw0HWFSd71z+YX9K1Qul87DoIZrk=;
        b=P02ffIoTRVzZPkHqgduvoLOvPOc92+7TjbjFVcpcRVWwANEEuz4+ySaGPHmYBQFa3i
         qjxQ01Q8saXspWgV+KBKq1fhTPFAMfG5fdNmjW1qj6XRcyk7NbXaw0MCrSky2AiaK6+h
         rjE3+YTMniQT1sVGXWMpqw44Ngjw0UsR/Wn3uKgvwA0hMUa/2fozSZib41G9qJw6Yp/P
         1xK232wdSZGPlxBd1yEBgNK4qga5g6+Yob2jowfJSxudmcRYocx8rtKJya+NqMwRd9yu
         T2n6tfOewh2R6uJqUa1VKmx3csVynAV8SgHBGtfNi0b0GecgOMFSC4ZfEjzZ5sFv/MBa
         BAVw==
X-Forwarded-Encrypted: i=1; AJvYcCVKiV+2gGAMCGYzV9oBMXFFsG0dor+3hC7bT0xkEPCtIEtz26FCs77o5Z5rbJBxGYleNrgH6Dd1jqpk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+Qfczr8zzcwVVp8e9bmj3xyTyJytNoOHlQvTCyS+4QhpP6Gr6
	tPB19am383L1n3/E9mRb2hm4nkyeJFkNy36L+exdtSCICotzmTxZenxI5e93VA==
X-Gm-Gg: AY/fxX4LEwBIIH4FOUFIUoj7y3gWODJFPrQei1GygVLOykTKfKbE03aPXlSgl1iM06X
	4zLV8nIKSwyagHemA6ruRtP0X7c09boIRedTxPdE6TxkeCmzePv/58M2ngcWW10k9D63eUD+I/b
	ItPJ3KQiyIAo5ZOsOlzdw/+I9qAdASx6SQEF1qd+keo2B7mIsuPmbYXdWdTBQoBo8PI5R8E61y3
	dvz+I4WayFVY0YtmHKczjGDGkB1vO4SrCk4sLAO/WayKWEnuL0Qe/6JnVUFiPnl/YcnE3QgmkDx
	+WAd1lb5AChL0P5CwdPY2RFAvYsgy57Vb9/GGbmrburYGKQbSQJ5yeBP2hTe3VntJplCqK5PSc0
	XMqwxKvv5LqtfMQxfN/ASD0hnFKrljWujROxmD0mF4ZdPq5MYw/TU9JdQjJ2AcyQjYeWhIbhCCC
	9e1D07eqSpCcJCOw==
X-Received: by 2002:a05:6214:d4f:b0:7ef:4bbc:7767 with SMTP id 6a1803df08f44-8942e55c1a4mr64073766d6.52.1768622798846;
        Fri, 16 Jan 2026 20:06:38 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e5e4a3csm39170106d6.5.2026.01.16.20.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 20:06:38 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v7 0/5] media: i2c: IMX355 for the Pixel 3a
Date: Fri, 16 Jan 2026 23:06:52 -0500
Message-ID: <20260117040657.27043-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds support for the IMX355 in devicetree and adds support for the
Pixel 3a front camera.

Changes since v6 (https://lore.kernel.org/r/20260107043044.92485-1-mailingradian@gmail.com):
- remove NAK from Krzysztof (3/6)
- assert reset GPIO on probe (3/6)
- change delays in reset sequence (3/6)
- remove __maybe_unused from OF match table (3/6)
- fix alignment for arguments to devm_regulator_bulk_get_const (3/6)
- remove front camera pin configuration (6/6)
- remove clock-lanes from camss endpoint (1/6, 6/6)
- remove data-lanes from camera sensor endpoint (2/6, 6/6)
- remove blank line at top of binding (2/6)
- add review tags (2/6, 3/6, 5/6, 6/6)

Changes since v5 (https://lore.kernel.org/r/20260107042451.92048-1-mailingradian@gmail.com):
- add Bryan to CC who added a Reviewed-by

Changes since v4 (https://lore.kernel.org/r/20251211014846.16602-1-mailingradian@gmail.com):
- add NAK from Krzysztof (2/5)
- label the camss ports (3/5, 5/5)
- define endpoint properties correctly (1/5)
- use devm_regulator_bulk_get_const (2/5)
- remove clock-names (1/5, 5/5)
- set reset GPIO as active low (1/5, 2/5, 5/5)
- explicitly drive reset low at start of sequence (2/5)
- make data-lanes in endpoint optional and start at 1 (1/5, 5/5)
- add mclk3 pin (4/5)
- add Reviewed-by's (4/5)

Changes since v3 (https://lore.kernel.org/r/20250905215516.289998-6-mailingradian@gmail.com):
- separate camera mclk pins and move to different patch (4/5, 5/5)
- remove polarity from rear camera pin (5/5)
- remove output-low from front camera pins (5/5)
- mention effects of dcf6fb89e6f7 ("media: qcom: camss: remove a check for unavailable CAMSS endpoint") (3/5)
- specify single clock-name without items nesting (1/5)
- rebase on 49c6ac166cf7 ("media: i2c: imx355: Replace client->dev
  usage") and eaa7d46d9654 ("media: i2c: imx335: Use V4L2 sensor clock
  helper") (2/5)
- do not use of_match_ptr for OF match table (2/5)
- remove redundant GPIO validity checks (2/5)
- describe endpoint data-lanes (1/5)

Changes since v2 (https://lore.kernel.org/r/20250714210227.714841-6-mailingradian@gmail.com):
- use devm_v4l2_sensor_clk_get (2/4)
- require supplies and clock-names (1/4)
- move unevaluatedProperties down (1/4)
- disable clocks as last power-off action (2/4)
- use 0 in gpio pin power-supply (4/4)

Changes since v1 (https://lore.kernel.org/r/20250630225944.320755-7-mailingradian@gmail.com):
- too much to have a complete list (1-4/4)
- squash camera orientation patch (4/4, previously 5/5)
- squash driver changes (2/4, previously 3/5)
- remove labelled endpoint node in sdm670.dtsi (3/4, 4/4)
- change init sequence to match other similar drivers (2/4)
- retrieve clock frequency from devicetree-defined clock (4/4)
- remove clock-frequency from dt-bindings (1/4)
- remove redundant descriptions of child nodes (1/4)
- switch initial drive of the reset GPIO to low (2/4)
- set mclk frequency to 19.2 MHz (4/4)
- add vdda-pll supply for camss (4/4)
- use common power on and off functions (2/4)
- use devm_clk_get_optional (2/4)
- remove extra layer when describing mclk pin (4/4)
- rename regulators (1/4, 2/4, 4/4)

Richard Acayan (5):
  dt-bindings: media: i2c: Add Sony IMX355
  media: i2c: imx355: Support devicetree and power management
  arm64: dts: qcom: sdm670: label the camss ports instead of endpoints
  arm64: dts: qcom: sdm670: add camera mclk pins
  arm64: dts: qcom: sdm670-google-sargo: add imx355 front camera

 .../bindings/media/i2c/sony,imx355.yaml       | 105 ++++++++++++++++
 .../boot/dts/qcom/sdm670-google-sargo.dts     |  95 ++++++++++++++
 arch/arm64/boot/dts/qcom/sdm670.dtsi          |  46 ++++---
 drivers/media/i2c/imx355.c                    | 116 ++++++++++++++++--
 4 files changed, 339 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml

-- 
2.52.0


