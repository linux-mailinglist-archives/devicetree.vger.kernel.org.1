Return-Path: <devicetree+bounces-169638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 23824A97B1E
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 01:37:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0584D189CA74
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 23:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129A421B185;
	Tue, 22 Apr 2025 23:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="XCBZvtjF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D97D21ABDC
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745365022; cv=none; b=W51nm5aWZrLpZZ5bHfglcGJOBKeGJSBd2AgOwMmnXBQwFhZVsncsgoDYLDGCQE1HMriVkvmyGkZjSXN/ZUkxWkxdW6rMoHUspSwTiktHwA15OeMcaQuG0Gd/A87T4ZuTgh6Nl/YjGBhSDrCq+CKKvde7vEn0+q+yAvZowbQnf8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745365022; c=relaxed/simple;
	bh=+DBCN5bOsxIpHuaxju6ARkxFGZn9aq1H7CONUMUuyY4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nj10K/KfpjEhBJLORPcBp1vuM01+cqTJwcrUtp6Eu6ZPnFViAuP3Haqc5bNAXn7wS6OS/41yAw2YLkg9Cxbl0C1Ykxmo3RwjDJVqMZxgswSoz+FL80MVylELOe9Sy+6ZhlzAIJiI/MM1MsRyoeFiAOxTi0/QcxZWGypu9IhbuKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=XCBZvtjF; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3feaedb4d2cso3340663b6e.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 16:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1745365019; x=1745969819; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F/ShG8RPtrgSysLJ68laHr0SdiKr5pSdLkIQgs+Vmbs=;
        b=XCBZvtjF0Lxf+M93cyAQv8vPucTGx/XqqwJgsB3a31L/t0GcmiGh3uRm0lB4cToDod
         8Cn5dSyQm0TIWY2+NhWWn5cmf7y/0jw1MKlze3vFdnXKvTyY2MBI/GeG1vEBt45YHWbw
         FyzbtCB3Bq+KGLch2yhJx7/xsmwiYOHLI0Uhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745365019; x=1745969819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F/ShG8RPtrgSysLJ68laHr0SdiKr5pSdLkIQgs+Vmbs=;
        b=rR3qV4DyxBvzd7C6ntrd2Pjwm7d7LEyWG+yhm0bbv8AKBJ/1hiTtk/iancDjt36P0e
         6shkKPsJlX8iLzvl3j3uYPt9P0hPCH4ahUr/Wt5ZEy70iI9nV6FGDGHH4AiS6JYclUXB
         j3MfLr3StK06BbtUwOaq7JLtc0Dc2AmowwX3nT8blzNU7v88sXyLx2rEHGulOJXEI21I
         MyyIGJkc1ko3eKIJpaqdUyObCxHl0ymtI+sZ+yMPXpuZybD9I4Xo1QcyKz+A6hOsLu+H
         JwhTAqTL+AUgk3fCDy2hHwpoxvCTe0KTX0XwYswrFlFs1bV3Ue6ld0qufKF1EJ66OU7z
         e+oQ==
X-Gm-Message-State: AOJu0Yx7xGyuJKiRbnjMOpc2VwOzPslSwxahpltbUFQ50GAMNup0CrnI
	2xMuzjeF3L/YU3RdL58AxCKVLMU4m1+DdRCUqegEss2WU9If3ZV5Is4M270UDYZfFUoyv454mBy
	6+B1n/EC98YAA+wx7uK1o8/mcYPe79/CDyzcLH/QRBs3p2BbGO7PqHOEMqjAmwUE4otCwCkvX+S
	gSJZnkdtIFKoDIlHkQReX3SwnAxBePQqsMDmkP4wfpzKwN0KM=
X-Gm-Gg: ASbGnctG1BReIPGCUn2QE9LdDKkhKvPah2RJAxBaiUy3vI/aZLfL1hwg3xOB9vxqL2K
	/zi/0XbWhcGLDkUMN86gMjl2ULKM3mh8naU2qg0ATgSveV1LT2oYpATwyam+npObrbOXMdt3LGQ
	zfAiZFCUMKZuL0w+COHxkk9GaKbpeXxPHFzvfGYi2l2AdjhYfDPOeO/IpmfGHW3CUrs8nFziIzI
	Umn0TnmcVl+yNPWFXIUML82oD1S+vPeqtDUcOAZN4tC5I2U+Vn2QmM+R+DkslE8ADK4FFOpGr9Z
	wyKQofCsY48MYp9x1lJcre1l4hiWfdSLjvlCkFOlwI+TS2bA8Tq6iIeWdMWZs6ug79WvWWileIN
	xv6eFozAhwJXL+KfkPA==
X-Google-Smtp-Source: AGHT+IHMxMjXYyQTA67mlD+Ryv+o9jeuL5P+UtnyhxSObJZpWwmHwAYwRKnnv8RA7uOXtpmiwxvl5g==
X-Received: by 2002:a05:6808:6a93:b0:401:e9e:9da7 with SMTP id 5614622812f47-401c0c3144amr10464789b6e.25.1745365019362;
        Tue, 22 Apr 2025 16:36:59 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-401beeaf403sm2333582b6e.7.2025.04.22.16.36.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 16:36:59 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: devicetree@vger.kernel.org,
	netdev@vger.kernel.org
Cc: rafal@milecki.pl,
	linux@armlinux.org.uk,
	hkallweit1@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	opendmb@gmail.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	pabeni@redhat.com,
	kuba@kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	andrew+netdev@lunn.ch,
	florian.fainelli@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH net-next v2 6/8] dt-bindings: net: brcm,unimac-mdio: Add asp-v3.0
Date: Tue, 22 Apr 2025 16:36:43 -0700
Message-Id: <20250422233645.1931036-7-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250422233645.1931036-1-justin.chen@broadcom.com>
References: <20250422233645.1931036-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The asp-v3.0 Ethernet controller uses a brcm unimac like its
predecessor.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v2
        - Split removal of asp-v2.0 into a separate commit

 Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml b/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
index 7eb6d5839f0b..43516dd357b8 100644
--- a/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
+++ b/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
@@ -24,6 +24,7 @@ properties:
       - brcm,genet-mdio-v5
       - brcm,asp-v2.1-mdio
       - brcm,asp-v2.2-mdio
+      - brcm,asp-v3.0-mdio
       - brcm,unimac-mdio
       - brcm,bcm6846-mdio
 
-- 
2.34.1


