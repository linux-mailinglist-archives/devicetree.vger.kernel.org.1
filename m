Return-Path: <devicetree+bounces-78860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4649891391D
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 11:01:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E204A1F216E8
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 09:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D573D548;
	Sun, 23 Jun 2024 09:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i3QPZ2iP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339382C6B7
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 09:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719133281; cv=none; b=r8W6lw5b6qhLWHS7vnzp3MXysq7p2RjvvpAIGgj5QnMKelLqde+NJ0ZAKiODzl3R4yWq4FitstEYT39WpK8XXIm+4z0zH76YvZt5FA976DkInk2TY6Ei5EIoh5AHoX/Ys6sSnr8mIQ08Ek9pIhDcm8cC692JMWMxcKc+cZDIBf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719133281; c=relaxed/simple;
	bh=MD61o0Y5JhaodrcObZexKT3lOSqfIT5Bi3zZB5zAD1Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=W1wnVIl04NDt6HfofBxK4Agh3snDEaxqhvdvv9umOHwqFW8duRhcE84uzzHsfB9nzuQ8r8DLsLZEfWsSk9hKKMpVgkq36ROs3vp14SMerQmKCjCs1AoCztlEif4MycSXlXUQ40JtU75QzRpiXDn/gfkK/cz2qwKIq6HOkimaCCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i3QPZ2iP; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a689ad8d1f6so417873966b.2;
        Sun, 23 Jun 2024 02:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719133278; x=1719738078; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Bfapa9SgzqCNXQ+ua5hqiXbP09HQfeNOv4RtNIhA0mk=;
        b=i3QPZ2iPf1IfdYmfTGP7Yh5ywD3uWRMVszr5mi1MkOEnRJwMeT41sZ+mTfdt9kt2yx
         raRmQqcYL1ox8eeBVI7s7UJEfFdWAqghk6PtjrUMXYJS3Auwt2j3NcbTeBr8HuDXmmwe
         bOKH1jlrPPEMocrfH63Curgnqaly6j9g3oJrAkjL9w1szdsKfBsOOW3NVnGuCBacTd06
         SfcELAMVSce4KI6m7GN/RJOWM/XUdHLVKXjI/U7/B2bbrfzSZt72xowHT7n0yxNovWHj
         di43CDvxo8dRyMeJYZorz7hDqdZGu6A3LaL141VwP4HN3peZyfvGG8wYfDdh+WdiIFr2
         wcVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719133278; x=1719738078;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bfapa9SgzqCNXQ+ua5hqiXbP09HQfeNOv4RtNIhA0mk=;
        b=roLhQCEAXo1vp9QZJT+9S1I0X1Wfn8+SBWmmOAihSTRTOegZ6alfcLYLMfNE02ozTI
         xFktHyL8hnL8opZZ0OoB2CBaHyhyie9kTM9obo4rIuQO6nb4hAAF1Bb/KUllDMsoPHSE
         5DD+yLI87y8yYgkj54/0vN5H0a3uoAN04Z1bhgSH3hXY/EKX7ik9EeOto8+RaPJpByHI
         WbpQMuIjJvb39mkzlKsFgOmVBg63WsLf67B79bYpYDaP/ngDPqJB4wVL1A9GO51k5gGt
         BXG8MrnEZeqEJ4vxsaZr5Ja6a7Xq0hSr11VC2qqsW1PVLDE2Xg4owQq0Kc2HLtbzTUPu
         nP0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUeowFZmprdR2YxaUVSUi1/cjBTXYyQ3mpkM3RHBtZM/RrKuQOnQPNQVXpNMtYdpKrurSlLsCeylPqhVacVTqHSisedudpnf8hdJcIeaBf5qL5ebj135ff0RBpntIHlKyIwIWegocko
X-Gm-Message-State: AOJu0Yxg0to1dgH9IJQIrFoQersNDIv65704vDp+j8nvo04EqcwQ65E4
	AudIWYOrR4mGCY1MCYQOsY/ZpwZDknLZaWlv1KJYMveUyCD88nJUfZfg
X-Google-Smtp-Source: AGHT+IFb8Ln/H3WBmDbysVXgbESrSqt7qHeL2iCt/qomXfg/Y9rcuFjXxu/WAzdAqR2l4A1G4nhtYg==
X-Received: by 2002:a17:907:8e93:b0:a6e:f62d:bd02 with SMTP id a640c23a62f3a-a7245c84f2emr101106466b.7.1719133278146;
        Sun, 23 Jun 2024 02:01:18 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:eac1:5757:d323:9544])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf549385sm282003966b.105.2024.06.23.02.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 02:01:17 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	inux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/4] Add LBA3368 board
Date: Sun, 23 Jun 2024 11:01:12 +0200
Message-ID: <20240623090116.670607-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This series aims to add support for RK3368 based LBA3368 industrial board
form Neardi. The device tree currently only contains entries for which both
bindings and linux driver exists and is expected to be exended in future.

NB: checkpatch throws me a warning that no venddor-prefix for "usb5e3"
exists - which is true - but "usb5e3,610" has a valid binding.

Changes in v2:
 - board DT property re-ordering / fixes

Link to v1:
 https://lore.kernel.org/all/20240621134030.243646-1-knaerzche@gmail.com/

Alex Bee (4):
  dt-bindings: vendor-prefixes: Add Neardi Technology
  dt-bindings: arm: rockchip: Add Neardi LBA3368
  arm64: dts: rockchip: Add sound-dai-cells for RK3368
  arm64: dts: rockchip: Add Neardi LBA3368 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3368-lba3368.dts      | 661 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3368.dtsi      |   3 +
 5 files changed, 672 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts

-- 
2.45.2


