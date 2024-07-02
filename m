Return-Path: <devicetree+bounces-82483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D973E92486C
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 21:36:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 177CC1C22EAF
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 19:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74FAE1CD5CE;
	Tue,  2 Jul 2024 19:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iMyfjba/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52286E5ED
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 19:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719949000; cv=none; b=VQQI6VilC36tWmPOVw02Pyr+sTGEdSSAP5NjJpkbLSlgUwO8/CIloD8zDEPkTyJDlAPu3ZAKHse843R70ORpvjgAOFc3qhqNIgcXV9rzGkzhYBamURBKb5hVKNYRVHn3vxCTCcwCVGafNB4GPYIKwpyIcLqUmnxHqIhempCI1aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719949000; c=relaxed/simple;
	bh=yyfM9BV5RftHxEzg8j+tfyKrY8B/22YWAHLBWaIAPQI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oiDdwvQ3y4shNd3erjMDtN1MzMDNOr3PwW43xLstlpaUQ4HFekO6yZjpoO/e0BLUG88jxS/6ZBm/N9KJ7bnb0aCmraHfLAiGwLGHI/S02g4fmP0qQVi10+sTUtw1TNxhM7TQ44GNabIKOCs4to4EZ/CdhetquM+0DiA9coCbaHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iMyfjba/; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3d55e2e0327so2409820b6e.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 12:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719948998; x=1720553798; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=anbuqJOqGdROcgmaxsXeRlaGzKoRw9vLMovtlsjF9hQ=;
        b=iMyfjba/g1rFXY/JMbqfSE1hGX3YQ/WB7OVUEftdrZk4qC+HPeXtg3F7lWAY4UERwY
         YhjQk+bi3oErtxiQ7oryTCgLacsDKHsv5Ebv5euwmAOdnIEPL6fBrkF2+OcQ/FooThZE
         sk312IusqVenJ+oiy18hItu5hE+UWuswuRwhtFgFGsvcMwM58eEDYE/yMaowOGY3I6Hi
         rERWXFMLM07JNNRTsV+Uh45QIyxt4EBXNv6rlTLtqDFZnjx1ueeyXDbKAiQxQNui+HH2
         ovbX689TKOEEyDONNHvp+wpTt3PqNTQSs/WpgGnGl0eXq1vnZSpIGKKGU9Jngk0xtHuk
         4ypw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719948998; x=1720553798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=anbuqJOqGdROcgmaxsXeRlaGzKoRw9vLMovtlsjF9hQ=;
        b=wFINBe0zByYL3wUoZ7Cu51Smn18pl172DKH9ENvgA6k7TJUEdVK3MO57BpgX+/6QOO
         HfZeeORIPWjVUy4q0CGjMlao0SHPinpGXUcHjq0sp5uNzgvASz/xMrjW0NCkDHgKwri0
         VYgNTIDL7ub4lXQG+qWhsWsWecrb4yy2by8zb315bKhGa1E87yGiUxovjCktvzBqgGRa
         CsMA0Gf0qJwxsjH3fRECIuO8+LQejtJ8+wgvPLV1xeGPleSLh2wTt5ySP9OYY1OGusFR
         sor7YOquFhSjLIrwQjgGFQ2EC8TM8hG0K0Ofaune2MkLLYnFrgL79GzhAS/FibF7etCs
         18BQ==
X-Gm-Message-State: AOJu0YwvQThYxCRZqP9+tAoe2vaXQcIOAQtDsjAv8G7FcM7EAvX8Bk9G
	qoVDYOKOzx0+0Ivk1p9z49moc/67dqRegHbn1v7/qFv2rvrxoryl
X-Google-Smtp-Source: AGHT+IHAQ5EoGyfspbpWW8sxncMu4SREx+PKyvGTdRkl0DRodWiKaRVrlPxuY6DoeSlIHThJUVOT/w==
X-Received: by 2002:a05:6808:1794:b0:3d5:66ed:adc7 with SMTP id 5614622812f47-3d6b34d3bdamr11785975b6e.30.1719948997900;
        Tue, 02 Jul 2024 12:36:37 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d62f83c92dsm1831335b6e.0.2024.07.02.12.36.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 12:36:37 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	ryan@testtoast.com,
	andre.przywara@arm.com,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/4] dt-bindings: arm: sunxi: Add Anbernic RG35XXSP
Date: Tue,  2 Jul 2024 14:34:11 -0500
Message-Id: <20240702193414.57461-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240702193414.57461-1-macroalpha82@gmail.com>
References: <20240702193414.57461-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the Anbernic RG35XXSP variant device and consolidate the Anbernic
H700 devices.

The Anbernic RG35XXSP is almost identical to the RG35XX-Plus, but in a
clamshell form-factor with an external RTC and a lid switch.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index c2a158b75e49..60b11b289535 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -61,14 +61,19 @@ properties:
           - const: anbernic,rg35xx-2024
           - const: allwinner,sun50i-h700
 
+      - description: Anbernic RG35XX H
+        items:
+          - const: anbernic,rg35xx-h
+          - const: allwinner,sun50i-h700
+
       - description: Anbernic RG35XX Plus
         items:
           - const: anbernic,rg35xx-plus
           - const: allwinner,sun50i-h700
 
-      - description: Anbernic RG35XX H
+      - description: Anbernic RG35XX SP
         items:
-          - const: anbernic,rg35xx-h
+          - const: anbernic,rg35xx-sp
           - const: allwinner,sun50i-h700
 
       - description: Amarula A64 Relic
-- 
2.34.1


