Return-Path: <devicetree+bounces-108878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F777994296
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:48:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04F1E1F2236B
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 08:48:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 852051DE8BB;
	Tue,  8 Oct 2024 08:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="i23fUmGP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136247DA76
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 08:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728375657; cv=none; b=rJP4pBjVj8cG3LORCKXiYtlxb2MGB+EpJR8cVfdsrRxBPM36acG9REQuqffMK/hoG6lMiEwzuFnrYyM0B/m1IjocEEO+JjDMPTACoANSXWSpCou/J/gEVT2FARZ3iCMxGQ5H8zoTBToR+GbMTbOQxV/lSRVhBkpZgYuRAT+1QVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728375657; c=relaxed/simple;
	bh=wfiE7qRSuZ7XkWPlS2rY8eBbtt9KomC4BJ9a9D0fvjo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VZNflK/AcZvE12Bbj97zpTy9DZw9KivKVQFzJXmb6PHfYbxKgetzim+b00jNWq7PVVAuYBpwNmjDovCsJlUZ5m/Z7mR0Nj20lOl+1G726N0Z8QiPAwJHsjEUhzQOO+yqdp1sYjhURa3mKokA86oTsxTOcxWjJSzaAQ4/KzHmvF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=i23fUmGP; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-718e9c8bd83so4002384b3a.1
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 01:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728375655; x=1728980455; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wxe7XEN1LHMGd0Oyi47FAyf7OZba3eA58SL3i+FereE=;
        b=i23fUmGPWhmAABiuydxSfk3WCjj6BRHsjVBs8UZQ/aEC+1fPpRnENcxHUYCO34PBHX
         k6NvOfnLTwdrZtY+DaRg+xTp8MByIKwOOpXtHE2dP4te0BZj/YtO/MYi24EGmNrXTLvN
         Lp7+SiyyvwGjr59ZJRaEyLoXTQe9uwM5G3nbk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728375655; x=1728980455;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wxe7XEN1LHMGd0Oyi47FAyf7OZba3eA58SL3i+FereE=;
        b=DQdq1gT5lr2pFCJX+FlWFLv7iALjUEc5r9gKfmpuSWAHmvLaK288l45DIm03oEMqme
         7rSJo4aTVNdMghZ+iuLLHJqylWbMvgVMrWClcujeLaJko5/DmleWJrxKPUyWq9FhiQcF
         vtiG5cwULun3jMEt9w5SDYXi0Ggq9ADEDSZ3b/9yhPl9CAVRmgDqtkjJXU+xl9JZD7sf
         FURVl5mjqaWH2ENWOKahI6MSpFouybp6yQh98k3OktuH6gUzHHeDXXRnnu/rN7E7zz1S
         exM04xy0DnnAg42s81eXRIPcpPSQnFCsBfHfA2nyTj5xsXK/yg22c94hSKchB1QHJKQ9
         3Z2A==
X-Forwarded-Encrypted: i=1; AJvYcCVny6hbnJS+SGCJtEAVmK0Hr0b5YM/Qu3qDIzcPVlfhlQ7znWbsWuMdBymS7Ie2WeDdIvusNG7ytp16@vger.kernel.org
X-Gm-Message-State: AOJu0Yz50C/+TwzEqMXf+CtMi9G/Mt6X9oZcQwgpHZz6mlkhOetwrATg
	Y6EWGPtkD8DwLTy8jiDgOyGZ0Sh0kxpk0euTmDr6A6BafTSYrqN9n6qhRVAAibw1/pbrrSOk+x8
	=
X-Google-Smtp-Source: AGHT+IFJm0IcwI0CWnxra5LbX1O3mroQEd3t+K9JaisETjqWwQD9tUxGolk9e7WrRGrqYhb2Ata5Fw==
X-Received: by 2002:a05:6a20:258a:b0:1d4:fb97:41b9 with SMTP id adf61e73a8af0-1d707459d68mr3493318637.22.1728375655445;
        Tue, 08 Oct 2024 01:20:55 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:10df:d27e:8d4b:6740])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0cd0ad2sm5672184b3a.63.2024.10.08.01.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 01:20:55 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8173-elm-hana: Add vdd-supply to second source trackpad
Date: Tue,  8 Oct 2024 16:20:49 +0800
Message-ID: <20241008082051.4002438-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.rc0.187.ge670bccf7e-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Hana device has a second source option trackpad, but it is missing
its regulator supply. It only works because the regulator is marked as
always-on.

Add the regulator supply, and the required post-power-on delay.

Fixes: 689b937bedde ("arm64: dts: mediatek: add mt8173 elm and hana board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
index 8d1cbc92bce3..e03474702cad 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
@@ -49,6 +49,12 @@ trackpad2: trackpad@2c {
 		interrupts-extended = <&pio 117 IRQ_TYPE_LEVEL_LOW>;
 		reg = <0x2c>;
 		hid-descr-addr = <0x0020>;
+		/*
+		 * The supply is always on. Adding the delay here
+		 * needlessly delays the readiness of the trackpad.
+		 */
+		/* post-power-on-delay-ms = <100>; */
+		vdd-supply = <&mt6397_vgp6_reg>;
 		wakeup-source;
 	};
 };
-- 
2.47.0.rc0.187.ge670bccf7e-goog


