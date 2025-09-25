Return-Path: <devicetree+bounces-221291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EA145B9E483
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:22:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21D5D42479C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B4922E8B8F;
	Thu, 25 Sep 2025 09:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lGLogjGH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C5C2E9756
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758792093; cv=none; b=FhyaUUViGvCyt1qbRKzcAXPdn0Nv8exz+TqrCs/Qrg1bvufBbDc90CZbjau0JlIVkq99AN5g09dgaNBKVSxIaVs6+yD5ARhqUze0zchF67NPFWlZKdIGFFcBBvm29SJ4bJxnEFs4EgC/afbWNmSqYWYwYSngRBMFLQns8m/8rho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758792093; c=relaxed/simple;
	bh=OxgF0sgU8kJelkuDjh/RK/kYTlp1sBcDIk4CfwqFFXk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r47ah2OW3uf/yOTVSWGwsD0g1w53dpxQNn5udWLfu+P2oHbEwNGrN0zkEqGoEWqeF/E00wRnHnHxgXfXXEVkXvl+DF00/n0VbJ9TpbXcKmPBn39N7HUL1kHZsallwwdVGDHl7nQYS7wdSVKUYv3ZcTKNMNrEgepA0iq7UQmdPXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lGLogjGH; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b4c29d2ea05so1600313a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758792091; x=1759396891; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/i3lJ5UnNUwnZHcBsmIKwojuviTql3djQ9HFxU9mOWY=;
        b=lGLogjGH1Cy5Km7v3oWWZ4ZxugIpN/J9YFfQqRv4dsQnsozURZgzoYeU4kWVEIv/ah
         VCbDRdVBssCUMfB2Kr3zSKMKBUBdkEO/j8wr61YAZZ7xxjcQECZY37yJrpJqwh3jQ78w
         AmO8jKsAVIqXiulzkJlzoXeNvJp4/OHHXAePcwFLB3extJmj6bF94Sn0fUiAHOH9IQZF
         5c4WRTGgyshLt4oQ0pWagmeMWZp69ZtMLXU5QyUOXmufsz3rolPL/RcTXrw5PeAjje74
         ja8u10AvoW7OMZfLhP0wVjaivM9LttJuoWtsABRwCrG1jvFJepZ0fRB9pJRS/JTLU529
         bYzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758792091; x=1759396891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/i3lJ5UnNUwnZHcBsmIKwojuviTql3djQ9HFxU9mOWY=;
        b=vMxLtWi4famIYzmZvcVPeJctkv1lOK6MGEfzE8Q/rHdfC77BZ2fJCa6K0zC8b9pM15
         g8SWXA/ufKZyhsgvNERAcmxZ9JELMijjpwFB3ae/S897IgxLEXDC4MxLBC4IO+P1Pov8
         dbI/SX4G7mcxioQXZgYQL6Cj18HQsQnzBluCzpEP4E15D/CIm8rbykdgzRDRssDQKkEx
         3szDZTCzlvojRIJ8Ksj0L3CMwsjBvI4an2AbXft29T/sEghGOUrqeI6C99/IvlWtU+96
         7V1bgwmUBFtvpQ0t6f0dV/tNzBVdNQie0hoGiOx7BdKQTAzY8pBsjvvzu9e6zg4bntye
         DUNA==
X-Gm-Message-State: AOJu0Yyw5tBfxQjb18KPVXa7m6gn+k3urHm81NyV5O3ZuEJxpyOmPDmN
	/5U7HkvruLSlzK59kHi9y+lz4QFC6/YXqCMR0ozNA6bgyphjRxoPHl/A
X-Gm-Gg: ASbGncuNh/kat+1FegnX1uWg3YdBC5ZdsnCq3EL8b3soR25W+Hc0kZOQoYxKMylVSMk
	3o/SeCVwUTPDRc3wVyu4yMWfKEu4LwW/nsriAtiiTuoXjRezn24QTMIpiKbd50sJ5+lDIZqhTGL
	psJX2PXYbEDImxAeg2ZHK9AahCKNWKVDLQhcLCZLYy11jW/6an1hmvSlPIU6oOj0Cfnbip1qaWq
	JnPRlkrJn3+Ce/WOGkbR/UaKd+pOIuqbsGlL+kME2YHVC9hIt7xvCs2nDNSjvRpwnmW5l1YgjU4
	aLDYpucBCcdffTmf83E5ZHE78XIKZgUjxHDncd7wm83YjpTo+lKccyQbGhh6bKtUFf4SaWwbrJ8
	ESmrUrSQscKk1s21E1FA0wZKmZDDtEZbpF7ZYtzPL0Q==
X-Google-Smtp-Source: AGHT+IG+5cSlAA4yEB0iWJUxUwgl6Whpi0RXiGF7IG4Oc+3ZX5YIYSMwXvdgEh0mLgMwoqgR9eg6bg==
X-Received: by 2002:a17:903:166e:b0:26a:6d5a:944e with SMTP id d9443c01a7336-27ed71070b4mr24813685ad.24.1758792091135;
        Thu, 25 Sep 2025 02:21:31 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.62])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cdfafsm18251855ad.30.2025.09.25.02.21.26
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 25 Sep 2025 02:21:30 -0700 (PDT)
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
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Thu, 25 Sep 2025 17:20:36 +0800
Message-ID: <20250925092037.13582-3-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250925092037.13582-1-jjm2473@gmail.com>
References: <20250925092037.13582-1-jjm2473@gmail.com>
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


