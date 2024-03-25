Return-Path: <devicetree+bounces-53082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E478788AD9C
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 19:19:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A060B2E1CBF
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 18:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01D8F6E605;
	Mon, 25 Mar 2024 17:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M2v/XkZi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3918C5A0F5
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 17:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711389104; cv=none; b=Hxlzkg563Pl+EgvquHhbsDoMsbSPQl9C9aMJmLlmzZqN3UZmRsHTQFWG/Suv05gmjm/BopdBP/fzaWoLEAdAMdLk3jjlnDsu0RmxPuVqViHnNEEuPWpjEDeWaygPj+GK50a9BwAe6e/E6kWc0gBfuRMeW/dOJOovsIbF21g70RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711389104; c=relaxed/simple;
	bh=X9oHuIrfbx5cF//0n3nlFLl79keOIuvZOkymOC8OTHo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Z8XFy4Xwt4aaeM1v/72eh8Hh8bM8/wW0OqxDFCpkFkK/6u1/cYF9Jso3g9RjOHunFECHulyhxdjNN4Oc4EGWO6sPzl/EngO9mu9p2IoSi89xqukHCUhm557M6Sb6cWQ/oDr43ST0YE57Hvc3VfXTKmhcx1mlUvAW+UlpYppUIuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M2v/XkZi; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3c390030af2so3380698b6e.3
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711389101; x=1711993901; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4iEjZp14Ze75HGg5CLvY1SvFiZY0bmm5mEpNFtWs9I8=;
        b=M2v/XkZienCl3LyruSfsRcM5LuwNOuy7m6b2afU5r1xtB8j0Mam2GjWr4bWvbH0+4c
         2cWJCsRyaLIqoQvvj5SlaVWsiKv46e4sVN+Z4k6yWxhZcLG314RXBqWiM+nFNOkAWtJD
         OsVh8WsJE6FR4KSmmiv8Zs1T+331YmYa7cHQB30GGq/Tj3TdwFaYL6TGh4pb6gH5GDLO
         CRn5M8kj1LFgyVe91g8Kd73gDNVSdBRUzaYwT6rXFLoCLcSRLyzqnD5fohUeYvxHmrfj
         oLqL1ZWnHdtajvDvvxaTBMvkrtkiTST0l1bO2Ylvrz+63EM7k6I+Q+50zth0p5BlJlqA
         ii3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711389101; x=1711993901;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4iEjZp14Ze75HGg5CLvY1SvFiZY0bmm5mEpNFtWs9I8=;
        b=FhFzs7tIbl1TDvxjH8GBJLhsPerU6yY1Yo4m9+WYk8e4f9Mr2hu75+xv+lAV7tgxSM
         fan3Ao9U8zm4LWlLmJvUzoAYUsmDYYMy3VArA6Dw0mtgew9/tUNgggshzxRKRJQRfJ8a
         UsjqOkHHcHeiV+QEGAr0ClSnpX1vnVPjShqjooUTS19m3SKWJQ9ZNmptldDPMH8m+PbJ
         uMmKmQgZ6jPLUGVrmfU6JNeA9NYp4Wcaoemcf3+S24UzuOz2VefKWvuSCQZP4zMScob/
         9pChZjDh7dDw9bd60T+Nd7t7EAM/PsUT/QNwk2kUyR03/7dS0RT1spRJvgMpHL+csjuq
         7Law==
X-Gm-Message-State: AOJu0YzatFiTfyLgdMw50LdTLB0I/Nwp6JoX7t9HkOhI06ZTtyYEx9rJ
	mzatmpO+B8fsDi71UNt86dhyXG0XBgCdco/SZiLENk9TaoASyNI4
X-Google-Smtp-Source: AGHT+IGe5fnkBgAeGgLCnuEU/YLCbxuD4rjpNPbjtM5QG8hVGZUHf293djgjCEwRKUMtphzAoWlUzg==
X-Received: by 2002:aca:1a17:0:b0:3c3:bb59:f543 with SMTP id a23-20020aca1a17000000b003c3bb59f543mr7898176oia.49.1711389101601;
        Mon, 25 Mar 2024 10:51:41 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u17-20020a056808151100b003c3d3fc607csm212505oiw.26.2024.03.25.10.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:51:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4] dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
Date: Mon, 25 Mar 2024 12:51:30 -0500
Message-Id: <20240325175133.19393-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325175133.19393-1-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the optional node of chasis-type for Powkiddy RK3566 based
devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi | 2 ++
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts     | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
index 3ab751a01cb2..bd332714a023 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
@@ -10,6 +10,8 @@
 #include "rk3566.dtsi"
 
 / {
+	chassis-type = "handset";
+
 	aliases {
 		mmc1 = &sdmmc0;
 		mmc2 = &sdmmc1;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
index 4786b19fd017..5a648db41f35 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
@@ -11,6 +11,7 @@
 
 / {
 	model = "Powkiddy x55";
+	chassis-type = "handset";
 	compatible = "powkiddy,x55", "rockchip,rk3566";
 
 	aliases {
-- 
2.34.1


