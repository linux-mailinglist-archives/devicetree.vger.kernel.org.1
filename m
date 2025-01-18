Return-Path: <devicetree+bounces-139441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B2FA15CD6
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:41:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D351E1888890
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FC9519D88B;
	Sat, 18 Jan 2025 12:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="pIVpYDuT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3758319AD8C
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 12:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204068; cv=none; b=hdaGSKs49bfKcsfNH1ObB/EE34Jqn8yD7DmCa+7P2J+DLkQWzCyk9mvW5emfcD5Mmo1Qwz2ATuQgBV8xAPOskzqdDCiPRCCjmRFAlDxrFq/gA+BQyGyW8kSmUy8FFpxe9hPgmcR8qLlmlQlY5KO1kCm8x1bSsCdjjxwKcAz+jRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204068; c=relaxed/simple;
	bh=4JJzIfTPYd1xwS7ML8LLTZkwdWqlo3aofGz7RuYx0M4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WUt5a88bjWxdDjbFfY434Ls+T60ViR3DZQWySO2QVvo1qi+ukwGbUEMxRO5ovMe+1Hv/7cwcCcuZVaKGQrJVPC0Q/OXpFTMxq4bw7d+ZyeaaOGeL20KjYrlYKzLa7AcY49i/D0haqMFLl+XHwIpWMbnuJLrtixwhm/wjFHO3IKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=pIVpYDuT; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5d9837f201aso7351663a12.0
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 04:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737204064; x=1737808864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=pIVpYDuTwdu3OvnC2Yo+6k18sedvFoMJoqOnSyPwyZdkbxEjdJINb5u9DBF/kj8CYq
         sMgjxeTP0xxGo50wyNwj+johKVqcP5jBoLe5Ev0ggdQdUb/2tHdbndveZ7EvQw5moh+v
         BJxmqmcrJuJyIRKZNU5PUs1Hsqx4eO7VwE2lw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737204064; x=1737808864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=php48E3NwKHFEc+AvrD/uDEYhtWwsqqJL5UBRWOFZC3U6derQrRLOA2iGNcNdQo/zO
         1RsFzyAAwbknCPzfblYyn14/eQl7zzv963dy/OeB/xg1F7ysGcNX316/Yy1Qn2PQLdJr
         t7/oOs5aJHeU7KEVZG+vq1MmVp2zPwllPzojzDmWmegzuSikoup2CnH3JyhIEw9Y6OD3
         pYJHKYJcH9dATcP1Lm8hiwZaInUV5TDfEfd4FfXF9iT1RKA8ZP7H5f1nK/JIxTb1C0qD
         3ggnQlZYkragY8BL4V0VLMRj0aYmfRpDydqwLBGTEpZgfFoO2Y5lU9dfxrVlMbPrYMXg
         Ax+A==
X-Forwarded-Encrypted: i=1; AJvYcCVYMp2f5jeGaUYAPm8mbD5ZTWXUO8H5wdpCfv0YhfAFzkIhmcDkB813+FRkUpKa9Az7syoujNTDAe3w@vger.kernel.org
X-Gm-Message-State: AOJu0YyonmDKJ5zR3nQuTBQcpIOrDktY/wdNJ0nui96s+rUwYZ6J5MR5
	FlqIDkdIM0OK/jRk+AZKpgEdpwEc7A8ICrD/5cMfwBdhtadRQt1VME9lNGTShu4=
X-Gm-Gg: ASbGncugFwqWl90vtBkMbd44TvV33315kPpBMtdjdJlegTn4ysVWJ9/tEsAE1CV2c38
	tPGeDf+XLOnoS5IfT4YpJpS/KqQuaxTRSEs1vrE1nNdRQzVjPz0hossfyURt2eMDq20etgJqFej
	GWL1ykPL1PzVrGIP4aTa/pS1p5LKAu3pJc8f7L8kHzzl1qRgS/ZiONTFb+8CkgmcanBhkzTPHKz
	vh7KxraeRFU6+04PgCbtVImvIJRtO2oj5cr9Qsxqx0ygSlhMR0fESGB1at/UoCzxKJ3gAqFoYDV
	lu7SFbDKx31c4urrzdN7FngYELfjj8IzxUpxufuHkdFPc1EB3RwUwiRTyXwgIWwckIu8jh+D+Iu
	h9XD+K5cZD6iLz+mZkcWlpO3gdjO+8wqNk39t
X-Google-Smtp-Source: AGHT+IFEvHSDZkW32vI1lJpZjzSOLwffU36PPtmj5J6Lh5G22I+ED1NwUpo77gpSUOYpqyDSVZVxSA==
X-Received: by 2002:a17:907:2d9f:b0:aa6:8764:8738 with SMTP id a640c23a62f3a-ab38cd638a0mr569237766b.23.1737204064528;
        Sat, 18 Jan 2025 04:41:04 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-30-28-209.retail.telecomitalia.it. [79.30.28.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcd73dsm332562366b.178.2025.01.18.04.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 04:41:04 -0800 (PST)
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
Subject: [PATCH v9 06/23] arm64: dts: imx8mm: add anatop clocks
Date: Sat, 18 Jan 2025 13:39:49 +0100
Message-ID: <20250118124044.157308-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
References: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Add the bindings definitions for the anatop node. The patch is
preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 4de3bf22902b..597041a05073 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -600,6 +600,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


