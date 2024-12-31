Return-Path: <devicetree+bounces-134946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FDE9FF014
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 16:02:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D93723A2DEB
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 15:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9537719A28D;
	Tue, 31 Dec 2024 15:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="oTbm0gYc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FE2136658
	for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 15:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735657313; cv=none; b=kdmiv+K2cAA2cWWis3z7FnIP0lXA19MhE5yR+fHNb9JyHaWRV550xhfJa1Ymj70NN+YdgZcauA7eVAtmXW0IdBX5GhimJ7kn9jmc1/VTbYgZcUbCN9LJIuazK2+bDi0CsFq9RezC3yscHBfGIJsbKeT8VI1NdAKLOUzHVbqwtVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735657313; c=relaxed/simple;
	bh=+ukRS+U+pDZ5qsomZDmtD+TyJSWssHy5ZeC3wySE+9M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CeYDseTDF4PbjB6kyrtoiUf3U4Xxe36nB4DOW35SpnhFMOC76a7wFsQnmmIj4uj2mh6506IC17ZIb7/mRXZY3aKSJ1ZmlkI0m686Yd1Gmd2xeD7K59Px0O2aW/6u78IpUCgOB8C5XhadgD6A7pyVMPZe47keXGRudFjp5JXIQNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=oTbm0gYc; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa6c0d1833eso2078912966b.1
        for <devicetree@vger.kernel.org>; Tue, 31 Dec 2024 07:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735657310; x=1736262110; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PSLeprPe5FTHWRveLENPgw9n1qZNAvdFfzbO7p/6mz8=;
        b=oTbm0gYcgo8N+XuYGL5r6ux9ffj/0fJHROk/QaWGvQW3WRq1PI8GQiP/tdXm2temU1
         l+x9M6/kBHidQsysBmtUehLEOE9HBI+/Vyt9tI+0k//lDnOJOL+0T5Y7MSu07AYTJ9BU
         NNdgcBXUPlDfNNqjnlyxZ48HwxSl7EKdvggks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735657310; x=1736262110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PSLeprPe5FTHWRveLENPgw9n1qZNAvdFfzbO7p/6mz8=;
        b=owrVBWh/dIXLwHKoN2OzdFp8XEfay6cWTbmE0a+FoduO90hRpoKnvZG14Hdww/eSny
         sIgGT7UngYzwz1FPENbtHRNz6O3Qt2GrVnsq4f99hbPwbXdXufxeVyYZvsCR+ManKMOl
         NsoxLFQH7GfSXSbtOA26ZKFi11+HmSLWupP2y64m06Omew9igDPBTQjuea292jIoI1EZ
         IZ622Ctj0P4TzcprDmy4nXd7k+OeRySbZekco7EBzHASeZZJY1cyae1aRpOvRkbj7lbD
         wZeFcyld7Jc7vDI9hxQG7Mnunp1W7zmxm5p72HKQ+JWJfXgTqCnEdbam++xfy8h0lAGR
         i2LQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9qCLXno1LxtEcDLOhyiCq4Li44QKfqndhMR+mUmSY6r6vvSfypnJBJECSWgAM7DvtkHg7ziWcvUpM@vger.kernel.org
X-Gm-Message-State: AOJu0Yxlhj3P1nvW8LyGhRm1HuqRz1H8p8znLP/DmIO++MGfAJOvSvBx
	nX0fuqP7HEXLE1BVXGM9Jh625cNQTTtNMQVbmZh3sNwJPA8vVUnieR5bMllaHqc=
X-Gm-Gg: ASbGncvcziEC/c+khy4k37u4K8Fac4nTVouCv6xuCJPKgxnUkkJlKrs2gEkH53HCVw0
	hG7HfqNpCUrrg8VGqDxTrptR3BpPg3+kynqRHlImWhLwDT8O1f/whTR4Q2UJvqJ9m8aYTyqPRnn
	PpgJgjlS47Ls939ZbnHdcJC6AHjtn/+mjlqq9p5hal8sZk0EszKZvQ8PmqMCV4aZVkEVdIf3dc+
	Qv8nN39rE8zvEaSdNqc89r/3ZQDUvTubRK6UPEU7pzoejkMOLNUv+e06N/occAti3/6v1wmx2WU
	I4LMWsUGbDLyDAVAP25qFg==
X-Google-Smtp-Source: AGHT+IGfEOn6eiAOcKUt+G4AdS/vhANNPsxMNquB07uGQCrXQb511fcC05DereMIXHKoyNQ8gZOavg==
X-Received: by 2002:a17:907:3f0a:b0:aa6:96c4:ad62 with SMTP id a640c23a62f3a-aac34217fddmr2955209066b.58.1735657310070;
        Tue, 31 Dec 2024 07:01:50 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e89598csm1575905766b.56.2024.12.31.07.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Dec 2024 07:01:49 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 2/2] dt-bindings: clock: st,stm32mp1-rcc: complete the reference path
Date: Tue, 31 Dec 2024 16:01:41 +0100
Message-ID: <20241231150144.4035938-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241231150144.4035938-1-dario.binacchi@amarulasolutions.com>
References: <20241231150144.4035938-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All other paths referenced in the file follow a scheme starting from the
Linux root. The patch adjusts the single file that deviated from this
scheme, making it consistent with the others.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
index ca75b1972470..e72f46e79b90 100644
--- a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
+++ b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
@@ -21,7 +21,7 @@ description: |
   =================
 
   All available clocks are defined as preprocessor macros in
-  dt-bindings/clock/stm32mp1-clks.h header and can be used in device
+  include/dt-bindings/clock/stm32mp1-clks.h header and can be used in device
   tree sources.
 
   Specifying softreset control of devices
-- 
2.43.0


