Return-Path: <devicetree+bounces-80616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE4991A10B
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 10:00:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 991212836DF
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 08:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49C5974BED;
	Thu, 27 Jun 2024 08:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b="O+0Q5dDW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D48E288BD
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 08:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719475203; cv=none; b=Ewmp/JFCeqiU2Wgl2V1f0LLEUV0FRBXzoFrC4xZGBFZ3nmfNpEakizqdSPMI9ykIwzvDwRX4AiQrDYhcIWbH6Hk8VDQfBe2+Y2Obx9LMl9TjtH7qCvP+5Nj5mmbJmb1CEET4TXWHeK4lur3uepys1ZTc7poJBSax9JLXr38VXNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719475203; c=relaxed/simple;
	bh=ApUY0Y6md/Cs42Qw8WaDkAdcw5VpPHX7kJHHeSU4Fjc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ksln2ozh+3gWq3H/GuNaXN0I9GTM+NGkY/k382qNmI2t+hcFl2fo85h+Q3SJyaaH4w0a7wqvKXrVSW6eq2H9MmQraoKOWcFLGbUMpAjEr5QK1WTq+fOLr7tOFfENJl32Du7VhdO4UDo3K9gU+icaCHAV6uKKkaCkcTneSL6wvqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz; spf=pass smtp.mailfrom=leithalweapon.geek.nz; dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b=O+0Q5dDW; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=leithalweapon.geek.nz
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5b9776123a3so3401334eaf.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 01:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bade.nz; s=google; t=1719475201; x=1720080001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HLrEboALRZdxdEXYrbHRXF19aT/W7AkEgiNEUpYGTaU=;
        b=O+0Q5dDWOPnwTOIJmxgL+T2jZ9eNCN3ejnJ8SFp2B22g5rquqbTssnaKoJU1uOgix3
         JLtCH3T9lGarqDATUX71Pm8eDwSNWiEMEpnk+P1+7ctigu1CpRiJHvCQqNbijf1q9G5N
         uU2chSy5RLAg/620IyUOpThRvzrl1f6y7l/3YAGJA2CLeprx+8CL1gQIf1/UpMha3/pc
         BO2au/P1WhFjDiIpuht49SD0jEYAEdURhYFQQ6IVYY/1Avf0G2FgLlpy7EaxXBxTiIyi
         D8+S9m+13oxEtHCwOzSfc3gTTDrALwO72bBz2UtCuiioqwg1zg7ct3CIDwwWMQ7b+WWo
         ypWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719475201; x=1720080001;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HLrEboALRZdxdEXYrbHRXF19aT/W7AkEgiNEUpYGTaU=;
        b=i8a0+z1qUljbr/dZPMBqqwLTDUJbCIycQ3R0ySYizDeWHPMd/JKNJCMM7FyOh675xg
         Ke1Eatj/8lP+TFYn9CVLfIEAl06OOyp/ytE2AGfptL1UUqgeDO4tGM2+rkOrKNldP5hJ
         NUywpTuHJ0RC+q5+MWHCZlzdmcj3TBHb52VYutW8p+u/0uWA6237GCrRv3Bs6/QgwAxB
         MWs5/qcn0f4thW1uY+yMpBTHS7LdHs3wFGrIH4UDwddCAG1UYWi49KBZD07wEK9JEVI3
         RF4+A3rbIHO9MJ5HxgmQE8RyYfdo8hs6zehAl8FpEVf6ClWb9hp/aNhBpMWrCDbBdqf+
         qiwA==
X-Gm-Message-State: AOJu0YzqPefGsOGgKccyqmlBkBGZOz3/h+VAYn5dLN4W3O6PE9Uu6RFI
	GYjaF7fWlzDGQO8lpOr9BPoMmd4U59JB2L+v3WfW8Qm8gN2egpJV9xKWRqlQBA==
X-Google-Smtp-Source: AGHT+IFkN0ubSaKPqjXkvWd5Aw4rBqZo9lhwryAwfy3XDy7tr4/U2Sfjt2ekvvF7l3gOffo10mAi1w==
X-Received: by 2002:a05:6358:7e47:b0:1a6:7af3:22ce with SMTP id e5c5f4694b2df-1a67af32e24mr94322855d.2.1719475200751;
        Thu, 27 Jun 2024 01:00:00 -0700 (PDT)
Received: from localhost.localdomain ([2403:5816:cd6c:0:6d45:ae2f:1ead:bd58])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1faac9c4cf4sm7181895ad.290.2024.06.27.00.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 01:00:00 -0700 (PDT)
From: Leith Bade <leith@bade.nz>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	frank-w@public-files.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	didi.debian@cknow.org,
	Leith Bade <leith@bade.nz>
Subject: [PATCH 4/4] arm64: dts: mediatek: mt7986: add missing UART1 CTS/RTS pins in BPI-R3
Date: Thu, 27 Jun 2024 17:58:56 +1000
Message-Id: <20240627075856.2314804-5-leith@bade.nz>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240627075856.2314804-1-leith@bade.nz>
References: <20240627075856.2314804-1-leith@bade.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The current definition of the uart1_pins pin group does not include the
CTS and RTS pins that are available on header CON1.

In the public schematic for the BPI-R3 (titled "BPI-R3-MT7986A",
revision "V1.1", sheet 4), the UART1_RTS and UART1_CTS pins are connected
via nets to the connector CON1 (sheet 14) UART0-RTS and UART0-CTS pins.
The datasheet does not show these nets as connected to anything else.

These pins can be configured for either UART1 or as a GPIO, with no other
alternate usage listed in the pinctrl driver. By changing the pin group
definition from uart1_rx_tx to uart1 the additional RTS and CTS pins are
included.

Signed-off-by: Leith Bade <leith@bade.nz>
---
 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
index 54087001cc8c..48bd1e04963c 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
@@ -349,7 +349,7 @@ mux {
 	uart1_pins: uart1-pins {
 		mux {
 			function = "uart";
-			groups = "uart1_rx_tx";
+			groups = "uart1";
 		};
 	};
 
-- 
2.25.1


