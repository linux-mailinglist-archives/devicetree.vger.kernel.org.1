Return-Path: <devicetree+bounces-125829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D85D9DF6B9
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:48:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E2CD5B21ACB
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0C1B1DA103;
	Sun,  1 Dec 2024 17:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BCRYhjhe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437841D88DC
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075251; cv=none; b=hevjIzGP/6wSDM0pcSMzKbx0rQqZz3MhFUxiLF41j8i0ALn0auML0KFSbaTRSMk2cGtFnrNAAlQ5zxeHPZB/awm+VM+rmEgyTQxKa4B7tJ0e3BFVY8YRCWE1TYKhzAVgY0Z3ub4zUCNEgeQf1yQD424fYb0HGweEnqFdYsb/Q7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075251; c=relaxed/simple;
	bh=Ac4blgYWf7CVzjbS2BlFj/S4aCoc/+2YA3/WYpgya9E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ho13cHpxpUmR1FLBSxPGPlhktGWwvRzdnICbdJZhcqgDF6oSonN9dd7LXugEhMHsoEfiWFqLLSRBjrnirFe9TsnNjuV3FA8onwTcVq9vr6HUSL98B5EIej3Yz2ekKvp2O2YXLl5BQq6o5/07AJxhXXvUxJjazp/+h/Kh6p7U7xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BCRYhjhe; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a9a0ec0a94fso464535966b.1
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075248; x=1733680048; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GYgi3gWsFZ6bxt2QyzESPfQwAyIPmeSWspE8fxXg91M=;
        b=BCRYhjheXnEUeISKgl1r1QINcE5GchNUBbuVt2yfNm+YVZAgSTFrpw9GuwF4brQekp
         zKV1hpfbFuOAQqRlStSIxFofSis4TNkbNqoVgVuB8Zq/UlpyhKHMo1Lv3iwIC5iO716I
         HaHDreP1CtbP5l3l7/o2OHFB27kKhz4OVp2w8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075248; x=1733680048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GYgi3gWsFZ6bxt2QyzESPfQwAyIPmeSWspE8fxXg91M=;
        b=THIXAj/Mytct23aK3wXguab/IcQLAF6mLR+BghYnr9l9f2F+t01VEWTfTZ7hZ1pDTS
         s+lAFHOQFbjHVkROrSoZ2gu86o4m8LFUPOHcWEdN3oqEeeTdaW+ApnROI4NsMqyAIG6L
         PXfYtLSSu5ORq11juMYnDmcpkWdBXPJUj+goAB7W9To8h6MwSMoTrQxcORqsCDKUVLFO
         CVoryWzbTH36TTJzXE22WhRkFG9FPakuzPCXDbMrf6HAoGKqhCoGV3nx+xfqL72ZbQXT
         IbX8DSzVFiUJF54ovnxBhpd29dJNq0ZfCeqYO9i+IUyfjRA7wUYzx855Gept4NZSaJmS
         TkOA==
X-Forwarded-Encrypted: i=1; AJvYcCUMaXzF11Af/BS3LQ6iFMYIC6hgkJNfvMrO0euqdWUdq6zD4QzK6r5yI9vzWJ5HxuE/jkKrj0iGd+nl@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8mihD0gXn/AqYRpGDvTodnam5yfhaTVO9EUTw1x3OjAhlWVm1
	X6wyrWV9IhE8I7DAxfHQF1YT5nsXDJ5rqvdPx4Dbzr4qoP8F9i3JjB8hx+7acZA=
X-Gm-Gg: ASbGncuZPOd2OS5nXtRQgq+fjNvRwsF4q/CCk/6tCSbyoJ9rxaVTYcvKR3aoa4hiJse
	drdPvK+pLIp9eu8QHbxYvWOZB0wKqI2QCOWFOUy418oNpJXOjfWj26/aVaWoCKG3xfNFbaiukwH
	BzYDHtMmL3UbomgG4dYCoHeG0kmKh6apJmpAXVOjR4BijN4lA7pqOrBE9V94COrG+vh0Q0yrfDZ
	vDXmykxM8PX078+cIRRB7SfzOiSooYFKMvy6lkZtxa+QpssZWXGshtOrVDumg7kqXoW4c1nk9Eg
	zG5Z+M70opbS+bWEmq7awZ31ERihEqjnkCvBS0yjxuNRBxSGvcylseAgv/BC9mcQiOnaHTJt+F3
	NTjqa0VzdnOIx4FG8
X-Google-Smtp-Source: AGHT+IFEnqfNEU+rcacBAMtddOncowvVosTxbTcww82LB9zIQkVF6gwcSPLsVyk8WzQcN3keRGes3Q==
X-Received: by 2002:a17:906:2932:b0:aa5:396a:c9e8 with SMTP id a640c23a62f3a-aa580f27899mr1226207466b.23.1733075248682;
        Sun, 01 Dec 2024 09:47:28 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:28 -0800 (PST)
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
Subject: [PATCH v4 06/18] arm64: dts: imx8mp: add anatop clocks
Date: Sun,  1 Dec 2024 18:46:06 +0100
Message-ID: <20241201174639.742000-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
References: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

 - Added in v4

---

(no changes since v1)

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index e0d3b8cba221..0b928e173f29 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -709,6 +709,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mp-anatop", "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


