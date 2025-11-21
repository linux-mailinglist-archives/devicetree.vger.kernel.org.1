Return-Path: <devicetree+bounces-241053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 35252C78D4A
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:36:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7360C364D0E
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE8F834B420;
	Fri, 21 Nov 2025 11:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dV6TiyO6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B892347BC5
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763724968; cv=none; b=JTwKHjjzP1h9uc9mQaO+gk6W4cVmRTML1CPug//nGbB4b+snGnLw2jzsMpBUyq5XHtquengIsv+cyDfJ5Oc9foNaEFKD5VzYpB747N6AwhDSevhem9srOjKySiXagQRe6GZ8zagUTS5tZI3Beh5N/7ugrqXZqinryOex9zpFgMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763724968; c=relaxed/simple;
	bh=ftRTYtj+MIdNdrTL102wop7nvVmtJJk9dP87Q3JUdCo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lQierXKHASS1lGw2PPSKB11VYuQE4dHfek7VQnBUCaC4H8a91/MHL2H6SZodtUHDx2u0o1qgKjjTKElLYHGG/0VrkeROcxD6r8zNHcMMOkwzZXQ7Vu5dr67E2jYC+7g5LY3kLYP8ZCFgtYf0An4wdiCQ2SXWYugnOCn++2/6pcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dV6TiyO6; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso18767775e9.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763724964; x=1764329764; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L1iu1X2rkalrqKSnE+I8dJ8h9QZAQz7+DuxtVRZln6A=;
        b=dV6TiyO6yeyYY0Zt5haoYB/ex7ipCl4ini7vVhbp1BNMcHOlxaxQMVEGEMNkWLbZZJ
         x7iGB/2y1cfecRyA1/Y4MVvDGQA6Q73aDUk0JPQc29LIv+Q6eviUX5flNG7PjU1ymGD9
         UYB4c3jdMzuwbVYEI9raDzTb/60Dn4ByKAXkgi4luHtYkLj8eC0pFgxwfeu5FVElOZVK
         nL2QCmcItRxP1Lk9GCozzPbZiIsARMi2HEfqKHEMzfZG0cTDQhFGLApd/N+JGzb2wXxJ
         k5R+hFlUQM85c9upG81eaY4uIbl5bw58dP1ACsCcUf51fah2NxZ0APS2S0yLlW5VYUgD
         gxDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763724964; x=1764329764;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L1iu1X2rkalrqKSnE+I8dJ8h9QZAQz7+DuxtVRZln6A=;
        b=lAB6eIJF4TLm1jkqeaPuZO7IgZEc+veqdA3eyzEvq8cSdtKSjtjpXpGbJa1qWLLUPp
         k6iBDJnp+ITXGS9c09rKS+Xj/IoyxE/xOJu71CJHx+uNdI6pbKfmyd3BHLInslcV2uQc
         XZFWa9OKPGtitXzsXTSTA2PqGXQjRzMTc6po7W05smZC7meHHHCAVyKrsgANGrE5/ur0
         wJeil5h9TuUcZz5mbmOZIQbmdvWMz0PuCtOWNHwvbAkDr4RIIgZ5rbass2MAm9VlMkYz
         jiWu5N046q3Yb2F9yg618HHRt2zAs+kqK/4RQ077k+vYdR30ll381IRZN5lnzqMYyYW1
         7pzg==
X-Forwarded-Encrypted: i=1; AJvYcCVohpEOHX9XzckA7I02Mj4msnT5r9FO3exTvQzTrXf2JQQ16EqPo59sK9OF9PJNX4tIRHhgSFSJ1gLj@vger.kernel.org
X-Gm-Message-State: AOJu0YyYs+s9wX/1BGvECMIdxdr+WoENyDEdvOFKYn3F9gIVHq+Jn36l
	YVf4aUIw1L7hfZmMDCfHt38hGuiys5SQfkfGkhbCqt0AFeKypQ0ndcs/
