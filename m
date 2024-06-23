Return-Path: <devicetree+bounces-78862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0536491391F
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 11:01:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 353AA1C20A0A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 09:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 879726EB7C;
	Sun, 23 Jun 2024 09:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U1vGlb2W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5255C82
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 09:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719133283; cv=none; b=Z0R8erf48pCzZ31ALdnct217kf0Fj+hZPYAxq0grttrorkpD+xPK7Z7K6Pspw+ZJpesyTd2FXx16USGsQy/1PPdKT3wjNdMBqWog/AQyo8MVXyidnFpAxdU9aoHTIoXeOpQjXU7s68i2lxWJdHXHWl9aINSUV3My1Eu+49C8qyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719133283; c=relaxed/simple;
	bh=/WnKdbVrMFj56zIVE+/kgmmmmZLjJQ3Idmy4hwzf6GE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BHpBDxnTGT/P22NBV0JAvseGxfUG39XnPr5maR+Y2i6QPFi6pM+TLtSKQ/FNYjU+UUi2QOk+9/+s1EYJLiB6YupBhbT5yqXIrP90Dst9a/DRZEC7Dj2oMoi4kM/PoqXmb5hx4TEdtcoFFKtk0fs1CSkYZJvI98GYJCK0fg4GS/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U1vGlb2W; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ec002caf3eso48062491fa.1;
        Sun, 23 Jun 2024 02:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719133280; x=1719738080; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HqMpbxn+qhcW76/sheILADMaTVAYcOB6vMzBzHs4wdY=;
        b=U1vGlb2WDKbETnDL41L655qr80p1CYeyndLuw4FQMf+yAb4xUpNQ4KZo0rdJw14b1F
         HvE2lArQUo5W4C0N5Fk97u8sbbEdzVz4KfkbO30SAYmPZZq0nZPp02IB/V/AhiU5+x3b
         kAumTRIdBqLSF1ydmC8WaPH88qsh84udL9lRL4ZhUjwvaSKOWOH6ySMbdshz7NXgKnGK
         SUJDJIcX2M/W1UcHvXpzL+zK0hyC9QcNVz5dMiK/i6dyddd0euXZZ9esiiMoCVPR+ehM
         562odKtPNP8GGLeetrFbWFxivlvHu6FPlhgWcd8RdptCoCfaOiZuyGJOfvBDwPWNj+ps
         ud7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719133280; x=1719738080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HqMpbxn+qhcW76/sheILADMaTVAYcOB6vMzBzHs4wdY=;
        b=szrbz3i2nKzlurGK2X740lb2B+jdxt53GijIL4cdL7QpR9zHAUUvId1u5KWNirwppb
         idDncTnsnBHkBPt37wSlYZa7RVIEvnX8k3vbUVrlLlX0MiHumPf1ax//9V+Dj3DF8fg7
         0m+AxZ+vy1H3peGHZnnGcBM4fXgRblKRyuNRxGWwTUiQEoF+zkpnIfT25kPtmTArCgQM
         /WFbxGaTyNouOzvAIXuOSZMB3F/qx+WtKLkSFCFVSjrjHg63xuY2snl7p7W5e99e83YF
         FkK6Z7MFf53b/0h+0aH5hrQU+oDijDtWqO+1wfunjixnFU2fNzaWaxvx8knrfAA2wmSK
         FzYA==
X-Forwarded-Encrypted: i=1; AJvYcCWPrBynxN7uMXBsZq/DNZKN3cAcF6h2YUoIYCdhJKJvzpxRR9RzApNJLzOQGEGWJOGTVHReJAKS5Vh9geSnC7i5usJfYLd1qYtViir2GVf7u8JlveHEdNFdyS74PB/xEfH/peMEeK/p
X-Gm-Message-State: AOJu0YydFEOHozyY4KVnY+3mslgYaFvv4cSGUWhb5RAuUsYg6bjKFFcf
	cP5hqUSIgLlXWNROmLU55S92UG6o6XB2APKtqPm/ZtCCQbV0BYI=
X-Google-Smtp-Source: AGHT+IFKwaftrnzrFipKnsCcS6iTtyGmISk1R0bB2uyq/G/bVRqyp9Fw4gBkrsygi0MoPkFobiD9uw==
X-Received: by 2002:a2e:968b:0:b0:2ec:4f6b:de7a with SMTP id 38308e7fff4ca-2ec5b2c4e9cmr11873601fa.3.1719133279370;
        Sun, 23 Jun 2024 02:01:19 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:eac1:5757:d323:9544])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf549385sm282003966b.105.2024.06.23.02.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 02:01:19 -0700 (PDT)
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
	Alex Bee <knaerzche@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 2/4] dt-bindings: arm: rockchip: Add Neardi LBA3368
Date: Sun, 23 Jun 2024 11:01:14 +0200
Message-ID: <20240623090116.670607-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240623090116.670607-1-knaerzche@gmail.com>
References: <20240623090116.670607-1-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Neardi LBA3368, a RK3368 based industrial board.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eca0a42eb384..d2e887415d5d 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -634,6 +634,11 @@ properties:
           - const: mqmaker,miqi
           - const: rockchip,rk3288
 
+      - description: Neardi LBA3368
+        items:
+          - const: neardi,lba3368
+          - const: rockchip,rk3368
+
       - description: Netxeon R89 board
         items:
           - const: netxeon,r89
-- 
2.45.2


