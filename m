Return-Path: <devicetree+bounces-2445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C807AAD47
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 10:57:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2812E281870
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71671168CD;
	Fri, 22 Sep 2023 08:57:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D462F9CA43
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:57:23 +0000 (UTC)
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D08B09E
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 01:57:22 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-274dd099cd5so1374565a91.3
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 01:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1695373042; x=1695977842; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RDJs3U1rqa7YI0/roeh/1SBiVi3tTUp7AZYFFQzYY+8=;
        b=A22TP6mBKkhBhsokDD0dytb++Qhl90MPUcW6CZ8LOan6CSc1di7aeIYmcQk8e5S3q4
         gYpZlV8ZmqbKYi5gXzQYvjbwguGdM7J7xz+3DXgxpy8WVelte2dNvBXM2eaBilpwrC+6
         t7Z4NLbRLpPLLNdo+piJlkO2Q3bOhSdJ6V7L3v1GRuAgUATMORceR4WX28dLkDoDzPUL
         Bs8LBD67D3VCyfkwUjqufH+837oy/alGIHqq7EN8u13UQQZVa7zRsoZ5TgwWOQnVZqjb
         O86rqbCPOfekzsQVrr3xfWI8dUxGTmpCOxSiOsLXhZ5CS0Wdwgf0C5zb9S5IvBaZtm2V
         UX0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695373042; x=1695977842;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RDJs3U1rqa7YI0/roeh/1SBiVi3tTUp7AZYFFQzYY+8=;
        b=Id1sZxVAYkogukaLs8MTsNtFwRI50DEP+k2SZz/2ON5z0TMLYkVs8mBp/a5Bt1F60s
         0ruheuvSyb9yLi1lOyTeAc/zxKp8qOmQx+7uHWDIb7AWaMAxFKiiY/zpkBg4fmCTjdJW
         vctmoKlQQs3azbBsuTW7CcB07Zze3lYQsWey2aTeSA/4cgfJ11vDs+hvzg9WAKkv4Tge
         UKA1SG13+muPQDNDhfbqqCozfURyxW816lWzP6IL8Eh8bL4eKmicAkFjdyacczWAQKqn
         8MfjJ617ar9zKpmTLGfyB8lPJtom9dyHxFL87noRjyK41zYGsmMSbBEU87NtsaWurmGp
         UW2A==
X-Gm-Message-State: AOJu0Yxjla20wHqATPasZSRN8ndpF+O5Uixzn3c08hRN/7BbQasWP4qo
	pavR8FkbTgjim9kadrsMoDxJpw==
X-Google-Smtp-Source: AGHT+IF2S3T6M/QFYXn0AbVDOA44Le3cU3dN6opZxZukQlTXZ9dw1OqvhHYbfoOzCbab4UanG6N9Jg==
X-Received: by 2002:a17:90a:f687:b0:274:74ee:eda5 with SMTP id cl7-20020a17090af68700b0027474eeeda5mr7847201pjb.4.1695373042268;
        Fri, 22 Sep 2023 01:57:22 -0700 (PDT)
Received: from hsinchu26.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id t15-20020a17090a024f00b00256b67208b1sm4815024pje.56.2023.09.22.01.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Sep 2023 01:57:21 -0700 (PDT)
From: Yong-Xuan Wang <yongxuan.wang@sifive.com>
To: linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org
Cc: greentime.hu@sifive.com,
	vincent.chen@sifive.com,
	tjytimi@163.com,
	alex@ghiti.fr,
	Yong-Xuan Wang <yongxuan.wang@sifive.com>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: riscv: Add Svadu Entry
Date: Fri, 22 Sep 2023 08:56:48 +0000
Message-Id: <20230922085701.3164-3-yongxuan.wang@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230922085701.3164-1-yongxuan.wang@sifive.com>
References: <20230922085701.3164-1-yongxuan.wang@sifive.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add an entry for the Svadu extension to the riscv,isa-extensions property.

Signed-off-by: Yong-Xuan Wang <yongxuan.wang@sifive.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index cc1f546fdbdc..b5a0aed0165b 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -147,6 +147,12 @@ properties:
             ratified at commit 3f9ed34 ("Add ability to manually trigger
             workflow. (#2)") of riscv-time-compare.
 
+        - const: svadu
+          description: |
+            The standard Svadu supervisor-level extension for hardware updating
+            of PTE A/D bits as frozen at commit b65e07c ("move to Frozen
+            state") of riscv-svadu.
+
         - const: svinval
           description:
             The standard Svinval supervisor-level extension for fine-grained
-- 
2.17.1


