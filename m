Return-Path: <devicetree+bounces-134410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 018E19FD62E
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:58:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4D0B188275E
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9D171F8AE0;
	Fri, 27 Dec 2024 16:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="lf601sGQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4221F8AC0
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318658; cv=none; b=GJZHMN7EIpPwjYLKtwyppcVYV2XkdL+ac5q9HwydE9eMne52nekpCbC5u2tPXTkCvhUmapH9Nwi42Q6HQh+U95qtsu0GJDpxIUV6eiT1Qn7/fl4GFypSNVDXenHLpZx3uAKhAisAlmsTvOkCfbVzEeDtka4xUDnO8gK8QbG1HEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318658; c=relaxed/simple;
	bh=MWwhsP/1Gq2jtC+XMH/+PSmlpfJmY2R2gm9uwDR4fZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ljpKHZWqxNrw+XMmiaahTs5lxv8jbZsRDS4sXevSWcqznXj/kOGtYg4qmM5WQ0xXVoMKVx+FI3IaKOFmIaK8RRLsU1+lgpwjimgvHRXnXuV8nT4vc+VVqrt2L0y/8/TnKjTVYj5eoWsy/YkJIB/HZwxhjAG0IbUTozvwRnCMypg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=lf601sGQ; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aae81f4fdc4so1058747566b.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318655; x=1735923455; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=lf601sGQvfKtDPOpLGbzFH7tsck39Zp35vkK7Ty7Un1bewq+pFgMQjg0NQJZ/LPxbM
         hO95hKk4noKutqRmOYmjponoBUC6q0GD4HrKoTx496VhpUa1+O/T6t1tYnia433ih4vJ
         AtS3eGCP7ZNdK7VUscE4cNuZQKObdXxU3rzE8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318655; x=1735923455;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=KKLIW2dOwJKhTIDG/XPi74iMiLFFQlHAHArtse7He1MRv77riSG0er9XDVfFcgNXxn
         jCT85GSHEVti6O3DlhjSlo1unxnwPGFn4sRBAixVyTcC19ghe3X1ZXWt6vdA7CdTxK/X
         yFA1dUXYl+PQaNLDcZJlO7bnsC4VTtqmfF+usEEEBhViXufHNbf37wIZ9Zz2OHDqfCzI
         XPPqcjOgW5s6V384YwkvjhHFmt//EfGaYaelZ8eEAtPYK9ezbfRpq7AgrjI7aoJD4TzK
         j7YdP+XlQkBNflRYNfZv/mcl3/lexH5m4A4gfZeYkgO+UNipj151wH5j+EEqiIht9juw
         3Wcg==
X-Forwarded-Encrypted: i=1; AJvYcCXOi+TEqnKIHzBmuZjfiNOf96twm0FDcFhztQ/dssL85K5tGvRtRKOdY3hxrwByfEEMYeodrshBaHhB@vger.kernel.org
X-Gm-Message-State: AOJu0YwRPJDj4HRUa417CfdzKGP79hpyvXU8jMqw1WTvRRJlmw9UWynP
	WXyPmGzyTSuYXdRmM4PcsWAuX3HRQkCWTdTDXV6VxzyY3MOAoeEzaXYpxT90ovI=
X-Gm-Gg: ASbGncsG7Xb5if+3SGVJeQ0mjGPXIz0UsCsG/b38zmN0hqK640Bpfd0Cz6pkI9TOl74
	hKvxXgEyCNpT5xxc62mx8HPx/FpGweG6qwIJOx3ECr1hGjoVjHJCrEn64olQoez1UJI9MNu5gxr
	/a+d6Ax2UQsyaILIFzo2uqDtOlkbYBMNZjm7HMO6gr21TJQABJZLQ0Ymb8A5u4mXaHsB/XhkikJ
	SkMy5vwIEiapM/Ar4501azMYtxbRGkIMj0GUN7X/gipjtdgZSgscGIV8JQyjZud15o7ckli6Jhh
	ICGW7KBCmkstKKHbTkk7qw==
X-Google-Smtp-Source: AGHT+IE0OOORdYEPfw3l5TavUkTwemsNNoEqAVu6kBH4Ag8emI9J3IoeOvq1nphdPOb5Rod0D0CmkQ==
X-Received: by 2002:a17:907:d9f:b0:aac:619:7ed8 with SMTP id a640c23a62f3a-aac28748b30mr2647750766b.7.1735318655550;
        Fri, 27 Dec 2024 08:57:35 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:35 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 07/23] arm64: dts: imx8mn: add anatop clocks
Date: Fri, 27 Dec 2024 17:56:10 +0100
Message-ID: <20241227165719.3902388-8-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index a5f9cfb46e5d..49be492b5687 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -606,6 +606,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mn-anatop", "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


