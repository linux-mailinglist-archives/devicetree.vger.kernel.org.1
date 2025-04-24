Return-Path: <devicetree+bounces-170474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 356F2A9AF15
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 15:34:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 454397ACA04
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 13:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C069B19048A;
	Thu, 24 Apr 2025 13:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="KDoY0tYz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF2D12CDA5
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 13:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745501639; cv=none; b=HJnJHoemuz5i/yg9kxrKnSg03GN48nq85AehbgZLeNWsUfHvZ7SYS6qzXehl278JNTjT5B9Gw/OhHcRiX8OlXbmNyiIxX5DXYwCveBu5nboNMOMvKLhJWC8FHO92guJhtNlC6Vdysx5DjqPBvFSU7/fvVmazdMIN5GrsiTnQ2+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745501639; c=relaxed/simple;
	bh=sqXiuW7QgekFc+m/AzNUGNRQL3UFeBn/z7zkLXUM3mE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=C46j9UrbY4V8RF6kRuXJG0mZ8yJnj1GPUr6iFNGGWeY9K72F1C41pkgn+upXVpas6+naitrPHjVKQKewn4aW2ZuHiThzO2PuWCqbdtJisgPsAKuU3cjXKkb0oLUphDE0qG6+nnMDwJep50BMwirS9tSWCD3IsLaI+yQQ25aRaNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=KDoY0tYz; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-306b6ae4fb2so981288a91.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1745501636; x=1746106436; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AbhNACai9YLrn1yt1Tb15iRWkwDZ5cisgZPoV8CoM9E=;
        b=KDoY0tYz8/ChA4kvJvtYUIHXAwpTIVkB83l33p0HhBUm+tGg9s+iECD6LYunpwTS2O
         k2lhRiy1Gha9qC/IEMoizQ1S6PzWV+V6hsLnVtu9GoSqVIEYT5t9ozWJu+esjBX6jolY
         lieLwftbiNncYhfJ5BRW5hFtvhXhOa4k424c8Pv9cct4alNldaVGTAdtq7nV485snYg9
         eDTVfJp4ZEldktjQ7geNqetT3ZioVTKldvcx1qmUWfemXkNk7mGgEMPBWGvcB8ZsEUr8
         xjJMg8qODeItFXGac+EnTtL9ZPje/8+cgPZ7RfvcuWNIHQRZeg33KEjqWTp38WR0oR73
         jEig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745501636; x=1746106436;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AbhNACai9YLrn1yt1Tb15iRWkwDZ5cisgZPoV8CoM9E=;
        b=PVaWuzZy3dmaRti29ZaVoxEeJWUsBhlUiKvkX/DJU70Sy4FA0WO6iI9Tofa9KL7vah
         TgvS7TRHMg6XlNkBzZq8Q2khiohd2iMIvTF4mVbMxbI5bqP7pSz+ScVPmO48gY612JOi
         j5bI9QNZZ+HSvEa0u4AOZLFN0hnJerNUNwg9eRhADbrRVwEMDIUo0M/oVdTo6UDwispd
         pWHiHltDkHIdeey8Mku5SnqypJ8rXmb/TU56hAw2XT9iQFSEKiGONHRNjL9cqtryqlJg
         Fm0eIZcKvC877tLjvdbpAh8Tfu7WMBhLuHodcWEdBS/jKDlGII2G+Qi6DINR7ZhiOZyG
         H4uQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzYR2Sl42IvUhWyadOhMxHwcVSviZjBBSw07lsvRp0FiNUKaT+jTGrypsvlXt3g6sZQAVp4mWD4tMa@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6Mj+W5nao/VbScXcESaHzMAYLkOTrhqtrh7bUqevGz196lJUg
	RGXqvWwrVMkeX+k9ImAcBEQbOfprrFfyH6z3OvGWHIYAPpfEjAbeuGpH2eTyb0E=
X-Gm-Gg: ASbGnctDLUYzwgapOE+le0LPr0zKLUG3BUwMJLoLuSWNb6Z7L4gXqtLwt849il/E47G
	lO5ttA9WuhUX/P173RvFrHZhfbWYg4CHRKKME6efUMEGOOlNFg4lG7hFehGJXEk1RqxHe99F4Zp
	Sed4UB582yRX5EUaCAbOXCZgX72smTuvfI7G0rAXLR6KvjWWYl2QYXYD/tjeOVPZZpQPr+GcTyK
	c4BO2UJw/j3JRQHEVppW7QAutqClw7y+CGm0WzYddPvtk/uX7sD9bXuRUZcN6QCJUxy/KnVu3Lu
	mN+ERE8jW6I2QcIVPdEguJlWYNccP3s0Gxeqpa1IboVc9+z/XygoKLQEqY9AbfU1dxJuWib5A+h
	DmBZiVMpPOhn7PfBJKnZ4EUdmkHo1LLIAd63FP8gkLwRM0A==
X-Google-Smtp-Source: AGHT+IGlie1KSArwUeL1LNFF71oxoDTffzrOyj3YHjM1awwxZeNDH3PxsaKbgN0LGNj0P4vPalJjjw==
X-Received: by 2002:a17:90b:54cd:b0:2ff:62f8:9a12 with SMTP id 98e67ed59e1d1-309ed319e19mr3209116a91.23.1745501636506;
        Thu, 24 Apr 2025 06:33:56 -0700 (PDT)
Received: from localhost.localdomain (60-248-18-139.hinet-ip.hinet.net. [60.248.18.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-309ef0d5c72sm1321147a91.43.2025.04.24.06.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 06:33:56 -0700 (PDT)
From: Chiang Brian <chiang.brian@inventec.com>
X-Google-Original-From: Chiang Brian <chiang.brian@inventec.corp-partner.google.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chiang Brian <chiang.brian@inventec.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] dt-bindings: trivial: Add tps53685 support
Date: Thu, 24 Apr 2025 21:25:38 +0800
Message-Id: <20250424132538.2004510-3-chiang.brian@inventec.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250424132538.2004510-1-chiang.brian@inventec.corp-partner.google.com>
References: <20250424132538.2004510-1-chiang.brian@inventec.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chiang Brian <chiang.brian@inventec.com>

Add device type support for tps53685

Signed-off-by: Chiang Brian <chiang.brian@inventec.com>
---
V1 -> V2:
  1. Correct the subject and commit message

 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 8da408107e55..e0017ba594dd 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -392,6 +392,8 @@ properties:
           - ti,tps53679
             # TI Dual channel DCAP+ multiphase controller TPS53681
           - ti,tps53681
+            # TI Dual channel DCAP+ multiphase controller TPS53685 with AMD-SVI3
+          - ti,tps53685
             # TI Dual channel DCAP+ multiphase controller TPS53688
           - ti,tps53688
             # TI DC-DC converters on PMBus
-- 
2.43.0


