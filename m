Return-Path: <devicetree+bounces-127649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C50E79E5DD0
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 19:02:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85929287139
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C4C122579D;
	Thu,  5 Dec 2024 18:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aiJJMm9G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 883EE224B0F
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 18:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733421727; cv=none; b=GzsWwkaLf371aqHrl78vJoyy0ZfJPGmA5rVxMWbPQvBW/u1OvrB+2pAGNnTi9rwyXsNa5t/fY5yPGs1OVUDI7LX7KbLszOC2KZ68GXZJiHTNkVxJ/tbGaZXI5y6gXllCb6hUJpoLZcBLJNuVtmZ7twCyWbPVHePv0tjTm0FfBCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733421727; c=relaxed/simple;
	bh=PvO3ukRF0tA8B0YAj53vIl+BCuzzRx3eAS51sP0o+H0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XfWczz8lj4G8781W/46oQrWTAG+tvAZUeBMPVljV1yLfr+Dck/JZiMf2zVjquvx5qVTFsH7heouCxT96j8xhAhOFUZgAIfQb0NBJ65XXLhYJAvp56LuZ0wgJv3samjBrU4HLhxNo5T3rTSFAKVvaKKxGHcyAg6RZWCCtFNPmuzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aiJJMm9G; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-385e5db74d3so701657f8f.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 10:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733421724; x=1734026524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MEBaxrhXtuUNeerBIkR47JpXV/0Yl7e6aP4Ai3bVM5c=;
        b=aiJJMm9GPN1PzhnnVENAY2qH55ZAPk8TjnIT5fn8O5BUsDgj20YzvYzKB7VzcJbZSq
         CYnHfAUtH7IjXTLqoxH8jp6geLdn7PnMpNYegnSMeP2LTHPcCpLg9ZaSsn9vWoZiVS8h
         X/D23H38PRec+cpNQmkvxpozbvv7OT6GxU06d27tVvUqIzumNGR6H4E1hTjA43k6XJQZ
         JApA3Y1nrfjFcXR1TdNWHSm3thQCMRkwXwBH941ZfxXnKHhBVZuK06ZihHLPvejlUl7D
         cx9lV6EQPwifT+Tdhb2mcmCPuZgS2IBOvBTv/p+w7Z3oA13IUfq6Hjtp6pj78YSm5aGm
         byow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733421724; x=1734026524;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MEBaxrhXtuUNeerBIkR47JpXV/0Yl7e6aP4Ai3bVM5c=;
        b=RFpooFOy8LDFBmZIhN6OlO6YnuqoTUpb9ViqhiSwzY4R8xcQ3/sNJ5KEWn5CcWFUk/
         ysvwjlI+87RauOJLCkgPK7HoErpsSMIC3vsvexBxv8PP3G3yLxi9lCaELFBhfl+LVrki
         a1UyeWNzLEG3S6m1JDqIDyEzc8N0FXNcUF8uyHtihL75ngNm2JKDz5n1zDO1dCpFVOeV
         VQnFEqO5uO8MqpfZDsK/yboV5juK2R4Xm/tdNNzLzBpNuWRX9Y3Lpw01Gh/dggKVcco0
         iFw0R76B3uoRdWVAZ6vQELneke71Mjz7I/jigJDLGuC+J3d0w//1mG+Hp5wYnvHyZR6x
         RQbA==
X-Forwarded-Encrypted: i=1; AJvYcCVzfr9rkA7CqfjEmJEakBDZNh6DIHliWpTGOQdfydjKyoDxC/55iCL1ULbSqOj2lky0eG0ta9mK+RoJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyCztb9mVCr/IFundISVNik3Be78ex7bZy6wlS/m5uM2eLUxiRT
	wRJbxu95PBmDy4X4PBBn/qSg9lpSU2OFjSYmJ1GbUfTWpO2tMzgJE8D5FXcaKAs=
X-Gm-Gg: ASbGnctkxQmA7nMzUSi/T5MXiRzoSEfSpkOFPHrI6cTY3hgCgkOo4HQVmPp2lfRBXuZ
	r0vOMCnkulknzDqWK7iT9p6ixfszkuVB8XrPW0SyKzGuZmiR54Fr7+Zht9XA4sF22LBCee5Whe1
	d0ju81LkwktignRGJuM5VV8ETdnaNK8o5Rl+/ImRTLFEj70qVuU6/ZQSISxpHRw2Ejh3Wf6z5cD
	dO2RkVAxBocuR/eAxejMiCSsDP3qV+HLl8XauyKoAFZFyjzp9kQWZGUDiwiivWGfSkdktJdJYD5
	/XSMHivaqNyweV+cDJFLZkj3PObBOmqe
X-Google-Smtp-Source: AGHT+IEaRSOep3o6BlOGmjw5C8xn/tsj4Vy2kgRYv+HBcuFUUH34fZUaz5fJUMup+GJE2Tx+FT0gbw==
X-Received: by 2002:a5d:588b:0:b0:382:6f2:df7a with SMTP id ffacd0b85a97d-3862b37afa8mr16766f8f.34.1733421723607;
        Thu, 05 Dec 2024 10:02:03 -0800 (PST)
Received: from ta2.c.googlers.com.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-386219098d3sm2618228f8f.70.2024.12.05.10.02.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 10:02:03 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	peter.griffin@linaro.org,
	javierm@redhat.com,
	tzimmermann@suse.de,
	daniel.lezcano@linaro.org,
	vincent.guittot@linaro.org,
	ulf.hansson@linaro.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 0/4] arm64: exynos: gs101: add ACPM related nodes 
Date: Thu,  5 Dec 2024 18:01:56 +0000
Message-ID: <20241205180200.203146-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define SRAM, mailbox and ACPM protocol in device tree.
Enable the mailbox and ACPM protocol in defconfig.

Tudor Ambarus (4):
  arm64: dts: exynos: gs101: add SRAM node
  arm64: dts: exynos: gs101: add AP to APM mailbox node
  arm64: dts: exynos: gs101: add ACPM protocol node
  arm64: defconfig: enable ACPM protocol and exynos mailbox

 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 40 ++++++++++++++++++++
 arch/arm64/configs/defconfig                 |  2 +
 2 files changed, 42 insertions(+)

-- 
2.47.0.338.g60cca15819-goog


