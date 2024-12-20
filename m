Return-Path: <devicetree+bounces-133127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2571B9F94D2
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:47:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6D6E1893BEE
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C81D3219A9F;
	Fri, 20 Dec 2024 14:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lcvEAvUG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC36218E9E
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734705963; cv=none; b=KFlIFjgQHu1k5nCo0Ijm9hWdRO6WlJ2uTB5vC9tAV7w2tIEeV4KL6JUZEUkdt68xcoDJVJLIvcl3zpoUUbgBm4MmScXKSyu7h2M4ciPwAJjVUezUmN/eqneCLycSR1UccZaHeoQnlxzoSnj6Xkr8FC2dDjfrHuQEyyNTXXjessQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734705963; c=relaxed/simple;
	bh=QNflK95J1oyB5GCiuNhKyRcaPvjpw4cTQ+4gOGCRcP0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SyIhqhemzzPpyvB1r4W4FLg97MY4Nzm10a8L7Po81Id3vwvz9PZ8Ghi6dVSABmnNKZ+ebtkVMBvA6W3htSx/vth7UGomfU6E0uAk7xVCHed8H4tQ0bjEABUhTozkLmLNAGw5Y7+o6OGkcnwHUpw5kVe5tsNsJUV6MOvVubZLYlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lcvEAvUG; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-385d7f19f20so1034400f8f.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734705960; x=1735310760; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lRqWQ9kuH5smVaJB9GZ9PXPUlnPdZKZchIBVzev3PSQ=;
        b=lcvEAvUGkR7NEL4VPmspyXQIXMYjQNQfpFvwVKh2QbZZgw1OAuWO5qfRl4tLSo5y3/
         +ZeheA3fZ5fUGY+0OqiMBKa08YNlzCHBKBwg8uDZYphw+JfpwLOl0LQ+Lbw5m7T38mLT
         Jp3WFt5zSKYep51jQf+6Hm9DyUVGl4joJlfgogvIMM2qAJmmyjoaRGqNCisTzeYssL3v
         EDdPL3Fj85djJijtBxinZgGJnsiLcIm5U670RuCp0CCyuLoPKxCr/InRxowxKde60OQq
         UCB3G8eGZ5Hc8iC6flL3uIrajX8wODyxwCYex7P1xYLkkPxjt+F88iWz+42HOiKpzMIH
         pZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734705960; x=1735310760;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lRqWQ9kuH5smVaJB9GZ9PXPUlnPdZKZchIBVzev3PSQ=;
        b=pPxS/KDnYbLS/ZjZpCCTgdVCtb30Uz0fu0rAZFtLZJOjLebxfOJylkXxIk+90qPrZY
         +JehIKGT+chqWfQh3p+kCavsB2FEwPB0FjLUxhTZoLf76khMeHutFyHKQlB2nWL9tOTf
         IAYE6rIQ5Bw7vkq8Y3MPD755jN/kxF1sCBZJSlauTAd3pqRroqGGUw5KzODTMrPKmqO4
         jC7krrGQSCWEVPuqqXSToUvtkxnV0ThCVK3TMOeJ3EdNLLQV4xGZfZYKhdO5IHXERhuP
         hyUNOv6lwJbK2zesAvJKfIRt952J5XD8exL/jYTkd2h2Y3wvhN4hyYC0tRCAODBXGGiq
         NShA==
X-Forwarded-Encrypted: i=1; AJvYcCX+zbP32cFhGUCr+FOH8HRjf1WU953u31p36Mbk3QxYle5ifV1zfwign4B940qRuKRoLLpQ9QIrs/Ei@vger.kernel.org
X-Gm-Message-State: AOJu0YymNcR3BGCwUQA8+htTs60Vg1UA6aqNKGBOcI7kaufZjGW5+lwo
	2LnNkF+xuD14Tmfw5Pif3I0IyzciDbS9/8leTbRvXm23pTCP6KT9leXl4PJL+eg=
X-Gm-Gg: ASbGncu6ybu27OldFF8Gya98jXp5fAcSguhdU/EgGukzEkWi4OFtLDckWolFB/5cGfy
	8Qa/uYSO26XEccA1NhpXsPwA/uy3BDbdV5PuALvLFhagqcuVhR/HiMx22i5bExKlJELez4wTIDo
	LMz6nkVGZxdpQAHizYbIa+3Z4dgBSIRSn4NRPNc3oXP+X1t6bZrZiIylpDg3q2I8j2PwHmqbjBo
	q2350t+b1AmnPW2W7hHuKRLAKT/5HIbe9xBu151ErX/U1ZvGwaO5HLWPX5QyIFTnVrNwjCEAzEM
	QFpn6dhUNh/4auiuBCIoRcjwo49TFf7OEJqJ
X-Google-Smtp-Source: AGHT+IGTa4AymaocDQHTU1ovTmqG12Q6/ra0E3vms/hl6zSMw0VKvp/iKmrVp1auYP0DQmQ0Vh1dsw==
X-Received: by 2002:a05:6000:2a1:b0:385:f060:b7fc with SMTP id ffacd0b85a97d-38a221fee1amr3215271f8f.25.1734705960152;
        Fri, 20 Dec 2024 06:46:00 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c84705esm4227874f8f.44.2024.12.20.06.45.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 06:45:59 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 20 Dec 2024 14:45:47 +0000
Subject: [PATCH v3 4/4] arm64: defconfig: enable ACPM protocol and Exynos
 mailbox
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-gs101-acpm-dt-v3-4-642d64daa5d1@linaro.org>
References: <20241220-gs101-acpm-dt-v3-0-642d64daa5d1@linaro.org>
In-Reply-To: <20241220-gs101-acpm-dt-v3-0-642d64daa5d1@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734705955; l=1030;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=QNflK95J1oyB5GCiuNhKyRcaPvjpw4cTQ+4gOGCRcP0=;
 b=vMDlLV8zkiu0QyCRA1oLZkqsQZqt82J/23WzoFyTba2TkjJ/xdmEoZm0WpCiRzh9wxG2vYg40
 X/OKV9w9QumBwzhDsMK2KNl0vJ1zLENtCaQz3xOvrcCmH9So5edlr+z
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Enable the Samsung Exynos ACPM protocol and its transport layer, the
Exynos mailbox driver. Samsung Exynos platforms implement ACPM to
provide support for PMIC, clock frequency scaling, clock configuration
and temperature sensors.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c62831e61586..91139b1cf813 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -262,6 +262,7 @@ CONFIG_IMX_SCU=y
 CONFIG_QCOM_TZMEM_MODE_SHMBRIDGE=y
 CONFIG_QCOM_QSEECOM=y
 CONFIG_QCOM_QSEECOM_UEFISECAPP=y
+CONFIG_EXYNOS_ACPM_PROTOCOL=m
 CONFIG_GNSS=m
 CONFIG_GNSS_MTK_SERIAL=m
 CONFIG_MTD=y
@@ -1378,6 +1379,7 @@ CONFIG_HWSPINLOCK_QCOM=y
 CONFIG_TEGRA186_TIMER=y
 CONFIG_RENESAS_OSTM=y
 CONFIG_ARM_MHU=y
+CONFIG_EXYNOS_MBOX=m
 CONFIG_IMX_MBOX=y
 CONFIG_OMAP2PLUS_MBOX=m
 CONFIG_PLATFORM_MHU=y

-- 
2.47.1.613.gc27f4b7a9f-goog


