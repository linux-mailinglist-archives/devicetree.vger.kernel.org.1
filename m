Return-Path: <devicetree+bounces-222641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE18ABAB8F7
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:52:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22A363A5684
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 05:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B3E283695;
	Tue, 30 Sep 2025 05:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hNJn1NP9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE34E281508
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759211446; cv=none; b=ls88q0SZZkzh3cdOqfLJsavdVw3Gp44dp3mrjoSVG7gUGfNWDbGtaUKubbm34W+nMY7ESdA5vKCQkiH4GAXN8PPMXqX3ckvakO9zHnN9lFP62gceCMOJT2p+//RQTeE4rD729KhjLmvzu2fozMsgF7tBhonvSIrpeE6MGXvaeGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759211446; c=relaxed/simple;
	bh=fxxAVmPJGca8589Kqpk9mJo76fAFnptROiZXxjqZbz0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rWQ4HkIm/jFX5a2G8kSEA8Ew8WWsw8JQ1rgAMtmmVmkBUaKAhDc7imkHd60awMfm8C5nzt8NcuDmjkNJDaYx9LNk/kboqkKyBdi5xada06QWrCr0TsnYNiQMlAxJKf51hDfOTBqbSTp659nS8VhGOCOBuu2jlsBkahUIPuaqQHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hNJn1NP9; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-4e0302e2b69so17538281cf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 22:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759211443; x=1759816243; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=;
        b=hNJn1NP9/Ngp4COUHJet3fMnMkr/szj9q2NpSKoAUlYgx04VQE3/VlZT89W4NF3F7H
         em9jUNxKroFQd3npG6cKs49ehIKiuB+2Z5//zIJ+M5Mz3x0BUbxbavDScBypnxxS21tH
         il0MKmb8/UYV3hEAyNDZ9kA7xjCqtzdI74H5RTIB5GyoGetEqhWl2bP4lKcNHOZYDm2x
         8+jTYGxB2HMKMEcLXyupmcjRrfkqzV9yNOqSMnI7mjGPFPgHri6GEZqXhUBaQ56b4yVU
         rQYQma6W38XlN6vMi99jS3Fh1SH9eT9PhqYknaa1nS3uT/k2n7Da0dErXJrUnNnwNMp8
         mgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759211443; x=1759816243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=;
        b=YnlO96uyA6SsE2ULtQXeKp6Z+sQHsPU/Nny7r2BWGZB8Txt3vsE2CdFXEdtTbb/a6D
         nw9GBaSlwPRMwfAR8Nwqpy9sGGymO+DQJEKIUyPN6XbMDZTfqmm4kLSo9ASqptmnMlvL
         o5vtFzxxWVFucY5G+JPDBMRL8Zh3gOktpG8v6aqiwB2lSRLv2EZLgmep2hKxZYOjsYHT
         s/MLNjmmcyIsX5A8sQDzdiaiP889/ID1GXyHX6RZHan6X7FqB/FUSaMq4fn01k9LrnD/
         3FMvvq+xUtX+ZgBQlwf5YDCrRJVXKGjNKkEJAb0Kc4O8020KcsIVtLLwJEMbxLgdKxB7
         vQig==
X-Gm-Message-State: AOJu0YyuIKrvqqjW0N5X10/WCfElLsCcPyL/c6u9CReggBaxLJCZsYax
	WxpRdtR1+O/BTGq2pJfJF64lchYHdAk18tpqU9f3bRyTgqBkB7ouI2jP
X-Gm-Gg: ASbGnctbvQmSAMm1mu6yYueyYpzYqrePs7Lg3ePfQy/zFV1rrgy/nfv1XnhFu3j0nwB
	7JeRoDI7PzPWxNLvV9boiiwWKAYC7UO8luL4bxsGuzLqR3HTkkMWjEfRbPs49BSl9TFnQAI3f0J
	wluD648nuBFCXdddChKDaZrYY94gkLfKQ3+BiZSQKKe0hwFvOM62Efib6y+XBTpCpSGezoawbZY
	1od+/s54nN8VlRlf+PHCJoNOwvfh867u8GfVFAaW/+G7dBjFk45WpxijpDpAjOW9Qhlck3qIN41
	obfLGfji6eo6lFwF1ebQDTFvpO5b20haYvO85qFa2MWWZnRZ92KrFDRyfjOvI/3kj9/ODXl3qpE
	zWWUbNfK4NMBiIFTohfIYcF7kQR0VrUdJQZIgeuoRUv2i
X-Google-Smtp-Source: AGHT+IE8TjM82ov8xrxnZMK/gXEPncLjzJMtiR+2bILyr0672r34V2+xjWe2oOQ5Pcx9lnrmFBdBDA==
X-Received: by 2002:a05:622a:1893:b0:4de:515e:61f2 with SMTP id d75a77b69052e-4de515e792amr151619881cf.83.1759211443594;
        Mon, 29 Sep 2025 22:50:43 -0700 (PDT)
Received: from localhost.localdomain ([2a09:bac5:3981:263c::3cf:53])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-85c306b5f64sm971990985a.32.2025.09.29.22.50.37
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 29 Sep 2025 22:50:43 -0700 (PDT)
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
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Tue, 30 Sep 2025 13:50:16 +0800
Message-ID: <20250930055017.67610-3-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250930055017.67610-1-jjm2473@gmail.com>
References: <20250930055017.67610-1-jjm2473@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LinkEase EasePi R1 is a high-performance mini router based on RK3568.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
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


