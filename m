Return-Path: <devicetree+bounces-219943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B936B8FB67
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 11:17:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05B613BB8AE
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 09:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16E6B27E048;
	Mon, 22 Sep 2025 09:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YR21dulM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A23A63398A
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758532647; cv=none; b=H/dq5FxHcYKBKjZrMzz0/+bsSX8R+Hnld6nJ5GangFEVi4EytKnLPwJYI39889KLHscM279O0ncvv2SR/rL/FjUlygwLL0zr9hz2aNz06W2JMM2HhAL2yq6lPALsinvg4SZIqsnhcUocHsdUKAbaGaX6kABwHHVSoKunqFWHinY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758532647; c=relaxed/simple;
	bh=H4xR9rGnsgWWE3kFpKrgf6Nqe4SgPA48B2S8CSNA3sc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=O3KYQIz7TrR6H2ATeO0hOZjRIYPDVSwStC56Ya/y3VR1VhBR+zxRNoYht5u8Ug1iA0D1NSx8QWDJdD3e0WiUKf/0gjj+YBntTfoSvLDxhE2KAyiKjsl1EFMK2FODsu2QDEun4N2PitWOL37fCUhe0SVhhVDDNEkJFzYnlP4Naho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YR21dulM; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2698384978dso34696445ad.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 02:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758532645; x=1759137445; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fGb/DBgzMdYPrR58mCFwPhHuJtGwABvWLMjhmJdkkaY=;
        b=YR21dulMwp6yaiIGQC1xJSWThqkpsYV7mpD7kcpQozpeiC7vnM3sgX0Se9N2MPWg0r
         uoYQDhFCURB+1ad+LeviCQrGXq/fyVIJ99JUCQ2Lh2S0v52tbNbXgFLsHWj1q8262K9Q
         IQabTlqVC0mBUxCzo8UrOhXYUwvNe/SgS8es1WfWAnqhklhySYa2ODoZlRqlOQ/A3gNK
         M7xdh+m1RZHkMdchYUQuh7WAWQRF7d6GddF1VNZdswmlFV9/PGQKYSoYEoyuh3FqBsGU
         Q56oIOH3UYvVn3M1GL+0ep6y482VSJ1YhUsD17je3/J7nUFd1xbqYL0hQTyyQtJ7Xk8J
         uQAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758532645; x=1759137445;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fGb/DBgzMdYPrR58mCFwPhHuJtGwABvWLMjhmJdkkaY=;
        b=NSOnGahb09MNPHMu+yqg7KVAgz5EIjFkVw/fT8Jss4q2Dlz+6Gj0dX9D8sjykxPCtR
         xqPNpYAtEdOfHcYK8QNpJmiiLv6gIa1P5XmdVA+VIu+KErGPMcE0L8KfIBdsetiLLYWu
         +Dov4SMLRg17JJzQ29g1s1HevussnOfAPUJHG3zsVXoNIzfD1kw95RojqZcg2+WQiV93
         7kHZzNzLLN7TDiy5DvgdpWoG9ugpSuoe4i2mY5eORnQfG0IwUCQFZyQt2um6YvIV4/qS
         PpdZboyw7Z8swu0yfuqrtarrqttLhPUliYHEuGKensjL1no0X0L71bfDn3V7QhhbH2EZ
         UrRg==
X-Gm-Message-State: AOJu0YydvR9TYWp5AgydeNBta24AjSw6BlLsntjr68CKHRyjgCeuvxLO
	QLYy2hkMGiW2svoXoYluURWUhBp2gczm4rq2Dtr0BG8LcTqb/tdiwEBd
X-Gm-Gg: ASbGncvod+jD7qnfO7+ArJeqmnzKyB5FEviCDbe82gGp0EYXmuDelccLsHDSmGAUnDW
	18x4bI5i7x2/dFxinkbtW2+zIcvIMctKUF4SonH9184DrJ6eO8AWigx16jcqX5ccxImgCx1CgNd
	S9mTbJ3tqNLbNb95TtKuGWTh68IjEIbSDoswvp7wayIQZDL3p04EnQYvdrIk7+8SyC6Wj/YcI2y
	0Fzb6KK/I92rSyMCDe/KNAAR6ZORlYSbtbhZnZRYVz+N7GAmbRLF4h5328AqIiq2YBFzMhSaiKW
	TJ3iBQN5FNcsWGNESoE6uTfpc90SDOLadu94r+bRdHIH/LMp1M3T38ylJ1tntg1qvzZBLvwxdoS
	GJQG8/P+mVZNHy2oJkflbAvesSHZOf4n1
X-Google-Smtp-Source: AGHT+IHpQUnDxqtshyNYZwoifi0+JfQ4lWp5zNwj1YOtKACLv1wuYj4WHK6vgRUMTUwuv7Y9Eq6txA==
X-Received: by 2002:a17:903:1aee:b0:269:96db:958 with SMTP id d9443c01a7336-269ba52872bmr156749785ad.43.1758532644418;
        Mon, 22 Sep 2025 02:17:24 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([211.158.26.188])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269802deb48sm124126865ad.70.2025.09.22.02.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:17:24 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tianling Shen <cnsztl@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi R76S
Date: Mon, 22 Sep 2025 17:15:08 +0800
Message-ID: <20250922091509.2695565-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NanoPi R76S (as "R76S") is an open-sourced mini IoT gateway
device with two 2.5G, designed and developed by FriendlyElec.

Add devicetree binding documentation for the FriendlyElec NanoPi R76S
board.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..e8185344c6f0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -330,6 +330,11 @@ properties:
               - friendlyarm,nanopi-r6s
           - const: rockchip,rk3588s
 
+      - description: FriendlyElec NanoPi R76S
+        items:
+          - const: friendlyarm,nanopi-r76s
+          - const: rockchip,rk3576
+
       - description: FriendlyElec NanoPi Zero2
         items:
           - const: friendlyarm,nanopi-zero2
-- 
2.51.0


