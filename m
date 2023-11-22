Return-Path: <devicetree+bounces-18123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E837F5397
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 23:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3ABC81C20A18
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 22:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 900041B295;
	Wed, 22 Nov 2023 22:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6642CD41;
	Wed, 22 Nov 2023 14:44:19 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3b83ed78a91so207100b6e.1;
        Wed, 22 Nov 2023 14:44:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700693058; x=1701297858;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9DHIDd+1coJ1issLj7LfnrEV9ADKsNgebdRxQ/ZnRwA=;
        b=Qy5nlCWtWVuGHp4iTI6LJ7EGqK8wUV8yaw5BzuseilbUQGxUyvsjfeF3KuI5TSjlT9
         wUJvZvShfXuVJwQByR0hf3wlLwfAV+c5F35ohAl8aYq/0aHlHUmjKPWjw+PI3SWU0GoO
         wi5Fs9935CeaQHNu2CD3iypAT1s7Hlz8S6XeAb0yu5pjNvbJMTSJ0hene78BmMPNIURO
         rDkOgIRjqu3JdQ3sCx/I3HAo5g8yu4BiypGUEIqVlaNsTPFF6Wu8dBJdqkmlj+8ThZdZ
         +8cMN03D12acaHxYasJHpundUXKdMkCdXBmEkN6tYR0VH3fhzPfTDPv1XjrsdqQrX17G
         hMuQ==
X-Gm-Message-State: AOJu0YyKwZl5wy9gIkR47nvUjdR3tNRDwlxTxwF2JN/QUeZGKXY0rpMs
	JfoIkZxXA/snTGTOToYudRW9yFCzpg==
X-Google-Smtp-Source: AGHT+IH54k3Wt4YCyLNeCPNtxdcOcnzfdu9XRieLXF2USnfJqpXF8QjTk8RLDRkHS0d9SOXRDgqRrg==
X-Received: by 2002:a05:6870:5ccd:b0:1d6:5133:2f37 with SMTP id et13-20020a0568705ccd00b001d651332f37mr5144535oab.48.1700693058677;
        Wed, 22 Nov 2023 14:44:18 -0800 (PST)
Received: from herring.priv ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id j27-20020a02cb1b000000b0046675345998sm98374jap.96.2023.11.22.14.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 14:44:18 -0800 (PST)
Received: (nullmailer pid 2809289 invoked by uid 1000);
	Wed, 22 Nov 2023 22:44:16 -0000
From: Rob Herring <robh@kernel.org>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: perf: riscv,pmu: drop unneeded quotes
Date: Wed, 22 Nov 2023 15:44:14 -0700
Message-ID: <20231122224414.2809184-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop unneeded quotes over simple string values to fix a soon to be
enabled yamllint warning:

  [error] string value is redundantly quoted with any quotes (quoted-strings)

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/perf/riscv,pmu.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/perf/riscv,pmu.yaml b/Documentation/devicetree/bindings/perf/riscv,pmu.yaml
index c8448de2f2a0..d01c677ad3c7 100644
--- a/Documentation/devicetree/bindings/perf/riscv,pmu.yaml
+++ b/Documentation/devicetree/bindings/perf/riscv,pmu.yaml
@@ -90,7 +90,7 @@ properties:
             bitmap of all MHPMCOUNTERx that can monitor the range of events
 
 dependencies:
-  "riscv,event-to-mhpmevent": [ "riscv,event-to-mhpmcounters" ]
+  riscv,event-to-mhpmevent: [ "riscv,event-to-mhpmcounters" ]
 
 required:
   - compatible
-- 
2.42.0


