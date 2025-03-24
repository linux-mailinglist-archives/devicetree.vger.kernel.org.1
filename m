Return-Path: <devicetree+bounces-160184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9841A6DC47
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:58:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 605C116D5DB
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2200325F99B;
	Mon, 24 Mar 2025 13:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="M6drabyy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FF725FA16
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 13:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742824640; cv=none; b=dUzMRk2CTELKdeqQEJBYG9Gendja9OVu9KcThXUXI/PF64BcEWlNA6sU4QlEU3kDmOP+mftLlWF2eP1gE96XOtmqT5ZFnJhBcP2lcyQfZo83J2s0s0+mYDhhiKRyYspl5t2fAzeGgcDnOPTpkazhal5BG+b98SL/7hkQrjiSAx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742824640; c=relaxed/simple;
	bh=MoEp5ZcQhE/r7CJZd5xBLtT4vzDpLgktl1nQu8ou+Dg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QfCW25rFsgf1qZLkriLN+CXdx+08ooslRxfqcVsEbElq9ZOK63rh5FjnFBp0A/PXvijd2xt2JLFgQr3cONps5SGTT0fiCfkll24vAQsfhCaVPcFXAse+5UdFvivSgy/Ucbpma/uigjYY4oWUCljZvdtggoBuXvVZzZzse0ZimX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=M6drabyy; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cf58eea0fso23539695e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 06:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1742824636; x=1743429436; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XZXYQlywBGjxUCQ5Y1L04Uo3ant2KBX+A6aBOQRIOrE=;
        b=M6drabyyi/z01OwSHdmg7VKp4cLSJuykKmkO1o2xwiMWEeMwSRQHzdq9GBW2pLnkeb
         0wDrhkAL7RRJ2Yecwz7LjUirkPLcv/4u22jgwreT5giFHDAjmymUn2H+crVBpzYTT9Rd
         evOUDLeyPvg3VDXucjtXN+IW7j1Jw46wFckgE/2Bt2GD+t/LXXo6NOHT6WRRyprwEYDJ
         UgkmqMKYz0/sgDFCM4k24jjJfvbK8/4mo3wICsVHe7efVAEGH/JxzD9wPw8chmOHIw60
         13rXfkaPfmrNCCSXEAwg154H3Oj770VFbDDnRkJFpBIpQsYfngVjr3NIf1i/yjbAlnmF
         20gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742824636; x=1743429436;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XZXYQlywBGjxUCQ5Y1L04Uo3ant2KBX+A6aBOQRIOrE=;
        b=EHI9gtmEgIwUt+VW9EZmRqeM5Q/KUb9wFhEtIQJgBMba3a36y7s7oe1k/ir1G263IQ
         mSIuh7Bnm9XzC9NfAKdWaOpT0t+GnMdkvKPVHtrv8cx7L93rPK5DgTQnetRYxmX/KRx5
         yZ0CBpa/C/SDkTnCsS9zP6o2qRFeWGbnjeTUGqYNVpgHWs64rG9jBYHVgmncpmjrd8kk
         00nBrFY3c/v/wQpRNbY1LcZMVgCvLC9uf9nSISspku0CIJZwZVBVV1KcsPT72O+Rh4Op
         cD8Nb05URQjLbldxNMC208HQhGwsuNuD6ZpAIKuFbHfX5sAksKd9bdCvU/Sn4O0HUMoZ
         L6jA==
X-Forwarded-Encrypted: i=1; AJvYcCVTq+WHcxu8NtNKM8+k6Csafnzhd9ET1YuiiGmVssBbsOJhMJg9nWnmKPO1AD3iNSq3BU8Vzu5cHjOl@vger.kernel.org
X-Gm-Message-State: AOJu0YwciJrHb/u+cmUSEyCtiA0y1P3l0hShLOMRgFFU6qZs0yR7BxDu
	LaAKS4h9sEsJfGcrXKsijVQzu93s94TgQvEIDmtVjGa6NDjdhxizkweRF7/9hko=
X-Gm-Gg: ASbGncsYkgchrcxJsis1Ix1ffK1Rvf/tJv3D0bG/bufh8U9ECFrGaBQ3JAqm2Rzfzuj
	PJydTEGzYR6rBsxrYZvb3mIBh+BcUUeRmkLBz3W3ZW+fJWOA269JPfNtlltf3sFq/+ROo1Yu+AR
	k2sDVFjrZkVbkxym01shwxMfHsoJGCV/J2l4QTxxaNqxIBlpFYmi7CJ5b8jtMi6rkauS2NB6ZdX
	DrWs3XdyaiMHMQRzrI1JuZUUPBONzAYE5xKcoKQw2IcQv2a8fh2vodTEdUnWrCS919y/3+AIoa6
	Vbu/E8ssQRBzNq06w0R3N3UdogAz/c6BCAHGiFe/zyJg+3xgx3El/7gZo4t/qcoUIsbfWrqncQ=
	=
X-Google-Smtp-Source: AGHT+IHDKpLBvO3q5uFPvr/70DmnnwzOfgKjpHIucZu6pM8ksgy7yC5qAGJIQYpLCs15vezBXQWNUw==
X-Received: by 2002:a05:6000:210b:b0:390:df02:47f0 with SMTP id ffacd0b85a97d-3997f9336fdmr7677171f8f.42.1742824636553;
        Mon, 24 Mar 2025 06:57:16 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fdbcfaasm120146525e9.35.2025.03.24.06.57.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 06:57:16 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org,
	rui.zhang@intel.com,
	lukasz.luba@arm.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 4/4] arm64: defconfig: Enable RZ/G3S thermal
Date: Mon, 24 Mar 2025 15:57:01 +0200
Message-ID: <20250324135701.179827-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250324135701.179827-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250324135701.179827-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable the CONFIG_RZG3S_THERMAL flag for the RZ/G3S SoC.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none

Changes in v2:
- collected tags

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5bb8f09422a2..79e566f0d47f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -715,6 +715,7 @@ CONFIG_ROCKCHIP_THERMAL=m
 CONFIG_RCAR_THERMAL=y
 CONFIG_RCAR_GEN3_THERMAL=y
 CONFIG_RZG2L_THERMAL=y
+CONFIG_RZG3S_THERMAL=m
 CONFIG_ARMADA_THERMAL=y
 CONFIG_MTK_THERMAL=m
 CONFIG_MTK_LVTS_THERMAL=m
-- 
2.43.0


