Return-Path: <devicetree+bounces-105950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 152F798866C
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 15:42:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC3A8282A6A
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 13:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791E61A0AF1;
	Fri, 27 Sep 2024 13:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="DEVtV9CJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0286F19F102
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 13:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727444518; cv=none; b=n39Xa1iKKM7F2Cpv6UCa6/unzFArNIDPME6BEAYRUVFVHDlJ+AK8FnHihj4YyUo9S+wc+H16Vd97bdut80nvwQ4U+qscZG02NGHbLnwt8OdmQaNsXtiRdq8snT0pziZNyqNOUlgpLL/dUOhY7H23B9JXzRN+yrj3a0eoNw3Xt9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727444518; c=relaxed/simple;
	bh=XsOuWsWpqVzpxzz/w3pcnSsgncUk3xwQYitc8ZK3GFY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WnQvsN/qu0YBGIZokfRv6NsWyagSVGzuIkZEuvwKTj2R0CQbMcMaiz8wYIv1Ww+hQ/yq9mF922HPDkJwOaJlBCy+Brtd3wSeCSrlmpCox8Bw1cMY0LGIowXcvbcqtT1Y/t4lGmLnSv29WtFm9b8kf8+w8eatfONi8jg253sVQYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=DEVtV9CJ; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2e08085596eso1943960a91.3
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 06:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1727444516; x=1728049316; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=heOXl/D9uF0Q8kfk6I+YarHudo0igxLTfM4r2xKA5dg=;
        b=DEVtV9CJ7mVMExqrlOa0eZQdF27Zg3449bURfR+wR4PMGcRhWJ1kzkBaMQngbSQPPT
         3y3agHvDR4FnCS1JZt+ibTGK8UVylVJevY2q/Thwc0sMLGDoiYv30s2cp2XNz7F/6bUq
         oexnswPKgrKUs+XYGAXsQt3YpoB8PCxW/O0G+jv0ODbNF9EE1gsB8Deovb+tOz1IeNLS
         r6+HRjm0LRnC3pDCcljpMlStOoqY1IIGG5bWxE792wCIoJTp+Iug/aRv54By6mx7Jnv+
         pO+vDaILxo7BqcSMoab5Qq4OPLQEERRRIDOTgTTMUPmaW6pq7ry1Q+YREpsOkCEOQOJx
         3rfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727444516; x=1728049316;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=heOXl/D9uF0Q8kfk6I+YarHudo0igxLTfM4r2xKA5dg=;
        b=OXm8PVKXUjcaoNLXEZqoccQKPdb0mHF3JLSNApAqTAgmzfwEP75QacGz62TwI7LED1
         QtocHxAMB2CkLRH8a1TU9uDY64QAPLCFDmjCGt+5duTjIoCOTVF8QOAo2bWb5lAp/7iQ
         qQF6CtJw9DWelpiJkN7ZpqM4aVkE4obhr495US4VkD24fhLS/o9gtdvs0uEfDRYa4b+c
         /hccf7fm92y5/gerzAc40UAx6SOV0A803g6R/fy+/JZhQl+/8OmWVqagexwKKXSvF4jq
         crmi7aW2hF6ojlGMwK1Yj9Vetn5MZi/mxV1W7NPEXbLelAkc6Q336kuPPbK3d75l3SsY
         xZ/w==
X-Forwarded-Encrypted: i=1; AJvYcCUsSW5aAbSTe64xTrSQhQFGpIVSyHna8wckcTEXZxV8ofbGVm/PvJ10gsAw7GZapu8X3jdPZFLkR8s7@vger.kernel.org
X-Gm-Message-State: AOJu0YxYOYFxvX+Dv2orC4ZlUuErRulG9EUS1JLAs9/T8Q7v7kU4uX60
	IOEJJPF3rXQZ3g77bHJJB8KR5V58vW4UqoYtaxraPlVVto8QD33AdH7hDQU7i30=
X-Google-Smtp-Source: AGHT+IH7hYJaqweQXd0Ik6SDG6dxB17+zbF2KpMlKshHRViQMcn4oky0zSOjACzpna2iO4tB6tRi5A==
X-Received: by 2002:a17:90b:1118:b0:2e0:875a:f72d with SMTP id 98e67ed59e1d1-2e0b7985217mr4296228a91.0.1727444516205;
        Fri, 27 Sep 2024 06:41:56 -0700 (PDT)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e06e16d6d2sm5671744a91.2.2024.09.27.06.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2024 06:41:55 -0700 (PDT)
From: Max Hsu <max.hsu@sifive.com>
Date: Fri, 27 Sep 2024 21:41:43 +0800
Subject: [PATCH RFC v2 1/3] dt-bindings: riscv: Add Svukte entry
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240927-dev-maxh-svukte-rebase-2-v2-1-9afe57c33aee@sifive.com>
References: <20240927-dev-maxh-svukte-rebase-2-v2-0-9afe57c33aee@sifive.com>
In-Reply-To: <20240927-dev-maxh-svukte-rebase-2-v2-0-9afe57c33aee@sifive.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 Max Hsu <max.hsu@sifive.com>, Samuel Holland <samuel.holland@sifive.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1400; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=XsOuWsWpqVzpxzz/w3pcnSsgncUk3xwQYitc8ZK3GFY=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBm9rYeTLWAR9pZKiWLummELHNbZhIZQkILgESlN
 iRqIuM7IhiJAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCZva2HgAKCRDSA/2dB3lA
 vR+HC/9KGdQ6PKTGsSX3TfsLbKKWZ1lFeeifrd/sMimbs4PIFd5M9UlxuNQsYVaLgEWlglc7nuN
 h8MH24n7taE21jwP6HP077oUVr7GxdZlrcUO3LEYz6wgtb1FwNQJxL3YuQVz1dwLGuyjyzCtzcx
 WTR9sIt/zvLe5biK81Gp+Fm1s16mvQ8+XSICFqNVzdmw36GMnBWiyqjYeFlDxYqAw3aloe/Fgpm
 3lQDhfOEqhLC8IO7yvzvmnlVqQMLZMIaEgbtEKoYID9SrbKL0XtpFOHEcszDpota5jhKa3kACZq
 SnQfLEbRqDqhF7GL1WJqAYDUAhP6sVtH0XSh1ybvPdBtB/bU7An1vNxUSFCN7YgI7keeLDxQ/Gg
 /POODPG+Td6PjxCCrw/yLzMGSk3wcKQqspqSSBjsCmXITT1G+VGp8HeZbM0YKzFRPb+WGo1KmvR
 7GyKrrCfNj3x4lJUNwCfR5pVaPot5O2a/RtfucPg/03tRk8HLU0ZXc03zdqHDxv0Q1pdw=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD

Add an entry for the Svukte extension to the riscv,isa-extensions
property.

Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 2cf2026cff574d39793157418a4d4211df87315f..9f730e3aaae949debc18396183b989b504dcb899 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -171,6 +171,15 @@ properties:
             memory types as ratified in the 20191213 version of the privileged
             ISA specification.
 
+        - const: svukte
+          description:
+            The standard Svukte supervisor-level extensions for making user-mode
+            accesses to supervisor memory raise page faults in constant time,
+            mitigating attacks that attempt to discover the supervisor
+            software's address-space layout. Currently under review as Pull
+            Request number 1564 at commit 81dc9277 ("Svukte v0.3") of
+            riscv-isa-manual.
+
         - const: svvptc
           description:
             The standard Svvptc supervisor-level extension for

-- 
2.43.2


