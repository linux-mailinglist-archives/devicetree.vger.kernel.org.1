Return-Path: <devicetree+bounces-127349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B02579E53A3
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:21:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65D7B285DDB
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F921F4722;
	Thu,  5 Dec 2024 11:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="KTrQYe9P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA15206F39
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733397599; cv=none; b=Y/uVuqtC6yPCF1cTNSyq6DzNByDhOYUbfoTI6TceQvs2VRefIz9WUemMjmeM/RiHTweNVqAkx5a5JnaXROQgVJ3WURK6hatJbFeZWTWlTL0GLoh0yXncsWPWuVAXk+xO2IGvFVMawhVsCP+KiaubhuAz/xWXhK8bUr4Vr2q1bk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733397599; c=relaxed/simple;
	bh=vc25/TFqvg0Ekr2Sm4G/VkkviBdPeMF5e7FdTWNCvAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HsUx1QHLjlXIwGGPz7qyDZgRTi2ECa6fS70VM7UpbFjp/8dZMIdDyqe44jilLqmc0Ty4V1E8XwFYxDfzIwKZIZguXG/Je18oy6169pEi+NKu4vU9mh8mmg2rtiH2HuYx/0pU5TxlZyS2ecT0SRGyil1rvoNw0UfXbgjqfdxnlFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=KTrQYe9P; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-3001765bc76so8028721fa.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733397596; x=1734002396; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=KTrQYe9PwLiXd3Vt7b0XYvmC1/FImxTaqLeRJyrUOy56ehjvAOctWGJ2JfwmiAsgvq
         5few4RgmwLR7QY6yIvUnXz9j2EFUpCKfWhgsPCThAls7GK+rma9bE58S7An9/LEGZpG0
         loaEHZZ244eDqbSyavkaagjSi3gTyxwDo27uY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733397596; x=1734002396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=FLLjMt/OzdPuNkeiajGkfHB4VpdC3u1pa6pVHBio8LMDfQG1hpaoMXNNQIS4Jr3yCA
         msP1gvL/MYvYi3xGOHfHhFE2TY/ieQmWWPceaQlz5MSZT4iBHwHd7pcAtDgKZyK+SVwT
         CnZGFGfBTipMAuTB2DdGhWO9R7KIpxQmhxMW4YFVfIeHcpLQbLrQiVLg7fbv6AG0IXPy
         PjKsCVVXbXRTq/S4m2R0m4gbKJf7iWt/7z7tiW7BTpobP/tLDIK5iKkVW6ZO2bgsyI7I
         pW12ildsfVlh1ol2Q+MeotBZLPzGuFweWkzNKPClwR477E3bkR3plV4u0seNGSyaS5o2
         pqFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbwJj3tBB7i7fJLbyxVyicFmXtwJyGr6NDkThWWbZ7/7LHu9RruqaSs23h6BpKnga1B+y73YyH4LA6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8rEDXv2whQqPGl6tcPJ+WV37c4Rz9ZPFoUkmW+bqXFU7CcRZz
	D2lv6tHjJoqHvruJYaPUU7xWL6z884+aiHwE70nUHqMBeXOdqt4Vf1SmgOC8QjM=
X-Gm-Gg: ASbGncvWMU9rgizz02YxVOlMTUI+wpzLNxBmZ8R2cO5jobnc7o4e1Or7nvgOwxPCaD3
	mSQuDRTIyDI0gigZmHYokDuEjNsf4lx6T0WLQCZPX/jkPABkUDmZ/uoZ0wSFJP41Q6ViYyL8fPK
	Kh7A0rY2K99xNdHCGldzRJd2A6KY11jK5fVE4vmPAj3BZaTKWdqqi9o6ViHQY2kRqr6XUORsp2f
	Hb0jZu8Wg9VqO1krUy4jfqdHlXAKW9HWENlhg1Zw9wsWOn1BBFxe0GCFyqMx2miQMh4DNjzyJ+6
	HOGqy0/GXuZVEERmYP0W5fpgahG8cKNIfeR763KnOGetCQ==
X-Google-Smtp-Source: AGHT+IEtuduGBZsALDR63XXUfmp8mk6Ffl1qQAFy8dFjE8C6ALJJ5nV+WsPlwDq8/o6BI50yiETcjA==
X-Received: by 2002:a05:6512:3ba3:b0:53e:284a:70e9 with SMTP id 2adb3069b0e04-53e284a712dmr306591e87.57.1733397595775;
        Thu, 05 Dec 2024 03:19:55 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:61a1:9bc8:52c6:3c2d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eedcd0sm77505266b.87.2024.12.05.03.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 03:19:55 -0800 (PST)
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
Subject: [PATCH v5 09/20] arm64: dts: imx8mq: add anatop clocks
Date: Thu,  5 Dec 2024 12:17:44 +0100
Message-ID: <20241205111939.1796244-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
References: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
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