X-Gm-Gg: ASbGncuSMUSWDJp1ueiwjLzSBZ7dAeR7pmecNDn1xqkAZvqvNJa3Hku0VWHtNl4LwUH
	ML5vpnr3jgS2SpccKKuRpzqIYQh9YgWrYjsDaDwnYH+FUt4vL53N8dGlET0ZX8wV04pWpWRXjMJ
	5mlapWy2NWaiTSa7YYX+x0gO7JcgI7lbK0RrFt5kYbmj2CI8k2xcgJoXdrFsXXcdXIPQ2IDoSJC
	YML7aPY+840EYKILOX4JD3ZxB8SxdymxgjA1k7Iyj47ngwCoIumtbARxqHEh06dig1QXQYNoLeJ
	pl9ap7iXtHTWQ+0hFH4BxqEx2qZ9pLw49y89Zs/E8wvHLM7uWteXI4CxvxwfybhsK8tWEdZBQ3p
	OBapfPhDQI7T9GxHxC9ZdRIYDyKqKGBapbZBYTq2gER4MBVpn4S2Ii0cchYJ/CzLCIOZGLmbcvx
	Vqm0Ao7Ou7nk9PR7DHLWc/zF/JJWijT0OMyrA=
X-Google-Smtp-Source: AGHT+IENbIixTtlLAm9EX+vhw2xhihNg0J8d0rCtdFjldUByc3WPIQ755fW/IkVXGwQuhSLkmIA/DQ==
X-Received: by 2002:a05:600c:354b:b0:46f:b327:ecfb with SMTP id 5b1f17b1804b1-477c0184c45mr19858395e9.9.1763724963551;
        Fri, 21 Nov 2025 03:36:03 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9cce:8ab9:bc72:76cd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf3558d5sm38732465e9.1.2025.11.21.03.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:36:03 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simon Horman <horms@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH net-next 00/11] Add ETHSW support for Renesas RZ/T2H and RZ/N2H SoCs
Date: Fri, 21 Nov 2025 11:35:26 +0000
Message-ID: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This series of patches adds support for the Renesas RZ/T2H and RZ/N2H SoCs
which integrate an Ethernet switch IP variant called ETHSW. The ETHSW is
largely compatible with the A5PSW switch found on RZ/N1 SoCs, but has
several key differences in register layout and hardware configuration. The
series includes updates to the DSA driver, device tree bindings, and
Kconfig to enable support for these SoCs.

Cheers,
Prabhakar

Lad Prabhakar (11):
  net: dsa: tag_rzn1_a5psw: Drop redundant ETH_P_DSA_A5PSW definition
  net: dsa: tag_rzn1_a5psw: Add RZ/T2H ETHSW tag protocol and register
    ethsw tag driver
  net: dsa: Kconfig: Expand config description to cover RZ/T2H and
    RZ/N2H ETHSW
  dt-bindings: net: dsa: renesas,rzn1-a5psw: Add RZ/T2H and RZ/N2H ETHSW
    support
  net: dsa: rzn1-a5psw: Add support for optional reset control
  net: dsa: rzn1-a5psw: Add support for optional timestamp clock
  net: dsa: rzn1-a5psw: Make switch topology configurable via OF data
  net: dsa: rzn1-a5psw: Make DSA tag protocol configurable via OF data
  net: dsa: rzn1-a5psw: Add support for management port frame length
    adjustment
  net: dsa: rzn1-a5psw: Add support for RZ/T2H Ethernet switch
  net: dsa: Kconfig: Enable support for RZ/T2H and RZ/N2H SoCs

 .../bindings/net/dsa/renesas,rzn1-a5psw.yaml  | 154 +++++++++++++++---
 drivers/net/dsa/Kconfig                       |   9 +-
 drivers/net/dsa/rzn1_a5psw.c                  |  58 +++++--
 drivers/net/dsa/rzn1_a5psw.h                  |  25 ++-
 include/net/dsa.h                             |   2 +
 include/uapi/linux/if_ether.h                 |   2 +-
 net/dsa/Kconfig                               |   6 +-
 net/dsa/tag_rzn1_a5psw.c                      |  22 ++-
 8 files changed, 230 insertions(+), 48 deletions(-)

-- 
2.52.0


