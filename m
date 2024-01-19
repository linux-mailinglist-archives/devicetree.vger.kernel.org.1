Return-Path: <devicetree+bounces-33350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB6B833079
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 22:52:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6EA5E1C21BAD
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 21:52:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F15258109;
	Fri, 19 Jan 2024 21:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="BLKvuwuh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240EB54FAD
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 21:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705701170; cv=none; b=YW8RZHsNdc+Q2RVv+/H44YobWqUy/OoyQAozVZLv5GkR041alUa4sKIn3yEtJBTec4reNsiyZ48QIERvKH/jjqejoelIlSaRWUkT4v6aTWNmKE6f8ZqD4yL658HhgE0K8jKMi9l+TGf02SrLoesrzESpCKNc42FNUMtCC0qY37g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705701170; c=relaxed/simple;
	bh=d9jaxlVL00j9oz8DAd6eYbWzOIbN5WdPFOpblbPNcpw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YYrbftV84gbCO1b5w//5aAZqVLUhYHdoQcesyn54h+ZUluqdgUPBBztnoxIdsCdJXovRSn5TNeeJnijc/2dq4nSbnJKyDfuqiLT+1FXb/8iwIC9f6LQaNB7CtR61/uVwo6Pt5sXRCFzty/zn7TutwWjO7OsI4QprWOnRVfDwZsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=BLKvuwuh; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7832c90a937so17162585a.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 13:52:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1705701168; x=1706305968; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NxvMQQ7cw2gsLCcsoE9goayQo/WJyflLSF+p9kOGvCY=;
        b=BLKvuwuhy5Aq/se1O7kF3anRZU1dkBMIJcqbx6H2WXi1OvibLFgR2LD6q0evk4rZQR
         ATDVI4lkQSSJrIT/bT3dn3avBIsJqc//DQU0FhV2ikl05YkpAcFuhI7gfyeSsRyPFtUQ
         SG15591LPfPhIcLgYLU/MgmmEKUQSULu5RsZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705701168; x=1706305968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NxvMQQ7cw2gsLCcsoE9goayQo/WJyflLSF+p9kOGvCY=;
        b=m1Cm0iV0Ir46DS/IWXSJhIy3W3Rq7An4qQZC5L7hDJuHfcWdSKwCq3WuHdHxH9JlI6
         +qK5gaqnd3yUDEs9VNB7EKwGUM1i6v++lLbnBWWlT8C7sIRYEn/552cWhD9GGKAJdA6N
         LvqanAVztQhN2MiTSh9enftDnnHzbvaZD6sZlcy7yl6/iIojmM63ypzP5aRFtA7tTF4i
         ouURHGCDUoZKBRauzeuNxkHQrxYQs1rUw0TUcDMDNADG7pmNQr8m5bkc8ovWc24ILbzB
         sF/OXoOg+zfRIMNZMDOl03NPsNqvukUJHNuhUpj0AXtzNPqCWevtlSDaJcqKq/nDM/SX
         NeeA==
X-Gm-Message-State: AOJu0YxP0puXCXaHJL3jqkYH9A5k2dnP6DXbIxfsMqLuNKnpQ/JcMoMy
	S/2PBseJu2Uf2/Abp3yyJl5iWtaQ7Maw+sc70dzU/um/pu4yQgiC775lqqjSNA==
X-Google-Smtp-Source: AGHT+IEwqcV9NPYWlpUvbEJCOUcZWbtvV7l4qVpfN4myRi+kOJ5mYU3cTq53LuDpFAtnInmfd2cNnA==
X-Received: by 2002:a05:620a:28c3:b0:783:8057:44e9 with SMTP id l3-20020a05620a28c300b00783805744e9mr1070631qkp.2.1705701167791;
        Fri, 19 Jan 2024 13:52:47 -0800 (PST)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id r1-20020a05620a03c100b007815c45cdc5sm53272qkm.95.2024.01.19.13.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 13:52:47 -0800 (PST)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id DBDFA892; Fri, 19 Jan 2024 13:52:45 -0800 (PST)
From: Markus Mayer <mmayer@broadcom.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
	Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: [PATCH v2 1/5] dt-bindings: memory: remove generic compatible string brcm,dpfe-cpu
Date: Fri, 19 Jan 2024 13:52:24 -0800
Message-ID: <20240119215231.758844-2-mmayer@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240119215231.758844-1-mmayer@broadcom.com>
References: <20240119215231.758844-1-mmayer@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The generic compatible string "brcm,dpfe-cpu" is removed from the
binding as it does not provide any actual benefit.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 .../devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml  | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
index 08cbdcddfead..e2b990e4a792 100644
--- a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
@@ -16,7 +16,6 @@ properties:
       - enum:
           - brcm,bcm7271-dpfe-cpu
           - brcm,bcm7268-dpfe-cpu
-      - const: brcm,dpfe-cpu
 
   reg:
     items:
@@ -40,7 +39,7 @@ additionalProperties: false
 examples:
   - |
     dpfe-cpu@f1132000 {
-        compatible = "brcm,bcm7271-dpfe-cpu", "brcm,dpfe-cpu";
+        compatible = "brcm,bcm7271-dpfe-cpu";
         reg = <0xf1132000 0x180>,
               <0xf1134000 0x1000>,
               <0xf1138000 0x4000>;
-- 
2.43.0


