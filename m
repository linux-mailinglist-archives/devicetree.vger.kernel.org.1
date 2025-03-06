Return-Path: <devicetree+bounces-154812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CE4A54961
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:32:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80A77173BEC
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBB7E20E333;
	Thu,  6 Mar 2025 11:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BSd+0wIJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28EA20E00C
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741260647; cv=none; b=sOem1R+LnC/0+S3+al4RnuaDfJloJR8Do+I0DctUSD678DgORDtGq68bKo8H/EQ3ozxd5wq52+Jzz46jKbpd/MWMFSGRq7AUIC4QwSYVYJsHEOJoZgYdjrsqN3wRMMVJxgKq6dUL4intlAoPHmjKGIZ1+TbWuDQadpAKKNolf2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741260647; c=relaxed/simple;
	bh=EfuJYR878rJ4Cw+YuO97nDjgeWj+F6WJVMj2hzhOd0Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MeNu8i8TXKUunlUBppEKkvhdr2NTcewhR4Vw6pNxxE571KQandiRUkjlRGbPYTR9Dw1UBtHSeawB707E509B5kMVLVdTx12KJ+TVhI022bvWx58rYe0vAs6rbxdqWTO6V4n/o37p+1Gnqrv6al7aRf6cPlHG7ovgs23FcPCH2mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BSd+0wIJ; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-390f69e71c8so378769f8f.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1741260644; x=1741865444; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JTseU8DWKtdHNNseUc2PJ1vcygpii+LlAX++fbmk+pc=;
        b=BSd+0wIJ46E3aDBqDeYIQ74lZdMr9oVC2e2AhK/CscAHujg4UDpF0q3nhsTmUk4vbu
         5hbJmva7kgAmTdr4f3GnzDaTIAQ7K+C07Nr1ioasg2sGvvEP7R1nrKlOL7D0ci9GxhLB
         R+mEk41eCCOWXf6DtyVUfi5eAAuDwu3GjzGWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741260644; x=1741865444;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JTseU8DWKtdHNNseUc2PJ1vcygpii+LlAX++fbmk+pc=;
        b=BTnXfXD2qhzq4lRQ9291DHiPsCNqSlyd86MfGbns45d9huy7pvzOeIRY91LiCFhq+6
         JvwDHvarAmDvGIgvbBr/HQ9AV3TBBOIR+4GUCpn8SyHCjqWNmTWV+sRdS4Jo67vEX4kc
         8z69z7ZbRU1+D3KgXIWcDJp+RpccLQ1GgFX42x7FXP4cqSYVZvw2CKMrIyoqhPU/ZF8z
         IHBoiFYm/tj9f59kiKw1Gf29GbHZLGflPLVW0lGkNaQ30yYW4ot5bxsGsWv4RkXEq3qn
         Das3Pr1KwujFIEbgdvBvIQQ8aFo2EGHYkDWf168wreBTWCvY4JleITVOjmDYoNml/K/i
         gtXw==
X-Forwarded-Encrypted: i=1; AJvYcCXyuzGDrlk/KmVknHbbamX9Wq0uHQyOZyQmQ5nK85qMryTXtAaYk/71eoHIW7V6CGb4wPCfC3Da7wad@vger.kernel.org
X-Gm-Message-State: AOJu0YwMJ0BKX9DA8T5thO04qi8HSq63ciR7eEBH+8tRzHBfjY30CnzW
	wkReGjkXSm4FvPFioxZeXqiraX9prLbqVZZuadDmaTwbWlLT3dgGOTILPDd5LdA=
X-Gm-Gg: ASbGncvuHL1c+YVsn6K5rTIhLNQ1rTc42FoQS3pzpCWfd+01nmhRcwagO5MNMB1HcAy
	xK6Zl+wOll76Fdmp5Y65uyYbANs9ftwp/SX0hOwo6kHpnGPISyT0dTPSyJUnYBmowUoO7QVwJQw
	iAvY+a1cckUM5WXtPpdrQcXOvwx5SicpFayb9qrWGDMTu4aMja8wAiriuGDPOCWjgp2SgDT+G8T
	3VCZlF+kKgoNPPREw7bkOUfZHwG5FN/jArAJ+W4na0yxl6Nia3XKWfQR9BrB0k93OO5HiUXn85I
	kPqYcI9EBdzCktFZ0qb9bXb72+i/ymoGVNO41JywWfaNIumiaYljBNXDj3E7CuqF/QV8+vMq2JA
	KfamOmQ==
X-Google-Smtp-Source: AGHT+IF+Uv003+XSltPn5ffM4uC4mlgaqPhLJOFsDdkfqP+MvIZaA9k6d3mtHBYRHEnmB+I/uE5LEw==
X-Received: by 2002:a05:6000:4185:b0:390:feb7:1f69 with SMTP id ffacd0b85a97d-391296d3e2amr2365832f8f.4.1741260644016;
        Thu, 06 Mar 2025 03:30:44 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:4703:aa8c:6eab:8161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912bfb79b9sm1749650f8f.3.2025.03.06.03.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:30:43 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Stephen Boyd <sboyd@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Abel Vesa <abelvesa@kernel.org>,
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
Subject: [PATCH v10 08/18] arm64: dts: imx8mp: add anatop clocks
Date: Thu,  6 Mar 2025 12:27:57 +0100
Message-ID: <20250306112959.242131-9-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250306112959.242131-1-dario.binacchi@amarulasolutions.com>
References: <20250306112959.242131-1-dario.binacchi@amarulasolutions.com>
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


