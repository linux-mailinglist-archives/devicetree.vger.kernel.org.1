Return-Path: <devicetree+bounces-161672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D6EA74F26
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 18:20:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 131BB3A89FC
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 17:18:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 634D91DB14C;
	Fri, 28 Mar 2025 17:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kUbgJB4g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5076B23CB
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 17:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743182063; cv=none; b=B3zrTPneb+OsdwsEDRqrWYiUKUkbemyYDpsERTaAYTgXPIkAS1fkqy0OUyXyOr+CJE2Avr0nE8HXvxnJFd6xam2eOe+mgT3ZMh4eAmHGcM1lVw2Vm2DsMvS6r6IZFrBKcN2mFaXIwlwkxsQ1wQtIsUKNJ2IOa2rcEIPTTVOqilU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743182063; c=relaxed/simple;
	bh=BHpq2UbaF3kL6H8YXDTV3jWJ+lPDn0AShBL5PzMnA/s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=NzRa29ugLK82nigC65xabrPpEkl9KDw+4hFre7Jd2KAjQOSu7HHFUY/HSL56PYUWoH3m09GZLVGgvSGT+hYX5IOBVlGI/OoF57yQ1AqKBi9QM1Lafe2NIMjAJun6f+eUW3DtWJdHrepgK6o/eViTCRl4haN0iuRD02F5/ku7dl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kUbgJB4g; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4394a823036so23804015e9.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 10:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743182059; x=1743786859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7RiNKZlkxAxgBvokSU2RyRmQNQI1s7tLyPaBleKgV+A=;
        b=kUbgJB4gqhhexGM6ll2HP2FSW+7Jx3atEPKxelgMdMpo+pfLhPpmTbPKdRNIrYc5Vf
         4pGgN3Nku2rwYk+xe3Z4UtBqLThWveElusbGNf5mmkU9Y1tXebVM45pXiHf3Fv6tyk2Y
         qM5+8ig7Felmw+F+BIYGIG+yLh9D8Ga7lsZiPtBxCsb3gX8v0gJicEbEWViJOWw9eUB6
         MTr+45ngygEb1bTtkmFm9obcHLbfK9qWPMJqxXeousab1brFRW+A2QhKMrzTHaTKK5g5
         iYecI/DKq9iOzyBuX66T8RgwVkakO7REXGP1Z4hCUHzyL+x9pud8WD8GLcXE29il03fH
         3k4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743182059; x=1743786859;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7RiNKZlkxAxgBvokSU2RyRmQNQI1s7tLyPaBleKgV+A=;
        b=gUjILwiNv4sEBbl65mT870hNn3o27Sb8KJf6lR9sgWgPqnwSxLRiaPSr545KRU30kR
         57wsI63hbL4mReeBa6wo4LR4L8mmt2euOvWUVn6jaa4RiD6X+Tz+SBegumj0mqY0uv9t
         +QqQyekJnl96169YR9wwUJfYa2YF0OGpd1Z6wutYWfKy9nZhpO7IZ3WsMXnCB3qQpJSh
         KIWLRmWXP1+6Y3GZTfZruGGWgy7Kwpf1qnrntpf+qn4Ca6aD0K/SKNN6ykWoZY7BgxQa
         SEVXxZSHPVBCJkkQ9xXW045LYay5TikqJPjb42rLwGRF2ACeihAvj897Xwj/BGQacf+R
         ru9g==
X-Forwarded-Encrypted: i=1; AJvYcCXPrQ5wY/YJrqPjxUSVgh78p6sqsKxG5gUlsO4AY9o7KotzTVu/M8DQywCb34OC8B2KeKX2OMJj2bNY@vger.kernel.org
X-Gm-Message-State: AOJu0YxgNd+jCmiVpxo3QH/Af3VUFpP0kUWH1/A4LnedJ8PTpyKEmjF1
	ZcNXPmkmz3sgab9dl8GAWoFpa2xO0CI8m0uOJ4v2bbECaO4C3R780TfKO90uV1g=
