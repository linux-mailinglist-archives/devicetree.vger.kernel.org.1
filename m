Return-Path: <devicetree+bounces-217758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7ABB592BB
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:52:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 573A01BC4CE9
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD752BE034;
	Tue, 16 Sep 2025 09:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H8b7oQg+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D72629E113
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758016357; cv=none; b=UYgY10u21ZaDzr+Hv32G+dvcwh4jpRSr/DNtW5lHclJvRaPOrLzDnVCg1UjP+muzUDzLydP+fwfTfXYcY2Wv+/3H4a/EEZGpkVfF2xNTkLA1iyAVGebV9EejfJasJM/umyvsLQLNbFSWHLsKQ4EtpV/PaGi3BV9iQIvR40zBe3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758016357; c=relaxed/simple;
	bh=M9V51AxzPBO5PwhtBLVHE9xHOolKyukF4W20dH50Hk0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=t0GtYH79cXs5awQHlNDGRboMualDGxKkR4Vo+UyFwe4KyRQ7fjd8xt9RAkUBEw9SyyEZq31dde+mEqPTIHZK8/qRRwlmoQxBODfET1tu6RIL7iiIXapDBawnZ1dN5JGWMqYq0/1Zqhb1G+6tMlltBd3guhXStV1+46kFf49W4nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H8b7oQg+; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7728815e639so3603741b3a.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758016355; x=1758621155; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6V/2JKFCs/FeFWLTSODQDr7ffITBUaTSIVuTLike6oc=;
        b=H8b7oQg+0i+beSJ9kOLlOa+OQQES1ULqg896ntTDjZYEIbCJ2VqItDnVuErZr2pEsz
         xmPHVK3pc5CZuEURXZcxGLM2sZN0GdLsz+TvpK0YQdcrUKNLSSf793w8qbsA+/WJBqmf
         L782SVhe9emv8DZENORzOUsyqewCtWb4UHfysgUqEfloC14KHAKx+XTezwqoIrjnpOR7
         +H3zX8f8OPbpM9dO9wun0L3SQpOSgCI6Lw+WwdP3JQtTqioQKpGxCigq+Q8rs/bEYP0V
         gsV7IbZBQhJBVQX3cLsRGd6BuewJp/Tz2/TZKeDFa18nvy0BnC8hH0aPWoRCh0WofJL5
         QBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758016355; x=1758621155;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6V/2JKFCs/FeFWLTSODQDr7ffITBUaTSIVuTLike6oc=;
        b=QVm/7R0txESEawB/E3Qp0lz720KfPcaMZYji5zj42kpE1qVIVevHb1eZSJdijU+TSS
         GUfOsJ2c3fGBdkGGR93fujg7et8hs/8HWsAbWf2Ty+1YvgObSrKqGWgGyaJWYKqPaUQl
         Z42hfZxgKdHrM7kIP6LvrvnIdKxYG3zbdfutJn2fcMSq+PTdNTTPzUxKKA2DF2oroVQQ
         nF8BPPQKB0cFc3W2ZaS+9YPG04HdPRIyYS13voAyIj8+zKLPAQXcNDaQBggbBgVU2ru2
         qxISPA1Unoye+7S2xKB+AKLrK4K2h/Wd622tLr0Wz17E6LA3hWOPjBwKj2Xx5jdhW9Of
         oJ5w==
X-Gm-Message-State: AOJu0YxR/C2/QcrKOSUW/IuNqJytjBJBUPzZvxE/Z4zGn9WlhLTlM/xx
	Tl1f6GI1qWbLCF2FxZqOKFgUEgRsrRvbSnuAtIZbqnMaAK3I2fo419Rf
X-Gm-Gg: ASbGncvKU8Jxjc0CCJqqhdWaV662eih7jcpUxNHp1oPm+s7jmHDy34tzfBqyC3Dm0p/
	IrqggEvyQQDrjoxmEf0sM3c27IjdsJYoEpOtSdIUtEeHv/SwYppdmXHhyx5rlQzoRtSUUPO0m5/
	923a6iocanYrAa9jZ2C3+s+lYNCKxq0/+kU3PvnfI7s0XcjrCz5hI0et17ZnaVTJIGhtdMMhkxN
	v05HNM1Wk6mm4Gx+vxghBtaPuvFz5+cM35RsF6RtduZ+InX9nSxxoTth1tFR2IXZsAwQWefTg1v
	b+jUHODTKJw5o0BNmlta830P6aAO53eOmxgRX4pxmearKm0x28boHbI0PlXSjW4RLcK1/JVPuim
	jBhb0T6GUzRpfsJ8ueQOaIQNHdsEoJq1sFipaqst0hQNy2hJktPasIAElp7ARdqxB376N7ezj6H
	hxFbyWkTxdrWyYMzgfr/tF5Cw=
X-Google-Smtp-Source: AGHT+IGzMLRxu46ZOAx5UTCfKaKDFqV7qJKe5pWFw2whXOGJeDPlIq5qn0wXezBFeDOYYir7k6rHew==
X-Received: by 2002:a17:902:d504:b0:267:c8d3:21ca with SMTP id d9443c01a7336-267c8d324eamr34843155ad.44.1758016355232;
        Tue, 16 Sep 2025 02:52:35 -0700 (PDT)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2667b4d380csm53935775ad.71.2025.09.16.02.52.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 02:52:34 -0700 (PDT)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org,
	corbet@lwn.net,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>
Subject: [PATCH 1/2] dt-bindings: trivial-devices: add mps,mp5998
Date: Tue, 16 Sep 2025 17:50:25 +0800
Message-ID: <20250916095026.800164-1-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dt-bindings for MPS mp5998 hot-swap controller.

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index f3dd18681aa6..d86b2b72d1af 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -305,6 +305,8 @@ properties:
           - mps,mp5920
             # Monolithic Power Systems Inc. multi-phase hot-swap controller mp5990
           - mps,mp5990
+            # Monolithic Power Systems Inc. multi-phase hot-swap controller mp5998
+          - mps,mp5998
             # Monolithic Power Systems Inc. digital step-down converter mp9941
           - mps,mp9941
             # Temperature sensor with integrated fan control
-- 
2.43.0


