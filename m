Return-Path: <devicetree+bounces-63574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D678B5644
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 13:16:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C072285330
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 11:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C121E4596C;
	Mon, 29 Apr 2024 11:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W/zGqOmK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA4340841
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 11:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714389346; cv=none; b=YoahbYnaMrwB6HRKekNOoReYLmGFKUP2HTBMjxijlgeStFWQceZ0CpQWKcMhETd2e5NWsMj1RC+BrUMYZJFJW8ESeH3sXllktYO2vM8kaAhVXZvEdxHX8ZgKXEOgDtwMvmwb0LQ4uLFM26nbdf4KmIgqe12XuBdu2Fq+z9pHI3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714389346; c=relaxed/simple;
	bh=2bBWeKw/Y+4Mjf1rMVzvCAaya5L2mkp9pQ+MhRjpvLM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hzZk+3lQQkx1Uc0/u+YhFi1l7pmiGQuYJiOYDJnKa0cpeL9R2qjwVbq90KhJ9NjQ77tvl9hr85WHRseTIgxJ612nYWl1OihwVwv/zxu9VuZyTZEHkZTKyzIVeHE4e5YsujEn4hruqeI6bpwegIUb1WwnLjsBzZYHnmGXT09vnpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W/zGqOmK; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2dac77cdf43so54885101fa.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 04:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714389343; x=1714994143; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BHjJbBAINE/uHYfzybf0SNljSNHWl/yKpH52w4l4aoE=;
        b=W/zGqOmK0Fe8UVaPP3aTXX/g2+G1zzDf6IHY006cGhXUjUbI2RX4TubyWQjMp1yOEY
         ykS8m6I/Jty0H+3t4QOKq/nauQTlDTg8XcfXXn+7kMtfv44V9FFFYzBiIu2rglczIhx1
         mAKnkzmIk7DBkpOUkUSncw9OGIcY5DyBfAGrk9omPz1X7hQv8zqgFFmeXtescOszHBfH
         ZZTBOJ05aTLWaNfOZtrpyman7rSCSih/2/ZiORoAoPUmDZVkDvDBVx33WMrNsG8eeAPF
         RDfRJIyHRNGkvl6ueCbyVSvl/ptfPkUJIiAm+GiN4esMlgIUHwOW+aBqcZof/RJxlUce
         /xMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714389343; x=1714994143;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BHjJbBAINE/uHYfzybf0SNljSNHWl/yKpH52w4l4aoE=;
        b=qqNH0fIZj+jKwGXIrn6C5/uDaX3BEJqKusNIt9aAv9e0k4lWQWv/kzh56/LmLHUcnK
         ZARRwgDema4FZOmyX1dJqQgLSXM5g3SLcz1ZJ6V1vhKTHb2jJpZIl/4mD2EMP5bEkLHS
         Gc8LgmcpEyYH1ywCrzNRRhwek7q3PAQ7n0302SjJFEwF8Ad8r0dGtSHGIXZmw4dh2A6e
         sv2gVBb2aNI4ZizWvRiLWNdW527bxNfSODLKvzI/UtfEQ4tt9gqAm+sYkQBwT8G2IqXK
         Ru3zDtSTcr+/aN2kIGwiyFRhX7m6HRi+O46Nh9tMsxXGFErLv20XaIrBEKuohOkiNjhK
         iyNA==
X-Gm-Message-State: AOJu0YzUvWK+2R+VWwxIDCDDw7LUfzT8+Xlote5aytNCovy4DT6z3OKK
	rYW7BfwFO6CKqcevaE56NqKw4XgM0k0uXoa4sm6Q503cXAOeYxo/gw19lZuzLEs=
X-Google-Smtp-Source: AGHT+IFv7qguIVE7775W4L3dzsBVXBiC/Y3AMssuKVMJHdRZlaNoXrE4DcONgklKCs0h2HeB4A7w1g==
X-Received: by 2002:a2e:a70e:0:b0:2e0:c689:f8cd with SMTP id s14-20020a2ea70e000000b002e0c689f8cdmr76395lje.29.1714389343208;
        Mon, 29 Apr 2024 04:15:43 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:550a:b373:6b8:63ab])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0a4700b0041b434e5869sm16005337wmq.43.2024.04.29.04.15.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 04:15:42 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v4 2/4] arm64: dts: exynos: gs101: Add the hsi2 sysreg node
Date: Mon, 29 Apr 2024 12:15:35 +0100
Message-ID: <20240429111537.2369227-3-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240429111537.2369227-1-peter.griffin@linaro.org>
References: <20240429111537.2369227-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This has some configuration bits such as sharability that
are required by UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 38ac4fb1397e..09044deede63 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1265,6 +1265,12 @@ cmu_hsi2: clock-controller@14400000 {
 			clock-names = "oscclk", "bus", "pcie", "ufs_embd", "mmc_card";
 		};
 
+		sysreg_hsi2: syscon@14420000 {
+			compatible = "google,gs101-hsi2-sysreg", "syscon";
+			reg = <0x14420000 0x10000>;
+			clocks = <&cmu_hsi2 CLK_GOUT_HSI2_SYSREG_HSI2_PCLK>;
+		};
+
 		pinctrl_hsi2: pinctrl@14440000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x14440000 0x00001000>;
-- 
2.44.0.769.g3c40516874-goog