X-Gm-Gg: ASbGnct1T0mwwpmbiqMs4QLKJt5vNCRD/2UGz8YMOs4jekiy9f0AeknaIh2/ykywAm9
	kqR2LorknfKNX7FhkQ5AdYupg/4w3ieITt/4Ky45/XDUdS9z4R1O+13NNOR1DecVONLWYqYYSkM
	YAte6hIf37S6rE0QitoCVVavsmkADRddxsXN7/gb1lbk6E8sr7LIHhwK4KklJHFYYxXIsAxNK6L
	riRVixVLap6RFLLOKUCIsq5nU/KBSbVomwXN7nsf42TkiHTgDXg+OZqfx0Iyu50DsRhZTJyFF83
	mwOnuOkL37r21bkeAV1PAOev+rw9lX5HLwYvacsY24oeYj6vYMabUKF71THnD7Q8CW8ij9Qn4N9
	ZdRtImOsM/pM=
X-Google-Smtp-Source: AGHT+IGR/kzMV6Atudb0fRu185H6wdA1+X5asjv7gAZNnxUUZIM/KcLBLHgVDu+28V8mgpkJV6Xccw==
X-Received: by 2002:a05:600c:310c:b0:43b:c0fa:f9cd with SMTP id 5b1f17b1804b1-43db6227ac9mr3380065e9.7.1743182056212;
        Fri, 28 Mar 2025 10:14:16 -0700 (PDT)
Received: from localhost (p200300f65f14610400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f14:6104::1b9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d8ff042c8sm33411655e9.27.2025.03.28.10.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 10:14:15 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] ARM: dts: stm32: Add nvmem-cells to ethernet nodes for constant mac-addresses
Date: Fri, 28 Mar 2025 18:14:05 +0100
Message-ID: <20250328171406.3307778-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1643; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=BHpq2UbaF3kL6H8YXDTV3jWJ+lPDn0AShBL5PzMnA/s=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn5tjen6l7NAtT3+JrsCCThqn5k1qsVD1vc0M9Y ZVXM89Rdy2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ+bY3gAKCRCPgPtYfRL+ TvPRB/9KuR3rJQ0M41W3nqDBh5GaE52iNnZd3KKvvPv9z7cHHQyJwdW77AFGgNSv3keG14zGVSh nAHzmRdowRt1Fv163Ri4lOD0ZQnL/albfzfHGGROLZGh3oZBuL0i0maRccS66D8bgiBlBfDjRHg 3v3ENgAwKOizz1eaAS4zsVozyMRtX8NC90c1HgQmwEdL6kCE5QFbvcLSaq+9yUTv0pxa0uyJFBA yWEcssCDxRMk38qor1VgCbVh7P67TQtNg0RHohxrNulSGjG15Ca8O29fr4AGZHWvZg3qejOSO52 aMUKLoIqXEQ5DMJ5DpPflMnYGF52droNnFSzBVBd1q3/1nyV
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The efuse device tree description already has the two labels pointing to
the efuse nodes that specify the mac-addresses to be used. Wire them up
to the ethernet nodes. This is enough to make barebox pick the right
mac-addresses and pass them to Linux.

Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 arch/arm/boot/dts/st/stm32mp131.dtsi | 2 ++
 arch/arm/boot/dts/st/stm32mp133.dtsi | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp131.dtsi b/arch/arm/boot/dts/st/stm32mp131.dtsi
index 8512a6e46b33..9175ed77d769 100644
--- a/arch/arm/boot/dts/st/stm32mp131.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp131.dtsi
@@ -1609,6 +1609,8 @@ ethernet1: ethernet@5800a000 {
 				snps,axi-config = <&stmmac_axi_config_1>;
 				snps,tso;
 				access-controllers = <&etzpc 48>;
+				nvmem-cells = <&ethernet_mac1_address>;
+				nvmem-cell-names = "mac-address";
 				status = "disabled";
 
 				stmmac_axi_config_1: stmmac-axi-config {
diff --git a/arch/arm/boot/dts/st/stm32mp133.dtsi b/arch/arm/boot/dts/st/stm32mp133.dtsi
index 73e470019ce4..708c0af50bc4 100644
--- a/arch/arm/boot/dts/st/stm32mp133.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp133.dtsi
@@ -91,6 +91,8 @@ ethernet2: ethernet@5800e000 {
 		snps,axi-config = <&stmmac_axi_config_2>;
 		snps,tso;
 		access-controllers = <&etzpc 49>;
+		nvmem-cells = <&ethernet_mac2_address>;
+		nvmem-cell-names = "mac-address";
 		status = "disabled";
 
 		stmmac_axi_config_2: stmmac-axi-config {

base-commit: e21edb1638e82460f126a6e49bcdd958d452929c
-- 
2.47.1


