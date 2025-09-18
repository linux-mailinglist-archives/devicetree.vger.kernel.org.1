Return-Path: <devicetree+bounces-218965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D3230B85D99
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 18:01:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 065CD1C27273
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 15:55:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 369703195E1;
	Thu, 18 Sep 2025 15:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="cJCirYTE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E055A31812C
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758210774; cv=none; b=YBZPffHCWOygMTKoBbcpGPOzmzkHWJCxDeJa6TsqaUKarLQoGHpAp7hEpernpOL/pydDALtQbPRC3FqWDqZPxs7/bgGqDNvv1hDODqGn8xUcaMQrfsOC1ueF44oXPTNA71HiP660ZcC7Cj4l+VKSupUVcUiSpkvaig9scpurpYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758210774; c=relaxed/simple;
	bh=gGgLDa28x4UcF2lKFBKasKuonH4sgYz1s6b2kl6Iy4w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=roDKBTGWCLgBspaVLUrIrzAbeJTyDab3ynjLKLeiHv1HHL40h1PD25dme7biwMaNSzUQ3EHsNnmwM40IfrBbM8sa19hibJmHuT0NrST2fEuE4I1lAiEVXZNkSTueo3HJOb888duoP0zaux5EuUq5QNNRlDvNoqKJM4zx8mYL3+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=cJCirYTE; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b2350899a40so93875166b.3
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 08:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758210770; x=1758815570; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KC1/Z5A4C1NKjQ4MKJ5mwlwDtHXXOD1eqAPkjlkCE6Q=;
        b=cJCirYTEA3K8X3dsOlNOqFFbdojIpJR2mG+/OuhKlkofA+JdMdIKIhBA/EV8GGxF2h
         Yh8WcgLjSxSDfrC+BfeFff77H4XIgNmQLGfC4QfAv8uMCExkkPjHHp5LcpN+V6FFnjUI
         edpHHLSTCX9oOf/YPmtRfrpNtIOIOzDztueg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758210770; x=1758815570;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KC1/Z5A4C1NKjQ4MKJ5mwlwDtHXXOD1eqAPkjlkCE6Q=;
        b=XqV21R+YmAtwPEpIQ6vQEMK6H51JLyMJtJolRBOjOuq7CxnKy1cK4pF8NcqV7jJK8M
         Uftq5NgMik3S7XlUnKwujZ6J9QctJIEaSWMDhuqRIF9cUrvAE+lLCO6kjseJ90TpSvzf
         TKcBKmc8lwyfWpeYkIIstO9qjGeeL6iN/sscFZhcQs1zwMp4gj538Mw+UbHT4JmuPNIj
         9IHI+u3H/kQxqb9Z2Plep3ztPCYNARzlvYEX8jb0ZTe1T6/53hJoC5+MA/vTs4B46zuo
         ZpGcbN51gbLOkMqhtXoAtH0+2u4K7zgm3pVMjNBDUtq2u232LMvc0fhizKzfZTeSQok2
         aE6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVxtoCSm7HORy9Oy+2zL0JTXFCVGLa4umKrvJw/fl7y+nK0d0Ey8Idt4xbFq73ZEQ9AJX85kcSAMDDR@vger.kernel.org
X-Gm-Message-State: AOJu0YwBEUbcQsSllbEUjKMOTCiBDvOkaCn4GvXcULn9yUStWPnHSkyv
	bJpJGgtsWQOuVSNnPcg1rm1l5gwD768vT+ZJb3Z1R2PJYHegBgo90KEb3sw1c39SAWU=
X-Gm-Gg: ASbGncvjD6mmldidSh1LA/6XVeoXbz5UoZwK4oI5FxQ3TwGQIXrnmt4ThJWrOZTofsM
	YX0/3e9X6/XLW9a39w+lSDIqzkHrwZWhWksrFLYrWIEuVe3c9PkXxc5cdAw5usZbqduqzE8LyPK
	gJ8lhHpHy4ukcX3r7bY9OSRUd2UmmjQb3GKWgbHymPZKq8TXmBr6VbF+hvSWBTtQ9xgiPdrX3G/
	//i7a8gzBS5liEwGBIKDwTa7a6xEeZYOLA4k5Kv9rB/bE2u7BVPrueKnQPWdGuRZ+3LBmJSym/O
	k3CBH7SOZQcDI78ZuzjYnBvOI9/Qrmy3FFUt1XC564xlJWNccxHpjCf48C/Zagu6/vDa8y41/bt
	QyY0nRLsVhZql0s8t1t1U0cJBTSXe7EVE7QAeSOGDuBtKF251368gFBGV2xfR7Td35a0OHT8oGs
	sfw4bOmQk5arHVWuKs253AT1r5iap6Ge41Vov3wNdL6yAWzWPa8gcwpfePISvgT4aiJqbCUQKH3
	IlQv55dLU4=
X-Google-Smtp-Source: AGHT+IHrrgs1HJChTIyvAVV8Pi6aonRsXlQC1gliMmMRrY60B3FFWCvZ01egkSmZM0VTAEb3+in5cw==
X-Received: by 2002:a17:906:7310:b0:b04:858e:c1ee with SMTP id a640c23a62f3a-b1bb5e56d90mr782962066b.2.1758210770121;
        Thu, 18 Sep 2025 08:52:50 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b23a1227bacsm60449766b.41.2025.09.18.08.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 08:52:49 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Frank Li <Frank.Li@nxp.com>,
	linux-amarula@amarulasolutions.com,
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
Subject: [PATCH v5 5/6] ARM: dts: imx6ull-engicam-microgea-bmm: set touchscreen glitch threshold
Date: Thu, 18 Sep 2025 17:52:33 +0200
Message-ID: <20250918155240.2536852-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918155240.2536852-1-dario.binacchi@amarulasolutions.com>
References: <20250918155240.2536852-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This way the detected signal is valid only if it lasts longer than
62 µs, otherwise it is not sampled.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>

---

Changes in v5:
- Add Reviewed-by tag of Frank Li

 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
index 279d46c22cd7..f12084d8f2a0 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
@@ -154,6 +154,7 @@ &tsc {
 	pinctrl-0 = <&pinctrl_tsc>;
 	measure-delay-time = <0x9ffff>;
 	pre-charge-time = <0xfff>;
+	touchscreen-glitch-threshold-ns = <62000>;
 	xnur-gpios = <&gpio1 3 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
-- 
2.43.0


