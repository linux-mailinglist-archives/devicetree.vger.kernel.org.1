Return-Path: <devicetree+bounces-154770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3BEA54773
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 175F91893167
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 10:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88F757E9;
	Thu,  6 Mar 2025 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FejN7/Xj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2471C84DF
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 10:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741256093; cv=none; b=ncQFVt9vtY/pN+VbdGVey96/Qudzi4ZBOBXCkQOALFXU4lQcmeQ5JwnXS15+ph5x40SNOZkhnLI4gx9u2XfJoXti2xjGUrC35CX0HjZClK1m4E7OqicrKcLzy516PAI8xt1IQ1RWvzIzhBhhedUHUGcf0ZN3PvoPbMLT9V+3Lbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741256093; c=relaxed/simple;
	bh=zZ5zRPaBf5NaYRVFcYpDRW4Giwj9aHf2bI/tXWWPQGI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Wy5R86XHff90Me+UTo6kXxZoUALyxbbIpgAfbqy5sbY1VIoFeoyX8iWvW1NN6dYK2lxrzlbmLPd6RXOBsuVPYh8S9QAsTYeOHjFgoTwNWp+pNXR241OK2izMDYKmV3X9xJbaLKns/5x3LEIXSjho9C3sS4bJyYXHIR5KtQu9/Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FejN7/Xj; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e5491eb379so707003a12.3
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 02:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741256089; x=1741860889; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bTX2x3w2+rrqKrzKo+38sY9i/3t1a9Grj2c0VzKk3Q8=;
        b=FejN7/XjiXAYXgr9oe/+HXlxHroGXXNbDazRWX1gsLEUp7hH7aiZXETq4yYepQe03A
         oTqqMbOcN0ovsfxuwPrK+3lFtC4QDeTjUlzOX13ub9AWubLK9u70w5i8i2BlzJJ2X9u2
         D95X9QseotoUPF5UI6U61W323dGaz/Hrfs0cYcfnRBx/awwR8e6gOlz2ruNuy6OXMGr+
         azes7xL0y1YnjNt+m5xL8V3SttT9F0Wxghs3DDgljVvN4k3+egduRB4i6k4qXIZLqd4H
         GfP5dHKTMKjODZvi3G5GLBcStmgOjGnk1FIbGqwAoF9CbY7XkqDWDAiwwa8RqO6SLJX3
         ieVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741256089; x=1741860889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bTX2x3w2+rrqKrzKo+38sY9i/3t1a9Grj2c0VzKk3Q8=;
        b=IdQLpTSPXy9oFz7zvJI50RV4fTAhlBla6rFNm6oz54tbUQ029DUJfuIe739W9hnzAS
         Rn/lmkfBGVMHVaFNzIAv+I4ILFNgYabrO25kN0N9UZe3Xe4M5xK0bJTWW5xING/+iEv5
         j4clJRVaZAGwLI4bAGgJaB36S2IDTEfvZbTwBwHAS1X+TUScuT6UaLmDbFamw859ThDq
         LF+GGfGd4hKIgHymrgr6aknnDC9gq67OefkCDzBBChlzAOoDkRxaTpWkt7Uww7+bbqgQ
         DHHD7JbuaAGPGhgt5R6BofXKgDpZHDvD3ToO8fq02FmAvRtj9sagqOm5eVfo1axWQaGj
         kwmg==
X-Forwarded-Encrypted: i=1; AJvYcCXvjHs+eG1ui55T8/QIp2yXtK88ZFEJyXlIqe/Pd9nDhz8+K1J9j4WnqJJP8m/iA5jLtSghw0MGS0+5@vger.kernel.org
X-Gm-Message-State: AOJu0YzU+bZtYibSZADfIlIEjFnpQT/lgfUg3m8vvTU6NalQd98ZbUQx
	UU244sGRTvUKes7BxZUMj3QYO4u7iBKBNLot9aaUj/cxq7n0pV6i2c0RKL7iXM8=
X-Gm-Gg: ASbGncsMC8flTHYkk/Ti00lgu8uHh3K+tdHRBeNs7tspwJ0Fn2EircDspC5ZeQlWA7J
	cvxc/vVBjyl8EogqycgX3xYAu+/TI6tkiCk5b+hRZ/WqFl3/RC7CT91XdvXLrPvj/s4Gn0II1iP
	uh5IXw+L5lYox8aimcxhDSXkCnneu5PCTySQrlk38y2B8WZG+nt+soVySKmoomECevVi6ggwu9L
	A1opM8Quk2frxAqXV9+ln47eUCqH6z3Qe17PJA0zuHnt0QBiT5Dz/7tE4V490jFzYxeUxS3SiCX
	JVShJfucUpZQrpoPDXIQ5u63TJZUoU4rQUu0BKbJxHM2osI7mAdq3R1n8WNeUCx1vlJlA34gpjm
	q+AewHxJWUaIFIHzDspvAC3C8xlal
X-Google-Smtp-Source: AGHT+IE/o3v5XJFu7xvLRW9BZC3NmMkBoh78OMt+bw+ZmwbbxHMBjWL9+2GSNHmM24JOepTrXIj9dg==
X-Received: by 2002:a05:6402:3902:b0:5e5:b3cb:38aa with SMTP id 4fb4d7f45d1cf-5e5b3cb3c80mr4508256a12.25.1741256089661;
        Thu, 06 Mar 2025 02:14:49 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c74a6af7sm708972a12.33.2025.03.06.02.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 02:14:49 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 06 Mar 2025 10:14:46 +0000
Subject: [PATCH 1/3] arm64: defconfig: enable Maxim max77759 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250306-b4-max77759-mfd-dts-v1-1-9fe8b0eb8123@linaro.org>
References: <20250306-b4-max77759-mfd-dts-v1-0-9fe8b0eb8123@linaro.org>
In-Reply-To: <20250306-b4-max77759-mfd-dts-v1-0-9fe8b0eb8123@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Enable the Maxim max77759 as this is used by the gs101-oriole and
gs101-raven (Google Pixel 6 and Pixel 6 Pro) boards,

The child devices' defaults are based on this MFD driver's state, so
this commit enables those implicitly as well.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index a1cc3814b09b31ee659536a64b7db704153d6fe9..eaa88c3e6a93ce555468458763c2531fee2a903f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -763,6 +763,7 @@ CONFIG_MFD_EXYNOS_LPASS=m
 CONFIG_MFD_HI6421_PMIC=y
 CONFIG_MFD_HI655X_PMIC=y
 CONFIG_MFD_MAX77620=y
+CONFIG_MFD_MAX77759=m
 CONFIG_MFD_MT6360=y
 CONFIG_MFD_MT6397=y
 CONFIG_MFD_SPMI_PMIC=y

-- 
2.49.0.rc0.332.g42c0ae87b1-goog


