Return-Path: <devicetree+bounces-110119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8239994E9
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 00:07:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F71C285561
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 22:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 126991E47AA;
	Thu, 10 Oct 2024 22:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZQJUazZk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C141E1C15
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 22:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728598035; cv=none; b=or5Tu6oJfHjlEMB5isEC8mJ16H48XJ8Fhw+Uap817kGe/K9E2gHmWXkkyzylGWMV6fGXcIGxvRrxv5w+acl0CU2n9fA6PU/vzQyRWE0DOamqjTpa4JhCmkxNpQgeXj+h2eSDFHvTUbMypsS7G67qyX6o0mFLsEPkwnaqg2VBaGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728598035; c=relaxed/simple;
	bh=jnlAXHvYp0y3pEfE6y+CKQOjeehF5XzDfNPKmU96txw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JyYaxvI6VCXLQstXTrWZJR46dUSWv+p+PJmpmMrop5Xq/ZjCefBY7/+J01KeBIDfx8ZFhzVezIib48Pma73M94QTorm36BT7lF4cawvG9eQyOaSG1piMVt8JUXATTYOnkN61VpanHQEqtiFyLt0NXTG5XGHz7/y4wc2MaGEOZJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZQJUazZk; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a9951fba3b4so220532466b.1
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 15:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728598032; x=1729202832; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q4Bp0lkW4glKBi3HhK96wAhVuj3XUXyoYbV+zZ+35KQ=;
        b=ZQJUazZk0Ll82ii4dVwB6bhMtHxcpA+fIiyJs5X+SnuwyYPgdD36kyAqt7N+1Y0Hoy
         9yn7/YZTzN/FbDCdMc8lNt07tptDbT+WijGIVMBOGUOP0smPU61z4FMrTN0vLDrCbgg0
         MI1fWHVKNs82uSj+4Drl+66nQB3th8oK0c1J7z1NcgotczCTbQHWaN4IVSgB4IAZ4oyo
         TfidrnSRnMvce53ju1zBCIsJIeJySFSZ+ni/uqAsbXy8QzcYH5IClq0loW6LT/9El66l
         pWKZp+w8hZGx9BPhw3GNNHn9Yfv0M9OKaQLfOWMRn27hzcDmH+v+jqB0Z8xW/F8eS9Iz
         sjzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728598032; x=1729202832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q4Bp0lkW4glKBi3HhK96wAhVuj3XUXyoYbV+zZ+35KQ=;
        b=lD7DkqVTF3oiLzJ5EE+eMc/4VLbBFFuRc6bxIWH8+xn71xOTtrdQ7czhr2W7DQuAcB
         67m1Z/OgdbFuAkIgcQFuQLsEcqZlxYE0FYA/YY41uK+1ud1FqL9VPMrmhEH1i/jRqwS9
         jA1Y8YjpFw40Ma6DvL03c9J67HKnhnJXPssmg/+3mGump8UfQWfv3s2xqAJ0ixmPiLKW
         ovhIwMwErWkNxA/LY59FhmVc9vMBzNkH3Xlw6lHBgjh/i9Xup3b9H46/2mt/opRhgrLZ
         RhoYYWvFITHxwlyXXUQALh6N8TnX6bl3q3ZhqdifnFMcw2WWPjkZo+zX0n4aAtFNhp3T
         Rnjg==
X-Gm-Message-State: AOJu0Yzu99nZMw+hNta2zW2vBl3IXVmR7wv+lAR9syJ7Lx1LfjeOdnGL
	JDivMr66bcVJA7WB0nkncyNTILPM3fL1UXrwlgRD2rwMeFRUEH7i60GrWQJSNXeVIv37AuVEefJ
	g
X-Google-Smtp-Source: AGHT+IGTGfTQjc4S3WjDvatVl0goiaZ8sKiJADoQegR7hLDsKLQHNxihQnAAM8q1tHu84+xtpr+7aQ==
X-Received: by 2002:a17:907:d3d8:b0:a8d:4e26:c9b9 with SMTP id a640c23a62f3a-a99b9583165mr33226666b.17.1728598031751;
        Thu, 10 Oct 2024 15:07:11 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a7f27e5esm140825466b.80.2024.10.10.15.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 15:07:11 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Oct 2024 00:07:05 +0200
Subject: [PATCH 7/8] dt-bindings: arm: bcmbca: Add Genexis XG6846B
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-genexis-xg6846b-base-v1-7-f04d6f6f93ce@linaro.org>
References: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
In-Reply-To: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

This adds the device tree bindings for the Genexis XG6846B
router/gateway/broadband modem.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
index 07892cbdd23c..2223234be687 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
@@ -115,6 +115,7 @@ properties:
         items:
           - enum:
               - brcm,bcm96846
+              - genexis,xg6846b
           - const: brcm,bcm6846
           - const: brcm,bcmbca
 

-- 
2.46.2


