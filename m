Return-Path: <devicetree+bounces-231370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7057DC0CB10
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:36:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA04D3B74CC
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9B392F549F;
	Mon, 27 Oct 2025 09:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gd7T6P4s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBEA2F28F4
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761557551; cv=none; b=D5haMvYKQLckckPwk6ZRShUfjB3O09yhHKipcLkUHCefTpTHhRndhr9SevA1QVugeJFusswBibXJrzq+0JS3nTFvUwf8tjcbr9RwX7PvxG2xP9tPe0l7DG63u34an+cuOendtBlbviUlMhGNp/oaW40SA14lL2MQ/h2ixGQ7450=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761557551; c=relaxed/simple;
	bh=tOevcamH4dU12q4fMfHEnmz2A1COeCliFA26VQizE1w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EBnUAw1d0p124B3TcWtorXlFaJHjK4FaWZ1wujO1sZCFPygQqJ6/TNWAaOziz9DURQebizR1HkrEWWUxWJAnGOSeZlUxv9Kx0rquhelsTb/Sij/wf4VpTf67YnEcTzRxdJUYC+mXtlKHx/1+S13jOMb/tWPKFGChpqGpeXWUhKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gd7T6P4s; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b3b3a6f4dd4so832770566b.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761557548; x=1762162348; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kb+oCJFy28PNmi6e8yrO96eaDIYbCEFfqpsOTMY4zgQ=;
        b=gd7T6P4sLD7nBwgj+LF9RdgROZDd9yFLh5lCsXsqjSTrBVOvB/aocOtNAKgsIA0d0P
         1hMHXebDXPPoMv27emIKu+EMdXcjVmNTwQYfbbRgVzQoWfzTwASn/Akqm0Of+vyEMeY4
         ZUHrla4oKtUUiLYHziT23wDtzBlEGT0slpANxu9jxr8+nBSta+dYgk9UuZeWMIVUo0oT
         qC21NaZYcew80PzFCEGRrgZ0ZHe9pQW/hErNqq18C3LYmlezVmHEywiQbnve0EkVlTrR
         2kdiURUkcdvwpm8C7Kfi/hYO+5zg7yjfekMwi9I6Tv9C2lIVRPeOuBvrwocmnG0nRpMI
         nWew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761557548; x=1762162348;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kb+oCJFy28PNmi6e8yrO96eaDIYbCEFfqpsOTMY4zgQ=;
        b=Gqr22wzs/p0qZSzEsGmRmW2Dvd9LDIeKdnBiL3WpQorw60L5bdvFxbR56WSGh4zmKP
         W8bXEaAtiTFyJGG6GkKxEv3pGvFBE38mD1Wz+RvjpE+J2s20AB1QTPoNTcJ4M+kEmUWo
         d6Lqp/EYAH0Dc7Ik92zFcsyKGbypgXYtiWuZ6q7Z3Sp/0aSramoTwY4PxWElxLi3/Gch
         sbp4o44ipic6UiKSyE4uq5e15cPt4F33kp6UcM72GouMr9g7xD9tNFlHITRF4pzEhHTP
         sQLY8YI3zJmA7SM2KGYcU3ko7TkjYXztedrO6yM28WxunahhRLJZjKUTLQQ61bFOvzWw
         Bmxw==
X-Forwarded-Encrypted: i=1; AJvYcCUph46CicOayF3X6yuLuxYXvhPDoNpfHaIVJODTfwBESnZJgnjhLGIIwNGKngeq2W9OB9bgD+E5cJDX@vger.kernel.org
X-Gm-Message-State: AOJu0YxQFruzQNgMSLspVuGk2Lwjlw7H3pUpvNpUBdYf/+190R6KEjkd
	AzsLvVCoDRG7NRQsttwwYzP1Qrs8AIQPI1V9jK+soer9tuaNundSDFsW
X-Gm-Gg: ASbGnctxs2yrr+NT+hDks2yXM8SwGFKdECzVPZ03XUZg2vGQHQHrTlgJV9o6DIA6xnA
	3RMCvQ+yl363PySolcWDXgR1O4HL0hWqZu7AsABpG/x706MsL8fdZ/BAB/D05W3ly6fntFU88ck
	63W4qY+oP01iFIbF7o9CapdYMRBwuDvQq/XKHA+bSW6Vcd/+sWwxRKFeXyAzLZ4LwfqhcqkZXUd
	+byQ3vlATaLrRv+msdkZMWsWEU8dHFNc+NIhzUxkoFcOnUcCpcttWNLWHUM+etiO2aSBYCp5OLl
	n5Icw5cMBW3Peja/1a7Wfn9nm48nPSFW7DD7lYc6WB559dRTICHkCHECMDvG4hsXQ3rqOHYQySU
	SUevQuvtZYRjhfgzJgWi1ve6gCUwwrMdl8odGxmvTa/O3tnnMiIt2XM3iZkDzqrJoiIuSuqpC9r
	yjNIH60EOlh/bkNag+xU1EVRgN4puLGn+oMX2t2fU6KnxB5ScHzuEGyJTNogvalme4sh5u424gi
	2vn91F1M0OWlTRD
X-Google-Smtp-Source: AGHT+IHTgGv4G/+wFJOtkWMD7ZAhCWVQTDxphKQmll9bPxy5C1Umq1JWKsBdZD1UJY74GedfpKzDzw==
X-Received: by 2002:a17:907:da1:b0:b6d:5e64:c36b with SMTP id a640c23a62f3a-b6d6fe9fac7mr988112866b.29.1761557547697;
        Mon, 27 Oct 2025 02:32:27 -0700 (PDT)
Received: from toolbox.int.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef6be28sm5681014a12.2.2025.10.27.02.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 02:32:27 -0700 (PDT)
From: max.oss.09@gmail.com
To: Max Krummenacher <max.krummenacher@toradex.com>,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 4/5] arm64: dts: imx8-apalis: rename wifi regulator
Date: Mon, 27 Oct 2025 10:30:10 +0100
Message-ID: <20251027093133.2344267-5-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20251027093133.2344267-1-max.oss.09@gmail.com>
References: <20251027093133.2344267-1-max.oss.09@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Stefan Eichenberger <stefan.eichenberger@toradex.com>

Rename the wifi regulator to what is the net name in the schematic.

Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
---

 arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
index abf6d543380c..4234289d4012 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
@@ -77,7 +77,7 @@ reg_module_wifi: regulator-module-wifi {
 		gpio = <&lsio_gpio1 28 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		regulator-always-on;
-		regulator-name = "wifi_pwrdn_fake_regulator";
+		regulator-name = "Wi-Fi_POWER_DOWN"; /* Wi-Fi module PDn */
 		regulator-settling-time-us = <100>;
 	};
 
-- 
2.42.0


