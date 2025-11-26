Return-Path: <devicetree+bounces-242184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 52695C87AE1
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 02:21:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 55F91354EAC
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 01:20:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC7E22F530E;
	Wed, 26 Nov 2025 01:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lKH9Y9nR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6A62F3613
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 01:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764120051; cv=none; b=fvGbNNP6L36zHQ28WKCOIfRKqw7GqPbydWpiUrD8FQUptbuCMCFhPsWe9U+Dia2jUWHB1+j+3Yy3E2cbvFz9Tz6VoVgkbg1y0OHDiqp+pbZjiiPlZNaD5WzgZZSKjCt1Ur+y5AYzUw1VM4VO21qv0qXrAuImVU6tVIQHYcKxzEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764120051; c=relaxed/simple;
	bh=BF/WjIzh1KvEf9m5lmdXHNFSfzJMQ5J6eIhT2a1ozFo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HNdaIGYXGw5f75gRRVgp54gxDd4f90yeVs6qqzjPqqQDRYh5tNmgjai33pqjX0icfmxsTQOMWGb9ksL0exn+7ymNppKsU+eMV/DV75Ii66bDaUue4BF6yDYDchFr6IqGR6uyC9onVkXgItSjNuwpdWBkW8c7V+9BbEJrko2IaC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lKH9Y9nR; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59474f1308cso590005e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764120048; x=1764724848; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gQvCOuzS35Qzhb28ImHU0Wbmj0hJ/9EVpw/WIq3XrsI=;
        b=lKH9Y9nRyeZfL4ARkAmqe7tC8ZWYUrA+lyejlDchWQqooVqU2p+0Mb8d63+rJqXQir
         mh0fWKnt1p8AnJAVN4tXmUO9yrfJxOvBZ8AnHQOxkly5vQRwMtwvtrHmcRTxZPCuBcLO
         3UNbFTTAw+RyVobsu+s57w3/PnP25MNXPG4QgUcwrT/oBuVIEfQGtYNErJ8EhidIeIkO
         KMROK0VJNyIDrYEafVjLOqShudeUrTVr4FqXaib7V6025Il94iVmOKI9dm3yTD+uOhIZ
         YcscNtmiYtvBCSjmREvysfx72q1nwML0rjB8PzWZJy4TYvnkfMJfZTACeVZE/GGGT+j9
         uazA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764120048; x=1764724848;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gQvCOuzS35Qzhb28ImHU0Wbmj0hJ/9EVpw/WIq3XrsI=;
        b=WLgfkySBTl7oE48Xhn27KxIahlLwJkaftuXx7+Rd+cQf2hompI2yG+IN4SoNArS7i9
         tDLLpzsi2RQd3A3sWQteM0L/z8XVb/I9gom1FO241awb5PWzrG4DBMxEBtTD3QGqZ6el
         Wh5rwlegahHIVIlhWA0AZVxQFqKZEVP+FpUwLtefHFQu1e5xGG4z3d4ALk0az4eUuChi
         /1IAF+4N42DlS5d0tIVjvs2FY29/TTbwriMQutDy2yjnKDExVoaIcrsUZjHI2RYptz4f
         24POILhI1THQ6ogx2lv+4UdgvMoQIWEXg9AnMhZ22udN7U/V5uFHYH5yX+IN+SWKMW7m
         CUGA==
X-Forwarded-Encrypted: i=1; AJvYcCWIX4hUtp6oD3e9UbDHUdSSoZp8wkH9CytL5neQZMV+FFL79JcdcQvDnC+PhOR9I0lss6yfM9d8bm3e@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5wg2+6m16MC6S9h3d7W9gJfqIeq+JhiaHBYsrYTFCFxCrhWmU
	ml4B5x6N0zkcvxZfZ7QDFnpNhihxO27bN8GLiGynTZc4WocoX3Imj2IFsL1IGba1rdc=
X-Gm-Gg: ASbGncvG0UAktMxg6OsnnBVwTu2iSe+xXX4ei3S3Z2+QYEeukXyXvPe9JQdwoK6qDNh
	4slklJj2MeUD0TZIFXR6pv5PofXy81X///Qun1mVXQvh8hmK8i5jlbkeeD13adBvGfg56z6uTgi
	VOOlXkwZaeCW4182xI04N1TTNMICIEHSgnOvF8kew9WSBlYOkCGrXb5xP/mXfvurxwb3UtfXSav
	fzZLD9N7OcoharO9mxGL4wvyaP/6P6lieglDFRcWMZ57/2GlHvlkvf5la21dnEereWqvx4fYUmG
	jXPFuNVue1zUGxfetHmt8ny/6Gy6sZcjs2VxGm6W2GniMTBXlh7HwTjmCVLerKw0zPvKTxAB0KX
	Lff3JLGU9zPZ00TvJnMcp43miG/mLcWQPeh0Gj9G7+6FGUzTeGn9f07Lb4Uw1pe6TCL6JJK3pnD
	hlgik9JhM+qsELt2oADdoA1GzbtLVAHSFxTJOxb1W9vowakIcPVhc+oQ==
X-Google-Smtp-Source: AGHT+IECA16PB4n9KYECQhf5UjuuXck80R7ks37sRgh6XLd2tIXQTdz8e8IBYhFhqlT0MZ/+o5fCYg==
X-Received: by 2002:a05:6512:3182:b0:594:3a08:162f with SMTP id 2adb3069b0e04-596a528b52cmr3448065e87.1.1764120047918;
        Tue, 25 Nov 2025 17:20:47 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbc597bsm5584426e87.69.2025.11.25.17.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 17:20:46 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: qcom: sm8x50: Enable UHS-I SDR50 and SDR104 SD card modes
Date: Wed, 26 Nov 2025 03:20:40 +0200
Message-ID: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The reported problem of some non-working UHS-I speed modes on SM8450
originates in commit 0a631a36f724 ("arm64: dts: qcom: Add device tree
for Sony Xperia 1 IV"), and then it was spread to all SM8450 powered
platforms by commit 9d561dc4e5cc ("arm64: dts: qcom: sm8450: disable
SDHCI SDR104/SDR50 on all boards").

The tests show that the rootcause of the problem was related to an
overclocking of SD cards, and it's fixed later on by commit a27ac3806b0a
("clk: qcom: gcc-sm8450: Use floor ops for SDCC RCGs").

Due to a missed setting of an appropriate SDCC clock operations in
platform GCC driver the workaround of dropping SD card speeds from UHS-I
to high speed was spread to SM8550 and SM8650 platforms, and since
the fixes in the clock controller drivers are ready [1], it should be
safe to remove the speed mode restrictions from SM8450, SM8550 and
SM8650 platforms.

[1] https://lore.kernel.org/linux-arm-msm/20251124212012.3660189-1-vladimir.zapolskiy@linaro.org/

Vladimir Zapolskiy (3):
  arm64: dts: qcom: sm8450: Enable UHS-I SDR50 and SDR104 SD card modes
  arm64: dts: qcom: sm8550: Enable UHS-I SDR50 and SDR104 SD card modes
  arm64: dts: qcom: sm8650: Enable UHS-I SDR50 and SDR104 SD card modes

 arch/arm64/boot/dts/qcom/sm8450.dtsi | 3 ---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 3 ---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ---
 3 files changed, 9 deletions(-)

-- 
2.49.0


