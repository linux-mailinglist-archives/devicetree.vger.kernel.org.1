Return-Path: <devicetree+bounces-220806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B3CB9A8A6
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:15:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 539831B25F5D
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E62D30EF9E;
	Wed, 24 Sep 2025 15:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lmQ1Uc64"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F38330C626
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758726924; cv=none; b=dIMubM5b2QjmvnC1IUtFhFOBgqov0fdHExPX+35CBCsGe9oNtHrShvFMZa3Rmhhbzb+mOCcJMs6/AIjWetxWVHbg3vcYUfVXNJpe+V4JbjCBhMQbOacptJYmvwsyBBhZnwoiP3IC26Bl0VtBfT492ueOrej8BtFEcoIfAZChfz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758726924; c=relaxed/simple;
	bh=JmsEgZMHNR2hZ1IS9otwlJdT37DqVFuKcq466eHfWkM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Sd9xZ8xDdOG6cHePJNMADvBhZLtfJ4YK02Th4xrku9FHLAFBtksbZwSlRgFntzlk2kWHcVG+R0sQzhnn40j4N1L407qqGVR51i/BVCel492rSXEUsZLbO8wckC9FavI7umrQERhJhLoWhDnZ50Cv6ZpTW7wXStIxknYDY8yL+MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lmQ1Uc64; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3b9edf4cf6cso6342385f8f.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 08:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758726920; x=1759331720; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KVqkCRaMXNKzpuB5REQUDEUQfJMrsFYNkn+7shJjr5E=;
        b=lmQ1Uc64I3aFUIDIvp9cshnu6kgh4ATw2zJd8HRIfhOuk4x6dqWzudEs9LtORPARzU
         DMf2CakYIv/dzFSgUga59O4O5PY9zGlMHr8hEAmG1B3pIU/B4YAjzxq9+MQQ3r/ufmqO
         YKjtH3gslGfzrsRdABEPH7ylPBrugxDSHMOOA+94SQCaLUsCzkCuELRczSXZzc7/GrxR
         XqKNK89eVhnGHWTMbOvoVE227r5YQdnzUdeDuggWJqoM8gyfB2KjB4rybnCvml9GPVlY
         6gfkJiY4tt9huHOwuVttFLME6HgRqTly7aQxXmp0jz2etBswUGEouYfAIHzU53D07clf
         rQIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758726920; x=1759331720;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KVqkCRaMXNKzpuB5REQUDEUQfJMrsFYNkn+7shJjr5E=;
        b=bT6B7oG/n7CUlBQp/HTWe0aAhOSwIjH01Xwg3rnl84v7y+x3SmqjyCh+2EhdrNGXNV
         YhuMNaCw1hLQhN8sm7x/A/PCstrsTOUysVoAP+/cXFnHy9320YJvZbXsDBIK8QrD9r+m
         XzoSZqmFn67VEeWnysFe9O3mRxBRfnFI8CgC4NgxO6yu1S7jz6sCx5MzvdZU4P5NX58C
         cnTPnK6+J5QrDIAxsRGUfCSPpNPmBZzm1NChFe2FRyT+U8G3k4tickQC314RGr6iuOW2
         qt8N8yalFi8dr2Bnxep0pS3ZyKYYPgRafnkbp51CJtDwmmLMWHehM9POPi7cVCjAMjEc
         kkOg==
X-Forwarded-Encrypted: i=1; AJvYcCVk+X8K/8PhaanwWe7WNrLyA5+MXgu42S1Iwvu8HWJVEutawF1KCoZPV4u46yasF9cyCnvAWqLNy6mc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw65oOS2OlWLYZPhe4aWVsRjy2TT5dyPJamBgR9uzoh6rq97uph
	FzgdH9lw/fLrozctN9NC3HuZIRDfqbOtvdTRfHCrSkfK6qP+Wham+3XPb469b4SNgJM=
X-Gm-Gg: ASbGncvQM2qjf4g3V9qwVRxvVCPuMiQMcSXP/F374pTRU+Eyqixgf8GUehXyMXSf9x1
	jI9ZrMfGFikNOQxXtNqup9TtB3+KvrNj3WCll/qqzfKQwFp37qvcdssFNTcSTmioyQixX3OWXuW
	PZr6ETRnUBqsq6SJLQjJ0C4Bv/hbQeD0CU4F+GQr8Q4jsuGjDglFjc2nlD6urLnkch3Y4t2/9Cw
	1YKb519kTb5zdL4gy84Grra6xDbGr4fuE8MPcqKMPATy/iB24mQ6tV6uNsR/fHJoKJKLRC/Dydg
	yLtXDjSTcnI42UjEVkux7eI64rgHQ0KbMAHKIb4XTPwzSZGxA/1eTtyDhcXt0s9UPPQIs4NPYMk
	+bwe4qmBQVVdzFm44vpHeOqsu3QQTzhBC+mC40RhFCTtZx8GRQhbFdLK9XkQZrAmHQlcbc+K24B
	U=
X-Google-Smtp-Source: AGHT+IFUBokS/crC/e1tyzLRdorHGylPcO9/aHYJEu0osDuR4f/t84N4YYsDuJGzyT1nQBhllDuZwQ==
X-Received: by 2002:a05:6000:4202:b0:3ec:ce37:3a6d with SMTP id ffacd0b85a97d-40e4cb6e228mr379725f8f.47.1758726920506;
        Wed, 24 Sep 2025 08:15:20 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a996bf1sm36541855e9.1.2025.09.24.08.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 08:15:19 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 24 Sep 2025 15:14:41 +0000
Subject: [PATCH v4 1/3] arm64: dts: exynos: gs101: add #clock-cells to the
 ACPM protocol node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-acpm-dvfs-dt-v4-1-3106d49e03f5@linaro.org>
References: <20250924-acpm-dvfs-dt-v4-0-3106d49e03f5@linaro.org>
In-Reply-To: <20250924-acpm-dvfs-dt-v4-0-3106d49e03f5@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758726918; l=984;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=JmsEgZMHNR2hZ1IS9otwlJdT37DqVFuKcq466eHfWkM=;
 b=In9O47CfMkMqpQRFT0EdPf6ZFFTRjGsFERp5FOQXNztXjs5m7eOB+4DwpP5+7wmzH4t124xRS
 d0YD7QdbCAJAnxjbbNk8gD0ezAWG0lxXstJGjc/g0YGXRMyewTbLF9z
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Make the ACPM node a clock provider by adding the mandatory
"#clock-cells" property, which allows devices to reference
its clock outputs.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org> # on gs101-oriole
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 31c99526470d0bb946d498f7546e70c84ed4845b..f88d45a368af7ef88e8cdc84b3a81a63a753832c 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -202,6 +202,7 @@ ext_200m: clock-2 {
 	firmware {
 		acpm_ipc: power-management {
 			compatible = "google,gs101-acpm-ipc";
+			#clock-cells = <1>;
 			mboxes = <&ap2apm_mailbox>;
 			shmem = <&apm_sram>;
 		};

-- 
2.51.0.536.g15c5d4f767-goog


