Return-Path: <devicetree+bounces-250882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C5CCECC93
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 04:44:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2B447302C23C
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 03:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4F4F252292;
	Thu,  1 Jan 2026 03:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="fgWqE3/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0B926D4F9
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 03:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767239016; cv=none; b=ez3xcXoRm79IbnZNKsc14d/hkKO8IetvZFgpNtl+FFew2lzBbD9qWZ/OW/p24f0576aRw4EDRXmTbJZ+nwlWNGiwGJNusbNqY3AzhaqqBm2jf+dW3sjahUiNq8xasIxpJtrZYyD8D65IEwiNRHcTrJwcvdNOnY8LD0VKKJq04ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767239016; c=relaxed/simple;
	bh=G6Z9aGZxulzhXBt9sNrBV7y8egKdBs2K2ln9xh4+yUQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RhEzOWDszYMt6qvqt4SyRLDzo81+yLJLWdQCNg6KugAnNVoKwZqYO/1CpIgLv3gbUhKJSlaph2efudjOS/W3oNS0wipPbWDwpzYhdifKaqr+XhlbtKTFED3Z2dC10qFe/DgU/jkmMJcNK00Tg/f+7LlHyVrb5VnbFpAxwsbaHjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=fgWqE3/k; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-29f1bc40b35so196703685ad.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 19:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767239014; x=1767843814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/KI+UGanmxYGqAKse2EbXibaUExpozwdVeK25/oicMI=;
        b=fgWqE3/kVObvwtDtRwE3tNfvQ7VtZQURdsQjeNvJU5xuOKFTkKOg+566sAigXLDFmi
         P2NqNjPIGK7lO4xzMMKsR28WoWXeBOoO3mIwOlevhJWxfkrm1vQL95uOCRTEmBTgdcL/
         uWUU8GF0/fFmcuDuinhw7X93fjMZgjeD1ANEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767239014; x=1767843814;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/KI+UGanmxYGqAKse2EbXibaUExpozwdVeK25/oicMI=;
        b=Rk+77TsUhqrWQiw/j6FaqfeclfVC2GLp0SlMpn0u5EbQDyGQLJU8uP6jIkYdZ7C7FU
         Bz2ratitgd0u0tJgbv0cs/xzwrlSqkMPVDcMoFWeHJc5mlziyyuf32Au+G/jFlFukxvR
         HQpzk82za2tQo4Su6akXO+jjHxRvWPOX79aSGNIOwQ+X/BsUjxmcSeQVRE71qRBRkrz4
         f/8hkEjBnCrk8/weVTauSsrv7D90uQnePPZGTzAirrEsHMDpFROBspWM5KsaCGDDEzCn
         zayQgVZGokOa5jtOLWBKpz+ZP3+XueQ3OWLKHyN63MRoS+rxCH0gtBkPmPC3pPylopIO
         r9HQ==
X-Gm-Message-State: AOJu0Yw3kog81jWGwtWf2sgn5jQ1ONKnl+Ydjjh8uNcYCFkbK7Qnzqx+
	sKftQO7uftEtTsRcZ4M8VXWcw+nWRA0c5oLRMTwRPl2fQ2TSYvKFcxwDIgMiQFlPUTI=
X-Gm-Gg: AY/fxX4urZg1ObojwBsRHECN67yzi7FjXeJTWlTjetVvI5zXA+ts5rCmAqwsgYWLcPn
	QRu+f2PrJiwvkpeeeOMmoMM90YdpHE0WbzfPloiEc+F5z+AA9q0rLvQ8vZ0N0xZoFY0xM1+tb3N
	Au2TP5OY3I3w6Yjciokl9UqNBQQL3iKBblok4nZbFxs+mcV3XxWqlTP+VeGcGkZl/zb5iSPvRt9
	SZAW7Lo++F7SJjLVdvwVchSdKabkUf/W+hiASWITGQjLTMtkRUPAUoheN6C8R+pGn3q3xYF/rWM
	zp8lHKYNkJiCLwitZXn0Cq8t8QXHQaZL12+qDtk7mM5f57IxlbwJX5OPoJKzFPg7kYqJbZQ8Rr5
	P4gNzqnINMD1kAmZ66OvZh7lJIoy2BSoN1d6ckS7n7d0nw+etEZQmH3nrnCi0ee2gCAJl83oMaV
	1DER9uDrIXpNk8raQx2G2hsWecwxkYXHHn6t8mrRQDNIKn5o7addhD
X-Google-Smtp-Source: AGHT+IFP/Po4KbsYeJgW+vqwUnVd6wIylfBCZgy7LIUD5OSHe88aJPgScWN7w+I9m/BZkSpnQJSIYg==
X-Received: by 2002:a17:902:e747:b0:2a0:b02b:2114 with SMTP id d9443c01a7336-2a2f220697cmr371104935ad.11.1767239014441;
        Wed, 31 Dec 2025 19:43:34 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3c8286esm340437965ad.33.2025.12.31.19.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 19:43:34 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 3/8] arm: dts: mstar: breadbee: Correct LED names
Date: Thu,  1 Jan 2026 12:43:01 +0900
Message-ID: <20260101034306.1233091-4-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260101034306.1233091-1-daniel@0x0f.com>
References: <20260101034306.1233091-1-daniel@0x0f.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The dt validation stuff whats the names of the leds to match
a regexp.

Prefix the names with "led-" to make the validation happy.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi b/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
index 99f5a5603dc7..71da10d9228f 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
+++ b/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
@@ -33,11 +33,11 @@ vcc_io: regulator-io {
 
 	leds {
 		compatible = "gpio-leds";
-		red {
+		led-red {
 			gpios = <&gpio MSC313_GPIO_SR_IO16 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "activity";
 		};
-		yellow {
+		led-yellow {
 			gpios = <&gpio MSC313_GPIO_SR_IO17 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
-- 
2.51.0


