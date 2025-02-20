Return-Path: <devicetree+bounces-148673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DB9A3D052
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 05:11:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDDF63BA883
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 04:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FF241DE2BB;
	Thu, 20 Feb 2025 04:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mtbUz9Pk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C1061D7E5B
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 04:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740024670; cv=none; b=mT016UEn5f4EPAwVXGVFCztquNp3vuOTLx91GqtcJrubvxkMnWmlh9nDkN5UN7M6CKyL2vCo94Su4UowRRID4fraLdigRvFmh+m84yjbiPZG5PzkvCIDj6EGVRTHZeD4M29kbwCQamMxO8ScLI93CfraGMycp91noYTkMFf8ih8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740024670; c=relaxed/simple;
	bh=2XRkc/YevLtikwB6ZzcfWbAwQKl9yeQ1+/lJgTjIu7g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HH7smTgVlotbjbkxFXfcziLUdvSa+mBsn/CYGLuL9ibwzcmAuTy3n6lW6AfBd2B2EV5zjYX3wccr1K8miZdw36YDigSXwig171zGpltxqoIhaS1rNXUfQe8R2/f7kBRMs1QBCVgxINX5gO8KgggPHcnKg5rVfaTolg9dcGBsgR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mtbUz9Pk; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7272cc739f7so895927a34.1
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 20:11:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740024667; x=1740629467; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wc9s60m7yHOEPhLyVsTag4aDgZkdRpuEF7l6r52HQ0g=;
        b=mtbUz9Pk6gbXOZsxcyq5AQYD+ryl72TlilawD7A6jTnkH3ws9pKTykRwml/hgOv7pm
         iFIdOQatuptGmwGcJEWdzLiqP1jlYqaY0dWn9bxyP3barVGr3s5LoAHnQYvXsTgZWX2X
         t4mzf3bc5bY5IUOnwqxm8j2JVLoe3NChVT4cv8ozP0mRKx9SbEwqYr/pPQwoOEdI4J+N
         02jTN0DycPci60ga/ypIpuF+H4GhmFm+L7zh8BZ1RfDiWB89qnrarlhMw0fp8CSzIbAc
         0UZ80MvH85Q0GVNI3NsQOjk+C0G56McX2wIqm84I+KXYBt+gGzq1xNFtDsq5CTULUymW
         CrjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740024667; x=1740629467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wc9s60m7yHOEPhLyVsTag4aDgZkdRpuEF7l6r52HQ0g=;
        b=m79X5iL9DF9EQ7kGkqhWX/XnXaOJ85j+db5NnVojVMFkh8v/zfL/t7Lrv9mBu/zpS/
         RXADRbY71vBE7CnWeszv1zDmI/0MD9ThA/AIwIrCO9czlH99vmCcCz8+brOcvHcTeefz
         Z0qRzboSFXqPjkKM7gE7c4kc35/aBOGHk3lUxAYvXQGr4rLzmW7FIpnmTWXXqN5GZ6G2
         FBvoJO2z+iDv2C4wk/NVYg5kTGd+E08L39Xcsp/G+jf0LZQwMwMI4F1UFGO75CLER8BD
         e10pmIWHg5NBeFfDoFP+qZoZU0roDQvC+NLw1bV2XbyZvFJxMVN9NW8SC4FChhchdKSc
         7pfw==
X-Forwarded-Encrypted: i=1; AJvYcCVvkeUC11UW2Hf3vScWZVAwPoRel1FIUhKb4zf24WtRy3TiGrGEOFAFSYiG4YExWv6gCW059mDmr9yC@vger.kernel.org
X-Gm-Message-State: AOJu0YyhK38YlNpLC8EzW2hE687sE3wn/GXoqm+nbHLDNrXxQ4CUHr/X
	br+ll5vx+YOWrw4L9IWPSY2FSquCQbIWI2Eg+KptSycYAriFrVes8qpsR7Qy
X-Gm-Gg: ASbGnctDvu/mZron4wnloWJ8/COHdpYoEbhFO7EbpCQSE/R7UsdI5tVU5AOz7uSJFKU
	Y5RH4GLK5BN7M8bSK4Ktb1xmEmYJa8zUCCa5wUn4gq15OBz2BlOTWcRiy0SQ2uZr70oyTU+n/87
	QzRptyh9qwFFhyKu62JoDIwOb78DX+CNxg8kp9XGeWoHVlWK4hrShu+tE9jz0fnugzdJzo/O6fy
	NHB4qK7hUQZpnQC6TprMcyxnLIDa3vyHoxCayS/xVHB1SG05wTCoE6kwe6NhJfrmGNpG0QKZ2mt
	OMeyTKi4GRAY3y8VAeWsTQan
X-Google-Smtp-Source: AGHT+IFcFoaXxN2Jl+KgxcP9lwJBvJn/RwJMifaJCCznxCysMElgGMzyJJcWoDpzucTdc6pY6ySn1g==
X-Received: by 2002:a05:6830:7305:b0:71d:fc70:d69f with SMTP id 46e09a7af769-727419e59d8mr1833552a34.8.1740024667519;
        Wed, 19 Feb 2025 20:11:07 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:20f3:777f:5ae9:b018])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-727378237e4sm1025875a34.47.2025.02.19.20.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 20:11:06 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH UNTESTED v5 4/4] arm64: dts: rockchip: Enable HDMI1 audio output for Orange Pi 5 Ultra
Date: Wed, 19 Feb 2025 22:10:10 -0600
Message-ID: <20250220041010.3801-5-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250220041010.3801-1-honyuenkwun@gmail.com>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

HDMI audio is available on the Orange Pi 5 Ultra HDMI1 TX port.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
index 5f673ad51686..5c560a14719b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
@@ -42,10 +42,18 @@ hdmi1_out_con: endpoint {
 	};
 };
 
+&hdmi1_sound {
+	status = "okay";
+};
+
 &hdptxphy1 {
 	status = "okay";
 };
 
+&i2s6_8ch {
+	status = "okay";
+};
+
 &pinctrl {
 
 	usb {
-- 
2.48.1


