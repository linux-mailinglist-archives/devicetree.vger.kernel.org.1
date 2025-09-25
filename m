Return-Path: <devicetree+bounces-221290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 092CFB9E477
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:21:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FAB8423F35
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 631DD2E7182;
	Thu, 25 Sep 2025 09:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YaU26Zrs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64562E92DA
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758792088; cv=none; b=h6veDriQ/2FGsRVkR8T9eogRyEl2WwDAopPhTLz5yCqVy2TRv96OoM37yZX9tC9QlfB99YpWiGe+l6Biv33eV8ZNDyettPnJKG4+o9o66BW1B9S56AIJkDn7kQALoJoOeHmH0ZtH/cYGc5H5OxKLurGXHcDTyttSL+6XC4PIghY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758792088; c=relaxed/simple;
	bh=MkXy8B0HvDpu3XB7QRokGYJw4lWQNt80EBtTGcgIso0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kvE+Ob1fJoDONKF4fr+tXgNL+I9oQj5mOIdkhSbQ+YWdg+eK+wJV9L2+nCAv/vjB0zbwXzjpR62JRcGCo7c99kd9fdxbJ4PHbOELMYMWV1Q59RnjpM+i+MoBlxfNovVa5d1DZmVf1ladkN6nLzkFzYvH9qM3dnOfPEYCgkcoNhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YaU26Zrs; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-25669596921so8138625ad.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758792086; x=1759396886; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hzgyK9PV21LUzCc3kELjlfdCuadwZ4YNSm8kpUWXn6s=;
        b=YaU26Zrs7N0UmkJ9yx7nOs0M0kvemcxjzNro0NhzKLTYBw9QAA/s5Gu/DLpqhJ+pEB
         Rppr9Z8apxk41JM+fui8OHPsNXP4ilcNdnl5PIMWj3IsZK2afENJDlRxRqC6lxQSHCPP
         Mu0R7KlE0LOiOXoOxQzAXIdYme5TB7o1ZwioVTXv1LhlZM+lQNTQ+9o7SSGW/ZbYBRGT
         4wyQ+ezatZGtyhbLF2hqSHXlBAcOfnpQe3ZFa02ScEghQEeoc6oGxQecRlv9I9+mmvS/
         tZYlnizdRQ3lcn/Iz3lP/Xa+ajZRY9U1FvT/yd04i1bpGtFpALmMuk9hHy34JRxxHCzU
         MXBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758792086; x=1759396886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hzgyK9PV21LUzCc3kELjlfdCuadwZ4YNSm8kpUWXn6s=;
        b=h8JhTLuV677agCzzffAndXskQm8OTSOM6gYxI36BxqnLpta3Jbidk8+/oS96hWdts8
         CXJp1tWScgC41SAIhJYrpAF5zLBz1kB5zh5C5SV5M8gwq6Oc6UMMjgTTg6uz+h5dvER0
         LFlZZpqr+0pRImxl2/eVcdWBqnKzaqPtJNH4D/LWjf7+AU6Z1TwYtcSOA/WlDur9KLev
         Z8IojyTRx4y8X1IrW2a52cNaDAb8Dt226fec1nyxsbUvCUL8T6xqbbdlqWF0L4zrzbTE
         pbLqSqPHa7fGjCyFQcqH2xgNsclOMIglm7hMkEQxNrif60qmidm01UB6bbZiuBmDqw2p
         uUQQ==
X-Gm-Message-State: AOJu0Yxp3dJmCco5xRK9JJC6XYjufHiupQoFZZy3+h5Vxdemux9fGG3i
	IUos+f9C17ECSwsByFNsTHd5/+mLQMzojAwGWHX601fqH3urvSLRRwll
X-Gm-Gg: ASbGncsi3XD9kKwjICPwROVMU/fbadSjDBpXXKu1m/CLlIAVlIObYejcVaEA5HbTW9b
	LRvrlQlFep5g8Q5ZlBk6yFMhbT2KQacs9JJUeysg8OF/O7CobRanJBP0EP+OXCg0pExT2SlrSCB
	ACo1VcUtK4w0k3n2pWKGO/xacU4ZkFr2SjegkD+3731tYQjw9J/HswsJGObvW1MW1N+BfJRKTET
	hoLGi1jwoXwnVhgE2bDii2d8ZhgAZ0XDQyP0+TtrVEnzIDfK7TxXdZmVfgRbNDVwO7Pxcd3WRZ4
	1rh/G+s9N7tB9Bq7sof37MbUrubUAvWCthfudGVeyfHgkEwpzwyMpeYXGdsf4AP2/Gqkc7A82PX
	desyTrLprLU6YA6xxs0aWitP1PicpAk04cmCALHkChA==
X-Google-Smtp-Source: AGHT+IGuddAG2m+l7uqXE77ohvkH5b/2O2Eh2v8gCidWDhuRqQvkIR0rtKEWmswxBoMYHW2Mjz5AVw==
X-Received: by 2002:a17:903:2f90:b0:26d:353c:75cd with SMTP id d9443c01a7336-27ed4a03486mr32626325ad.21.1758792086107;
        Thu, 25 Sep 2025 02:21:26 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.62])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cdfafsm18251855ad.30.2025.09.25.02.21.21
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 25 Sep 2025 02:21:25 -0700 (PDT)
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
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Document LinkEase
Date: Thu, 25 Sep 2025 17:20:35 +0800
Message-ID: <20250925092037.13582-2-jjm2473@gmail.com>
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

LinkEase is a company focusing on the research and development of
network equipment and related software and hardware from Shenzhen.

Add vendor prefix for it.

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9ec8947dfcad..db496416b250 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -873,6 +873,8 @@ patternProperties:
     description: Lincoln Technology Solutions
   "^lineartechnology,.*":
     description: Linear Technology
+  "^linkease,.*":
+    description: Shenzhen LinkEase Network Technology Co., Ltd.
   "^linksprite,.*":
     description: LinkSprite Technologies, Inc.
   "^linksys,.*":
-- 
2.51.0


