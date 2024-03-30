Return-Path: <devicetree+bounces-54821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E03C8892B68
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 14:34:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99F0528320A
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 13:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4819422F19;
	Sat, 30 Mar 2024 13:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PN+tRc3y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A12242554B
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 13:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711805669; cv=none; b=nm78vz9ZasVipYdFM9o5SDfMVdfoFYQSnXHUKv+ieZyjOLfwcpbz7s4tOgxqDPkjyTmqmdrkNt8OCn2PwDWJHdcVuSCt27caw0YlQnd/FgLHPtYG+1+auMA1yzGlkja2TyorbyN6nm6PSgc2IYpt81yzrTXrjoMApgbEXnATyNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711805669; c=relaxed/simple;
	bh=oXYRNgJdWbjdepWwOY/KvRs0KAk3andYOyVJDfzA6rA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Hf2VT/tRgJJA2z0HtxCASWOtIUcjszQxRdt1kLhaAuq0pfbdNj4rImibGNycyaovtSReR4Ekd6/bs8pOK5KcG3LKulrtAwi8KzowF7LBljSRLu7KGzkSkIxa964jRybbiV9d9jX0JI5RoXAX9Iw9hhiHQPJZdyNYhBFMy3AUY1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PN+tRc3y; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3434275ad73so166001f8f.1
        for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 06:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711805665; x=1712410465; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rymSuP0sS0VsQ6tf1rW9MJE5OL/RKLdSb3bB5F/aqEw=;
        b=PN+tRc3yKeQTMDwIo7l7G7+bV879D+XIdl73Bv0SrDUPkE/nguUPFQMdbbeB61o1t5
         QYfuv6Vuc2dIRDUuC9juoxjwYszO6vpLzYbRLgJHMPwGW5iO9VTkhHGe/t3R+upHIX/8
         DyX69jACMwcLHelP4QWHy7CDGsvIGGZmqXuPDy5PKqKjODZyuc74UGNUpMlc2O066PeR
         OWfwS9OC+BKEf0LJYeQJbOe0ZJeNnBDv42MxguMO3Eo4gNSRyyqgyFdhzh4VbrgyueHx
         1InA8gIDgPbc499meeq3wle+wonlDeTF9N6FNehFoAmrOXwxGiDpZC+43ksNN4W+8MSu
         UHdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711805665; x=1712410465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rymSuP0sS0VsQ6tf1rW9MJE5OL/RKLdSb3bB5F/aqEw=;
        b=M6UFMTbDHECgcoVje534LWbNTzcfH3YrfRDsoetrP8GiTvCRXFMaZ+mRZl3gsjZt/Q
         P6oy/Jz1UxOKI2VvAwdyGn+xxufbZNun9iNseDt2UK1dJVViINb2jhAWRMSP2tPj3kBo
         NgfiGBwzPHTd6pHpf7ZX7gUObuO6SCEcdn7mPqVQJQA1XmBYaciQAVN03vAjudGHZxah
         WBS7m4WZKgymcjQoVEVdY2jnZ2MFXSjpar6CesShIvKQjDHbWLMUssc3JEsSidlZ2P0C
         wFVZit30aVv86agMVvlod1fB0uI1xrhnn21I3g5gX7aoROjiYQ9bkfOn116EcWyXbYpu
         vcFA==
X-Gm-Message-State: AOJu0Yw1f7WleFM9q1UpL+0R149uawqnMzQBohp83dcDNzVAIBg68/8m
	Ksq7XS3Fh8VYyedtbtZNdN95gn+86gHa+GkyxymzKXAPChr/QcYBANROr3R4F5inXw==
X-Google-Smtp-Source: AGHT+IH/1wUccWdZ+DMlCtESPEkHwH88ePvv0ej6zdewXAdqnjnXpdf+0VZv9IAKFLfQ1mS9Gz6jgw==
X-Received: by 2002:a05:6000:1863:b0:343:3a4b:41ee with SMTP id d3-20020a056000186300b003433a4b41eemr4744206wri.23.1711805665179;
        Sat, 30 Mar 2024 06:34:25 -0700 (PDT)
Received: from gilles-Precision-3571.lan ([2605:59c8:6662:b310:962a:f8cf:49d0:f63e])
        by smtp.gmail.com with ESMTPSA id dw11-20020a0560000dcb00b00341c7129e28sm6454869wrb.91.2024.03.30.06.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Mar 2024 06:34:24 -0700 (PDT)
From: Gilles Talis <gilles.talis@gmail.com>
To: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	shawnguo@kernel.org,
	festevam@gmail.com,
	alex@voxelbotics.com,
	andrew@lunn.ch,
	Gilles Talis <gilles.talis@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/3] dt-bindings: arm: Add Emcraft Systems i.MX8M Plus NavQ+ Kit
Date: Sat, 30 Mar 2024 09:34:09 -0400
Message-Id: <20240330133410.41408-3-gilles.talis@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240330133410.41408-1-gilles.talis@gmail.com>
References: <20240330133410.41408-1-gilles.talis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add DT compatible string for Emcraft NavQ+ kit based on
the i.MX8M Plus SoC from NXP

Signed-off-by: Gilles Talis <gilles.talis@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 0027201e19f8..cec1b31d0792 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1050,6 +1050,7 @@ properties:
           - enum:
               - beacon,imx8mp-beacon-kit  # i.MX8MP Beacon Development Kit
               - dmo,imx8mp-data-modul-edm-sbc # i.MX8MP eDM SBC
+              - emcraft,imx8mp-navqp      # i.MX8MP Emcraft Systems NavQ+ Kit
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - gateworks,imx8mp-gw71xx-2x # i.MX8MP Gateworks Board
               - gateworks,imx8mp-gw72xx-2x # i.MX8MP Gateworks Board
-- 
2.39.2


