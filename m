Return-Path: <devicetree+bounces-184988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 54596AD5F43
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 21:47:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4BA113A9A83
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 19:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F8D629B214;
	Wed, 11 Jun 2025 19:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="Vtqaf/GR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBD11DFF7
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 19:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749671245; cv=none; b=Ms7Utw5GH+O1FRqWj+r9QgbvdHvujzWIzCUqN/v79bP9rnktk39XRajlDwgRBbMf8ns6cX14XrnaoLyy3un0kejFgxBpUdR3SCr2uiQUoClcXxQcRKS6RL5Gp8rV5bs8p0s5mdHXOfxdGN8v0ZueX+Sh53skkgKJVu7UTex0GxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749671245; c=relaxed/simple;
	bh=qvatDExCgebdAU2j4wyFD6D0pfoMWXHYTe2aEbp6kZc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QYjP0oJ9EtUkRif7oZKxCohQ2POv+LYlCSbRpypquF6qDZ3hYExb+5iuQ0zdX1fna2tMWOg8VgbUfzJCi6YutCkvAch+bh9yd3A05hjkpYtsU1bgsSzlhdf2rwrl7a7fMDXmDXezbe8fAuOARkF/wX591LCUn7skppq5VliZFSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=Vtqaf/GR; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a510432236so251313f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 12:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1749671240; x=1750276040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8RpoZJq2iKyPHdMzM6e03ta7krL20P5snKJVVti21nQ=;
        b=Vtqaf/GRsW8gY8q3NSMUXogenJnq+bKUPO9NU5zWhgDbDpOz9/pkwjTiD9gquXw6Eo
         dpoGSVtWQf4a8362uUNrQRs7TDj/oeqeMlMnQpvy7y/rkjnECHtkKoctpSmb5FnoW5BT
         lLW0M+l3hX/v6CjouF7kWZbwu8jt0IUcDkuaPJ0IXq6Pp5CRvOpy2cKdCwH8ZI0kzIFt
         mKvW8kPpx6hEAWmizps5a+bqtnNkAMBL0QxRlc5jTJFGeT2jjHFj68sO6wYpWOl+mGMZ
         GniY/21NWJMaZHkHgzYOm+zKdhVKSL3YyjLWhJ0PFLajdt381XpXtvVq2l2hnYnJOEuq
         m6ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749671240; x=1750276040;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8RpoZJq2iKyPHdMzM6e03ta7krL20P5snKJVVti21nQ=;
        b=o5WuXu03phDqfXXugnSWT/jNwS8O2ry07OS/iaGNa/vt3g9vmKE1cDQOMms7M6lJ2T
         OWCOEMi8+k1zDha0VxbxSnVn0222D2crUDF/rVu/0pnxDLwud5Kwb7AiezHu+SKNt38X
         JDvQgkdEXSh61oAZ9YOtWM8qyZf+/tkEcrDWcdHoCRE4REBmXOIjm07KkEjerQdcZID4
         vgkIRKvZUI0Kyzfi/I79Xch+21k2gNN1P1C2HjgPXWYoA/aOHI9izOKCZBlWkb7+iTGM
         7eDAufxJiFPGHNJLk6COz+M3SO88qm5t3OJ5gGlC28/i35aab30HXlm6sIUE9/gEDBS1
         7CXg==
X-Forwarded-Encrypted: i=1; AJvYcCVV9yyBylfdBkqbQCBiV2MShDJ1hScDh+VXdd4qjLmDjc81x8IRdtjeMsI3Gqh9C1mnfFe4x5R63NrH@vger.kernel.org
X-Gm-Message-State: AOJu0YwEP8Ew7yrZUytTtALOu/Wm+OKkPy2Vs4V2NZdssbDOA2v9JpxR
	2qKnylNYW88FaYByoksnDtxqzft5TmvBljsz+KLk5qFVHR3ITJv3uoJZBc5bUY5oguM=
X-Gm-Gg: ASbGncsuefJi2gKlRUQTZaqM016wInV8mn2G7Fg/PqsCmwHpxhHQU+YQ1MJEMzqs4LF
	u8OvIORKfwWp7h38tLbc9+FXJkjHprcRPkog1LzYTl4R+8OY+96KX2gWsrxrhxVgW15VyQQxINq
	YOBZI6L/NxAIfuUswGEH+3rOaeOyKa7xZqF8kUs8fqZTfHExQIaTGEe44WQQRU8yZKlPTWA2TDm
	+vP6ICQvbN/qlo6as8QKVlUXWcnUcCnG52IMGvAKenCyApTGWqSduun2hWMM+R5NuXpnP3KHdsF
	HUVqiL8cPu3JmQxpj6tfDhha2eYcCeFK53Rxuk81cdreeBhW0HK+U/LODSfJ
X-Google-Smtp-Source: AGHT+IGN8LdRU2cQl/anZ9naq/oRl2rhKsUNsmL37962FNilm3Q2DGChyK39wNII1l1LzwSLePLGYQ==
X-Received: by 2002:a5d:5f84:0:b0:3a4:db49:94aa with SMTP id ffacd0b85a97d-3a56128d18bmr179900f8f.21.1749671240347;
        Wed, 11 Jun 2025 12:47:20 -0700 (PDT)
Received: from fraxinus.home ([2a02:21b4:9a83:1500:4cac:8ba0:e616:6d2e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a53244fceasm15949433f8f.82.2025.06.11.12.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 12:47:19 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	devicetree@vger.kernel.org,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v1 0/3] MIPS: dts: ralink: mt7628a: Tweak for GARDENA smart Gateway
Date: Wed, 11 Jun 2025 21:47:13 +0200
Message-ID: <20250611194716.302126-1-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

Various devicetree changes needed for the MT7688-based GARDENA smart
Gateway.

Ezra Buehler (3):
  MIPS: dts: ralink: mt7628a: Fix sysc's compatible property for MT7688
  MIPS: dts: ralink: mt7628a: Update watchdog node according to bindings
  MIPS: dts: ralink: gardena_smart_gateway_mt7688: Fix power LED

 .../boot/dts/ralink/gardena_smart_gateway_mt7688.dts  |  2 +-
 arch/mips/boot/dts/ralink/mt7628a.dtsi                | 11 +++--------
 2 files changed, 4 insertions(+), 9 deletions(-)

--
2.43.0

