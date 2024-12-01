Return-Path: <devicetree+bounces-125828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A89789DF6B6
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:48:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13058281779
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED84E1D9694;
	Sun,  1 Dec 2024 17:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="A42SVbds"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187001D934B
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075250; cv=none; b=J45xu3i4nRaxzVQYbFnI6rqQb33dunF+oRTSjGG4E4yjLS9yNySAknmQ7s83NbyqR6E1yrH6AecoOunKHjtKEeOJRvk3GrOGFfSyE5ijlAY99aBxxBYiOawgBkLvtF5ir33OHXaZFPjV5Ph2qRSO+pb+LXBRqouo8szgI/IMD/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075250; c=relaxed/simple;
	bh=pAZvwlhdsPQOXTECn8htnfBSk5QEXWk0LGMj+aO20ko=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h8soqBc0839bmYKhYm6RgafRCiwc5WB3xLXauee8w/W4mqMGo2PHbZCBz+JamybRKkyw2E8RKpDw9oaxT+zSZMZnOk2mj9GgLSaiMHwTt0rxmTwhvbHu0Z7nW2WP8XaxUmLRmbbdRMOESfjRSvy08j18BYrHdhoQnXYbxUCaeyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=A42SVbds; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa503cced42so519222566b.3
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075247; x=1733680047; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=25hkQ29mTLGKqj1oFjf7AGoT1DWsKqPuwzAecsYSYFU=;
        b=A42SVbdsNGzk3gHTrp22u1MnL7so/pO639stk/E4fX9ySQvMbdX7RTjwCQNUuEt2aF
         P5xUPci9D2RRLiaPKl6tc6QjRKCb/Is9nRXSezQ02hKBar2mgWLMT3D752z5UvM186CT
         Ds/P9Xf/H2C0ehlvINPQsSRI9jsU9GPdjqlSc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075247; x=1733680047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=25hkQ29mTLGKqj1oFjf7AGoT1DWsKqPuwzAecsYSYFU=;
        b=q21/COyGF2LgrrDqf+eBXHD8w82gYfNtEiwPw8XnoeYPuQp6pyk2bdZytTrnA2QG7N
         8jfRyHqs0beyTb7c5njVVry3KSgnWRPvp7FSsJT9L6VP54jzQHFplGRmAR3tnL6abMB4
         r1vVTXjOhDRlysZByxpGIbX9TIqbzb8Rg55ikYSiOkfb+VDy+uOfGuAgwFuYS/cJIv5b
         rNIHx2CbidoIYJcYdwsRoCwPCm3yDRJptQIWxRnqpSppAp5atTxty7W7Dcum8BJnfGIH
         eTAxRJdouy7ZJUVuNsE/NXdyn3JID1VGJzpYhlxdPHA6Oi4rdPcPz6yyhbGz14FRoEvY
         REpg==
X-Forwarded-Encrypted: i=1; AJvYcCVTTFG2XiZN3Toj28rzR0T+dUm43GzyTXZU4AOgmgqHyE/QQbqLhBnCbl8saHCO8LQXTf1aA/eq+0e4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2UY5BlNwtH1U0TlZAch2oLrkN5tz8ovrcEJz/UXRZexu25aHf
	22t7tRlPdQWrd2/l5j2kch4PJjx37BKTClxIJSZSjrJaw7I+fhQk5Is6bFGOCa8=
X-Gm-Gg: ASbGnctSrmCu9tBVs1j7/LZvFpXHJlX8UyERpCZiNDj/7a3S6AsaJkcIjyUbNs6KxQ3
	xmdoHo2cb5q5zVtfS2wdDec7gM1uZe3DLBeGwa1m3UUIY1YNex0htIWYMRiR6NFVoj6WjotGZ33
	0+TNpIoec9FtcDHdOqdCuhxVYAE3ThkSb4Qqr2C0cBPfiTbimkpBtUXz4n2Sjjm8iil3sd05V27
	3mKr+vEarbDWbJotwR6kcd8WPhbur/Dpjk4Ujy7iUrky74qEer+B5xdwV9qvUNIrBRvmty0SwV1
	rsmhIab2K4u1xu/He8Kt6z10jmcV22yolnly0m7l+qVInbvx1jSGFesSEiur+wUqjV8AxwY1c30
	Dj0MYCxUPJKq7r30C
X-Google-Smtp-Source: AGHT+IETqWOabkVlO1PkfWKeKFWRO9lagZn7Lq5BjUv+Xpoj3trCPw9o4vBjnJJzR25eaHHFJ7m37Q==
X-Received: by 2002:a17:906:3152:b0:aa5:2232:c8e4 with SMTP id a640c23a62f3a-aa580ee8d1cmr1705022666b.11.1733075247468;
        Sun, 01 Dec 2024 09:47:27 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:26 -0800 (PST)
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
Subject: [PATCH v4 05/18] arm64: dts: imx8mn: add anatop clocks
Date: Sun,  1 Dec 2024 18:46:05 +0100
Message-ID: <20241201174639.742000-6-dario.binacchi@amarulasolutions.com>
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


