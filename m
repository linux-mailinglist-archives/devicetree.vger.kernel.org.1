Return-Path: <devicetree+bounces-113483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6335B9A5D00
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 09:28:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86A311C21443
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 07:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 483B01DFE2D;
	Mon, 21 Oct 2024 07:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="aZ435by4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C2F1DFD8A
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 07:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729495661; cv=none; b=LBOLRftmUiNrSBd1ZzTCrjXOijyS8KVQLH+Ik/2BHGnGzzkuaLzLlbKi2LjLRGSTplbWR0Rlm/u/gqIk1dFRrfKEXEziazxjP3lOD1IPGz0lLaMDcW5Pwbcv8FyXA0S04Al8QrnP1N02WDTIxnMu0k1wbypz7h8vDfJGXLsNsk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729495661; c=relaxed/simple;
	bh=03Qb5hxKK7rAKMhBjn9jT6mqUqatJTsr8tb5L6OSVI8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=Dm8sa2rLWvOcO52ga9N1pKlrNnpx/njtXNYy/79kGqLLIXMkPpCcNifAylPxorHrZB39qU6iJaxUOf5ag/QMxDc6vNsnU3iVi0Y7FnA3FfqM3L42r7x07VrChuAkFqruOMuzitndedWIN7F/ajNhKemIcCTpvxwnLZ+xeEXhnfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=aZ435by4; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-20c7b9087c4so3166785ad.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 00:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1729495658; x=1730100458; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XkkT1YK08fvvBnsXdekTj1dlk1F6WdJ88gbC//Uv2Rg=;
        b=aZ435by45LAqLAeDuG6tSbjua6pMzwvX9oGJw1C1nrj2c4rTIBAeYD0OJgU/XxSoyr
         YMoiounZY65YC/7XWzHmzvyn2zq8OljHx1/Go/4/jN/9Iygt2HLlqYVMMtk1d3aq6Pk9
         BGH46n+FrpsnJLyvcaIMGMh+CY6fqb93jr9s/UVN52NFvD8yk/2tGhDVw2s1t2iZBMDk
         QsIAPF8vJ50DVEuxxfV2SU0EST5oIOg54rvixE2+mzn+NapTwoKTvVTGANwWtMFerooJ
         yySZrgp45Mn039Toxv7tEQQ/I/epiaw+61eafXx1jZXK7+lpLuAH3Rz0NPBv/RCZNHX8
         bxZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729495658; x=1730100458;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XkkT1YK08fvvBnsXdekTj1dlk1F6WdJ88gbC//Uv2Rg=;
        b=IOLgKwhapKgGDhH8IMbY6iBGyT870Py9LAS4tVZlZOub3Np6j7oRDK6SNog5FZgIXF
         0luaExQV+KTkQChCN+1P+QHDcGizCeYjbNiEF3GWZZrTKhAjUL2r2NgKwsZJ2/ySDceI
         fa6nokPXDHoreaYWwYOcwxVf58zPTlQAWOtgXG2RaybJS6eMPtPGThsG1+zhTt+RBggI
         5cYVgOD0eBuLoBYrhyNMAeA3MPMZmjRcKr2N5L4ojkFXddg068ODFp415Kh/G9LBmtd8
         9pME7YmhjpBpeRDFy5qyll1Sh15UW+e5BIqstEvoBKo670Ad1U1QJLF6yHB27LfKMoBf
         fw4w==
X-Gm-Message-State: AOJu0YxjZ4FRaN+ZXA3Qhj/Zqed//7gxYa6K+QNBI8Fow2SiWchvtyVF
	YxUzw8+yrMjbKpya0Raflp7gR3zuvxTwPPPriyesAZzPNW0EVltZy2a4d8/3wek=
X-Google-Smtp-Source: AGHT+IEh6/03mZfFhuxBy6xAmriaeuAlOB4siq5+NfULwqzoaaUzBkefycmGSb5S4BiTt/jpYQtLhg==
X-Received: by 2002:a17:902:c44c:b0:20c:df08:9a78 with SMTP id d9443c01a7336-20e5a9ae59cmr57079665ad.13.1729495658258;
        Mon, 21 Oct 2024 00:27:38 -0700 (PDT)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e7f0db2desm19749595ad.203.2024.10.21.00.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 00:27:38 -0700 (PDT)
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	hsinyi@chromium.org,
	sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [PATCH v3 RESEND 3/4] arm64: dts: mediatek: Add exton node for DP bridge
Date: Mon, 21 Oct 2024 15:26:25 +0800
Message-Id: <20241021072626.15102-4-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20241021072626.15102-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20241021072626.15102-1-xiazhengqiao@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add exton node for DP bridge to make the display work properly.

Signed-off-by: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
---
 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index 682c6ad2574d..943837f20377 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -424,6 +424,7 @@
 		ovdd-supply = <&mt6366_vsim2_reg>;
 		pwr18-supply = <&pp1800_dpbrdg_dx>;
 		reset-gpios = <&pio 177 GPIO_ACTIVE_HIGH>;
+		extcon = <&usbc_extcon>;
 
 		ports {
 			#address-cells = <1>;
@@ -1656,6 +1657,11 @@
 				try-power-role = "source";
 			};
 		};
+
+		usbc_extcon: extcon0 {
+			compatible = "google,extcon-usbc-cros-ec";
+			google,usb-port-id = <0>;
+		};
 	};
 };
 
-- 
2.17.1


