Return-Path: <devicetree+bounces-110118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C176E9994E8
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 00:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 847532854ED
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 22:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 347F11E47BE;
	Thu, 10 Oct 2024 22:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LMbH2DPW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E06D1E2858
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 22:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728598034; cv=none; b=HGFSHbnCNrsvNZD6Qhr8NDTYLgRLGke0ndwuOXq7vnZB+CVmyT/jGGX484Y59P3owuYBkpZ7KK+7MZcmENTmscdkmf6tPCWdm2diVM7WC8piRA9FB5mXaW7DjhDtFAteMNgaMY2aXP9f2vG7IvEEa2zsa8NhvuK/U5xYS9Bkqxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728598034; c=relaxed/simple;
	bh=07hPqNaG/PRDnNBxg7eoRGBkTVWXEfO2yh2eyw707cQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WITIDOekMOuAkRan1FRuASX8t3D4zvwifGEy4TB/sPKZ2ZINrnVLEqc27B004dhskhqSBVF3aXXVUm2K6Zhq8GFPJnYA340V6224506pYBFZ3WLKWGIQKQq2B2WiTtuQ6rCLj4d2l9DPyEDO8vgkKK+dIV+rUnvJBLZW0KNMawg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LMbH2DPW; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5c87c7d6ad4so1846873a12.3
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 15:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728598031; x=1729202831; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nIMH4P7sUxAOEykF4oNU7nEtUnqAcVv2WKZWuAbTPs8=;
        b=LMbH2DPWyqy07i6BwtdRVsm2H2uPvpGq2cFn/Vxshx1a08rriZauohhTimrtgG9d6t
         8cK5LTr0eS8xWTgF6sfipuSwRdLq5MpLOQ9LL2xyp7IhZrjHMCZ+XYvDHu7C+L5/Dxqk
         IPbm2Ujiys3wvXPHJ7lpQG4o8XBMfWniyYyvmM4PmhLvfJs7v5ln7qBpdnEY+pi0W+YN
         cG7Gp15Djzk/nndWbgiwKLgtmfe8CLeQcP/8glQwztc9gKGIRjQwi0zVaTtJfOaxfV2C
         JjjFPNPda2VKOqRzs2qjgBzzBnYn1WcBoiAbQfDNJOIoBWFolgx//+0XncBKp44Medc9
         HfFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728598031; x=1729202831;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nIMH4P7sUxAOEykF4oNU7nEtUnqAcVv2WKZWuAbTPs8=;
        b=fxihB4eiocPD4OBzP6oYdyYILzenaiy6D3QCQO1NNC0krRBZS842ytG9FSglV6iaws
         ZCVPDS02Dhxt+nAZVFeT++UEvrM8gNHGtb6LSxix39WLa1QiVgKRRRl60Z364XicEBHA
         BHoF5HzAJTR5Bnk3XHeSImRUmmOf7vhx9GtpInNYZ7uS5UpLkMPWk1lrd4ATDbV/0l/n
         Shoxnh+ewt/YM/KEtFKpcG7eliNYJGTiNScuNrS3SXGDReFC9rOiezrm1J/Hwg1OZ4rl
         MbX2cOmXlnIfn3l6C4ZOFaR7Xy0eGy4UrOvFl+u1i7/tQRWXLA5+Rr/lDYO9jej2dvNM
         XDZQ==
X-Gm-Message-State: AOJu0YxaxxEobgD7SltJdi3iRD5vWbZGbdelzcxluiqukcsW+z9DBds6
	+tuVTPGSgS9BLXdS2HnCzPV+tHs9zs8W+QPVQiMwj0n8qceKtGIqC5GJY43uDbA=
X-Google-Smtp-Source: AGHT+IElOWEsTKPKL6x4gCEfBn3KD5ItDKH+NmNurB+h89vaAjf6GZmAnfZ2Tpd2x5sKo9T3QaMTZw==
X-Received: by 2002:a17:907:c7e1:b0:a99:762f:b298 with SMTP id a640c23a62f3a-a99b958395bmr36007866b.41.1728598030768;
        Thu, 10 Oct 2024 15:07:10 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a7f27e5esm140825466b.80.2024.10.10.15.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 15:07:09 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Oct 2024 00:07:04 +0200
Subject: [PATCH 6/8] dt-bindings: vendor-prefixes: Add Genexis
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-genexis-xg6846b-base-v1-6-f04d6f6f93ce@linaro.org>
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

Genexis is Swedish/Dutch company producing broadband access
equipment.

Link: https://genexis.eu/
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b320a39de7fe..43d936361fdd 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -567,6 +567,8 @@ patternProperties:
     description: Gemtek Technology Co., Ltd.
   "^genesys,.*":
     description: Genesys Logic, Inc.
+  "^genexis,.*":
+    description: Genexis BV/AB
   "^geniatech,.*":
     description: Geniatech, Inc.
   "^giantec,.*":

-- 
2.46.2


