Return-Path: <devicetree+bounces-248921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E04BACD6B1B
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 17:42:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5E1C3301CFAE
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 16:42:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CE5A3321BC;
	Mon, 22 Dec 2025 16:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SdTSbghG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C70332D42D
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 16:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766421770; cv=none; b=ZHSYPi9Rzt7aSkI9gKwgPM8xW3WLqjRAzoVqbTcZwePMxiYWrA/195/zcrhT/bw5BYJlbY1mwjMskr1kg7Fqa9LSrmPJTwnN0LnLIMAinK2GAKUAW8UCiSBdA/3FtIXRSPvzZrSFe1tyKFrrN/ppvzgHxluShngscbfeTWDB49I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766421770; c=relaxed/simple;
	bh=57rFTCtfuJw9ju02SPF9jGH7Xl4r8Jffz7gQR0qoPk8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=b0wd/6StYrhkdpKmadjqfNS6cJildIeMrhIR8xFMYvL/xl5wY9uhgbGvE1oEDhTnY51KuaYsJJS/TuBSffAcmori7fI6VRjw15MNylJg+Ai4xtPiXuXzVjwhvxaQMlZhSuIJN0gAqL1SfVbWUMeSoLd/ykH1CgN2AbQavpNemjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SdTSbghG; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47a8195e515so29403845e9.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:42:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766421767; x=1767026567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TWU9b4cl+bTjkGu9CzorOVlOPzGS8LMiKF7bvNbgohM=;
        b=SdTSbghGzusqGOOuRHt6IDRjRmdcilGhlqQ5wzcPF1F/gIFS1qa0I/8lv9hN97LOof
         veOCoyl9h5BMI5YXJfK7ZyaZ9TVccYnbiuJvbQy1gnpgMCtGBPDk9bhKYJTeIvKUvLKD
         PlM4MKihFouKfADt/2iNwwzmQu8xUyToqXBmZPl99hxDGX4w9ls+ZYJEBBnWkxOu9K1n
         dr4fHYm4F41ca19feKFBEdH2v1o8XOV6L9rLsgGh/mE/OZZ2vS2Ee3G+SURD1WsU+51U
         DU/JGu456pVAZmEpR8GLQnjqT03xWYoAMY06ayppKyD7zupTfMGCii5Y1S4ySfMsTG72
         hvTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766421767; x=1767026567;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TWU9b4cl+bTjkGu9CzorOVlOPzGS8LMiKF7bvNbgohM=;
        b=LqOoQXYhausMova9A6jPAWwpdjwhy26Qx6QCHxtJkyHs/wRpPJ00cheePUBBWn1Daq
         Qf64xXErwHXI8CQpD2ir5eDkEwwQ1eLPgbbCJW3K+wiNh0zHQ6BzdCtqd1/D8nLAcWyi
         XYDBMZ/gezOs1XsqMefAZc6wCgg5niX4nilpevOi1kLaT5iOFYh/7Lz98lNMqeCX/eww
         jS4WBx2ydkpT7OkyPaG52Xe/4e1wC9a/uL/Hp5VbSkyK9ajGPZPgNtVFi9qKmbGgoSIv
         acAf/vSm5pgTW+FNn/xGt0I1NXDFLAfV/iqYbIQAjIZ4r2aPa/wdglE6nKB/ff5sLkIP
         hfiw==
X-Forwarded-Encrypted: i=1; AJvYcCVO/kN/M/Ue2OdQok2wfSpQvHTvwvFvTYFiEDEvRlO8weSaPg3NLXh+eFi+ZO0Yl4v1BQOEcBus4PrP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6StfvmFgZAh9F7JdKasNlVD1wCkyLmruDCypaRvDSANFtVyV2
	vITMU9/i57/kTruHZurOefdC7F+Rnii8eOoAJ5+RpkL9oDk8HfRnRPBP
X-Gm-Gg: AY/fxX6/mIO6hpJ18IaW3fQoc1QIgAv7QxpXVK4yUXt32oHgLgN+g6HMw317Njoub7s
	99OL8xaCT5J9D+ezdsAq+yiT7od+3P4CHTXHkBmkyJWVBvTjGsV4v8ZTqgV2Lv/QCyEu/rzKzgq
	Ihe9D6f2iH34uvpfHmAaDQH/Mi3oDp0nGfPwcywLu1pBEPrAAfWElAwDx3dvp9rzn1aPZJd4eYP
	g9O5c841Y7JBFbT3FLFx0Nyo3H5QZHBEFeDpIuf88xIThoxZCSWAzfZR9b4qdJbMPAVm0HOFOcF
	XbVVZ+08o+FGNNgvFMHck9oCKcrQG+st6rrm7FxUeto50NdbXvN2/gwG+tJPUUIOLuCmPirUuOn
	+WkMYz+2QY/SKdorAXeaB5PBc8Js0YAUI8NYgL4CftPIgBWlpZq/Yj6D2bWDXn6HvAIRRM8OtxU
	bItgs9v2JzP7hWUSIN/nHXktAQphNNdo5GMRcqsSrRWh89WgkctrMmeuO0cTzCOe/4jhprw+k4S
	XsgtQ2hmnBE+zza8ArR6dKW8yDQFTA6nw==
X-Google-Smtp-Source: AGHT+IGFozSbWtCCoVRmM8bBkRMivIGGsGz8g5O1cbgIz1vQhukJ5y6oS6qp8J9Cnou9xPLo174mHg==
X-Received: by 2002:a05:600c:1550:b0:46e:4586:57e4 with SMTP id 5b1f17b1804b1-47d1958af3dmr114176215e9.24.1766421766688;
        Mon, 22 Dec 2025 08:42:46 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:4dd:df38:7864:a996])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193621c8sm196896685e9.7.2025.12.22.08.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 08:42:46 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/2] Add RSCI nodes to RZ/V2N and RZ/V2H(P) SoC DTSIs
Date: Mon, 22 Dec 2025 16:42:36 +0000
Message-ID: <20251222164238.156985-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

This patch series adds RSCI nodes to RZ/V2N ("R9A09G056") and RZ/V2H(P)
("R9A09G057") SoC DTSIs. Each SoC has ten RSCI channels. RSCI0 can be
tested on the RZ/V2N and RZ/V2H(P) EVK boards on CN3 PMOD connector.

P52 -> SCI0_CTS
P50 -> SCI0_TXD
P51 -> SCI0_RXD
P53 -> SCI0_RTS

Note, binding patch has been sent separately for review [0].
https://lore.kernel.org/all/20251222162909.155279-1-prabhakar.mahadev-lad.rj@bp.renesas.com/

Cheers,
Prabhakar

Lad Prabhakar (2):
  arm64: dts: renesas: r9a09g056: Add RSCI nodes
  arm64: dts: renesas: r9a09g057: Add RSCI nodes

 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 220 +++++++++++++++++++++
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi | 220 +++++++++++++++++++++
 2 files changed, 440 insertions(+)

-- 
2.52.0


