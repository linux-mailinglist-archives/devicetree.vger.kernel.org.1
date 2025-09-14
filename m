Return-Path: <devicetree+bounces-216898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C433B567E5
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:29:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 152253BF1D8
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 11:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02CF8254855;
	Sun, 14 Sep 2025 11:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MSMsimik"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0F8248F5A
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 11:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757849390; cv=none; b=ni+FtVj0ZbFMDtr3ARUhFRURZSiXAHaPbkOxNYd0BTg47FhL6rK2U/E6OOaSEC6psXOJSGh15mijtkAf/FZrf5MeT9PCK8vINKF2boMuq3XIfd0y8mrTJIiRPqUH31o/PfOe2yzj7d7Dns1iRWnxsQzihllirTqDwNfOAzudAXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757849390; c=relaxed/simple;
	bh=xuFUrF1BkPaf8V6YIQBV/bE6ge9X1wiG25AtdgcH77w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BT4400vpiB+S7dsFBiUAY4cU4bxUmVpLPXdMcoGKDNPEaC2ryYl4kmS9IvpdCBW0w4IRdfZE/2gyElLEMwSd9ZUOelTwCsaVVRmvPnWnM7Pw+JefmKQNd3o1l4uTbectH3VgWBw5kKAbnYVJ0azEOeIkZI99dtEIYy4rCjzuU4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MSMsimik; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3c46686d1e6so2298087f8f.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 04:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757849386; x=1758454186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xJlWH2NF0uAVXDd2hOjwwBf+YceXcdwvPtJB2tgstmQ=;
        b=MSMsimik3nAQbfJi3WCobT1zr7ptWR9ato7h0yPAy5yQQZuXiwAje9HtkIMbyVrebF
         LtSzDIOQFpB+LrIrxtQI3K9PsRKw9KfJJxI6jAspQjiDIOlCIGWAJXVo1nbgEFyMe1y6
         Ww4CUOJKJa/oCyixGsWfb9wr75yftsgtDr0oBzESdJeIDl5i4DhSGBVw2EPkp9+vcxR1
         hvyWfPdDrQb+pU5ppwaYSLJDQ9rn0fTajq82MpqSuL1qqG3KKKCUoBuYOQs103FhWadu
         y8w0JWMrB8Z/ao1mvMfmINZH4yF+OARw9TowkUX5njWkAVJlovTiD3T+CmSvYbwOLuj4
         y5pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757849386; x=1758454186;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xJlWH2NF0uAVXDd2hOjwwBf+YceXcdwvPtJB2tgstmQ=;
        b=ghh4WNPwL9HFzLi+AxljKdZE/56uQoTiemCjF+gSMD/D/f/RAiBWqh/KdZ/mFdHcbH
         YV3pIY2HNpssDnuM9dJ9x5ArrIIZdqlTzQUwEoYLu/XE710rGmKxouXTem24G3Fos94l
         FGns4r5/KSIBF0WiVsJ0TZZwqfYUP2qyUE/ezZHnUH7GPdTg8d79Ol+Egb6MHuwhLDLd
         YfGBdV2YZaUYMNKAcR37/SQ5Y43HpEPjp6ZZaehy+FvPqu/MFrcZ3ptNL9waAo3/W5cH
         8wmAEQs6ssEpGQt7UQHkrsbwY9RpwKTDmC6UtWVuKRbRlBEBhdZijgUx/BN9GgEIWVB7
         Y4Iw==
X-Forwarded-Encrypted: i=1; AJvYcCXiC8PpFR5fi7FKtRo5dI58TFIq1/ZT38moudJ8eYTxaoBjR5nOY9WZQBsHdlUdSeyQBmgZVvl/T32E@vger.kernel.org
X-Gm-Message-State: AOJu0YwLF/ZRIZXzKapWLYpAw3krhU4N8/0HV+OudDeWd+Mr4i5H135O
	Mm84kgACxgMdOFu4tsW649F77Fmpi79Wfj1RBpiuwAe4absh+jFGQgc4
X-Gm-Gg: ASbGncvhHq/MB/613kxu4D4QG+ZhULdt2D/4AXbd7Og4mD5ibsalK+w1JRpv2iXQOhZ
	7fNo512j3rtE/NpRdZFzioMrJWTGRDCTiLx0XWf0vYazlERLv48TPq8pWTI1aqgEOaZn2B3xlBK
	O1Uh1D7ezIKM9XgQy3+HgPY8FCnXfN6AhyZBx//Yf2vjZdKMk/XmwBg474wxa+JyMuhz9QFG/4o
	U1LO0szlVRxfV5wjvtvbTTO1A/nwK2NbcxTaYEQySqtAhN91pcEylTEJUj49JSS8+V1uVwcU6m9
	/U+wjGruW3rlG9WiAJwQt8acuaT7tOpb0/+KbV9a/+AifybaD6aNPX/bUgRJ+hc0+bLGCTCf7Ie
	qo9YRXQIGLdwdicIsANfq95nL5FdoHnd0ABoMhRrFz66VD/r117k4PzNopHVlPlHjs08WjD+Z3Q
	==
X-Google-Smtp-Source: AGHT+IHKyE6+dfEzUKtwMYtSktS2t1k/dj5Sb6gy+vyqw/6+wKWpZmtEJ/3gYkOAFEAedDqhzO7M7g==
X-Received: by 2002:a05:6000:2210:b0:3c7:308e:4dff with SMTP id ffacd0b85a97d-3e765a3e492mr6682868f8f.57.1757849386158;
        Sun, 14 Sep 2025 04:29:46 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e8346defd3sm6591268f8f.1.2025.09.14.04.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 04:29:45 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/3] soc: samsung: add chipid and pmu support for exynos8890
Date: Sun, 14 Sep 2025 14:29:39 +0300
Message-ID: <20250914112942.2604194-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hey folks,

This patchset documents the pmu and chipid and adds support for chipid on
exynos8890.

Best regards,
Ivaylo

Ivaylo Ivanov (3):
  dt-bindings: soc: samsung: exynos-pmu: add exynos8890 compatible
  dt-bindings: hwinfo: samsung,exynos-chipid: add exynos8890-chipid
    compatible
  soc: samsung: exynos-chipid: add exynos8890 SoC support

 .../devicetree/bindings/hwinfo/samsung,exynos-chipid.yaml        | 1 +
 Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml    | 1 +
 drivers/soc/samsung/exynos-chipid.c                              | 1 +
 3 files changed, 3 insertions(+)

-- 
2.43.0


