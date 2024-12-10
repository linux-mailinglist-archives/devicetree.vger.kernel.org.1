Return-Path: <devicetree+bounces-129155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A79789EABE8
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:26:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A19EA18872C6
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 09:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9D7B233D96;
	Tue, 10 Dec 2024 09:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GHSfJMK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51010233D70
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733822781; cv=none; b=I0N3vtcwkdVDA1lj9TjDBt+sdoNYAIvmwxeNvsqK1l6CYtOszRI7/e7OdiIDXPQIwDGqTIwCCzkGIvQkorrCCN/w92C2EMrxdy2JMUzgUejglSu7z1I/HRQn5jGzKc0mKntajiW2FTnYVo4c4N4rzOqMP0NjlqKf2G6TQqJkcgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733822781; c=relaxed/simple;
	bh=dRt7jwAWsviDNd6yFNvQ++iSH09jta3gIXgiARPB+Lc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jyhS8+Yi/PYHtEHzMf/1A1H0anstXR9BgXC62l4ULI3MNPe+paWZizk75U/jzdmkCjc9Pq7KWBQkEr6B4tOBL8V75ErBbwoPV5kGuJyFmgfQBu1iqB+K3X1qZhXKmRnINwvxV6urwndWv3C3vVlupPqTwPlh17aG3jhKZpVOoEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=GHSfJMK/; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-7fcfb7db9bfso4074442a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 01:26:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733822779; x=1734427579; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kGRD0hSRVjDln2H041utB2MSY4gQ8R47O9Y5WYRUCMw=;
        b=GHSfJMK/mrAM1hUtA65ZWSI8HSF5zGWkiN7WqFPy2QxG8KasyP8bcEpPWRhjK5JkOw
         5hTx/FYMoqGi9VAuwFWEmD7i6jPeUMnrSvmuZFIIX6PIg8jL51Xj2NX9MA1rDK7YIwAg
         8de1kdXFREsareyb590jXGwRrRHS4SR97sIOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733822779; x=1734427579;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kGRD0hSRVjDln2H041utB2MSY4gQ8R47O9Y5WYRUCMw=;
        b=qKUPZxNMqbxE+rpR8XIABZQx6Xs46RADNrpWsH/+n1+XE9Ibc4+3udfDAU2+9P/NWo
         D7BwqEyHMd2N2oORbwJb3yPaueNCcySG1KJbv12I5lvq0lRu5DbLn1i95TFdpynE1OYy
         Ujs34M4L779QuafznPXos2EGZldUZDWpVzU/Bgjm+9Iw7nAI8n6RWr2PbcK7fndMQlkL
         vYKroczVdBA73AR9yWJwNgo7P49LVzt0BZE48YEUuc7jxc5Rbro6QhvEtsvPQ8YTj1Bu
         NIaEirCoPADm1Cwm1IZGWyHgvwmagbghWSAjdkaZugXuokL4lrpZzJEKV20+3+KbUCW6
         xcxg==
X-Forwarded-Encrypted: i=1; AJvYcCW+axlaX0s23RTfQhZN1pMmqlTFcCOukL21Qk2zDOP/DFo39SqaGArKMUmtCowCqAlfNBoutjEwuxKb@vger.kernel.org
X-Gm-Message-State: AOJu0YzoadrcfD1c8JTWLDv+6i5N3dn+g20ZXkBw7kcCH0cmpS2l+/Ny
	Z9vAG1i2HlHLuD+wiYEoM6aCHFNZw3l5nmZpMp3DFMGl7tu5ZMN9/bESrr3q8g==
X-Gm-Gg: ASbGncujTeJKSsq6vf8BCD72sOplCPhXlsVrYerNGnw6lMbJEy55mX7m6yN+MItqfha
	jkjlw2//Rw+gTp7ZAphcm6KvyrX3FnzhVZ5UmsRusdsKIIX7RM+3L9SF8yFJdlKLUYuZ7jVnx+c
	LOQhUcUKVYKLY17x4qxNOp/R8LlicYw29fHKH3u/A+14Ibi5WMsPsx3sLF7oVVYHitbjdD9cJfU
	9cuWd3ZFYG4dTGDhGNowfrmxftChKOkKFe/EJFY4g5sBi5qEgAJISiXS11KAF2mQkUJBlEV
X-Google-Smtp-Source: AGHT+IFppVkXUZtU5Ti/lKVHNrZcFZH/mEntPtAhtpRBAEfq5xqQx4M1XdryOoDpDNSLeE8I2hMSbw==
X-Received: by 2002:a17:902:ce88:b0:215:a97a:c6bb with SMTP id d9443c01a7336-21669fca850mr59408385ad.12.1733822779591;
        Tue, 10 Dec 2024 01:26:19 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:89ce:2db9:f7d5:156d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21632c4fc62sm49006905ad.194.2024.12.10.01.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 01:26:19 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: mediatek: mt8173-elm: Fix MT6397 PMIC sub-node names
Date: Tue, 10 Dec 2024 17:26:12 +0800
Message-ID: <20241210092614.3951748-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MT6397 PMIC bindings specify exact names for its sub-nodes. The
names used in the current dts don't match, causing a validation error.

Fix up the names. Also drop the label for the regulators node, since
any reference should be against the individual regulator sub-nodes.

Fixes: 689b937bedde ("arm64: dts: mediatek: add mt8173 elm and hana board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index b91072f4723f..b5d4b5baf478 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -931,7 +931,7 @@ pmic: pmic {
 		interrupt-controller;
 		#interrupt-cells = <2>;
 
-		clock: mt6397clock {
+		clock: clocks {
 			compatible = "mediatek,mt6397-clk";
 			#clock-cells = <1>;
 		};
@@ -942,7 +942,7 @@ pio6397: pinctrl {
 			#gpio-cells = <2>;
 		};
 
-		regulator: mt6397regulator {
+		regulators {
 			compatible = "mediatek,mt6397-regulator";
 
 			mt6397_vpca15_reg: buck_vpca15 {
@@ -1108,7 +1108,7 @@ mt6397_vibr_reg: ldo_vibr {
 			};
 		};
 
-		rtc: mt6397rtc {
+		rtc: rtc {
 			compatible = "mediatek,mt6397-rtc";
 		};
 	};
-- 
2.47.0.338.g60cca15819-goog


