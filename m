Return-Path: <devicetree+bounces-230931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B11A7C07905
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 19:42:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B62D3AD133
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 17:42:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62B0B345CB6;
	Fri, 24 Oct 2025 17:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f4HZhtmT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D0B3376A3
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 17:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761327727; cv=none; b=V7kXrT/ifX+4hdth71VhR2XCeI2Nqc6LWyOXV5LubynmiRgD2Q5nlXbk24cqzVcXdQh6cYo+NLIHMmNPlISo0s/1bhxmA/OwTg5UNmv4PEpoXNE2hmn2ikjNufJ6b+ZE5W+PT1Mw9GrCjYs5Twh8M3YTKzeuIOawhZRlOxq48C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761327727; c=relaxed/simple;
	bh=i3jJ7co8m6Rp6VhynG4AQYYabRnZVYzJAJnExjOrQWM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sMGbFkWFbSiIOHGAyAF6jsNr7c9HYmgNCF9TzlKQ02TUq0Ke+H5/KMFc/q7ohpOkvowSadt72BZUNkj0YtNfiAnHRfls+gceECWXuTum066DROa6BzwgZAirJ3TtflFgruoAWTQLdhXO1Wi734IHW0XAb8fa7miAmJ+RwEH48Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f4HZhtmT; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b6d5b756284so434824366b.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761327721; x=1761932521; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bzLI87gVSsw12bcRQHm4zXKzF2cdEbYasj1bN4s+jM0=;
        b=f4HZhtmTpl3lqIq+9rAS2gJOwo66mUWkoUDstJElNtDebKt3r3jW8cuXBS6BiQ3e1s
         Jw/w9q7pPx1O1XGhP5B7ruzMhRYP2nuyF0ikdYCbJTh3ZTkisWvUeyI/YyuM5T2W+DEY
         eCe+i3bS/VhbTEbvbIuprBNb8HSJaBd4cf0DX5iUH/3WJdtJZj1TlQOlYL465QfrBGQ1
         KzbjtRRMlGfx6nGTdQ7Nw24AL3CNC7lAut+Mebif+QbgLEnYw0Ct6V5X054OVyYfXLxI
         2osW72SHSvWmAI+WP533T/q4r/boc5BdDdxDqNJupzYpYhQc3yj0F6KI4by7Rw+/dzmI
         D3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761327721; x=1761932521;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bzLI87gVSsw12bcRQHm4zXKzF2cdEbYasj1bN4s+jM0=;
        b=UBYeR6BuHCORh6jmjoxWURi1YIS9mkrgTdducJcJapjpTW7Wh3uPtLo4F3lBDS2txK
         SEpy7tfqLokkSYINhGMyGMJfhNTJNjj9F1E6asVwamPLkzs6K+ipAv9TnIi2Iipts1xH
         l1Y6KUoi9Fmh3puw1qtKSrNoNH3OWbguVxvLIJaBAofj9SCYz46PEsNDlK1vbL+Brnv5
         vsdZ88zgUgOByvEu+yBpZALRhWIc3I+vTF37lso0cdVPqPtGAuMuL2MXrqjt5Syq+Sf3
         fM5YUK9bPjT8pj96bzwfqJX0nyZI92XGT6sptippXxTuNadwYIUkZNjFNcT8P1ZymTt/
         2JkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHz1Y0cDJn2cwrDVxBc3mbxQGFqm0jB9j5KkCbNFTj4+Vawg5EhPaySXR5nEeVVa0qSbcb3G47YZPP@vger.kernel.org
X-Gm-Message-State: AOJu0YxEydU2TIHNoT/uS6uLuY4lUduRMe1WRfuDkVBToEzx+SRdS5d4
	GBpP4gpbcEzSxIxVzvYWXnYer86HhAAzQEhNWYGTYcn122nK1aOyHiJs
X-Gm-Gg: ASbGncvzBP8VYvoUeZKBi86WjaWtWUlxp5nlO4EJ/v1Sp69PzcEVdKmXAzSK4rGOz7r
	xlRqRSIrgqG/K3h6Rf5YvoSC436rJkB3rNZB0p1dCQuIRGwSbZiiEuADuWWA0aw2wtMUI0uqEJf
	zV2lhFmWB2UhN4wGoyYEutMHlTF4yrl0jElZVrahJazJe3pl6XnBaMDhGutvfKhHRuw49hodlD0
	zOrANPwKnBHL6RQ9KgHq+MepeWF20MALryXCCN3jPt/GNIkwSsxeggXoi686XJjBsCdyKdl694m
	NSNU//Mrsm6uwvNbZHGFqM9ynn48o422AGFW3Hl8u4YKNWATxIU5RDpbm5w6QeNsyb2U7GKPGhN
	ZjfBPL/npLPA1kG2LMbVDFe2M0/k3GPA/kkZzdItLZsK7ECd/II4l2IipdN5aYWHoqXjj2j673d
	ZYSPwLmTN7dvo8EgET9mzDb/Bw0o2uCJeF83Q8fpWnQr0hd58mgAX/kg8AeOQ=
X-Google-Smtp-Source: AGHT+IGsywe6fvei+hAvPha34NkEyxNo/q2u1ZRQacwWPUUZaTx/YX5nzymYXv40loyt4fMWa8J9Eg==
X-Received: by 2002:a17:906:fe45:b0:b60:d888:32d9 with SMTP id a640c23a62f3a-b6471d45a8cmr3700021066b.11.1761327720554;
        Fri, 24 Oct 2025 10:42:00 -0700 (PDT)
Received: from alina-IdeaPad-Gaming-3-15ARH05.. (pool185-5-252-158.as6723.net. [185.5.252.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d5130d517sm586822666b.3.2025.10.24.10.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 10:42:00 -0700 (PDT)
From: Mykola Kvach <xakep.amatop@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Michael Riesch <michael.riesch@collabora.com>
Cc: Jimmy Hon <honyuenkwun@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: orangepi-5: fix PCIe 3.3V regulator voltage
Date: Fri, 24 Oct 2025 20:38:20 +0300
Message-ID: <20251024173830.49211-1-xakep.amatop@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The vcc3v3_pcie20 fixed regulator powers the PCIe device-side 3.3V
rail for pcie2x1l2 via vpcie3v3-supply. The DTS mistakenly set its
regulator-min/max-microvolt to 1800000. Correct both to 3300000
to match the rail name, the PCIe/M.2 power requirement, and the
actual hardware wiring on Orange Pi 5.

Signed-off-by: Mykola Kvach <xakep.amatop@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index ad6d04793b0a..83b9b6645a1e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -14,8 +14,8 @@ vcc3v3_pcie20: regulator-vcc3v3-pcie20 {
 		gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
 		regulator-name = "vcc3v3_pcie20";
 		regulator-boot-on;
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <50000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
-- 
2.43.0


