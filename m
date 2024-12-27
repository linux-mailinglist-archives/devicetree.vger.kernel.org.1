Return-Path: <devicetree+bounces-134412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 845BC9FD634
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:59:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2BD947A292D
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D48061F8F15;
	Fri, 27 Dec 2024 16:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="IBd7yWXF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1F81F8EE1
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318661; cv=none; b=ho3MOBevCxFcN9EFBxQUOb+IsfOl7TnDgGyQvS3fVdN4s+JAHonuscwiBRSav9B+XMXgmKbwA3pOzHHp0/v9I0y8g7DyoHnLZDzcnlEsgUvH8SL5n5ZYUqQdEdFjH1FfUt13sjTlougxa16TufH3R1ELTvShSge231yL/FzAHTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318661; c=relaxed/simple;
	bh=vc25/TFqvg0Ekr2Sm4G/VkkviBdPeMF5e7FdTWNCvAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KrpEsHNqmEfH8dd7L1x93Bc3vakD5LeWwNwt9lVRmVt6rrHGfQvt+1WXMpYnkLtve0qw2dmVJAMpjbmJYYdXLf3P96WeaW/pHOEUbS9smwRkJuq6MMRLGefwhQeQvbYADJbFNlvD0UiJhsrhoNIe5H1Y2JDKwmfoMuZ2XtYcLhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=IBd7yWXF; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5d84179ef26so8708657a12.3
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318658; x=1735923458; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=IBd7yWXFGuFditt3Uzdre40FRbTBNmOHk4TaDkIaLfKUq93Z1O+woVmoSDxSplFcJS
         aiG6Ud8qZl57tk4mERTKzhpqnUJk5HbbdJjEUKHQ9GMJWNr6glhCUfZRHpFt/EnqBWI7
         mi0cRXlUhDu1NA1qcCXyCHXjLk84o9wyXjnHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318658; x=1735923458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=STUVqqBp7FclouOjRqqKA5TWBD4JDqGx2SYiQZUktIraQybzJGvDSv4A1Fg4n76PD8
         YzV5Ps4YCzuQgvD64K3QnSdHjB4ERlV+cnsnbk1jhesf3iTw22wsBeNCMI60Q1uXscXs
         My2gqvUNrExgn0gNabHZI/BO3MAgr9aY8D0cyARE5DOoanbvynrNPGi+rHqJ/1Xjc1sT
         Om71huztd4wonjewirMQ3Iup9CpQOtFJ4I3CC2eOCcPpnP4MNtxibSfzNwr8dDGfAtqg
         +WyODh6WncS0ZH0j2d9qzPo8GipGjuGQVP2LUSP3d0wrORpfk/OzhY1THnKR9VX/XaEa
         dVlQ==
X-Forwarded-Encrypted: i=1; AJvYcCXO58XmHMeGEnzLaBSh+rcEcOaz0ctUsdS0/gGH509ewXH8TKaHDrmui9BUDc2nauo1r+irPXEdNh/O@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe3IY61P0oNU+IsK6Hf1AI+tDF+ctBjjbRuqKgOXk9+APmO+Lk
	+YaTGIKqaCBDri2nAfYDznjlkuvp6xewMA9JEqjdZE/ugjuZYlhCojH1btb8vpc=
X-Gm-Gg: ASbGncuGeVoLy73Xb8PQz24d/gbtMPFIVNGUgJS0rFZx87A7Kshd+/EG6xT7rpd9PEz
	/8Or3p+03cmjQfq9sci0Ls1duhGKwedEN6VTJEuuWiTwO/IzmH2rwnG68oLU1weVm3HcijrmJ5f
	M5aQkdRWSy9wMfjYW8W9+Ot3GYEIzQJLhIteyEla7jiDWkETDV4S9zORYXvcT3D1bgvabIWCuxD
	FjSB5z/NIIBiLYBbOyARbmn69jvmKdslxLcnAY4HqFVUztAP6CY91ouhYqAL8lVwdsF6ChKmEMn
	o9rHRp3wt1UCoJYvMg9xWw==
X-Google-Smtp-Source: AGHT+IEU39RTa9ECIPzQT71oAG8YXlNy7WaA4azCq4x0ZK+7kYxrqzuYsejzC7Lx7FeHEAwhQoFPPA==
X-Received: by 2002:a05:6402:1ed3:b0:5d2:73b0:81ef with SMTP id 4fb4d7f45d1cf-5d81ddfdb67mr28928804a12.22.1735318658268;
        Fri, 27 Dec 2024 08:57:38 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:37 -0800 (PST)
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
Subject: [PATCH v7 09/23] arm64: dts: imx8mq: add anatop clocks
Date: Fri, 27 Dec 2024 17:56:12 +0100
Message-ID: <20241227165719.3902388-10-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d51de8d899b2..1d1424a136f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -817,6 +817,8 @@ anatop: clock-controller@30360000 {
 				reg = <0x30360000 0x10000>;
 				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
+				clocks = <&ckil>, <&osc_25m>, <&osc_27m>;
+				clock-names = "ckil", "osc_25m", "osc_27m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


