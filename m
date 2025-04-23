Return-Path: <devicetree+bounces-169686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9289A97E8A
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:04:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27FDB3BF919
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 06:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C6F82673AB;
	Wed, 23 Apr 2025 06:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="h4veubHf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C312A1DED56
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745388188; cv=none; b=SswPg4qJiReekVXRB85aTHcda+/jNTaZohgyNyBuI9sJwRjavFAvTU48aT7oxp/hurOMyPPAt86qsvHhtxVO0l1JbKl2fM2ucBeQ1Za8UpB5KuP807Zi36zEApa1Hq9bQ6Aym2q+SBCoXvYT+vTqItT/UP+1C2ocfJ0KY7C+LR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745388188; c=relaxed/simple;
	bh=4JJzIfTPYd1xwS7ML8LLTZkwdWqlo3aofGz7RuYx0M4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Kcu50i+dwtD/Z0OqD/hTBogG25lk5yQ7atW9ZIWczbfxZKaXeSEqFI/ay9Y9sP+z6mjsPGzhcJUjnR7wkaKPG4AhLT84aes2EQnRa1+qkrLb6PxbeZblo1Y3sxjG1bFjv0bmF3K0zhfm6GJIjXYk3edhNjlyFIZiOWDuftqU2iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=h4veubHf; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e61da95244so10226447a12.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745388185; x=1745992985; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=h4veubHfeYyLh3j6fSFwqN7zpypn/de+xGbCYN3fktebu/MqfMJrmCuPYMaIdHVJwW
         kE3jz4kPkjfP/oFzfMnJfxsrqDgNrHItc7om07p1uvTEhHnxud859bVZNOqvrGXsUrl2
         m3pMUgLYp90ABOfls8ykhNlqq4lMDTtSGyD+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745388185; x=1745992985;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOYk7rkhvjRCnvuEcjwAqfr4aBzSa8a4sxHUvLuLnTs=;
        b=m9DXOLPm9Yn9r5muPHjrW8LfAqpJC6YavWfED0VRnFmatM1AiewU1w9PJ/fNGM1vW5
         UP3uNTzrBeqQ1HMmScdLihzFO8P81iOX9RfjXvqg+y8PVTJTbGnUAch0cT4bP+O5Ed9b
         MEcAqiZCJTj/usGwyyilMFxsxj8R7svZXjViDXgNPkn6pqkOSh6BVa3Iu8KBdaJ3Lipp
         Xx/7RAvFHBGKapgNnARe5UVGqN44nEUoUgUV1fHuND1gvzi6zuLl97HbmD/VoN7d1j9M
         FZEgb5IctbD8A7dd4Gelv4GHqV1UF3x/zjpWfGWypdSaXjbsJpazt621Bqa0nsa9GaX8
         h8gg==
X-Forwarded-Encrypted: i=1; AJvYcCXbUoFVGX55xuUQ1Z/r23ROGVFJyptFqMRE4ZU4ZduQofwfQ+CqE3TQfI8HfRCDhuSxYKuDdAiqWN93@vger.kernel.org
X-Gm-Message-State: AOJu0Yz90QAhOfHXFIgY3upFLZgKknYy6xskN4OyLYmDt19WVCEFr4zc
	iy7C3W7aFd/xn2TU4SWPCZKNrfFTk9W6JkNh/vGUnMeLDY4hvfJjXJuZ9TP0FE4=
X-Gm-Gg: ASbGnctEmj4A0EL0lsOsNwb0asO50euhINcUehI6KkjXwDI2LmjtQFo44MJqnNmAJiO
	zg2qacffw7E7L9yRQG8LQqbAau84351UFdiOvvBlgdS1oAE3csbYUBk04zRwpEc8g3iO41qUkjs
	Mb89y+hIowYXnGEHcRBUWDpvOMSm1mCyc217+ZEROfXsQRg1+Wq6TjLUjsuwg/zftuwBBDN1IQ/
	74DDbQZpc1WoSdmV9FV5kjRWmVLYJscoGqLynH0d2xLsWQvCcIEVjJqJUtWV3DYxixlVrlIHrjZ
	vGzDrLZJDgULfaghA1uO/BK9N7Pr+mxZHcq1j+XMyKUYNsLlGN9tX3YJkYWFHwaiVuWGU97fB4f
	DoZzC
X-Google-Smtp-Source: AGHT+IGrspoHDsYpuHpBd0xkLyZI/0PkKVqNxamXnpGvjKWbNAnUwCBvXK83/LAVhSGUiYAa3+5Q4g==
X-Received: by 2002:a17:907:1ca5:b0:ace:31bf:30f3 with SMTP id a640c23a62f3a-ace31bf409bmr477621966b.43.1745388185104;
        Tue, 22 Apr 2025 23:03:05 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef9e7e6sm745234366b.162.2025.04.22.23.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 23:03:04 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v11 06/18] arm64: dts: imx8mm: add anatop clocks
Date: Wed, 23 Apr 2025 08:02:23 +0200
Message-ID: <20250423060241.95521-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250423060241.95521-1-dario.binacchi@amarulasolutions.com>
References: <20250423060241.95521-1-dario.binacchi@amarulasolutions.com>
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


