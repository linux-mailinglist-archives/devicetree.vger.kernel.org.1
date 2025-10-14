Return-Path: <devicetree+bounces-226357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9485DBD75F2
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 07:13:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54B44406167
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 05:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8535274643;
	Tue, 14 Oct 2025 05:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HtDBnnKl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F982727E3
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760418798; cv=none; b=KHbv0gH/IY8hlV6YxlXtfYHIzvNluj/RoKu2oIDSR9sNSpJAAgTkfKjU9M5aFplMfOfKzzgM8Z/wtRWFBsvrabnlQqJ0ZOWBFAX+dJjet5Zi8fItc7gpY5TzzncF3oMPIbJtyAGavihmrTKz0o1TxaugSjia+OTdqrpzlw4W/ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760418798; c=relaxed/simple;
	bh=i8ILy3efLeOoD5Qf+e/n7DFmvbPzfKevH825MWgSvZA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RzuTfSWjT/37a8tFluGuer+IaApYdQ5NEPrv+IOlCNk3xwP23IUfqdWlRhEeskLC03Diwg6/tvy28EIeTeG606s4R4Qbka+2imaPtJ/ABPqJPoRiKK90G8H3OeCm5s25DLtnEx4D5Z92+r+7leMAcPZVuBQgxIVfotZrayhEfsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HtDBnnKl; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-339d53f4960so5122116a91.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 22:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760418797; x=1761023597; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8OhPkz1QMasSzFJcM2SsPKD0i5kQ3GIw9/NmjM3cWc=;
        b=HtDBnnKlvZwOgcjNHxslP9x3jWR8AOGBQRZzaEJI0mB6aOsW2q13ti1CZDTHwsvVTv
         zvlGzZZP2miUIn4DONyPMlxSRrqNGXRI7w8UW68pC9tqRBzR3PDqZwhkq87bWMA5wYM0
         fcYEREolVHr3xq88t7DinWPVpzHuRsDnYfx4/A+gLH02oDVuwT18FUN06Uj2iI8tmcOQ
         U4xEWH5cZ+LV/lW0F2/yWncyO96/35teiNwSRXrgxrx3d2tGzQFPhYJEAFPcWX/jSiD+
         kR8fzc/fe/34oqblO8U5nRU3XtPcQ6mouuxxs/MFrdSF3kUXj+QaEbQ4pOrMnYr/w3wr
         1wqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760418797; x=1761023597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8OhPkz1QMasSzFJcM2SsPKD0i5kQ3GIw9/NmjM3cWc=;
        b=pZkue6wbADYvmeMUVjidllOa+yRL/8UN/wSQQg0z0AM44hclBO6YdSrWItAFNSlCuT
         60ulUHGqm3fiQ/ogZwosEYGNeY5uxwn5j5TaOvqI1UIYMaQQDoEbYE6hZ/Nrmdpg24U4
         umHgKUa0nDMvOCTDMrdaAABid0FvPLTIp6/Usi+dpNBsS8NdoBa7++VE3UAdPgVQTf94
         7SRBB85LVw2dLBNYrO0uapHsbxEnm/SP26kWkD8o43Ud3YEr4NYPkw8iTPn8SWDn4PDH
         H9y3eUJaG0sWPLysaEPujVn6FdjkblRae+M1Z388p2BZ0oc37r+zyZLqjk/dFCaAgRsV
         /yYg==
X-Gm-Message-State: AOJu0YwIOzQFVRBcCwuGiv7A8R25WwVf8Emw3D1TFkWf7Sft/GbxgnC1
	DCVLEPpQsIXmRoGeP992vFdOIJIZfCQgpU3I7L4lqQ3GtBIRnltPSQQ0
X-Gm-Gg: ASbGncvzm/lpbxGEEC2INhWRgd9EfEoPizbS+hgs7Z14fkvbCriaNaLXcR09I7iWWcC
	qOv3irGnFulfkIvWilzD5X9E6YhH3K+Zzg47CRRqBfiu4Maq9vKVLOh+cqlKErUDr/vPpDLefhO
	CtOmTJom9UsAk2JnEu5TcD2t1jCBAwZ0gezxZOhsjlKn6EWhvpUwE1o1dyiGEHznZ+1rtSqPEa0
	sf0W1dsJSvlL9f0mOLhB82VayYHpx4rpa8NGZSyJRtf2RydLIhbga+jqFvtgHBhjuRDBCfnBmla
	Io6+Xiz3lEcjBCCE61EygwmFnAAak3fS49IR7EvJsSv4aiufXG+NkITkbURBDEI3ri/zeYHpkWG
	Ytk5kXZ/reH5J7xdz3XbSNNfaErtkuOs+P2Y+PkUr1bIBjIzVkdZBS1C2yyn2EbCDlg==
X-Google-Smtp-Source: AGHT+IH97JkKWq6pRYrkp4vvzMtmr+mAWYEE+sx6Tl0wnrhQDndiVYomTi6Q/s8WM6+VsXjBNCVvUQ==
X-Received: by 2002:a17:90b:38cc:b0:329:e2b1:def3 with SMTP id 98e67ed59e1d1-33b51168d95mr31720007a91.10.1760418796529;
        Mon, 13 Oct 2025 22:13:16 -0700 (PDT)
Received: from localhost.localdomain ([223.74.108.51])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678ddce4b6sm10902353a12.13.2025.10.13.22.13.11
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 13 Oct 2025 22:13:16 -0700 (PDT)
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
	jbx6244@gmail.com,
	andrew@lunn.ch
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 1/3] dt-bindings: vendor-prefixes: Document LinkEase
Date: Tue, 14 Oct 2025 13:12:24 +0800
Message-ID: <20251014051226.64255-2-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251014051226.64255-1-jjm2473@gmail.com>
References: <20251014051226.64255-1-jjm2473@gmail.com>
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

Acked-by: Conor Dooley <conor.dooley@microchip.com>
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


