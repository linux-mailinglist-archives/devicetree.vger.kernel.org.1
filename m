Return-Path: <devicetree+bounces-8577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E577C8D22
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 20:39:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5E26282E20
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 18:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86EC719BCB;
	Fri, 13 Oct 2023 18:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UgxHg+hK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AE01C290
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 18:39:28 +0000 (UTC)
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05BE8BB
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3af609c4dfeso1462948b6e.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697222365; x=1697827165; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DL5nx56ml8EwdqvqmpvvdFpkJtuFtwq0M/Gm2EXLElQ=;
        b=UgxHg+hKRrqyhjEa8+tvWWY6S6tzB8dH9QGk2rSfKhdSTSwq1TfLUztqQAPhv0OJ9A
         XWPLxAh2fF/uFcncs/heTx2xutyNrrVK9ellDEVpkincB5l3VgloYbuCAjn8x/0WH20u
         ubEURj9oWcNnPhQNS4Tos/UQmTkcUMvAjKxrhP4cPr1nnSuQ15jJi2FMGyoc+zVN7UZ6
         ThQV8WVLfiZOwMTnmFfUUxj6/bMIfQ+GLL5nZsHtZpbNPQcvHR/vBChTHqxdQxKX3Usv
         7ldrK3qkwiWKSICYL0ZKJoypmmXebzpbcuRO8Xssr3pe+G/qcqMW7jbpgHm/lziqLzsq
         r41A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697222365; x=1697827165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DL5nx56ml8EwdqvqmpvvdFpkJtuFtwq0M/Gm2EXLElQ=;
        b=MRXxbQhBfMbWdWgPLiyEyoOWaGrx4Fg3bDTujnGCsoLFe5rDuPuicV2427ZHWs6dCm
         bxZN3myLJZNettYdtJFd90bRnmJxs8exzW9fDvMYEln1c7vxghHmrfg9Qcye1XrJqrhU
         ZXP6MNKEOMC69C/dwQZuypXaDvyvgrvGjv4yDC7dOMRRm3ws1clJxPh4TRelD7pqQTEQ
         NTU/YYPpR+6pEUA+Kh7w/514cIcGMOPqBbtP++8780Twl/sz8vKD6S4N8/vBEpZyLJgl
         VSru4uOXEU99Hyzcjg7Tfupsc/tmF1Isri/3/cQrPBboKz33WrWaGxH/Nrf2t0nsw8pf
         nc5Q==
X-Gm-Message-State: AOJu0YyYzH9nX0cuy8KeHaCbf0GWusW8WxbCyZUaMVGiFYnRsoCZMYNV
	qnoL+1E6z9FCTqm/XjPkvmg=
X-Google-Smtp-Source: AGHT+IHAQ4slZoIai8CkCpzcohRVPtVa4yKRxIDPVGcNh8vLB3G0lzsMzhjH1ZSyUz9BdmXegQFNMg==
X-Received: by 2002:a05:6808:1b0e:b0:3af:6cb9:ffc7 with SMTP id bx14-20020a0568081b0e00b003af6cb9ffc7mr36242744oib.16.1697222365565;
        Fri, 13 Oct 2023 11:39:25 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id bx19-20020a0568081b1300b003afe584ed4fsm842159oib.42.2023.10.13.11.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 11:39:25 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@edgeble.ai,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	megous@megous.com,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/5] dt-bindings: vendor-prefixes: document Powkiddy
Date: Fri, 13 Oct 2023 13:39:14 -0500
Message-Id: <20231013183918.225666-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013183918.225666-1-macroalpha82@gmail.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

Document Powkiddy (https://powkiddy.com/).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..25fd2dc378f5 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1081,6 +1081,8 @@ patternProperties:
     description: Powertip Tech. Corp.
   "^powervr,.*":
     description: PowerVR (deprecated, use img)
+  "^powkiddy,.*":
+    description: Powkiddy
   "^primux,.*":
     description: Primux Trading, S.L.
   "^probox2,.*":
-- 
2.34.1


