Return-Path: <devicetree+bounces-216947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 693CDB56923
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:15:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C67313BB274
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E28821C179;
	Sun, 14 Sep 2025 13:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b75pKvRR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8CAC1F1313
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757855699; cv=none; b=W2+ZlQuHTq/PPqWpartXSw53PH3idkZ35a4tLC9Fdbt/viVgYZfOsM/Rj2Z1CLAAgbcgYcZ7B1B1rMpgMlTS4aVzP62FnVRk9p95bvzQqjpr8UtHPRDZ1S/OrpyKTq3O+ftFeQPVN+sqB0NvO0SB14yZAhcO/SMMZXqIqkUsrXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757855699; c=relaxed/simple;
	bh=6ED/cZ+NqfhdaXzUt23lLQtv0SpOGvwArTrjdy4sL1g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=l5U3OMu70X2DTg+zSzIIq4EEXvAZTq5Nt1hk0F9ZKSPFI2uMu4Q9zqU0JiJC5MGidGQL+ODhgQexJKSfASJsVmIUFOjx3lwSTtl8hxlMYBXk2XcLLdZHmAbR3eepikw0ruqzvsulakfO6FC8HmQVD8iLYcRP0piKyR4u193n8FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b75pKvRR; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3ea3d3ae48fso177340f8f.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 06:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757855696; x=1758460496; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=trovOubMvRidAW+mhU2Jgw87jFAcVgjTEKFsXv7vGoI=;
        b=b75pKvRRVQZ1ZKtn4UrMu/rPiopYbcozPANCpqvVUeKK69F4pJgVzHdCv4c2t2O2w9
         4dkuUQv3yINY9FVzlfzrkeCczFvsJesLgVV69u7If2oRlfo1/g0keAPchvTtBhE9Tkyi
         dCGuEhlg6uiIzKrn+v+CXoVdzTAql0LsXX1Yuzz/e3mK6Tm2c6w0iL4WmJ1VN43R6tfV
         LLZMpd9vDgNZU0a1t3FLLd/Z2cswt71Cp2FdsGx2dLiXDfAqit42jTA+wMtvSlVqanoV
         q83odSVBeZ3s+L8YXQRloqEK4PvIn26EkL5dP+3y6CGT14ocEgq48TSj8RMub3cj71lt
         Vg4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757855696; x=1758460496;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=trovOubMvRidAW+mhU2Jgw87jFAcVgjTEKFsXv7vGoI=;
        b=J+nZzYbl0VLuGHdlhVl1H8idARlP5/feeXSripnjSdeQ9HrmvHtPosJmBmPa9N0SaK
         V2QaMOaWx70DBJQLs9QYWnivRKer5DBFYBM8JVu7m4F31Bg9af7Kr4AAM1Nse+Eiyn3n
         Ytv6nkcnNzX7hZ4VUNqUeLKkBhKBpPbpNSJn8g3UCAExfQOmC4g3Klkg650PAiCpujTN
         W/0Ek6gXiVvkk6gi2CRFRdaDAr0a2gnXNYERmBlSqd2RGDR8UK8c2sTdCD4mqa18YWYM
         nKy7xw2mR+em1+nqjrM8/jhrt4NxoVpH0+YnCMSedMNQsDpfIraaRfEaM2TzID0icEhN
         Ru6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUrWM5UO5cnVwcI8UR8QPpZCteOn9wmS6wpDzTMn810gOQFGVH/5M905YYTB6m3KEY82YT3Ptux/ytQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7I1ZTV9y9aZdQDlvAGdeWj3qRcf/pERz9F65mFMp/A3a+3Cex
	TXp341L/qc+uCFSmcbV0M3p4888ARd0tu4zj2JdQIGHCV9dyvXZLZ6MGaWcZBg==
X-Gm-Gg: ASbGnct7sfAboW0Fy+V8h7IoL6ofZvTFNgQZwnBD7V+iKRl3cohVOL8Vv8Wf9nTOl0U
	ABXhVZTs2Ae//SeN479Jd/z9Ep1AixRuCVupJ0vk3UPfGScabNKAqL9zGfFlTwTqhI0L1XCXaWR
	ilo6G2sKh8LZjQTbePFxUE2jgnsiIGE7BozV7GKo68PlLUnMahtCx/aB89tmUUlUmng5JIp9U1/
	4P4kjuhXZmIHUpzBoO3Fz45viEbNYQQ2H3OdJZAET8f5fbJEQr0tHpr7MEPCAIhrlCSrGBPoB2Y
	E9ub/yESuoj9DxB8ZUGjaj7lTLNBG8wV/1Jv2ROVc3XCmU06zl0rggixpZFxUBPT9bOeLCwMjT6
	xwO3Y4f3KfuuPN6EkrOyAth75zq5W0uFOEw/XcAkUtvGoVw2gwblE52AiY8BygXhs1/TtpIdSLQ
	==
X-Google-Smtp-Source: AGHT+IHRcpNwEriTVL0pqLCUolaMHN3iy4aeYsC4oOedhjGnfClQkxnzDxvjJY0nYW7MccwibGt9RA==
X-Received: by 2002:a5d:5887:0:b0:3e7:44c7:4bad with SMTP id ffacd0b85a97d-3e765a36ea1mr8604552f8f.31.1757855695771;
        Sun, 14 Sep 2025 06:14:55 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e80da7f335sm7255453f8f.8.2025.09.14.06.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 06:14:55 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: gpu: arm,mali-midgard: add exynos8890-mali compatible
Date: Sun, 14 Sep 2025 16:14:52 +0300
Message-ID: <20250914131452.2622609-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The exynos8890 uses the ARM Mali T880 GPU, document its compatible
string with the appropriate fallback.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
index 48daba21a..a7192622e 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml
@@ -53,8 +53,10 @@ properties:
           - enum:
               - rockchip,rk3399-mali
           - const: arm,mali-t860
-
-          # "arm,mali-t880"
+      - items:
+          - enum:
+              - samsung,exynos8890-mali
+          - const: arm,mali-t880
 
   reg:
     maxItems: 1
-- 
2.43.0


