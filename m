Return-Path: <devicetree+bounces-234470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 54880C2D706
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 18:21:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 474744F297C
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 17:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D669C31AF21;
	Mon,  3 Nov 2025 17:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ThF09iwO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBD831B807
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 17:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762190263; cv=none; b=C6XHwhj5moK00yVyWlUR/P2WZ4yKqAFySIaER1eW1p+G239vEqeZcCsxcKDv2KZdJVYs1wOzMK18yjpv5n0CTJrHQ3xuI/Zka1CEaWoRfa9EdPejDZByhcW8bHJrLHF8cgxfHztEPaH8xuGtDi4UhxeDMVQwo1KCHf5de86HEdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762190263; c=relaxed/simple;
	bh=oJ3OmNhOvxqd1qIdx+Md8cFm686Vdj4pRlbydhNYjB4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YgSQGD85nYjOQ7/WJ2km1U9QCcexc46QvbBop0HdwjpRwM26oLhKalroahuIvLlE3NQBkSzYYZWIlrUcnHwMkcHFTRga+DFJOA5s/LeAkzUl31nsvoB9gUSkpE+o0rwLWLzAnc3MHwLm9GnO81Hog1pt+T5WWsWy2T8oGGVSp5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ThF09iwO; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-781206cce18so5007626b3a.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 09:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762190261; x=1762795061; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NyQp65YrshJlf/E9g4tBCluPHZ0bWpe/t0XipA0RiBk=;
        b=ThF09iwOoZ0770s7eTOKthUYdoKTxlnwe4NKe9mVldnPo1zqBvFU+8TSmrZ7BtDdJc
         Fep/hqdSzVw0P08gQ/qcKahq1QSjJgJ4SSEYG0Xmf4lYVGJZALiXCq3aKhMNHvSvHf+j
         SN2W7h6Y6Jo+4unukTr/46lwq+dtgn39rIk9/4UJEtiLi6c9TVUw2qP9SjT5SUqMA2jp
         qE8nZu3WBdE2DQq54ThKrVViaeuCD6bS9lnTnpuRd23jQk8kTNCYQHeORtJ8ZfHkD1fV
         XPOMJoCXszvzj9KqG3CSYSRRoPmx2WVa179XmToogswVut9+99R5ohGCOsdfPGNLgUey
         4woQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762190261; x=1762795061;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NyQp65YrshJlf/E9g4tBCluPHZ0bWpe/t0XipA0RiBk=;
        b=gjK5njBVOIDefMUI1ulSyHGkl2XZApM7xlK+fsq+lXkx1ACQs94+f9ojQkLUZgyAjS
         bm5eGh+wraQnAxusA0RhJMpvXJ2iXkC3gY37rFyLD5lNkfL8vtijWoLlrxP+T1vrIt9x
         HG33Z1jEJyusIUBuPdkumajlVxj51rLMcgPZHh9cumy38ErIDi+9+Dp5hBxy6cwlEwRw
         baSUEW6Qayw1rmHyIEdjqlG6RkV4Qw6TqiNtQl1BnYAegbPUm4I/qJRDFErDGBvLuzS7
         5smpdhVUjKWIaxontYJ9vyRe2OHhlyxT3oEt/L8Zsa8UnyH4l5m0ooqAuwvKfXljC4t6
         KUfw==
X-Gm-Message-State: AOJu0YwPXSuoZJ464LTzu3DqBe/WNUkVxt4ndWkSkILAw/kujneDRRGp
	QfECDagYWFqSaYX6Ckk3GsIsqb6or2jydQlQY83v9whb2cHf9DiM8+x64rCOlqz+
X-Gm-Gg: ASbGnctZDFFYaQcFeC3mqqxKNlvA9WAXzl6/msOAtt8HaOPKNpNgckn5FyFBQ2OjXK6
	vYiXBoWGwK5eXHDdUdxJQIfs9ebdL4ExjQC7XGq6RE2ilQBfSimcfabJHzj5SYu4Q+pCHxpDnZD
	SsK6Hh/HCd5A7fuB3bzUb0+Z7y7FkDcpk+WMc4Sv10pmooen9XB+HPHE9eDsqtlPVfRg3ta+lrf
	nEaC6IAYJ1sCfn1Fxskzl+SK4UY49NydYr8htrrk5Xku8rI7XhGIKPkmOfjEe110TEHzo44tXkz
	azkb0HXR4XuZmjGZqK04uidxQOf2+GuR4+gUe+hIbz/+Ft1fx4fKJXudQ4MODUC4THuEQjxVYvY
	DpkT9zm0JE9CUS/U0b00OKHICHVld+lPfB8K2RkRJfZSzo2WvStz6lF1VcFAa2HBHvcUYJvkUan
	fbgDnDB+cfSg==
X-Google-Smtp-Source: AGHT+IG2SBCsPp3obcuh2HPn9F1zioqp77l2USqTslrv2MAJmfMr3FJvfEFhjKUR1CAermd0xiOHng==
X-Received: by 2002:a05:6a00:2e93:b0:7aa:a597:6881 with SMTP id d2e1a72fcca58-7acbf6ab4ecmr204256b3a.4.1762190261426;
        Mon, 03 Nov 2025 09:17:41 -0800 (PST)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7db28d3fbsm12148112b3a.43.2025.11.03.09.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 09:17:40 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v5 2/3] dt-bindings: arm: rockchip: Add 9Tripod X3568 series
Date: Tue,  4 Nov 2025 01:17:01 +0800
Message-ID: <20251103171702.1518730-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251103171702.1518730-1-coiaprant@gmail.com>
References: <20251103171702.1518730-1-coiaprant@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This documents 9Tripod X3568 v4 which is a SBC based on RK3568 SoC.

Link: http://www.9tripod.com/showpro.php?id=117
Link: https://appletsapi.52solution.com/media/X3568V4%E5%BC%80%E5%8F%91%E6%9D%BF%E7%A1%AC%E4%BB%B6%E6%89%8B%E5%86%8C.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8ac..9b9b3d2c0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -25,6 +25,12 @@ properties:
           - const: vamrs,rock960
           - const: rockchip,rk3399
 
+      - description: 9Tripod X3568 series board
+        items:
+          - enum:
+              - 9tripod,x3568-v4
+          - const: rockchip,rk3568
+
       - description: Amarula Vyasa RK3288
         items:
           - const: amarula,vyasa-rk3288
-- 
2.47.3


