Return-Path: <devicetree+bounces-254086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0CFD13E42
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:08:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 79F9D3004430
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:08:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65CEA363C73;
	Mon, 12 Jan 2026 16:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bxQj0ioL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E54361DAD
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 16:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768234084; cv=none; b=QXIJlTv/o5V+1ks8uZOHzxFPZ9eKb78wEKvjOcKS/qohj7AIuQJkEHOEWSXT320Ocm0/2h+ZN7+nU9IjfhNlBNV7Eb1o47tmQNCxMQULzjxDC+GQKiWF3/mniQTRYt5ii68VLnKvPGzNUf8W2c9wZhbFs97A/27B9m5LnIL7P1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768234084; c=relaxed/simple;
	bh=13GNBYYSvDQL7xzWSPt88z7eK6Xmazm75pVbxDZ9QZo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MGxLiWWUev5QKUfE6jQCw0JztvAxaNJNuXCWXfV9sP0OjHuhrrv+pGkC+d3AwwoPRM4+wN6WgJ8maVktJffi7oL16LI0MJh6xqOurr6KOffDShxwIU30MsIQ4UORKjxMRwAnNP8yANWGrvoLJ6lPuzBkxBbEAvEVSKi2QjaPWiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bxQj0ioL; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-b872f1c31f1so76696366b.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768234081; x=1768838881; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XFchl4IL2iHP7X4M9jCzRqchpxPAMZ+ZvVMJ6ag12p4=;
        b=bxQj0ioLu+ZZFvvvS3RGIjZ/4zQfsoC8m2jVl+AuQq7MPltKEB1c+Wd1me2Vk+vdoG
         YkkTYj+sAZMz02KQpoFEg1rk2dHoUKiONYLXgegbruSn1EuTq/6cB2sYhxoPxJrcg4iW
         RDhJqz5QyJnv/+RCu8wuIbV5LHz2I+cT0SFaXm9wInu0pQbR0VUZnwTYH4GlDCqQ+KMm
         Ju5iFDAAJNee6MyOqNsK4UGr3dHErisH3E4NbJTwGjWRnUGFFyLLBNFxOSQuBL+Qitif
         iZU/w6E/QgtdtU4mu3wUQQtay2VV7VV3DxMBf8x74DoNAODmAxQwK2AazZZWhQAnocan
         cfcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768234081; x=1768838881;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XFchl4IL2iHP7X4M9jCzRqchpxPAMZ+ZvVMJ6ag12p4=;
        b=wj12g1qhCVK0UMLrsqZn2AS2I9LEp/Ll+eWwCTVRFdYKfmDgPYlXNjdMWuzJgKZnEH
         qTAbphGpqMHcxG2m+52/wDBOUHDsGJwi4fB4uRDS/XD6fS5q1yrhgd4r2p6P0GpO1fdV
         Houl20gl9JEyJwRSi218Hfhxg1ym+q0Ptmh4ssUkXStmP+VNnLm8Kv3T9EAdnk04lacV
         grmb2etPAGWFn/rvxwZ9B+kiF1FGz4fYvh2GepO8hIWnf0UJG6Wmpoh46wXp4kWywuDR
         jXXfpW8DH0nhse7sP6tGtO1kO9OmRjPSFMldAF4zxqoImnmsss5bHeamF5XvCZbQcEAx
         E/7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXPXP/tlCwq6tgyMPo38hllP1KNhMKyq8eoOoqM4eiERBejdPZCehbHLNcVsMFpzpVAbAopJh1mvQMe@vger.kernel.org
X-Gm-Message-State: AOJu0YwAclhFbcMNj9MdI/RaNue0HHiQQFTAE/MYQBc23UFk5U8I80n8
	oX8AHH61L0YZb0Ug+R4QE8fPXi4zcicLGYD/JqfvJ92WWC2Viq/jEatO
X-Gm-Gg: AY/fxX6cc246+UAiSiE3W0f5/Yxt6c4sXSdh3TLufxXLaEqnlgs0Ba+qv5E0UFAhcoR
	/DmjKtzAzUcD5hIAODWBMfH3deXQNzfum33gJl4STcqWsySbp1PEq8iSSXtkF68TQ1D3Zj7m7aG
	ncGJ+NEeIoX/rf5Altw4FdvmEQSWnC3IJ+ZmJRPd9QLoTesG48zB8Yzxy67oVdlZ4qZalnHmPVx
	EdgjHVYUm2L2BHdBc4emo92OzKG7j9FwF1hfuUNatmWe7ySWGgu7DAf6IxMNw/lOKs0i2U/qEqm
	UOzT0i538A0jv5FW4i1ssG3v/9Ip5ZyBML0XpWNFWrFlu7vyA5alQQDRvrcIcrZJn1ScZcBYfKZ
	7lTZaJgbV6MzCeUdGPGaBQGb5WkEBhdVU6N8YbJeE81m2qvI8TrHrGQYmSB7ZVxWpOsdrRjJcBT
	ol0H56tLPzLkZj1tEpJ6Ma7r/3Unomr1imdIxBVrJuwKw=
X-Google-Smtp-Source: AGHT+IFz4Glbd4ZA3dxtqcV317tXnM3myln6ByCS2T281F927mkqk5Eht9v3v1U1SGONoSGsJThyfg==
X-Received: by 2002:a17:907:9403:b0:b87:7e8:e287 with SMTP id a640c23a62f3a-b8707e91202mr564365466b.30.1768234080781;
        Mon, 12 Jan 2026 08:08:00 -0800 (PST)
Received: from MacBookPro ([2a02:8071:2186:3703:6de9:eb98:99c8:7af2])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86f9a9103bsm667481666b.30.2026.01.12.08.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 08:08:00 -0800 (PST)
From: Nauman Sabir <officialnaumansabir@gmail.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	Nauman Sabir <officialnaumansabir@gmail.com>
Subject: [PATCH v3 1/3] dt-bindings: display: mediatek: Fix typo 'hardwares' to 'hardware'
Date: Mon, 12 Jan 2026 17:07:59 +0100
Message-ID: <20260112160759.19027-1-officialnaumansabir@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix incorrect plural form of the uncountable noun 'hardware' in the
MediaTek DP binding description.

Signed-off-by: Nauman Sabir <officialnaumansabir@gmail.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,dp.yaml       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
index 274f590807ca..8f4bd9fb560b 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
@@ -11,7 +11,7 @@ maintainers:
   - Jitao shi <jitao.shi@mediatek.com>
 
 description: |
-  MediaTek DP and eDP are different hardwares and there are some features
+  MediaTek DP and eDP are different hardware and there are some features
   which are not supported for eDP. For example, audio is not supported for
   eDP. Therefore, we need to use two different compatibles to describe them.
   In addition, We just need to enable the power domain of DP, so the clock
-- 
2.52.0


