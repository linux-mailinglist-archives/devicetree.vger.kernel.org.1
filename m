Return-Path: <devicetree+bounces-187681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1941AE0EA5
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 22:35:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4ADC67AEE8D
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 20:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC722472AC;
	Thu, 19 Jun 2025 20:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="dZrAiJnn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6960121ADA2
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750365311; cv=none; b=VfM3PHtEGYhi5EH1uTHf1yESuq79DVHCh8uT3aNPa+wqcMgXZvRjsBpLgorqWJWFBgnlUYY/z/lUfYAdKrmPkLNgULcGy7QISobTNxSNitPBQG3fYe21HzWeiqhp26Yb3QAiq30dm0kfVqnShevXnbFoAWbVlOss0NXZUsNqIO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750365311; c=relaxed/simple;
	bh=T07V3sAbb7FMtV2pvVEqIO4g+bcFfg87lTtgBLYLTVk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HztnfBvbh2xeWbXkM2uM1D2o9GWerulunWBRXNUyljlC6lQNvIawiFqW9g8EwBI6VMk3QGcUCYqnIR3f4m+qqJ3qsfnU7hxli/4oaOHqr9ZZYvbXKZQ5Yt7RPmW9xD2cxge5i2f8lSznzVU7t7FN+B+s2/BjnWv7/V2y3txtTY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=dZrAiJnn; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a510432236so939242f8f.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750365306; x=1750970106; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Me4R70YQwZZWGPaTnVq7JZtj/BWzBdRzoLQ/qm+MazI=;
        b=dZrAiJnnVvOQCPRcl/8ppWqD52So513GI+IYUgpXIN6qtjJPDHcMKur56X4dWD21qT
         vuWH8jCWpPDp/RqUeEvIjaayKn9b4jnKSWT+d4bwv0uShmu3YowzolXp7oYBsONjNmIP
         KOthvYKwSWZkff+1I3eJP1/LguR30hYwbRBIQC0pF9jLLQz0uMjvr0j3usmW0r+x0A0O
         Ng+6TCaNA38vCYmq9beWbDxCx/qbVtI+2afVE4tWhPaN+wZLz2SQoYg7Gu7ZYuZ6jEks
         YHyhdpbeQvSXN15eA1Q+GSDzGZXxWKmbVedk1Rhk/w25sQnM+JEHR1cJZ0OoH7yiIAi8
         Dv3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750365306; x=1750970106;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Me4R70YQwZZWGPaTnVq7JZtj/BWzBdRzoLQ/qm+MazI=;
        b=naGa1mUhBjjtEZu7zzrxTyGTRV+gsGRbdiN3C1obyJEF7fK3tqjgd1EBgoSLIQrikr
         99Z0oUKq7azIaFSLcjzMR3zvcg6vZKD2PSDFud0EZ5/Gpveugg2yS+dbzVVqqBwA60Bq
         IokG9W8C/UmSf2ke28wg5YdhOphc2cCoFZS9OBxHD1kg4xc6AjppqAgmjZt+tum7QQgx
         jGu+0u2pbK7uZAiu+9yi2Chp0Okp1w3fafV/TO8Ern7RDXYsbp8y9PvAVgcHy0O3ZqFS
         soVJEpdGJCUlld7sWGtmuUdwIGYkhx/+XJ0JYU5Qm9hm1Fmf8OHbrusf7Q1GnPZ7sqBP
         vmnA==
X-Forwarded-Encrypted: i=1; AJvYcCU7LG8phINE6h86+wScnTot4FhHkNJt1RQxYGXHqUGzw5s8uJ3qyj8NNoSSlp2kSs4xKkZx3mfldDvz@vger.kernel.org
X-Gm-Message-State: AOJu0YzkYI7Cm7r/5jA3Xzb/gv77bHdzsjvlNDv8CloXaSr14o2Eniqr
	YQynNGZkQYQQUivntcFRL88JmlbD3JVH+ltv6ORSMfcRKKbmuTAQlzv919zrFFl9yDk=
X-Gm-Gg: ASbGncs88fgj3mFzy4GPzG1HynwEW4TkScFL5DwxsAy7pRx/XjVCwwBA+aiBq65Bt2y
	GVxZdlY0wUYe/LAnRMHKoHgKzsX0b84lsSP6+JdsLrCyV5cakCeaQwlz7kMGrcBbR6mOZQUabHu
	z9qWoVIy6I/pfkiFvxH0sVXvDnyt0uwRt1YMz9YrY6h2/uUQ77FKMkt0BUk74dp7X6/yvH820pI
	r4tGTc2k31nl6eCvOSYqNKnBi7vY90fGDn26sZUlokjPSlm4RbqoiqjCEIB8I+gpBQxrbGTdiq8
	VNa9K0cx6PeZUUQflNC1EWfmy/VzvAmXtqSmp2ibZ56ogVqb/FpQZcYsdp4L
X-Google-Smtp-Source: AGHT+IFIpVZyrd2J6npgOTQ1JxO8v814vEoUGWW0amRSS6hbiHRLtymtz2OMwWmRGzMTORX6iDc8ew==
X-Received: by 2002:a5d:64cb:0:b0:3a5:2e59:833a with SMTP id ffacd0b85a97d-3a6d12db838mr325155f8f.1.1750365305748;
        Thu, 19 Jun 2025 13:35:05 -0700 (PDT)
Received: from fraxinus.easyland ([2a02:16a:7402:0:a60c:e454:f09e:79d5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6d0f1d91bsm288495f8f.42.2025.06.19.13.35.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 13:35:05 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v3 0/4] MIPS: dts: ralink: mt7628a: Tweak for GARDENA smart Gateway
Date: Thu, 19 Jun 2025 22:34:58 +0200
Message-ID: <20250619203502.1293695-1-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

Various devicetree changes needed for the MT7688-based GARDENA smart
Gateway.

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
---
Changes in v3:
- Remove duplicate entries in mediatek,mtmips-sysc DT binding
- Link to v2: https://lore.kernel.org/20250617103058.1125836-1-ezra@easyb.ch

Changes in v2:
- Add patch for mediatek,mtmips-sysc DT binding
- Add Reviewed-by tags
- Link to v1: https://lore.kernel.org/20250611194716.302126-1-ezra@easyb.ch

---
Ezra Buehler (4):
  dt-bindings: clock: mediatek,mtmips-sysc: Adapt compatible for MT7688
    boards
  MIPS: dts: ralink: mt7628a: Fix sysc's compatible property for MT7688
  MIPS: dts: ralink: mt7628a: Update watchdog node according to bindings
  MIPS: dts: ralink: gardena_smart_gateway_mt7688: Fix power LED

 .../bindings/clock/mediatek,mtmips-sysc.yaml  | 27 ++++++++++---------
 .../ralink/gardena_smart_gateway_mt7688.dts   |  2 +-
 arch/mips/boot/dts/ralink/mt7628a.dtsi        | 11 +++-----
 3 files changed, 19 insertions(+), 21 deletions(-)

--
2.43.0

