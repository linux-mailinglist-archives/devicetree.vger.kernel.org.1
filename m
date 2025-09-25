Return-Path: <devicetree+bounces-221150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A6EB9D817
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:59:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 208113245EB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 05:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3575E2E8DEE;
	Thu, 25 Sep 2025 05:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UukHxvMB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD08F2E8DED
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 05:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758779964; cv=none; b=cB/54Z28cHkHXshGst4L+Aq2MWSvhG5WxVlFfFu1ECyW370mIDcu+gTRGFtmR2QnAALBY3ZLkDHMsjwnd/Izumd/7LxxAaRqF10ElRJURame9LxJPn69VkCxqwMATExVIVrizyMNu2n3ttwuoxSeShzcJ9KGjfLRLQ1BS5RUUSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758779964; c=relaxed/simple;
	bh=OxgF0sgU8kJelkuDjh/RK/kYTlp1sBcDIk4CfwqFFXk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hHcEKbuu1KI6/PFkmNUNtuEiN9yIxwlIHrRYjo1mC6+qTCVe98mB8WVKbtyP1ILjjg4EWx1c3X6Od26ndOYVK1oKQgEnBkEV55nHAHI1JyMrPJ3Dhu0feA01gAsW4vKRTirkMaSNTlUoiCRhx3TqkeeZv4WsJlIh1y4Rqak+mDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UukHxvMB; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-781001e3846so557246b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 22:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758779962; x=1759384762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/i3lJ5UnNUwnZHcBsmIKwojuviTql3djQ9HFxU9mOWY=;
        b=UukHxvMBUmHiEOWQlZM1QX1EnGSuZ4vWndD5nO0sSK9+KWjaPiufSnGSa/FO+mVuzE
         ztmaG1D77RoLkj9sbns45ZnqmXiwdMLqlhUROk/ZvEUCsXPu01CBFw3xH9PbunN4b70d
         7OBJcuRExL6BKf9PUYbZ9cTYwCiMX1JlkF4hIOL1BAZysOLP02CiYAWvTd85aW6pxQrb
         PjQnZKL5KQKWXXazubyWCCNk3Q+0mJsNIVSGWhz/o1y0GpgI1a0Z6Yl2o77bKIKp1ZF8
         hhhWPcURY3oVyjoroFle+R6diPS3qcS2iHeqlKWRzKSbGVdeHTHgFVLD/60101Ut/9k2
         uqvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758779962; x=1759384762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/i3lJ5UnNUwnZHcBsmIKwojuviTql3djQ9HFxU9mOWY=;
        b=pVs8AS3U9t1cjYNhtmVLCHotGb3Xtjwne3AALLAf3Zi/qwxDncrG+m1YCPp1wUtFNQ
         aUQ4hoSmgYKSUxqsMXEII87YZ9GR38v2TpPbMiP+5p/00DwRWTpAY7bIHjsBvouv2zTI
         CkUu3GW2G0/lioxJc2WzSVmhCTSwoPa/LNrhjukgyTe+PsDyYdu2yJU6MvZU0pOMyNfw
         S/JrThKBsFkELxaVDvwnhppzMhdxi/pt83SHh4GXNrwezVf8V2Yk80LYge9l/4vpE5pr
         OK0C0kx+doDDHqjoI84PzZ1DnD7HRHqyDPPw320AZKCtYN0Xb4T52BrVjzxV21KkulFD
         YMag==
X-Gm-Message-State: AOJu0Yy0ecJvxDsbJXsou4CX6h2HMaaL9xlCiz27L1BYfKfsX0OvjbJM
	yTF8oF6vAElEOCE18xlSCdP4HAHPArobwo6z7joNRvlp1+IHkTlWzM2z
X-Gm-Gg: ASbGncv2mZbp5MmV2kPXEUhSJ6KjfipPusKDxAGzrMxHXHRmkudO/lbCAqf1Oekjx+w
	yvkrG8EeHVerEz2I81bT1dJ4hKDJS4QsQ2iHX7OhzUes8IQwKjSF7F/TMOcMw4ZzS/3//eJYFIk
	fM4toJsFBIBbmPghmpMu+PpMOCNaU2aDsOSkWhsQlwiyMMmBqrEucis9+RuhMR/lQv7jflfaYXL
	nGz9TI1qq+CRyM9fv/r4f/aVFNFClpg4jH/zJCC+FEYvIc8hwW9WJWDFBFB/8HeYJcL3ScF1swe
	ANkexyqRam2SwZB1pzjaRGejmsQkajNu1JJWASzvOTrcSrJ93nC+hx8idWf1OB4d52Avqrbq2sp
	0+gf6ErqBiQMxhnMLwJnh
X-Google-Smtp-Source: AGHT+IHlvw/vIjDHerdRohHiGD9BIjPGY+j7pBYk4Xdz3WGpTzu3diB6e3NShLvW+IeqM97exMFnag==
X-Received: by 2002:a05:6a20:2448:b0:2db:f868:22a with SMTP id adf61e73a8af0-2e7d9da085dmr2751475637.52.1758779962022;
        Wed, 24 Sep 2025 22:59:22 -0700 (PDT)
Received: from localhost.localdomain ([2a09:bac5:3981:16dc::247:77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102b231ebsm866478b3a.52.2025.09.24.22.59.16
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Wed, 24 Sep 2025 22:59:21 -0700 (PDT)
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
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Thu, 25 Sep 2025 13:59:05 +0800
Message-ID: <20250925055906.83375-2-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250925055906.83375-1-jjm2473@gmail.com>
References: <20250925055906.83375-1-jjm2473@gmail.com>
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


