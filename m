Return-Path: <devicetree+bounces-219711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 89004B8DCB1
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 15:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BB5C189DAA4
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 13:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F6162D5426;
	Sun, 21 Sep 2025 13:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nl+8CUK1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0115F258CF7
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758463041; cv=none; b=pk3Wi0rm1G4SSGCP5oAvHp2JeTi5OsT+w/maiWWkYwALl43jbeYzSB7OksNz9yS4zYR/1dAB7ssYJXXBSwgV0nvHoJOrAB3DmESdYbafvY5sTcrpgh4p7p4pU2iEA9urgpwIt53w2zBCjU+7PM/LLKayNOAqeb5QMqsEV0Ntruo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758463041; c=relaxed/simple;
	bh=fHlIY9+uhSJm0tDafJHi34eihV/XQEMibtOTvhxc7No=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=DnZKbts0VSKJI+GjCxSwzDC2r8i0hP6s9b1yGlmWTPjL4d/wOaklYso+Juv6BIXGwDsalxKz34tr/KqVHEpgIUq+WdiTowNBxvdCQnoFATc0pQVM6EMXWM7XRNAlfGlu/Z8b6nfL9aSjbI+lCOmxTNml2AGtTinNo0F4VYq4dng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nl+8CUK1; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b5506b28c98so2079325a12.1
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 06:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758463039; x=1759067839; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JwKtMMVVH553vWqd1jOUT4NC0ABE2UrFAfCYIBs6Ut0=;
        b=nl+8CUK1Q/W8QCa9kKIneYcG7oMgpKPCZUAg2/zEbrIhBE3WTB7O0UkYaw7GIlZLlu
         LrMvIadvWfGQZ2aGQkAVNW7GpTSzHJZfkUXHfbhvDGW81ixdX8N0W6453Bra5tfAlcAb
         yJKtmQ8StMtFwHaPKHp425x0IFFeljHtFq3hM/5siu2ZxTs3riDaOdw+UfIpGUfk1bIs
         ffyet5vEY8TqEGywUNPwzRMDinFu/wSkSkw4XFyWbgNT2m2aU6nenmS9pJ9aMCcU5X7L
         x4cnXNp/H3HKDGX7Cu+edqoYM9HTyeUQtf+yy3cDfBiTzphsuqhKvsHErbf3ZbepXTyf
         OlMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758463039; x=1759067839;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JwKtMMVVH553vWqd1jOUT4NC0ABE2UrFAfCYIBs6Ut0=;
        b=FzinRJnr8uCD87J6pOHW4id1vyaqwhP8tHwQwHjhfe1E4LkJ2aKXv9VntAJDs4Fz+L
         3jyoHRvnslLRbo3gaMrTMFaeTNBYWWmqXOCx2ZfUun1vIHxaBEaTd+lejNQFQZeOE6F9
         ZhnfcragdwhwO/PqUqRr8m512m5cTGFA2n6dWXZJUJoLJIt+ZggYPQ6JGW0UloWANS8b
         24W/L54nY13eFNlvDPbqQd9SueZhppZC7ab3fDl67+D1n4SK/wZB08Q6XzoecwuORAp8
         2CoVLIGMPPoQRykNkGBPCGxQbVoN98Hygr/PfROD4BKzUSjpeijuM35wA3nMlHuYS+0w
         IIsQ==
X-Gm-Message-State: AOJu0Yw4bDdjmMmPmdyoUZSvhg8OS9754BFHZz3ODxpEyyodmv/E3VPB
	pLGJvX8VzWe4h2hxn3RqUZpwx4mmNzGlA77OnpJ6IcQn+vJzbKl/C+yQ
X-Gm-Gg: ASbGncuWxunMbZ5K+QP7fj3gNYxl7jWBm53N6WqcgpvtDJytqTWKZajB05TD5nginTL
	yga+UtKe6ctG6VQfTMvQZY3i17t9yUYinC32+HNLh6l4Cutx5/8e/U/RZ55e5/4gfNqKy7MJmvl
	+a8HZZvMnomK2ElZJLO+RoVWokTwc96qGTfqvz3YKAeXWjgJbcu6mF39q/333EM8jDafoRw5njY
	qzIscrezEtfOBSSporGuIvwMDEcA2GzuKbKZHkff7271PNI2m7IeiaTdffOcVntOx9JfqCrqd4S
	J17a8/jzjqfL9DL/Nlqiv/BgujM0UFuY0iBaf7hU7GQfYr/LLqDV5hKAflLBZ70XUmiiUYlch5Y
	z9iWxHOpAt1ZQrRvxKoZX
X-Google-Smtp-Source: AGHT+IGDsKBY3ozuTuBIgDdeQzOEwOHka23t+GrkUMG+515i/Pq9duddouEA6yTXxYZi6jjJjuHSBw==
X-Received: by 2002:a17:903:4b04:b0:235:ed02:288b with SMTP id d9443c01a7336-269ba5167bemr111498925ad.30.1758463039263;
        Sun, 21 Sep 2025 06:57:19 -0700 (PDT)
Received: from archlinux ([191.193.70.152])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269802df74asm106105725ad.94.2025.09.21.06.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 06:57:18 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sm8250-samsung-common: correct reserved pins
Date: Sun, 21 Sep 2025 13:56:23 +0000
Message-ID: <20250921135623.273662-1-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The S20 series has additional reserved pins for the fingerprint sensor,
GPIO 20-23. Correct it by adding them into gpio-reserved-ranges.

Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
 arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi b/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
index 96662bf9e527..1680be67e733 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
@@ -159,7 +159,8 @@ &pon_resin {
 };
 
 &tlmm {
-	gpio-reserved-ranges = <40 4>; /* I2C (Unused) */
+	gpio-reserved-ranges = <20 4>, /* SPI (Fingerprint scanner) */
+						   <40 4>; /* I2C (Unused) */
 };
 
 &usb_1 {
-- 
2.51.0


