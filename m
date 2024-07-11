Return-Path: <devicetree+bounces-85009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE2592E850
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 14:34:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF836B21C47
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 12:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9345114F9DA;
	Thu, 11 Jul 2024 12:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Z1Lm4zyV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534EFD51C
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 12:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720701253; cv=none; b=qMX2sgd7ca/+7zJLMdLPzHYAf/xqPOtuIs6FTT0PI8cQjdhIhLAC/7gqRpOt7DS+o/b80EYIGBMQOWOYhi774w2Hg18fqe/rXGTstJMyECPiUyquTSwzR6X7PBqRc1oT+/+IYgoKaEMEp9eQUTA+q/yIMBH5ZUUHACCZ54AV2Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720701253; c=relaxed/simple;
	bh=SVNaY8uPYmFpQzt05SCgtnQKzfh+zub5JZo0eT+9Phg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=NXkjwOW2xX2ShbadiE5FpV/8uILhkZIPiU93ytrT4sk7VtmNJIW+UaUOeFwyErvCRm6SkgTWmoyDov04s6ExTbRG7GK7ph1otFcLqZlOH+NSx8d0sldllJrBJdXCGF1a0WLFdHGDZegytTSM8dzFEVRhLBarsJ3kuJLLKbUv5pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Z1Lm4zyV; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42795086628so5405265e9.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 05:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720701250; x=1721306050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v9gF9Nlbjx+3WYbHXvq9fYfuO2GW0NccrZ1QB+XZf7o=;
        b=Z1Lm4zyVSvhDfmJwHgzoAdMhlTeGWvnPlgRXTe568rRUpNKQRjF/3eM0HXjIh94xJl
         ss3epwTRjcPMqB+cVbg7yg/yncI8PiJ6jGH1hv46XGFqTkMWriJuNOYe/l97RIFp1199
         yx4yS1lYe2vsnLM3hOg4Eiebbm5sj1SxHwGvOxaoW52XhPll9Jw3gjcMwqglDSbrQLX1
         FJYOi3KVph5tkOCK0ktt5FLuRRpgDFsi3WO6XFdI3+3MsATQADA+KRSicVw/1NFr7eEU
         hl9d/RpNZmos6qlLXqEri6xa6ekJNDQ9GG47PRFgtThwxQgSOfz9fFAkcM9r8gOhDiPC
         PeEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720701250; x=1721306050;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v9gF9Nlbjx+3WYbHXvq9fYfuO2GW0NccrZ1QB+XZf7o=;
        b=JWrNMiN/hWx+9AwCQ6IsgoWBJv1WMztY3+LNLmAc2P6uj6YJriQHVPflQ/CcqHzfUZ
         wO+3PD1g3yHDGBe0YpBjeq+5vCA13bp/2XJJI1rvmKOixB9EoOcUDs4YSviAGjmdgL9W
         dZ6N112MOBLd7rvAe3t1JjXPjy8tc9AbIzdLk2f8/mqLw87VXveTfdtXvoiKHaLUk+gS
         Y/YPxqohl+p0ZGjPC/nSMMKIXM59ZnCQbpWKZ7tVweRxwNzfWJyG2fjmormxMydYgGYR
         jAR9oruU9Krz1OAO9WWCVEB2A0kqLHB6o0svBw1/qlnf7ZGZ2Kxr2CHGAtVJnbkm0v4G
         cfGg==
X-Forwarded-Encrypted: i=1; AJvYcCVz7tF590EO2n1refEkS0Pr33Q+Y25lJR0IxzMo2CiVt4M8/xyEp45CRCQC6RDP75Mo784dH9VTydxDS5LjGBQKxYuy8R08RbBlQQ==
X-Gm-Message-State: AOJu0Yyrr8HT5OFAl5LR+qMtnZafzxSB84/SM/65oSd5iZSledjKT9kk
	F2RLzl4QPnyH+6cKnpRgBJTitGdiJ4NApRxiJOG10uMnNIuIxHjPkj81j1TeaIU=
X-Google-Smtp-Source: AGHT+IE5OyEhveFcUAtoaVHeQx6Q9QEh5xiYR0uZxQSYMrJpf+ubS8v9LD0epdhy9PvZtkshzAQd/Q==
X-Received: by 2002:a05:600c:17c7:b0:426:654e:16d0 with SMTP id 5b1f17b1804b1-4267018b105mr69388925e9.0.1720701249790;
        Thu, 11 Jul 2024 05:34:09 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f741fa6sm118583955e9.45.2024.07.11.05.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 05:34:09 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 0/3] dma: Enable DMA support for the Renesas RZ/G3S SoC
Date: Thu, 11 Jul 2024 15:34:02 +0300
Message-Id: <20240711123405.2966302-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series enables the DMA support for the Renesas RZ/G3S SoC.
It adds DMA clock and reset support, updates the documentation and SoC
dtsi with DMA node.

Thank you,
Claudiu Beznea

Claudiu Beznea (3):
  clk: renesas: r9a08g045-cpg: Add DMA clocks and resets
  dt-bindings: dma: rz-dmac: Document RZ/G3S SoC
  arm64: dts: renesas: r9a08g045: Add DMAC node

 .../bindings/dma/renesas,rz-dmac.yaml         |  1 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    | 38 +++++++++++++++++++
 drivers/clk/renesas/r9a08g045-cpg.c           |  3 ++
 3 files changed, 42 insertions(+)

-- 
2.39.2


