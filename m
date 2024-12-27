Return-Path: <devicetree+bounces-134373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8E79FD4FC
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:34:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B453161A39
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94F061F37B3;
	Fri, 27 Dec 2024 13:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="h5k79UwT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C5B15665D
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735306473; cv=none; b=Azs7QyHgUpKIUxlpTegc1H6kiP8IuiSQnWGGxyq++2bX6AlQ5zo5HfOLy9YW/bcIwPNZjGyXALoH8TlUr1XVIgKtEE8y/SwV4D/fRC7PlB3H5L6SADP0EY5I0maU/8N2xwSTqObn+lGw4MDkJ4u74lKXsE5fs1koxl9yvivJzAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735306473; c=relaxed/simple;
	bh=DOZRCNd7U+nJHc543HMecln981y9a2SuhU9rJmXRd6w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ge6HeO7erdHbPJ6Ijl2wyw/3000y0bVf4fcUH/2S9hBarnRdcUebuqJct+FnXcT9sxbIYBcFYS8PhLcmYL6rv1X0irNTOiB/XrbwMYYuwfzLRCbgaulATMIzRpswKoiG3KB3iUwyGlMQiVKShiU7NC8uDP9zJAc6c9mcGWMDzAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=h5k79UwT; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2ef760a1001so8728531a91.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 05:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735306472; x=1735911272; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UDGgaqN+RyNFFUIhBmxwJa3uKb6CA586OOHT4HO6pCo=;
        b=h5k79UwTuGOKgemcehEAutgBnwPAZjseIQNmoGrRNLZwsp5pt9whOBu9Us8lr6bNXq
         NCqegRvj3LzLDaWMAVC8yPjXu0sSVkGMjXG0d/k6k84MeTZpQgNX7LDRTBTUEVHIHLbn
         Vg2807ovro6SrFaIorFK1Zap/fIL2eqUqnkyqF9W194iFCFW5ymVWn78jTUGDF0s4cUo
         sF3L/VNvxAmyI6f/fW4CR9Ub2jhoGZGwVhXDN5Jk2KQYpTyKHsmX7uZ1vf4FVOFkroct
         /Mq8GNJsC2aZSBAwEX3q2U8rg+OLV9Cr0Vaoen4NZSKIkXHu9PgCFXi797pgTTBjPWPI
         scAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735306472; x=1735911272;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UDGgaqN+RyNFFUIhBmxwJa3uKb6CA586OOHT4HO6pCo=;
        b=QVAJQQdG3oloj1QNrLNmzjjIyN246zV4zcTB+qn97KWixAQ6pe2tHPBkBYYymGo3Ls
         qtHDXibc+KwPNdxFPSAdGwiaTohTX3lzDSV3A0dfDpXJlr6NClzIP3uKPE9/+X2Hs750
         pk98NHFS0g/2/wvTIHfq00rcRy4a+uBnNQUKLraFx8qY3oT9GxFMnSr/bswmOrTmi0nR
         KRpac6PsovLVammn9zLTNym0jOUZYO1mSa+Zc2/h5eZSlhcLx8NS71sbn131G9zHR2p2
         vNlczt8k/ynf9gg5+pY0puYrUCQkBvQssjulglsWklwBqgZUYCUNAKIraufKXbN4fa3d
         DQrw==
X-Forwarded-Encrypted: i=1; AJvYcCXhiqqotK2wst0WDyWDnOFehd65J8ZaksAV7Mpg4/7kFUSpgjgh1bmHrkRsyMn4UpbE/s+62Hd0Xu7w@vger.kernel.org
X-Gm-Message-State: AOJu0YwaGuIIuDogvbco4BiWRGNc8Wv1i/+iyOCw4o9namTx55Ryf+ty
	ciuFhz3E6ER8Csb94NQBhtfEH23tar67lFCPkHswU0XFx9Aq7j/xiYpnUtgaBoFbRoZQGdOwMID
	bL50=
X-Gm-Gg: ASbGnct//4K48Lc9FBx15i/8+LLXQgK4bYpyI5Nju6bx/CVgQ1bNuyTDRbt4LSenHY5
	ZKmUggKcs4LDod5Ko/9ot2navKn9LzqQb9S2zcJ3+AS0VJqFeUg2h/JJtj+hOLqGhAvu34Hol7k
	K1+g2mZAgBGA6rG/Awm89hq6vFByQT0teQZlZKXQpKBx1upgQPT/qXdtzZKMhgKOUlUN3aIBtBf
	hVqB20xrFImnRWBMk9Xo6ID39fCqWJiNTz8PLHpxwDmQp3OMyRwj01lQvDxJNNHrglKg38=
X-Google-Smtp-Source: AGHT+IFo1pADb4rVMihXewKTUfgIpGRLw2CQ2m9p8MRM9fVgylT7CDtLc2bBkTGmWfrKx/vwilzdkw==
X-Received: by 2002:a17:90b:6cb:b0:2ee:863e:9fff with SMTP id 98e67ed59e1d1-2f452e22560mr40951589a91.10.1735306471825;
        Fri, 27 Dec 2024 05:34:31 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([103.217.239.66])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4623dbfbfsm11808238a91.48.2024.12.27.05.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 05:34:31 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/4] dt-bindings: arm: rockchip: Add Edgeble 6TOPS Automotive Edge AI CM
Date: Fri, 27 Dec 2024 19:04:18 +0530
Message-Id: <20241227133420.169714-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241227133420.169714-1-jagan@edgeble.ai>
References: <20241227133420.169714-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble Edge AI CM6C is an Edge AI Accelerator module based on Rockchip
RK3588M.

Edgeble Edge AI CM6 Industrial IO board is an evaluation board that
would compatible with Edge AI CM6.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..709a13835c9b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -132,6 +132,7 @@ properties:
           - enum:
               - edgeble,neural-compute-module-6a        # Edgeble Neural Compute Module 6A SoM
               - edgeble,neural-compute-module-6b        # Edgeble Neural Compute Module 6B SoM
+              - edgeble,neural-compute-module-6c        # Edgeble Neural Compute Module 6C SoM
           - const: rockchip,rk3588
 
       - description: Elgin RV1108 R1
-- 
2.34.1


