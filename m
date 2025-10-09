Return-Path: <devicetree+bounces-225135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFE5BCADCE
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 22:57:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 975AB3B39A6
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 20:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 148AD2765CE;
	Thu,  9 Oct 2025 20:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UCugkbGa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635CD26F28B
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 20:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760043432; cv=none; b=H42805iGh1fPLmGaKb1/2f054AjjMu8Zr0o5CEe2qQgGvXC8PquyNXo7xH9/Sq0HAdN4XalvegGTPFm0AhaJH1Gzr6BI29DGFlGuvhsE4jUGM/30e+4wTdiNQi4CQj6wDfnTKlz0sQYMPQMC3zxxhzFh6m5sa2jD4AtzMrMG6gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760043432; c=relaxed/simple;
	bh=ObtF3qvZv5wx0HantbNW95jKmTegeqMeLEJQ423Ulbc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=r6E9Ccp4u1MzgNowtULyWXmXJTh7x5D+yeAL4AFI9Efsj4rFSf2wu1NQt/cxaXvIA6WKH+n578gJ9HpYXnl9nTS5FZo4Zpq+u82PbJAygsFaaRvDa4fkVJFKGidLu+Jajxm5brGIN/lU2kT5QUhWpgfs8+HxUZ/3lxtqEHXjTC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UCugkbGa; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-781206cce18so1558138b3a.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 13:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760043428; x=1760648228; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0U17ptGvtCie7i1raH5xF1gZt/QiHby33L+InxvW2qI=;
        b=UCugkbGau7AVU/IP8FKcMgKqTaRUp3jZwEfKeJeQNe7Tuhd7gJHpSc+Z76/NKfT/8Y
         o6nkVFWhae9wOsCmF/sViSp8ijGurADyMes3TzQGkS2O+lDa57pW4LlmF2PZ4IbU2bov
         z2U4aRI9vn9FaG2DAkIAhwrcHtcYPRsPY+127Wz3mSxjVCCgslcdY3BfhQRD0GgExH+n
         JspoSRwL6GG5AXNRalBfz08OPc1jRBFusO680aruu/d5Hvt6eLc0pWAMOLAevDfW32Yx
         aUJFEz0mkBRpuLbhgNfo24t5MWevaZ9rYrchdBA3MpNBbOvttt72lmPN0B3Ui1psUgaT
         TPJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760043428; x=1760648228;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0U17ptGvtCie7i1raH5xF1gZt/QiHby33L+InxvW2qI=;
        b=gE3l59/ffcwFL5ufwmo4bvftqknl86eWI6Ohvfh+Sz5AlBLkm9Wja8b42BUpVLyydO
         Z6PBxCVtV4fuyWvSI2+4gIrao+xzIn7GNdhN+MHcvnsewIwVLT8+umfUX4Hq/yK3hzYS
         qkUqnqa9Czzy6UVmRQgmDVoQN/1fbAkegl/PElqYoe+h7DoPr7MfoCgrJEMJLY8MZIvY
         /suj8gjqSKS0A/pozBilhzo77vKc4Tia8wXPxQfr1ILauJaXB2VxgLh30BL9KeXhq5rE
         W/byTeeSjvDApCgkUb5Wu+3DI6C/KSDbfpu+yASn7NIq0PsS6TQr7knxfYVBEf2jbxX4
         zVZA==
X-Gm-Message-State: AOJu0YwOaYeP8xiLrjpX0ETwBuY8AWePoMWCsZlZfL6jzrQzMJtBnzzZ
	a1OI5lH5bIedowNkfES/KnhOmaANW5HYWIxhcMlGWWdpW1Y9Y6fSKffi
X-Gm-Gg: ASbGncv9fHm5YnYBsbydsSRZJXPt5QEA2SOlv4GUD5M5cQvtaa9+grTwD+nVoRsj79K
	DJ3hOscUSs5HmpocDRUYvyu9K+6MGDWdqFp91vyp24PZdHycktxTwM4NGRZBGVhuZ6dN6oeLdHf
	nXNdcer63zf2kO4RPRATTsPtoSXALgSP6a/ZolpvZV8UtmJjO/RIfLzyiq+IAdVTAOFfnwj3tAD
	HNyliAfIkiH7dAC3gQuJehOanmo6NBhZimmBAAqkx18Wq/QFWAsadnOouqfj5puHi48X3gvLH3H
	kPe+wwNpha2ZgjMh5VXY8w/F49pa49nFqnCSDX12EKrx0iPtzSocKTn4SA9X2y60FdJvqrAhC7P
	9AHgUjflRQiSmIRRcLf9uQ5Z78Uv0qNsqpbN2JKVIQDUcjX6J5t5MKt0gsZ6CQBi7vH3SxNeM5M
	zrucTgFq2LD8GqWlmlAMYNB4U3k8/ZK90iQZcT88JeRNEDbD/+J3+hCHj+pA==
X-Google-Smtp-Source: AGHT+IEQ3CQYxnXD0r7zcZD/W4QYBcUzXDWpnIYyhdFQwzlX1UxVe1+oMTH1I901zaf2ZfVIMH+03Q==
X-Received: by 2002:a05:6a21:50f:b0:2c6:2c4c:fafa with SMTP id adf61e73a8af0-32da901461bmr11185277637.28.1760043427345;
        Thu, 09 Oct 2025 13:57:07 -0700 (PDT)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b61ac8d7fsm787678a91.21.2025.10.09.13.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 13:57:06 -0700 (PDT)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux@roeck-us.net,
	corbet@lwn.net
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/2] dt-bindings: trivial-devices: add mps,mp9945
Date: Fri, 10 Oct 2025 04:54:57 +0800
Message-ID: <20251009205458.396368-1-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dt-bindings for MPS mp9945 controller.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
v2:
  - add Conor's Acked-by

 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 58ff948d93c9..08e2ca1b573e 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -317,6 +317,8 @@ properties:
           - mps,mp5998
             # Monolithic Power Systems Inc. digital step-down converter mp9941
           - mps,mp9941
+            # Monolithic Power Systems Inc. digital step-down converter mp9945
+          - mps,mp9945
             # Temperature sensor with integrated fan control
           - national,lm63
             # Temperature sensor with integrated fan control
-- 
2.43.0


