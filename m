Return-Path: <devicetree+bounces-134766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC4D9FE75D
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 15:58:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 410F818823C8
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 14:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1AD61AAA10;
	Mon, 30 Dec 2024 14:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U9FjdCu8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E779443;
	Mon, 30 Dec 2024 14:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735570717; cv=none; b=qo0jchaOdEG0hSj8hJ8YEqTU1a9OO2aTYQyqHlE8gst9WSruiAv5R4rrN8calU0f+XCFK8OdgT0mPGqLI86EwrCzsvkhYMx08vGAEmhEF/lNhDC71toVeS/0nA5w8F/JPIEfzwHWs1CnDruz+zW/gpc4/TOF3JahwzInXxBIzf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735570717; c=relaxed/simple;
	bh=p5DkTJDu5QlNVWl35gjaVUthknkZBv6iZeP84hntyqE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q3vxnRXmPwSVlW+S+lSMpxMOrlY4ap5Ox/EdkpRYS4xT0lT+tYAArDyphC5Iz1wHyg1JDphgeALohy/8ArwANLSRN7RphK7a0P9B6f218CvWJQyQ9VFvanQC8jkSjHobN0hSW163Ocxh+iOL1jIj5Uxhzv8po1v3raMwON0Q6PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U9FjdCu8; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3043e84c687so81599681fa.1;
        Mon, 30 Dec 2024 06:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735570710; x=1736175510; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CcUs5V3NaAvho7+pyHks8hnj2f07Xk/qrLoafEl76mI=;
        b=U9FjdCu8BjPm0eFu8b9kCoIk6ukch685jyWBf/pL3HJK7pVXSwIZQJMnbFqR5s5D7t
         M1qWp7URM0UTux4ttmqS/6yIz+/CwlIh1bOA68KIAdORknqiwdQJaN/voh65aMVBqZc6
         eEyZMxzCKOj8xm/DauGl2doXX4rjBTcpBLzuiO799RLu5/LueEQIEGp2AJCAkh/P6PQb
         fNZ2N/bVWfBq5QBGCGthtPCEcFvwFe5OT/sj9Ghoh6GRZKZZGccLOVyV7mE0ESj/5NT7
         9UNdpNBnMdGNCXxO7zLIAjFzwifqygCoIxWFKzHFe8hxv/rB4JajEgx/CXirT47Je2iz
         57Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735570710; x=1736175510;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CcUs5V3NaAvho7+pyHks8hnj2f07Xk/qrLoafEl76mI=;
        b=nD3mIhRcDnfWYRSOQK57vSn/YppW2UduzlJtlJmhXVq1+tT3WpN3j8GK+Wt0wMbFWr
         Bl+jE/1nItBNATLMkLmKI79/FWaO7n3ftiFFQ83QAq6YQ/ciGmTSfE8S3mpsGV+sGXwZ
         5vyqXgJYEmBy8E2+lgBsVMldW78YqkQ36Bf8PSuXytdClaBPUs87OdiEg+G4AesdzOU/
         MNnilKcQ3rx6tcex84ujFyZCJm2k3aRpNu81Iofi9mXSPPwMvbR2ZcRxzHZysjGyQGFR
         EHxBKjNPjBaHrNV8jUZm8UsRSTEqSB9HxTTjs23XEdspHgzpUEtZ4hatQete3lLNTzGf
         xjyA==
X-Forwarded-Encrypted: i=1; AJvYcCXMOSisfmLeAbpqo3EMZ45gdDUI7pagZXUotKVSZsLHNmM5P1E7qYQ3uU2TSG6gke+b7pTe1cPT/aOSy0M=@vger.kernel.org
X-Gm-Message-State: AOJu0YzBtavKdt+UxWwOJd9+Uf6XP3mzQZj0e9H/Hs3FNldp6cjqupri
	RK60cwzpFkldizzNJkqDtd/S4tA7rcX/8WSkHPnXLTXjNJxLKX0=
