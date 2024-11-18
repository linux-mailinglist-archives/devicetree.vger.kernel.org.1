Return-Path: <devicetree+bounces-122519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E759D0ED0
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 11:45:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF7ABB310C9
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 10:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C0D819753F;
	Mon, 18 Nov 2024 10:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RkEEcc/M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A321946A0
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 10:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731926080; cv=none; b=M/IiewDTq99Hea1Q9f4ACAIVukTJ8HHHNOxhSGnpeayNzVZWacSrtBhioabpp5Cwzv0hX/vH1jEnCkpswW4uICcSIPBzOeRuAtxgGaQrIaeaBqF0KDRDmgISCgRLYHtT54jzXVSNAawx7Lnb4i4w5xpjiy7eo5896exSZa3HZ44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731926080; c=relaxed/simple;
	bh=XQsDyuRiau3IHO4Li1+Y+cuAubOEwOYf9EOJSmEbkBs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UbEdvCfVXBXrMtWP1PAwnuknzzPw69m/mMU5Pgyc5Fn26q0CTTU6tInkNt+wgFGBmR81n/cmfbBcgQ18z9v6SGOq2EBG3xdU1aErHcUutQXwWI/c5e6VYMQAqyAPB38HyoGNq4SPS5lNbrx5VHT753dDA4dTAFrsEIP8UgxzYa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RkEEcc/M; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3823f1ed492so583966f8f.1
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 02:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731926077; x=1732530877; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W7YU9L/ihohCgSGV7XFCQCDHEXAXKVeCUTFSk43kuSs=;
        b=RkEEcc/MdVc4XeuUxPrXW7gCWcStT2vFV3AHdcGUqiXJptxZuuuGCD8zjAgqONl28D
         e8764lltzpNaZR02Tbvh9uIWYnkANSyvmdmekBT+i19iLfjKmbsl+p933o8UYR/kuOlR
         M+C0as/esy84Ww13qSH5cpRWqA+aY852nIh4f023ydNjXOX150eJmLoRreTrxmq1BzIf
         FOFvI74QfOABwlCtUhhOCm8PAigqzUYb8/x+Zww6aS3TsZOiU6FE6OsvIFrNdNp9ia7W
         4/l9lPCfZ+un6D6S8+CDo84yTHK38NCKU+E4LwW2tiyH5vmL2iQD0mOzAFcRNIJNFgVi
         7u2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731926077; x=1732530877;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W7YU9L/ihohCgSGV7XFCQCDHEXAXKVeCUTFSk43kuSs=;
        b=PctcF6328py1DXHTF7jAG6hfQ6cvTDplK3f/xBvZ3tJHpJJpC/UJlkDoxeAkkjL9fX
         v8dDe09XojKCNZRj396bmKPm0skA9K+8lVnQpOyZFuDpS6HKD5wLDN9lgsPenQz4LZLh
         XrQnYBCLUAh3wKijxpYC5aCB7cge9E2CB3aqDxHe/JzV4gF7T+vG9L7bElQSV+1hCZmr
         STaFmFueEOvo99ww044fLpQucxrFOSIJItVfgYuQCsD9j69wifmVy0p9z9WS+DxnKtaI
         LaR3dG4eTUT51oVNm9YwPemFUPQzNOtZqdVuxn8FsID+8nZQPks0dRZ00F0MKP37LAGn
         jtLA==
X-Forwarded-Encrypted: i=1; AJvYcCUxRZHWzOzD9S6iMCsxueMmCtSgvYAxGBz6n99++X/P99M9e1m2haSnvgX5xwTg9bfIxC/3zw/Mr5E3@vger.kernel.org
X-Gm-Message-State: AOJu0YwKmCa8sEpzXqVIN/6/yexLm8Dq9lJAEzNHV02GLjDskzUain8D
	5FHmXnAHUm5U9cfvd5i/XFPuXvRz3sYRb2CLkhIIuZWUNKf145UhFgaR5915WLk=
X-Google-Smtp-Source: AGHT+IGwcJJL68jiIs4CpOJY91QszYJvr1I5b9vVKUwSfS1kEIk0ygwL6xoo18htvJHm4mOKTYcF8g==
X-Received: by 2002:a5d:6d8a:0:b0:382:484d:45da with SMTP id ffacd0b85a97d-382484d4782mr2179017f8f.6.1731926076817;
        Mon, 18 Nov 2024 02:34:36 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef40:5b7a:75b3:1e72:6e3d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38245e95925sm3162979f8f.111.2024.11.18.02.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 02:34:36 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 18 Nov 2024 11:34:30 +0100
Subject: [PATCH 2/2] arm64: defconfig: enable NXP PTN3222 eUSB2 to USB2
 redriver driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241118-x1e80100-crd-fp-v1-2-ec6b553a2e53@linaro.org>
References: <20241118-x1e80100-crd-fp-v1-0-ec6b553a2e53@linaro.org>
In-Reply-To: <20241118-x1e80100-crd-fp-v1-0-ec6b553a2e53@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.13.0

It is used in many of the Qualcomm X1 Elite laptops for additional USB-A
ports, USB fingerprint readers or similar peripherals.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0b8303eb498d..8b17d70b3b58 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1530,6 +1530,7 @@ CONFIG_RESET_RZG2L_USBPHY_CTRL=y
 CONFIG_RESET_TI_SCI=y
 CONFIG_PHY_XGENE=y
 CONFIG_PHY_CAN_TRANSCEIVER=m
+CONFIG_PHY_NXP_PTN3222=m
 CONFIG_PHY_SUN4I_USB=y
 CONFIG_PHY_CADENCE_TORRENT=m
 CONFIG_PHY_CADENCE_DPHY_RX=m

-- 
2.44.2


