Return-Path: <devicetree+bounces-128617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 247AA9E9246
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:30:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 891011881C00
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B4C21D003;
	Mon,  9 Dec 2024 11:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PyoGv5+T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFE721D005
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 11:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733743769; cv=none; b=RTKHScFdzeZysOl8RwDCXJHNcrj5u/PX4JRcpENz3CjggqK5j72HqXu83/Z3hsjT53B9UAb0CghiWQyoLrYsixHQ/8W26LtuP33UpXkw6PnQ6LccErxoHuxzvRsYUc3QD+D08JCNdUl1mVik1nr2t8XLt/FbIZ5tCM8vidbimwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733743769; c=relaxed/simple;
	bh=q9UzK737UNSpv0in/GRb9dREm01JbWxa3EvvcBVr0OU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MofVBh9Esqg4BVIA80v9LBgl9xmpPf4+ouGifehcnbbJRc+82lw8NIXFARDftiRq0NaL3xWSN/CPjRYtNLLmtlMIrmKczXDLf0sQKZNU4Uqa2mO6VgEtQwW5biYu1YZbU6ZLhAId5mxMjnoMVAAXXqWtvp00KlLwofKAZidGgN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PyoGv5+T; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5d3c0bd1cc4so240610a12.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 03:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733743764; x=1734348564; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZaKRkQ++zE9MSO9ISV6gYj3UsACoYvIwFoqWZLd5Wt8=;
        b=PyoGv5+TK6C/rNw2t5XT2pf9d5fCDBPUZnKSg5j4N6uyZgH2AAwxpKOzV6St+QjkLT
         yamVmz7VPGhB6vVJxKjjz6uc8o4J0Zh96l7Axf2Ahx/q8TmLf0/jK2Wqgy+mDKexHLZc
         AznXAUcxfiiCITaEh8zvBoeRft5jdatQSAqJTRgMhBl+rH1v3PO5mnew3P6zvtQzQEvM
         hu51yrjOCMR1SPnJASiUz3vUh+Eh3iTQIJYqnfeHywU8H4B+h8EslftFnh6AS3yWKsLg
         iITwjQ3MOKAzqanoVswmbmiYfW07HThdhTsF7DwM8EeKpezoGsYINLri/uBPrlEHN7+4
         wxzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733743764; x=1734348564;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZaKRkQ++zE9MSO9ISV6gYj3UsACoYvIwFoqWZLd5Wt8=;
        b=m4mT5c/gsj1mujh2Othup4Y8d09PAA5B8i3Ob3rJzS12xljCnDGpyQG6z0oBr9INc8
         +dUxpZlvlzQRaam2Cs4wZdDFFXDzIICZqM0e3dtZmFqWoi1rx2mzRyLZ1ewKsE3kQpwt
         m+ASsKQ7Cm4Vt2/mNN9rLPEkPREFhran5VQO8rME0fdw8bDG1zb0oMhswT34cGaZxggS
         1YzdQAg2NzHMMczrWl1L2eDacyeNuskJzDddUeNK8+kOdTZ6efTiJPuNHvtGRZCeVKvN
         nRFJ3FlU4ymhakBhH+p7PLcyyB00n2EpMWFddgOsUEoQgrTY+nUGeBeY5jkIshVDEH13
         0vZA==
X-Forwarded-Encrypted: i=1; AJvYcCWFhMqBybnurWcoNNuqXXp8kAJmQ4JIVZk+j0i0CKWCnqgQZTVxNYzxvpsfTZRkBqedG+7QHgUt+lj6@vger.kernel.org
X-Gm-Message-State: AOJu0YxcqCwwTSFgAHH4OG9zW1K2qTVE2Res4PVeZIcG21ac7VUYQ4DW
	ER0FTmPwe4/evGxWiSHJK4WmIpBFkNh/8n+KEnql1uJYhpbLFKEwPyGJnIL+JOY=
X-Gm-Gg: ASbGncvWEn5GC4AAX3AnvI2lrqSGzCUt9vgOWFvSH0S9HYL2vzf7hEFeK4CRTE7fQah
	bKoaDwPIBi0bsZxXrppxloyJ/aZma+GRqatXPnRpo4eIdEFWZX4apwLjQMdnDojTu1zDm2Tun0+
	/FFW2annxDYQb5ImH1+TpeS2QcAAgnCaLZiBjSwSaR7726nlPmbymT0xOheHl7rGhcFg3gnPBS5
	AFcjWr9gGJN3x+chRzQpclChC+JqgY4Swvd2AubnjGO8duS4Dj8eZ3J0LR6BrQNrSW/
X-Google-Smtp-Source: AGHT+IEnfZKzpVPLUq5YoVunalUaONsSympM3QhF2go/NVblXkK0DCFFX68Kg5WtSW1gpOjQLKqhQA==
X-Received: by 2002:a05:6402:43cc:b0:5d3:efcf:f163 with SMTP id 4fb4d7f45d1cf-5d3efcff680mr1894926a12.11.1733743764583;
        Mon, 09 Dec 2024 03:29:24 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d14c7aaa09sm5976741a12.80.2024.12.09.03.29.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 03:29:23 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Chen-Yu Tsai <wenst@chromium.org>
Subject: [RESEND PATCH] arm64: dts: mediatek: mt8183-kukui: align thermal node names with bindings
Date: Mon,  9 Dec 2024 12:29:20 +0100
Message-ID: <20241209112920.70060-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect thermal zones node name to follow certain pattern.
This fixes dtbs_check warning:

  mt8183-kukui-jacuzzi-burnet.dtb: thermal-zones: 'tboard1', 'tboard2'
    do not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,10}-thermal$', 'pinctrl-[0-9]+'

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Sent in July, then Chen-Yu pinged in October. Can you apply it?
https://lore.kernel.org/all/CAGXv+5HSZfr14K1sGky4g9Sik987DAisH7KTZn9v_svOwF+y6A@mail.gmail.com/
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 4b974bb781b1..2828f34949ae 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -944,13 +944,13 @@ &ssusb {
 };
 
 &thermal_zones {
-	tboard1 {
+	tboard1-thermal {
 		polling-delay = <1000>; /* milliseconds */
 		polling-delay-passive = <0>; /* milliseconds */
 		thermal-sensors = <&tboard_thermistor1>;
 	};
 
-	tboard2 {
+	tboard2-thermal {
 		polling-delay = <1000>; /* milliseconds */
 		polling-delay-passive = <0>; /* milliseconds */
 		thermal-sensors = <&tboard_thermistor2>;
-- 
2.43.0


