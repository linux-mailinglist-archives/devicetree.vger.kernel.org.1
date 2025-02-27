Return-Path: <devicetree+bounces-152354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 104ADA48CFC
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 00:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FF7E16D0AD
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 23:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC03272913;
	Thu, 27 Feb 2025 23:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gSVXy/FU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C951AA1E4
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 23:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740700626; cv=none; b=rwuE1SIlRkjDKhor5jCz98KmBByq+3Y/Fmmfof9k9htHtHaRtqKLCi0zJd7m6+TfyzgYSrPsQ8khO/z+1i9MKPTrufmS+RjJ0Qx8JGz4ZbzSh5Pe3TrJyhttg44PF+pjfZaHsPyal5p+SyJ7q+tEnPnTLYKERaDJe5XLW2h1K/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740700626; c=relaxed/simple;
	bh=ljcrgBFh4kZtA/cJV+lmZIPQav9+09Nbs4UG2cp7FnA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d8WFlbM2vakas5IxHrLi8Kh4va152ih9d9nkG0jWu7YLoH3iri3REnrYxaq5aZnnAemcsBQvJMvJGFO1XwByMKc3rtyQrDBvdq+zmXECdyeucxPRn5j4TB2m43lrC5PP+sCx0UWss0PYJYKHSoNT8LlO+xH7sYliC7CPmZr4KPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gSVXy/FU; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-5fe9c1c14baso891525eaf.0
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 15:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740700624; x=1741305424; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=802LlVbArNu3UH/6HPG9wGpxIsHdhgKNSyCzYNg9lLs=;
        b=gSVXy/FUcxHtpi/9R6RIY8OOcuhBHw9griRvRHU7oXu2epavFKFkbOT0jsCHRUQRMB
         ZWrp8+cB3bk/Cf4Aha160fmBYdxesFX2lsLNSp1ILnLt47cy4+Uh32v1KxTtGzzvqPed
         7R78URJPybSRTS0Sp+pvYBnIYv/JBvM5Od9iAm4mGatWw9mVdKTqB+FtWiJK5IbZJ712
         Y51xZQrxjrYewE6plebiAb8zdU0OwSbpJ2mhv/1arBE/pY1BtnFmLjniYeQ8ngdsZaXW
         bZbnire5bHeTUSV8Io+h3oO6Z+1GmlXunQyX5/9bD1Rh06VfZwc7MkEPaMExLbw2l7rP
         R+jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740700624; x=1741305424;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=802LlVbArNu3UH/6HPG9wGpxIsHdhgKNSyCzYNg9lLs=;
        b=HyHhnNCpRICR2MZkYqLrBsclZk+6tRqTx6zaxIANXVt1VbmGGqo9bwigBy8+acO8LV
         mZfRsMSOYdIqSmjWFnlM0d1WAjrBs8KC3kE2i3sKJvptT1n3F09ExJEQK0xqnvep22dZ
         ibXmZLJdA2RMpaMuPpaCmWQJjpv4hWF6t8WLPIQ4yEZvU1uChdSnmUuvxGOeUcJcuSPr
         CtrQsWYVsoisvDD/U0dri3bd4BkV/z1hSxcE85CpppbgdRTHMBYi0iYIGaVcLugFz3GS
         GRCX0rqKTIs0CSTAfzbPcKi3clQJVHL1S/ibkaSPR3PzDZKNOfOKN/ckxaBQgdnJvFhv
         QhBA==
X-Forwarded-Encrypted: i=1; AJvYcCWDKJOBr3xH1E46+IFw/JoRsfPbjcUb8GhcW++vvpEd1yyJdEIrgk0TAEEqD855xIr74uNZyDzd3J/j@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdftalvcwy3C9p2T8kOl+2HqjEAvoLY9iIFb5Yo5BTaYgUuD3P
	lYbIvPIlsuoxJ49uA5Etzkgj+zFqJvBSLB+IrYKwYsHyGMoEP0L8
X-Gm-Gg: ASbGncv/Lr3uBWeoDlCV3EFNa1THgmHoB05MODBOOikQhjahk/3BP0sLEq17Jd0/C3g
	iaELzwpG3qhDEReCw83rVwGDmSC0J60hGBrQclIshldyHJFV9wM+MuF+dhBMKkVtmk8Ask8BtDN
	tFPSkatPHaSQKXBvW8RPShlAK4ExMsksgnwqXSk47nGnH6RvI/nKnJAXtpHBRNd/Y/BkkMgwbHR
	fMpEp4t1vemCK3Yk/t3KO7Ut/26A+z3sWce52h5/DtdUTfGJvhE7ThtISEN3kTWrDFshmDKv75F
	em61o6NBZ08XdC2GNMagFGT3iZK41IKjWOY=
X-Google-Smtp-Source: AGHT+IHfcXVGC5tQ5bFrNZCE4XgxxiA/w9DGYj3TpIHaFSoN22Ho5fH/P65GiVK/y7C5uAZNrPO7Gw==
X-Received: by 2002:a05:6870:e2ca:b0:2b8:84d7:ddd5 with SMTP id 586e51a60fabf-2c1788706eamr647963fac.39.1740700623830;
        Thu, 27 Feb 2025 15:57:03 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:87c8:8ae4:f338:6188])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-728afd7694fsm443893a34.50.2025.02.27.15.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 15:57:03 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Florian Klink <flokli@flokli.de>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Ondrej Jirman <megi@xff.cz>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH UNTESTED 3/4] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Plus
Date: Thu, 27 Feb 2025 17:56:22 -0600
Message-ID: <20250227235623.1624-4-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250227235623.1624-1-honyuenkwun@gmail.com>
References: <20250227235623.1624-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the second HDMI output port on the Orange Pi 5 Plus

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 0f874b87b47e..53797f633d3a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -26,6 +26,17 @@ hdmi0_con_in: endpoint {
 		};
 	};
 
+	hdmi1-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi1_con_in: endpoint {
+				remote-endpoint = <&hdmi1_out_con>;
+			};
+		};
+	};
+
 	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>;
@@ -125,10 +136,30 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi1 {
+	status = "okay";
+};
+
+&hdmi1_in {
+	hdmi1_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_hdmi1>;
+	};
+};
+
+&hdmi1_out {
+	hdmi1_out_con: endpoint {
+		remote-endpoint = <&hdmi1_con_in>;
+	};
+};
+
 &hdptxphy0 {
 	status = "okay";
 };
 
+&hdptxphy1 {
+	status = "okay";
+};
+
 &hym8563 {
 	interrupt-parent = <&gpio0>;
 	interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
@@ -342,3 +373,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi0_in_vp0>;
 	};
 };
+
+&vp1 {
+	vp1_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
+		remote-endpoint = <&hdmi1_in_vp1>;
+	};
+};
-- 
2.48.1


