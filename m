Return-Path: <devicetree+bounces-242710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 915F4C8E16A
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 12:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3AB313503F6
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 11:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 724C0329E4A;
	Thu, 27 Nov 2025 11:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hYrwnJ+l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C6331A07C
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 11:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764243999; cv=none; b=JEHSZOP3Wv8BnSalSecUcPcSj0y13Eak/2b/Qm0E3Qr4fY4JNQL+mvWI0mAvvvt9K+41VihqJmAJcOgy06uyIUA7XqvawruSgZ1QLS29Vm+INQdTwRkvzk+rnCR6W6FO5C3D43/YXS7Cj3FtoO9rM1s4JZV1xG8tRxQPGGb5rq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764243999; c=relaxed/simple;
	bh=36GSySHVmu4BNGGfVtnH9eM5F228bXeFUWmPc8A0OvE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=J9x1T3Y5scYjNqeKrVTv+nYtHjwBOLdszTn6i3CBHFPClCe80XRCOG75kz6K1oX1m4Vh4kPLznlWDmkG/lNmblhGTcsGhI5jOEEwZDEiJu+yEgzlToN6RMI3pCyG4BHVTsGpBq1A3BB1uM++UNuZv77WJrwPXEvMpDdAlHMtM/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hYrwnJ+l; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47755de027eso4498235e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 03:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764243996; x=1764848796; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ahwfLc2OR0WyJJiUqyrz44j0I6pa73iQ662MFA3AWnQ=;
        b=hYrwnJ+l7DmEHV3OjEZLU+MJInHrF7xSMevrC7S8qH5bCj5Rb09rtup1C8BdFu9+xw
         bOM8NvgPIUNa8FkgPnLahd5LqoiMAR53qj0LNXbX6rPGkkk9LmY/uAio0KvebA3JaFEG
         TkuBJMHgKz5tWLuMvLhtlYHEZV0E7AMhI373B+aZzvxU9+u9ne8XShr/Pp+mAAZVP1Nz
         0QxF8ZRJdFGp8aZzdddV8INlRScW9udP+psmoMglcGbfHdEtk2xLeozeABbo68Lyi93W
         Xrcciuio7RztPoINNWBpy55LPwd/CnEJdL6yFz3IATqiiWc53n4iRY+xsId1W5sYFPPQ
         Bvng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764243996; x=1764848796;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ahwfLc2OR0WyJJiUqyrz44j0I6pa73iQ662MFA3AWnQ=;
        b=Br8j+czTkdr9Svgi2v9IAQ5bZ1lE3qdnQWMqEhBSS0+rzzyRctAS6jtRgHyeCSi28r
         Kg7+PrzSesfSf67bkr1FV8a1AT1edFKzpJo+nRVY418fKp4IMyTQ/Kx0U0e6hTTlr9UW
         d+rBD47FwcW/z7Z4X2FoxXC+fhmFzX/Vme7ba7LW1UrZpPyRcXg6CFHPOaHSYRTSTxzb
         JH1IZSz+EennzEZ3K6M7peFyTHjNJQKA9J5fm9yz1LXtNrXEGyZYP5r9tK6dSuMoLfUW
         ivZ1bXYqvAETqWeiE8BW7FkEFy+FdOOzJPvnmwDGRHNXyIPl9jwcmZZbTcefjLN55wCA
         JEFA==
X-Gm-Message-State: AOJu0Yzj//jfNLUDiRXxOHctKt7LUZ7lT6tt7WUj9wXBZI42nPWSRyc7
	75TP2T7dftD0IF8aktsPXKKG/CXHtaRtmXf0hFqtjz1OKwCLaGtYvQp0
X-Gm-Gg: ASbGncsgnnyyVdWMsCtnK4Wwp1O4EBk1DskM5pviinWZDb2M2IFq5ZUEVMnJtw/cFHL
	YeUsf7IKfe6WEDDGBe23cqlpoDvsv553BXtzU2XbRp7wPgZyVWSwiZ9NumRhUnPRp2ax/cF4NZf
	sWPTdt5LyGHmqFSIy3nTicPfwrmUvAChwFZnKPJB+s3NqlngevfbaBA7MZu+hnwZBzRF7dsy3N7
	QWEF60vVVxE6Qn0QjVBiF37XnVacxuP3yEFFVjDdYZQIWVdiYbThnDjsGIQYtEiqI6rWkLr+s9p
	Uy/Y0P0KdRIZ/6GXMACOidhCLBvGY5BNlmlL3STgslTOZgI+aHsnpB+uYT+IZFzSdM9+f1eRE6Z
	9EQyBWt/Ir3M5WwW+5PGxxdYIGVHcIXvOr4IIhQVYIvxPDquwRotTq7+rihO3QmbdHBjxpWe6wo
	DxdQG2N3rurjMcodeYZ60Vd1V9bx5QUwW4jNQqWSlG1MHw6pcDfAGyHNIeRcXZOCo=
X-Google-Smtp-Source: AGHT+IFSDmImo8FEnvAge2+dTux+Ghzkun3vGhivmqn4fQ1ZLuGZNmj5Qn5XXFyek5kNknVA8eGNFA==
X-Received: by 2002:a05:600c:3541:b0:477:7991:5d1e with SMTP id 5b1f17b1804b1-47904b24871mr105857425e9.25.1764243995812;
        Thu, 27 Nov 2025 03:46:35 -0800 (PST)
Received: from alchark-surface.localdomain (bba-92-99-175-128.alshamil.net.ae. [92.99.175.128])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1caa5d02sm3011816f8f.36.2025.11.27.03.46.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 03:46:35 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 27 Nov 2025 15:46:30 +0400
Subject: [PATCH] arm64: dts: rockchip: enable UFS controller on
 FriendlyElec NanoPi M5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-nanopi-m5-ufs-v1-1-0d28d157712c@gmail.com>
X-B4-Tracking: v=1; b=H4sIABU6KGkC/x3MQQqAIBBA0avIrBvQARO6SrSQGmsWqShFEN49a
 fkW/79QuQhXmNQLhW+pkmKHGRSsh487o2zdQJqsMeQw+piy4GnxChUtBVqtdtqMDnqTCwd5/t+
 8tPYBn6J8218AAAA=
X-Change-ID: 20251127-nanopi-m5-ufs-52f2c5070167
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1011; i=alchark@gmail.com;
 h=from:subject:message-id; bh=36GSySHVmu4BNGGfVtnH9eM5F228bXeFUWmPc8A0OvE=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRqWMmkHYu+dCJU8YVEUP5919+NCWHrLxRxTLv73y1Jd
 atm85GwjlIWBjEuBlkxRZa535bYTjXim7XLw+MrzBxWJpAhDFycAjCR5ScYGR7JR6pmmv73+eve
 o3HE++UfP9fe3v/JW67X2ZbP5jP+LcjwV7BBw+Wt50TuQPn/jhytlbNeu+7mndxR/FxUMTsu7ut
 pVgA=
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

The NanoPi M5 board supports pluggable UFS modules using the UFSHC
inside its Rockchip RK3576 SoC.

Enable the respective devicetree node.

Board specific supply regulators are not added, because they are all
non-gateable descendants of other regulators marked always-on.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index cce34c541f7c..6b8518c49835 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -906,6 +906,10 @@ &uart0 {
 	status = "okay";
 };
 
+&ufshc {
+	status = "okay";
+};
+
 &usbdp_phy {
 	status = "okay";
 };

---
base-commit: 663d0d1af3faefe673cabf4b6b077149a87ad71f
change-id: 20251127-nanopi-m5-ufs-52f2c5070167

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


