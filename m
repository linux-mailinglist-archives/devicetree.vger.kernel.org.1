Return-Path: <devicetree+bounces-127347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9133B9E539E
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:20:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F8FD1882C8E
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A288206F11;
	Thu,  5 Dec 2024 11:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="fcS0Y0BI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A7B1E282D
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733397596; cv=none; b=NOEJQHE+PX/qQQaUnKurrXIWWGsYhLJhoAXZaaLo/23qjIwkltsKL0ZTOoQvbo67iOTLULRHN6w+upx9sCyhpTeHf99rdLuO34YKPnReRTxIyHC2GlqtnQmgXWTb26QLlZJCJGg00R3H0jLh38+VJg2mGswO2G4QHZM2S9XCKjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733397596; c=relaxed/simple;
	bh=MWwhsP/1Gq2jtC+XMH/+PSmlpfJmY2R2gm9uwDR4fZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QivakS+zOkEihYpErS6rP74K8fMl10Nq6AK42xAsHGfhbOabmUd2qqPIGfrKu+VnIQ7jFH4Doj34fKkpct+qvPnVR8ToHV4mfuNlWcDk/W09qBXL6IOucgEiBz1PegLjx3mqsu8WB/xGWbOVlGddtATcXCpLko4pP/yi2OyZNRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=fcS0Y0BI; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa530a94c0eso155588966b.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733397593; x=1734002393; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=fcS0Y0BIKqUNr9t0AAp4GaldTaG7FXiRH9FCj4RDNobarcJMnJD9KpzGlJQ+KTjnVC
         6Rd4CeKOzavUtnd9ueNtPjISc9nbA0h4Hfkv1WdvcafX0OvsxjUj/RHGBKrN3UmHE3FR
         E9XSRYobWN31ZX+CE3mzADuoK2XbDoGDZYOk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733397593; x=1734002393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=LnVa8COfOOqYrVtGIpAoL9lUbJivxlOSQMIZc0M6TpxCZhNyVHl7wKPWHCNv/bxpEp
         Aq5QowXkgqyil00AkDYbVxntBuSh4MzpblhBhwumznGDnKb/6xeo+IWQ9JG0hpvB3dUr
         b448w/mQhUVjF/QW8Fi1upCOoexScisWOtrFGmvZGZdPS9saDQiR3UzCP6zaxjDOV6FN
         RQJUpPV85uSPq6m42h8gCrYhKjhRNlofC3WP26IZpFp9jLcYSWUmhWx4Lr3HSPgqgEpI
         scO3IrYn+9UJGMMcXcu5G8Ht3SEo9ZyIiJ2/Nw7HJkVPgUq6r55qg75Un8vu4h2t1WLp
         eg6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWWhnq191K5nlglENI843Ns7FK5ZbZWSeTJMPcQW57sISqQuGA+SDePCPPq1Ul3nVnCguurpOytbDpt@vger.kernel.org
X-Gm-Message-State: AOJu0YwnmcKuAlp6uw8GVj53BjdXBxwcdpyn+Xa4dT9Ti1BPWCphsIpG
	Yk45SKBBchLPQaE7gvqwuRnJqxGcKZVHlIJJIvaS8U1eaCW2WPfCVNamo+CLjgk=
X-Gm-Gg: ASbGncv+fXBkuTv45Ce7U5QObUWGYAVGeCjl5aDfuFNU4AXvZPjAd0g6FoV0KfhV7wV
	2ft4Jo70Q2UnQ/h/yNOjHVj/Z5d2NkynqFetcquIw2VdOupZ//83nXY99bv+kSqnE8/i/V+nCJ8
	+E48xxDbvE6+xYN2UIHog7PUdlh2V3LBzI5tpXyrbEdVqTGHzFAzCkj0ERSCOh6PE/Zt2dYDqnd
	hQM6v/M88ZdYbQcYn2fAvEOMxl4aJe4LREimMeqBa9THKc80BFdo5xa2nu2IWSAtTt2OrWeaaUE
	3AYHxg1X7KOm7kFuKAp9q090FH3V3DT/zSgqMLTN0BKdJw==
X-Google-Smtp-Source: AGHT+IFlIqOIxRQlaaVKv62iWGPtDqL1DgvwbVPP6DdzsmH7KN4sRitNwb9/Z7vHbZdE5W91O5vUFQ==
X-Received: by 2002:a17:906:9c1:b0:aa6:302b:21e4 with SMTP id a640c23a62f3a-aa6302b2e97mr32793966b.16.1733397593185;
        Thu, 05 Dec 2024 03:19:53 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:61a1:9bc8:52c6:3c2d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eedcd0sm77505266b.87.2024.12.05.03.19.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 03:19:52 -0800 (PST)
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
Subject: [PATCH v5 07/20] arm64: dts: imx8mn: add anatop clocks
Date: Thu,  5 Dec 2024 12:17:42 +0100
Message-ID: <20241205111939.1796244-8-dario.binacchi@amarulasolutions.com>
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


