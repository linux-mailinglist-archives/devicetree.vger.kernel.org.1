Return-Path: <devicetree+bounces-133379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF9B9FA70D
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:07:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C8FA7A19FF
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFAC919C543;
	Sun, 22 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BaSi4XK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5284719992D
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887153; cv=none; b=LruFGFj41h9bY9t+NYjfhBOtjdj5cMUk3GPAG3X4r9oY9LN2wJHYUAavdpfc74iL3j8qOVE62bgqg3lxrk1vAO/K2l8ZhZxI+PodwYlWJ9vVt6gkj2KWSMGUtIxxNvjWL/NwJHvRaNGVdE/M+SnSvFppNZLpeqslRzdg3yySjVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887153; c=relaxed/simple;
	bh=MWwhsP/1Gq2jtC+XMH/+PSmlpfJmY2R2gm9uwDR4fZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gaw1HzCbXRJQD1Hv4D45LN24Tm2HhUn/Q+Ag14pTreX0kxH/APMy5DWC8C0Y9cLuYuI05Sg2zvG4h5z173ZG46XN3jqTKeRxbUVMA1U9Azo2kHo9xYJefwHtICUrVpLEWfFBPLNxuZsSM5WPevNpglZU+R4keXLOamVyINpNbEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BaSi4XK/; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa69077b93fso499877766b.0
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1734887151; x=1735491951; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=BaSi4XK/INbEknW22yrMOk8Ifh9yhrMnFvJcDNXzvPEhjQXwUhoe5kGBFHs2Fbpalf
         4i/vJyisPVa4T1gvh8Ty8gNz6MSusRi9j76Ob4AoUaKIwxPF4mQifW381D7+UR5Ais5M
         QYthfznlPhDKbWcrNIYRI/xBEIhMdm2PYaf5A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887151; x=1735491951;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=u8YEXbjjEq3IBLeQk5e80l3oZIpfQLciGT9JYfEO/KBhVDDy17cEms24e5dDabJDb4
         /KIHpB6OEGRCeGzb7ryjE3n0EGs3fVxYiqa1sh9YmdhhJpZ3sVQjVHoxSIP93YQLKn3z
         qlCjJ/FWVbGB18haGhNKFrVGZuQV3lfKoNorOU4J5/X9Tq1YeE072bZJvrADAa10BtW7
         OhJ3980DB7hXme8hDc/Q8EUMkgdyok9ZINbgGg0MeNUhifmW+b+P8hCwBIuZ8n95vSFY
         kfkdEy61bnYEe4ACa45kNgBZbEJAQI9Mpj9Rrz08RXOi5ojLP/q/W4gE+JSvb9e7/tvv
         vetA==
X-Forwarded-Encrypted: i=1; AJvYcCV0yY3B2YjmD2Xfmz/vpH3f5MQ9N2P8tFArtypi6THgnnNVZtEHQ8tTf51aoJv8cjxUIAu2DEx6u6Jp@vger.kernel.org
X-Gm-Message-State: AOJu0YycytDLyW6LirU+bzf8PuWZC0Sdshy+T38a060KFNs5RxaCZBWi
	7Ng1ZsBuYo2NFMiPW8keX8ELJRpMzhrFTVn4cqqbdVmCLkjrh6tXMU4QuR8lwfM=
X-Gm-Gg: ASbGncs6LYYn7ggSwa55De+OK1bqx4QU+YpE08bT39Yez0UP597yE9Du3e/U+FNy4ZU
	TPiSGm9OfFJAYzpe+UM6ePEcrGbEv39aVqOARlJcfBR1WWemdqc93nx4VIEIO+Rvh7hHi5G83nn
	1kT3AOmfs8jEQB2dLBTDBqHvgUsyGZ1biuJ3mmapYZVso1mrzc5lf7CuHgCXw6X+6LJPOxrit+7
	Cm8iufzXcYkgb57AGq7TbcA2pTFYKfHS9d1AvgzVBcTlaDUXcRLn+7lXXKclDTwNG4FcK8Pz6fZ
	G2W7Xs2J0XoN/XWpEKDwsrgq62BlI+k/yClih/7j8d+dQA==
X-Google-Smtp-Source: AGHT+IE7qlrIBo/sacNeaS4a8N/VEhyD3V5TtGsjcDWXgBSetS3Ohl7c0tUQC6AZfXDecI4twS+cow==
X-Received: by 2002:a17:907:97d2:b0:aa6:ac19:b579 with SMTP id a640c23a62f3a-aac334b5806mr974631766b.26.1734887150752;
        Sun, 22 Dec 2024 09:05:50 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.87])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe48d6sm414056566b.127.2024.12.22.09.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:05:50 -0800 (PST)
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
Subject: [PATCH v6 07/18] arm64: dts: imx8mn: add anatop clocks
Date: Sun, 22 Dec 2024 18:04:22 +0100
Message-ID: <20241222170534.3621453-8-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
References: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
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


