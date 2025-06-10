Return-Path: <devicetree+bounces-184113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93241AD307C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:33:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 154003A5EF7
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:33:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19D6727FD70;
	Tue, 10 Jun 2025 08:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TJeqOGkH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A4D25F797
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749544417; cv=none; b=YY+sZeoQ/2hkJIhX5s5pzXVRclsrY5zczkYi87NRAg3tGBA7KzfSImBjWiuPiKtVqmWkQJEfwUNdEc3LiPvbZ/j4VonUqlBFEwvsP+3uvKcgvGsnxkTk1SlgSpG6e2I9RIR/HJ4dWJL73M2viu26t6e7O0Qr4leAYWDJ6WpTGMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749544417; c=relaxed/simple;
	bh=pux6+eb/W9FN2HoN5vMcC3kEUTHEg5oAoFHBsjMsScY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GWuaX/cy6uqxZdzzq7fyshWJ9VCix8gJFJMRVT6wx0269+p51OqbZS2ta8g9YMI66+3qglAoojereoIpTRse26oWZi4Y2PwTBezIJUjSz0t/1Efc+DCUg6x4BNmIbzc3gX8rOycOrf/rSjH5C6377CwVUOJVm9ODSCjZsJsKSxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TJeqOGkH; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-55325956c93so427671e87.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 01:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749544412; x=1750149212; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tXDUs5/+IldxO7NKXVBzYozOWgACkNjwwUA9PlSG+Pk=;
        b=TJeqOGkHNUqiOE4tJvs+tT66+FmeSoHy6MS4IlIinxIApsc+JABWnhNxFyKw/LK/8v
         lbiRcsjS/9/4lZNSXM09ENZSOTB3G0kGWZiYhxy7osUxWkTWcifhsjdgvde78q9QMkXu
         NmjT+0Qsj9NW08dJqbehZe46HCZ5j22UFsdscZeaOuUukmslMbDRnGsoc/cAX2Y6bsvc
         fA3DaKNuueGcraUxNI5AgYuGA68JY9wjuoMx2O4GzAKjoVWGvZG0yVX7FSZ8DMfQhwr9
         Eva1VDD2S6uw9NEBfBe83NgEN0bt/VVCdbL3GxlyBPIekdVeYcb4C5jaorxErwoqSNO3
         ouWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749544412; x=1750149212;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tXDUs5/+IldxO7NKXVBzYozOWgACkNjwwUA9PlSG+Pk=;
        b=jbQi5bDpZaHE4xcK/tegwc3yY981MIwEpZISNejjq/Xz6ufNbPYc7xDrJ7mtR3q+w5
         mHb6HhLXQCDH05VGWjN6hsmdW9EnKzHWifhxk4CTNaO7V+NfvBC/JLRPzOEWfpcJRqEB
         s1xy3e71HuUtXPK6897c2m2XATDVEe8jKBPfOyXBG0qx8idhAZf0p2swtC9VH4wof0Z4
         VGwN7TWhzgTZRsjDFeN7yBtOYlDEInB1bMWBcBuF7WdCug3qkDF+qdTAXr5nF1E1jdML
         080qGH/yQ5XtQoRHYF4uYIcod7sf6Dil7Jb41w6BKOFGsnQD5m9T5VYFJagXBVEpUbib
         WjAA==
X-Forwarded-Encrypted: i=1; AJvYcCX0wwLhwrlxj9mzAVFvvEl9Hgq+xHsrh5Wfc/NMntiHAYjHhHegQPh+oA1u0SQxneA/uq8OLCcc8KRn@vger.kernel.org
X-Gm-Message-State: AOJu0YyPDLumtEubAfN6c1SN8JRXHuGQwL0yIA2HyYNxbdEiZK8j2kYp
	hhautqeFH0YQZmYDpEC3OWLJPlHrwkJS3MhgOVDHwTRgchHJxiJZdnO8VZJhewfutMo=
X-Gm-Gg: ASbGncteYJar8WZk8mapK05+SfiTkrlcFHeuwttjZqfjACiOM+B39o9XvLuqo/wSPGy
	FSegqBz4oBhJTmJuB7dVXdH7PLlnKdkdp/hC0sSanYwXo0QEwzHmsOlsLT6qk0HI9kIYY1s5opi
	Y8HEffNzFaGtzPTbyAmoqR292cDojsBFeERQ5x5pe8+i8msVGAFGTXeM7epVR7ripXuLlQUvSyn
	Wl0pp5mPlOdFOzk4SjLJbgEDrXcrWURAgf5I19qtxRb3DjkGn+WgIwZxLUy2I/GDl4s4cFqJVVJ
	fTe0lVmG52BH4fCZ8Ita+4Rhfxv3trsgdhdn18ic77Ljw7ol1+neGIaxMEvzYLKkVy/IBlLCL3m
	q3gg4K9lby4UNqQ5EbtQg1Jpg0CU5+2L3Qi6XyZIRO3L2ejShYZdgx/sG0MzZVQ==
X-Google-Smtp-Source: AGHT+IEYIQ2Xi67OSgwXBvj/zFL581W4WKugfySCgFBUviW8ff4ybP4NOKQ1O0rlnOZq1iQ1Xqg5oA==
X-Received: by 2002:a05:6512:15a9:b0:54f:c5e7:8f7c with SMTP id 2adb3069b0e04-55366c35abbmr1383687e87.16.1749544412391;
        Tue, 10 Jun 2025 01:33:32 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ae1b351fcsm14167241fa.35.2025.06.10.01.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 01:33:32 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: media: qcom,x1e80100-camss: Fix isp unit address
Date: Tue, 10 Jun 2025 11:33:18 +0300
Message-ID: <20250610083318.2773727-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
References: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to the devicetree specification a unit address shall match
the first address value of the reg property.

Fixes: 2ab7f87a7f4b ("dt-bindings: media: Add qcom,x1e80100-camss")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
Another fix on top of https://lore.kernel.org/all/20250502204142.2064496-1-vladimir.zapolskiy@linaro.org/

 .../devicetree/bindings/media/qcom,x1e80100-camss.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index 7d4e6ef57bf8..959cff1a31a8 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -190,7 +190,7 @@ examples:
         #address-cells = <2>;
         #size-cells = <2>;
 
-        camss: isp@acb6000 {
+        camss: isp@acb7000 {
             compatible = "qcom,x1e80100-camss";
 
             reg = <0 0x0acb7000 0 0x2000>,
-- 
2.49.0


