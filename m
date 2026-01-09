Return-Path: <devicetree+bounces-253204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 802EDD085AA
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 10:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 86FBF3060EC1
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 09:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58138335567;
	Fri,  9 Jan 2026 09:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YIUpHtUM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF9623358BA
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 09:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767952375; cv=none; b=M2jr4CQzVXBwxOKkf4rOmBuOW7PFuKHIpAVA8WwdqcDvtFo2BUeYgMAp/MVYQivcbgcrPXqMIDj0upG9yl0gES7Bmwr1/815jwfNL4pP7iOOZ+2QDgrTHHn5GdtFJsW+Hkb7/UlsPfoym5DCawnfebDduxRjUqPMlbQ2bciJHK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767952375; c=relaxed/simple;
	bh=cWkoSxf5GQ1pwmPOQLW8JMLepujedW7Nev/TdAtherA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AHtpMqlIbGSsICuji1Q+4PNHrlXphqExU+V7fDg3z0HueWjN1ZcbJ1xKSFKIv9V+eVaj5z6JBYcZmuyKu1Rq/0ilizw2zggVZywTHYNV4sp6336TtYvJHh9Oa1SCD1jhilkKtEixVUt6MmaKQ16fg+NqbRQ0gzxPwKCv4HYZwGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YIUpHtUM; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a110548cdeso30943115ad.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 01:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767952372; x=1768557172; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JIW916aC+DTPkyvj+7JZZ73UBmCogbfoBvDVvOvfy6I=;
        b=YIUpHtUMByuFKUEhIPPFWPXI03Kx/0eNATcSE4GG4S74tV5FfbERzyRr5KCLBW0v/M
         ingz5/pIyV0ZrFovjZumTpGhXECL4cf74AI63IRFQhhdVFQMKwoqICzCgNCibuc7u0Wt
         r/XUA8lzYV8JaLXZi3AxTAiytCnkWWZ4UN4bUOo3RcAefo9iTmtp673TnwkUkoluUhUF
         PYZ+IG6UdClr3PaO2xiNQ3V9grp28xejz20t7FPKf0LYyh+UcmIDRkCbTU91LhEmhQ3q
         en74nRBsnkxxkQyZ9Cp72Rg7Kf2RW0rrSOZgevqED8AOLUaPQyB5L8v2OZknVT15dsW/
         jHEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767952372; x=1768557172;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JIW916aC+DTPkyvj+7JZZ73UBmCogbfoBvDVvOvfy6I=;
        b=K+G9+7hX0yWbkDPIDyrL+FlGHhzxjb9QGTFzkpYrd0K9UZgAIJ33uX4qTf0cxL3tWK
         x0rYDtBD7FNtwJbyrb9RiiPoqoJJIDQvHSCUkt7WLUA/PzF7bvrS7D7h1WLmF8EN7ofa
         HavcKnctU73Rl7/R8QLUAL/xF1pb8BiiE3FOoN7SqqkYwPSEZS9hJM+UDGcTB5L+Xn6u
         qJ92n7Jj8Ws0XCmLUAhqyIkyxJ1GBn4G9pUx5t38pwKoqUMyGFSsabAPcHae0IkSQIpv
         v0BPefGKX+5Sdjl5beE8RrEzoTiMGu9t0QcPkHjcd8n1Nbt0SnbcDtoTHqb5AH0PCAt+
         7hPg==
X-Forwarded-Encrypted: i=1; AJvYcCXf/g35Qdz+Ob2ograv1Co/cwutBRS70xSZLti8XHonyb70bH9zr9zCQAKV9PfaW04fwr61VCjcnr0f@vger.kernel.org
X-Gm-Message-State: AOJu0YxyXftYerE1gXjs4KYgUE5TjlsIsZfj4A0Q9Q+SLJ9eQjpAJZCp
	Iy0aqiOKsr/WlRhZORD42yLIv0w2voVh4AcjULAezFrn6JSre85D+gf1
X-Gm-Gg: AY/fxX5cuYPicrJeb/hfdYm5DJih23MNgYSL6q/MjMMyeiNxmRKs3ALMLjlvZ0iMFaQ
	rPABEDz/JPH5QhC92eURkeAC6iSeGwmS+L+qKUK6IEsDvtKofstY0V3sfp1zjqwb00+qP9r4frk
	Qrjs3hVNrjqUVNGEIy75+j1gCv8pjJKqPEyveUJEP0TleB+BDn+wrKZpFhWW/EjmmDP2IumlkUg
	griAPvCYa5kYc7JqV0kGWKx/v17lsDDPf8igihvZO14xFT7/JrmT5fOfydv9h0aOqg8vR2CJoaj
	9uZtcwNsgDKIzrtM97VX9MiQX3P7AVbjbBDSYvnp5xHeUhtmcWm4yi/BBEKcHdTcpQJRcLQ5cWf
	TBASQyXw1NYb2T13la9Gc6CtK/+3AVzlCoAagX5SBDtZ74a80bgjWKvJdO878XxhjQGLmW9ISV8
	BcxYWe01Y+ZTAQy/rIyvXY3VOcrZIqv4NcZkki
X-Google-Smtp-Source: AGHT+IHYHwepqPiwAWEOdjlDbzqEVVwnuyCPg7a4sTAYqd0IUr+3qGRZtpYPEoMGWBVOQm0wgxodxA==
X-Received: by 2002:a17:902:ccd0:b0:2a0:f0e5:3f5c with SMTP id d9443c01a7336-2a3ee4c0ecamr80868555ad.34.1767952371931;
        Fri, 09 Jan 2026 01:52:51 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2d79sm103081795ad.56.2026.01.09.01.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 01:52:51 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v11 3/4] arm64: dts: qcom: qcs615-ride: Fix USB PHY label reference
Date: Fri,  9 Jan 2026 15:22:19 +0530
Message-Id: <20260109095221.2847067-4-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260109095221.2847067-1-tessolveupstream@gmail.com>
References: <20260109095221.2847067-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the USB high-speed PHY label from 'usb_1_hsphy' to
'usb_hsphy_1' to maintain consistency with the naming
convention used in talos.dtsi, where the second PHY is
labeled 'usb_hsphy_2'.

No functional changes, only label renaming.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index be67eb173046..0ca6b50a6de1 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -609,7 +609,7 @@ bluetooth {
 	};
 };
 
-&usb_1_hsphy {
+&usb_hsphy_1 {
 	vdd-supply = <&vreg_l5a>;
 	vdda-pll-supply = <&vreg_l12a>;
 	vdda-phy-dpdm-supply = <&vreg_l13a>;
-- 
2.34.1


