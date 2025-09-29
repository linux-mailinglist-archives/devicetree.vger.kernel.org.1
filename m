Return-Path: <devicetree+bounces-222343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1FABA833E
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:57:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08F9F1C0C94
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 06:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E297D2BF015;
	Mon, 29 Sep 2025 06:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qk9InYnE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682EC2BF00A
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759129062; cv=none; b=G8+eklKKAAJaeCh7k+rZb7yt6NgAk5ZdzsJ8SUyZwTdEuf9VR3QApg24b6Mq6oEescFfA+GywjLaZfoZpDWN3WgHQR/WI8x9w1WiQ3NtrCw/VWxX1XWSD4IEmBUoUMr/iRRJLrIQ7X615MBis9rGn46miaJotS4d+KKZNpOGGeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759129062; c=relaxed/simple;
	bh=OxgF0sgU8kJelkuDjh/RK/kYTlp1sBcDIk4CfwqFFXk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GCKHP5BkATd1uJtm4QICDpUSZhJ+pPsSfGXZOtpwxubmmEmKn4I9vOfxX2pZ/GLvoGAjukRwMwUMRlOKRplAQpDzXXhQhX0cmtVggyRQGbMZCKMf2HqkvQoJiirwPaF23TF/TQSw3E6sYuHpSVkNiK0/gpjL1ppGG5rWhBU1vGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qk9InYnE; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-27ee41e074dso37751905ad.1
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759129061; x=1759733861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/i3lJ5UnNUwnZHcBsmIKwojuviTql3djQ9HFxU9mOWY=;
        b=Qk9InYnEs2RiP5gBVWTjrkHfvx6iD1ivIJ2c2KsIIsZqn+ABLLgP1sHQcONXMke/+L
         SUsJbhab1K5duPct5LBS8BUZbuEXWGjSDAI5Nn/I0M6jHj+H9zBtpV1nSTC7SLmQFOiN
         4b1zsKwp5S/lRdwHFO1ixYVsVVzYOqkwbohaBMp3EQQzB4eFtf/ddT5iR1rlO14V4nbv
         8KsAxv7TRab7aUVO+3+E9fH2HWPtiw68U6aS8y8zlqOtXDEtBdY9GasJHvSTSwJi2wqT
         6iE6rEx/6S9MbdgRDNbC4uI83Rl/iGKkfjEqJ+VWy7IyvySZJQHcgNxyCCCLDfE/UFDO
         Kmtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759129061; x=1759733861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/i3lJ5UnNUwnZHcBsmIKwojuviTql3djQ9HFxU9mOWY=;
        b=Jfi+OizpTbxe4aXdjZulQhLcrbcTVPIrqTqIH3lzVi5TCY6OevUBz56SFcIddw1slO
         5jzEGoLg+5vuhLhjbGrudcb62/ecp81RhSleEdI8LKjX0siD8tcfEJtXR4CA9v/dwsbq
         /pbzELwA+0hkowILYNVdbaZfDSTOUpE8pKZactUd5p7BvvakVu1h0V1fec0iPHv+yXEG
         f8fTHd0ykB2UcKmLte0ZYuUHLH5rQiE/3SiE46k2LcEtnqIDVTDHwmImoPXjJamTyR0X
         lX6TDyviacmG/VHlOzdAqh52232QpzovH2fGkfCsZTprONtiAWzjuylUtlvaUnoNBXOZ
         Vf4Q==
X-Gm-Message-State: AOJu0YzYoOe/SGhzgmGnJFQPWjb75z7yLShcUpAMNzZWMxQoAcsQt1qw
	yz/O6JtwBlRqhn17ni9VCQEfZchUIT2DBujpWpIwmthECTbnrdHyZTOz
X-Gm-Gg: ASbGncsyFnjoUrUMmFusNAXKA/OOG829AavAN8KFdaHClEup2J0yx7YzikqMjDNzxYw
	fe/sTY0cIm7UvVxVxLqsxG6q9kylZ4wawPUoq6WFP4NvFR74bibCCfjd3Gh673F69i4m1ayL+F9
	XWLe3l8vMsdtVX9JTu7Ml9KVmY4s6pAwCTPkqb7D7OeOK1aQVcvKZdK02SzLEK+ziyTynrRXEsy
	4YK7eLKAkI9X7mJ/lr1kXEav/PQMVHb0suQW9HJ9RRWlNp6Wt5ZAfXREREy82rXDzjiRmjzWyPm
	sOyTzC+4Zai2b4Sq3I0+DXr/jaexsFi3iLt6eEQlRpFkxTr9QXNoj0qrVfmxT2TcB/m1zP8NtfD
	6k/irTgIi17QN5VijxEf8wdWpySgTeAGmeJmWdpP4Dno=
X-Google-Smtp-Source: AGHT+IGXx48956iAsgN2mLQXj+DWiZQ/oeB2pwDmDud/7PQv/mcuFlsHf1iG+3XAh+OJgY293RcZBw==
X-Received: by 2002:a17:903:3bce:b0:25f:fe5f:c927 with SMTP id d9443c01a7336-27ed4a7f364mr157596135ad.31.1759129060832;
        Sun, 28 Sep 2025 23:57:40 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.251])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53cac77sm10549595a12.17.2025.09.28.23.57.36
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 28 Sep 2025 23:57:40 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Mon, 29 Sep 2025 14:57:13 +0800
Message-ID: <20250929065714.27741-3-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250929065714.27741-1-jjm2473@gmail.com>
References: <20250929065714.27741-1-jjm2473@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LinkEase EasePi R1 is a high-performance mini router based on RK3568.

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6aa5b..ec2271cfb7e1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -726,6 +726,11 @@ properties:
           - const: lckfb,tspi-rk3566
           - const: rockchip,rk3566
 
+      - description: LinkEase EasePi R1
+        items:
+          - const: linkease,easepi-r1
+          - const: rockchip,rk3568
+
       - description: Luckfox Core3576 Module based boards
         items:
           - enum:
-- 
2.51.0


