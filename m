Return-Path: <devicetree+bounces-250122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAEDCE6594
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:12:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7AA1030039EF
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F579284B25;
	Mon, 29 Dec 2025 10:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jpm15/Ex"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB513212F98
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767003153; cv=none; b=ie5VMTuCXkD09CV6GDvYL/R2haVDVN/56nh5yqYa0Nkc8JHd9JBlfk9C97ey2q5WofacqtEZjTRFJvgcCwYRDMiAsGeow2XiA3X45rEREJSa00ehMKw0jCbkcmifuYsg60KWT5rBR5MYUxZyH6GyblINw362K1OyECGcouSICD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767003153; c=relaxed/simple;
	bh=kYAQqntJ0UXrsY5dbZYI5NCwHltAh46+MWIeaf74zUc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jt7OWTVSZX32zECJ8LCjTPpLsapz4sdWEdIbR0ZYhbk/fe6w1EhaOFDNtOigRoFMIoLQEHzUfxrPMvYmufmCPuQVZg63ppzZM0YpUFbxYJgGZLZUIjMAtZVoZGgXIDXhf+e94V+a503vg7HdR7AVBV3aznVrjfjVp9RuSO9wWRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jpm15/Ex; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42fbc305882so4213520f8f.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 02:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003150; x=1767607950; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LYrFpC2ukouvpetm9VHioumxJHutUQ8FiBmLFt+Ed7o=;
        b=jpm15/ExHtqVe3BP6q83RUrLhL34WvoKFYnr9OQ5uu/WzlTL+YVYlzScowFaGYOBgd
         bmlAhMFgxmJP6hlLfTfLWFNB074S5U8OUiknUG2ug7Xh3+1TiFU4pKLoRC7UjEpGUGxD
         EI9afLifag23fJDqeJ42MHUQZK+mfu6Df/a3psxU7+cK7R662PCdIFNx9pquCiQYV7BT
         ZKkJRBDvobxfyGbDvQ7jKdR1DETYq0dD4IG/UPq2NVhwh1+f8eFeIbzSW0BeNnCL6t6e
         hnwKPTAk4zI9ApkjrXDOx82bEc2ZKu3qtmD64E+i/ziARge1oEg73kXXx/ADaWjec+z/
         +e4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003150; x=1767607950;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LYrFpC2ukouvpetm9VHioumxJHutUQ8FiBmLFt+Ed7o=;
        b=N1WwwtZkWGZCZGes5GTk7E0zoXrKTxXpEAL1+P31A6kRJdP8Vzjl9HaKHS9R3P0L9p
         D+gCrg9JvBixq08i4aNdeIQ+62IWy+Ifj0ekO1yZSgLjDl9K/V8Z0QJ+JJAxpjLcH6x4
         FOukE35QVgV6aAPLhqawD/qSPChKoec7cLKYj+1UXGL2LG3hy/DJvEuVZMZM4HGzC4b8
         xAMtb7Do53AnD2lCoil77W4gM8jWf8e2D5f1AnLr6OlyP3mnL8ciaIvarz4opI44kbin
         VPwiFCwiO2xrQL2F2dQRbPsB9mdbUkDBNlFlGTZ79ZZK8lMaiOjeknsBR+cb8hVIAlEm
         xYtQ==
X-Gm-Message-State: AOJu0YxteF8nM8r6CUEpOttaTcNlngT++sdiR4Not6XqvkdtRZzZrQqV
	BMetleZ999UZLIzbwuWghEHWwEi0q+FCd1FdAihglm8XV96PrdU7OA8V
X-Gm-Gg: AY/fxX6NnbVOEYF1uNZ7cVQfsYeFaUfWp+SM/tIAKqkvDWvnvKmyGbyQwYrP7nhxpTt
	4UCCV1TWMzwk6VXB7aUkkRx2SzOJzyP3FvTmpfEg1J86/dp5aRGqheGJfL/sIoNbcZLjjI4v8iJ
	UKYlQYME2MXPUSB278jGKdkymMnqMcemaCeWndEbkyxFufhKiCJ8XkXeTaUCEgUkmTZSZJ09yb6
	L/OK1qhnXiiJUOCBQ+3JzMZjSkQ8O7gNf/+G99kN2ekMpmuTKTnfTTXx4JyJfsKgBg8m7EzsjKX
	BXv9S0WBN2M9uoQ/vA68MiGhhgNBwHHUmMpT2oOTI3Y73WrtAi9H+V4M7gPdOyNQKUqTwPOyYW/
	3sy26aKbClnU//MNkqRLsb9chMF7SPHKWUVQKWm50VitmH0cKA6euD5a99h50tqE6A70b9l3kCw
	9U4YhqkOcJNWyk9YzISRwobAnvbRpb5fCct+VUkbaWY3iOIInsNyGhjLCtnycc
X-Google-Smtp-Source: AGHT+IEK9wJeAIDWOF3Sw54bLCDElC2BlMNbmR+47Ws5pcx9oZ1NKI4nDjnxIV8nnoav+VbJjIoLzg==
X-Received: by 2002:a05:600c:4fc6:b0:477:333a:f71f with SMTP id 5b1f17b1804b1-47d19576cc6mr336403925e9.17.1767003150205;
        Mon, 29 Dec 2025 02:12:30 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:29 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Dec 2025 14:12:01 +0400
Subject: [PATCH 4/7] arm64: dts: rockchip: Enable HDMI sound on
 FriendlyElec NanoPi M5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251229-rk3576-sound-v1-4-2f59ef0d19b1@gmail.com>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
In-Reply-To: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=891; i=alchark@gmail.com;
 h=from:subject:message-id; bh=kYAQqntJ0UXrsY5dbZYI5NCwHltAh46+MWIeaf74zUc=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTAlrL/HlxIvv+jr7lvJ6773vVpr/2ThZIYjM+9s/
 XJ+6UI2nY6JLAxiXAyWYoosc78tsZ1qxDdrl4fHV5g5rEwgQ6RFGhiAgIWBLzcxr9RIx0jPVNtQ
 z9BQx1jHiIGLUwCm2juN4b/jkmzbDSE/oq9PjZ77zbU6Rqh7/6vawM0xW5/Vbf6oa3yU4X/kcqU
 536sfbnz5+fDF2za/l2ttj20WcsxqOVzRlXe3rIgTAA==
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

All RK3576 boards get their HDMI sound from SAI6, which is internally
connected to the HDMI codec. Enable this for FriendlyElec NanoPi M5.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index f350e96de1f0..41d352994892 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -326,6 +326,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &hdptxphy {
 	status = "okay";
 };
@@ -852,6 +856,10 @@ &sai2 {
 	status = "okay";
 };
 
+&sai6 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";

-- 
2.51.2