X-Gm-Gg: ASbGnct9OYUvieiakcy49e6U8jNC6awvk6qD49IWryDOf9R8PCJxTeF1qAGgToqic86
	UUl1tpxSZTyqdndiySj+NcmtfnzYTKGhA+mMGVDe/1FSxn/BSqAW9VBe/tlZF+qw7s43che44Sx
	v8Abbp36B2SvGrO2gp4GiTvgrjavTMy+lbuCFBwM4+bJHXASpuw99A7QBSp+i6eWLYutjdUaxUi
	xcx3FRdtHdIXn3frtEvIdOqwd6fPklEnZJSKDf1Abe8S115ElcBuy3fuIk=
X-Google-Smtp-Source: AGHT+IGGle7L3Pgw7YylhfihahGvyOEaP7KbJQB691xKUVzMelucw7pM0g381qkKyOpyxUJSbMnafQ==
X-Received: by 2002:a05:651c:50b:b0:300:1f2c:e3cf with SMTP id 38308e7fff4ca-30468556638mr121726901fa.13.1735570710108;
        Mon, 30 Dec 2024 06:58:30 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b096026sm34385111fa.118.2024.12.30.06.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 06:58:29 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Date: Mon, 30 Dec 2024 17:58:18 +0300
Subject: [PATCH v4 1/2] dt-bindings: arm: rockchip: Add BigTreeTech CB2 and
 Pi2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241230-bigtreetech-cb2-v4-1-26d2d30e07ce@gmail.com>
References: <20241230-bigtreetech-cb2-v4-0-26d2d30e07ce@gmail.com>
In-Reply-To: <20241230-bigtreetech-cb2-v4-0-26d2d30e07ce@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1174;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=p5DkTJDu5QlNVWl35gjaVUthknkZBv6iZeP84hntyqE=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBncrUUA3PrmBoOQc7ZK6KuFz3wKh25H4s2Ks4/y
 ZkZpGqK4jGJAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ3K1FAAKCRC8310ZUDOW
 /UB5D/0UqZVTLfo9t+CZwDH2325WVdLwSnj4si0Dt3/1sDivld5EZu2i/ygHdEHQQjL+rbQb33g
 JhZ4VjkWj02or1/DxwriZMD8lTPai8vi7FA4+r+rytYFAwn9V3VA/xhBVw9muFCUFgsBvLUCNt6
 PhG4Ey94ehyjyJyk2QhvSQR/dx7tKp4twzUfH1ewHb1M+CPOatsPKX0p40L78FNm/UoFlh3FYuZ
 pDJ0ZHbo7Dic4kfvcbikF2pnjO4qhlxlvzjAmXiKgxz1kyWy4ylJZmZGHmZo6riNCgfv2Kt7Nkf
 +2cSgiVcJftrvwM8YUSKxia/vPn35aRxpeBBiZtp8b10Ole3XL2A9oPi/A1f+T9N1/NyOpqkbWz
 HBdv5rBRkATd7L9iVpX1BipqMHhO+v248a0xt4PSe5ScihVPq0HSmsMGV2pxF+1IbPsTfG4iUtk
 DkyCNy7KyHk7FBufRZfN4kd3+kP23XRuIImQfX5ReTgpPOkSVv6SRQGELXfTFLzaOsLR+V0fKig
 2Xhhdd19vGuFh/g2B4dDCTmlmPxz5BYlyMgO4rdjNfcKP5FRIZRiMV7RsmB/XsFcv4P6QEEDhQd
 HNpcr62xDuk+9qNiqgp8K/JJPpnjAPAeLtCpu37WQ0gH7Tw4nNJ4ZDxGhz/GYwNd+FOujTK9q3+
 jXUo0ykFOopWMzQ==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 are Rockchip RK3566 based boards

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923fadaa48c407a8e55e7854db7203e..349453b1676bfac45abf5cd49d6bd9f847281213 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -81,6 +81,17 @@ properties:
           - const: azw,beelink-a1
           - const: rockchip,rk3328
 
+      - description: BigTreeTech CB2 Manta M4/8P
+        items:
+          - const: bigtreetech,cb2-manta
+          - const: bigtreetech,cb2
+          - const: rockchip,rk3566
+
+      - description: BigTreeTech Pi 2
+        items:
+          - const: bigtreetech,pi2
+          - const: rockchip,rk3566
+
       - description: bq Curie 2 tablet
         items:
           - const: mundoreader,bq-curie2

-- 
2.45.2


