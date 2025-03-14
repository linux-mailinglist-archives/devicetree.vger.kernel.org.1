Return-Path: <devicetree+bounces-157393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F035A607C9
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 04:36:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DED9019C3407
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 03:36:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4B4112CDBE;
	Fri, 14 Mar 2025 03:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="WdHMJ4Jt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CECBA38
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 03:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741923381; cv=none; b=QkZnCwPncy3D/KphMctKYIV94ReATwEk/fq5BJGuiZsOdaJO/CHwXTkaZz5Sdp+ibJum1vAMyHOqrdiPshYwZazNt+3nAjibplpBUrEg10G1xrmLCFoEH77ebk6JnJo/rxenageqR4CkKKvPADKcUVG36UOm1RE+imCD586SSro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741923381; c=relaxed/simple;
	bh=VG6guJY7C2RS+MEts0vMCLpbug3/g08c4TFm3dc652k=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=WUJsL6F+UearZV+TE+h5UYsZh9ZPyUfbbEBZBAf6BHCiRsdHvmgc8Baw0BMjwBPcp35i5uypeNkmemmxOcmaWeMByV4+G5+f0Y+g7LXQ7Ox5RmQQVNViS5isC+xB+3yu/pfC3G8O9ZOjN2MemBJqFlLVT18f0NZTOhdGE1ERVfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=WdHMJ4Jt; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-223594b3c6dso33202535ad.2
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 20:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1741923378; x=1742528178; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2CKZ17Q4D67al7wDQAN94cc3LiLuJKQZdY3HIsX08mM=;
        b=WdHMJ4Jth2Q40uYNwj4cqXioVeA9/BQH2INU/GsdYcj+2KAkssHrjb6Ou8+cSwIuuZ
         DhbvwqA+ZZeY3yHYBKWxV8ZEc9zuZ4Q4jffeYRn1BuVUfY4hYzmc+GpM57bU+KZ8Ot/2
         opZ+qjC7IqHEGVBwCQaoZ6oa12nLf0CJ/3y6MWw+OYCzQpuSyoNWObkPPEV7GpfjF44l
         T+bVaQuK/vOEYMUejA5+RtQRbHQryQYXr+W3MJtIrXAMam24B738kHaoLWWnRZS8NIeb
         eRfMVBS4xe5FurgjHmc+/oP/HTb7KU86PApU3YZ+BskNaSNT++R1eiU/eF4P3XcBsad7
         Rn1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741923378; x=1742528178;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2CKZ17Q4D67al7wDQAN94cc3LiLuJKQZdY3HIsX08mM=;
        b=Ci91+FaNBp0MGUbOuFILqt7e1RnPNgYmDFNklpVcwOtsF+v/pSjsz7j9BKogCdxEkj
         VXNOFbZHijNm9jLVCoNjT9xFINjDpvcGzVG3+xEQGpsDhSejbuoBTCfGdnLH4ZWaAVwE
         0ruchBlBeGhBijs4BZZ0xVKZLYB5VMVw79aLubsM4p+Njo+aE9iv1+4m2VMqMqgAAIai
         7wmCK/iZ89F13tbti/8RKZSZOY9rzXa2Oi/9otI/nCjUz9yV+DpQLnUo5r24qoUj86sm
         I7c3db55Z41pPv28a0bWRwjP0xetQDyDyGQ2IzxW0NSWgIQou4uzZ5Vb6C7qwkMp10HC
         C70g==
X-Forwarded-Encrypted: i=1; AJvYcCUIBU+oadAdZQzJDtiVhOzo9inmgbjHNiNJ96sCGDOyzkrhGcyCGdrydqmATx1Mg7c2x8BccntBSPva@vger.kernel.org
X-Gm-Message-State: AOJu0YzhAkfZLhpxSBxrUV5F4tWsEZPC6K+ANJ5NnJCjOO4g7mtyB1zx
	+3TUfo94o5qY6ZpBaEAAzH8k84ZG+XFK7SjvPMvRXcrvpQrn2C3++zY6VJPkzCs=
X-Gm-Gg: ASbGncvig/qzOhwPifXBJfV5K+VWmh8oEGs7bljNiUJR2UlqID7TuGAgLBbXkb/MArG
	dzC/4b+NzZdt3NoyST7Hr28X8hWJ5Kz+toG4WFDSPzA4TTyzsFqEWlvt8BarpiaZ06bjJuWP9x0
	MB1xrKS7eRs/9tF6CrpPbD/x/BIGKFMwGuTcBWFgk8FGc90Cibhs/rJu/Awjs89TIlSHaQdNI0d
	2Y5jSU3Pi+jmnMvzTOiBN67Gx3FC9Mp6C3dEsT4W8b+E5031NDoYGeDWVJjHJ+CtY0QGgAxPHWi
	in0p1tnZVuZv3jGNio5b2UmSUwWoZCLtILUbgb5+/qyahQZ+64HBEKAs0iFnpZVmkZHN6C5blE4
	5TuLklo/uBIxc1n4TuH6vERj1kQ==
X-Google-Smtp-Source: AGHT+IF7o+fIRDqv9z47H1qL2o4yIcJDSVooZphsAXczLb9NaTSymeNDBDBJ4uhStmyxIiBcFqgjWQ==
X-Received: by 2002:a05:6a00:c92:b0:732:5276:4ac9 with SMTP id d2e1a72fcca58-73722357b4dmr1139599b3a.9.1741923378125;
        Thu, 13 Mar 2025 20:36:18 -0700 (PDT)
Received: from localhost.localdomain (60-250-242-163.hinet-ip.hinet.net. [60.250.242.163])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7371152938csm2210418b3a.12.2025.03.13.20.36.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 20:36:17 -0700 (PDT)
From: Chiang Brian <chiang.brian@inventec.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chiang Brian <chiang.brian@inventec.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: trivial: Document TPS53685
Date: Fri, 14 Mar 2025 11:28:01 +0800
Message-Id: <20250314032802.3187097-1-chiang.brian@inventec.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add undocumented tps53685 into compatible in dt-bindings

Signed-off-by: Chiang Brian <chiang.brian@inventec.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index fadbd3c041c8..c98d69facb48 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -380,6 +380,8 @@ properties:
           - ti,tps53676
             # TI Dual channel DCAP+ multiphase controller TPS53679
           - ti,tps53679
+            # TI Dual channel DCAP+ multiphase controller TPS53685 with AMD-SVI3
+          - ti,tps53685
             # TI Dual channel DCAP+ multiphase controller TPS53688
           - ti,tps53688
             # TI DC-DC converters on PMBus
-- 
2.25.1


