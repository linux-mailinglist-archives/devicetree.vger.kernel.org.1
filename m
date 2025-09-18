Return-Path: <devicetree+bounces-218246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 28876B7EB22
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:58:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBCEE1C05403
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 08:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56349308F33;
	Wed, 17 Sep 2025 08:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="WWny4WVo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A268308F18
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758096347; cv=none; b=Bzu3CcMdFjlmWpFlxnKKfVIG4dDApghCalfhAYEcsW/rGDR8iKyaelnOu4ieXKCcyVJjUFcNX+YwAGoDe9bx58KxGdVpZbbTYaUpwfkS8eW/Y/+3cGPDbevfs9Z6dsrrrseZe6hCcGQujBYlnCYnMHUSpmTSTv0ehbvBdGc4tMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758096347; c=relaxed/simple;
	bh=is+QmPpGFqnxwUe0KKjrEay6S4ZGinDIfN9T4PpumlQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=coTKvAj71kfCEL2IBg1KntbdePK4ExNsDbXUg4uYQ8TkmlhF0LQbCNU2IqsvpR2SM3a/F2uReAO3Qg8FJHO57fIgFYXFSLAirG9zmL3rWa+ztkCsFPI8qyYng+tUUK6hY4vpHcVOCTyLJUXFEH19nLUNm7/eHD+V9aDzOJeZSa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=WWny4WVo; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-62f261a128cso5679860a12.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 01:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758096343; x=1758701143; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lA/la65cC0J/yoE9Qt381Ko1XSyZ3tw4GtydE8nU3zI=;
        b=WWny4WVo+X6sRznOgMwvWCbSS6Ymekw+fU3m9vQmMdJX77oNMt2MtKi2+2Rin/MSeT
         rmPKbxJizmI901UejvCxkHJ2QaCuwzlm9xaMLYrmp2hVg8FSgemNqQ+8kmDWCXqS+T7u
         B30Rb5+lC6lYRblUOQBDoCi63eW5TmqCkin8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758096343; x=1758701143;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lA/la65cC0J/yoE9Qt381Ko1XSyZ3tw4GtydE8nU3zI=;
        b=YRFDAd6zsEmrv3z7tf45fxmE3+aOLkob9KNCyIbMgUpZt3VmFk4J3Im4gi7RTHi338
         B3fs4UyvQttLLv+P0wEFSvtSZKQmrSUJOGzz3dpVeEeQGZIfKURPO4UI+cVBrJqxNr9j
         XuCM7VeCf1shIMaQGmiOXJQXyj7TEhTSn5mhngDxicuwXYde+6LPRMM0Sx/YAXeD+Ypa
         JZjWNbMwzEtZzLtb0f09JozWgv6SzLvY30oGMRamAtVzp6J8nj+CI8ySr+7YgEdRVrBf
         lpro817lnwOX85Jb2Ry/2JpNJeiwf5jMi6fuBpsh0eJGRhTcKdtsrxodotKlUU6UYwwr
         uFew==
X-Forwarded-Encrypted: i=1; AJvYcCXaG0DDlJF3IfpWVkXIOuWXUW/lX2vgPgBN5eSrjNhgR/ds+nNGPgDro/poq0z8VIrwlvZLsweDWbAS@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+9vDZvBI8Nr6iIyReD6iarF89szCiyQmPn4Doj9rZndbsjTix
	ESnnr2b9tgD4UXN4JdPyjd2Mg/vRoPxDoLPrSjKwX5UhvE2EQKxqa2acukqKCOmHYRo=
X-Gm-Gg: ASbGncuz3Swzqi1PP0z53gDsZf19N0kILSTwAyNGDwJmDefrlXk/BrhZT0r9Ei9qMYK
	kW8qLQvqGkSx1Id242rrpEGmNU2EOJr+8xOi5385QSMYpF9SfnNlgWbqnpETJ7lEp16tVVEg84Y
	zse9beelVABCIQ8uxm8FrAhh9bUGXzFGlZ5tRRGOsQ7BY3O2HXFS6kq2lWtfaomfQCvlaWH4iAC
	zyY+AyeULghFUCN/WwMin90gAJlHfojml5X72anm5pAgjM/98UFQpaHUWQq2axpKAf5wMC/+bBy
	BKwFtTNvwsdsBsYyvbJ2bI4jE6IOPAmX9UToxfqDwwaV2rq7ZogQCi5khum8cFdcCZYwXM7jFRn
	pTnW3v1gaGMqUULboXeA54/deq2EZgoSo843tgHHVCqj75HiiLgF/n9LnBls=
X-Google-Smtp-Source: AGHT+IHgnDmHgbGe7M2wf+eae5X2J65rFCbRDo8gVvx92rWiaCFtz+XyS2dWxPaksXXrHlaef/NgWA==
X-Received: by 2002:a17:906:d555:b0:afe:ef8a:ac69 with SMTP id a640c23a62f3a-b1bb7d419ddmr158716766b.43.1758096343566;
        Wed, 17 Sep 2025 01:05:43 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:1215:4a13:8ee5:da2a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07e1aed5ffsm924936766b.81.2025.09.17.01.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 01:05:43 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Haibo Chen <haibo.chen@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-input@vger.kernel.org
Subject: [PATCH v4 4/6] dt-bindings: touchscreen: fsl,imx6ul-tsc: support glitch thresold
Date: Wed, 17 Sep 2025 10:05:09 +0200
Message-ID: <20250917080534.1772202-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250917080534.1772202-1-dario.binacchi@amarulasolutions.com>
References: <20250917080534.1772202-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Support the touchscreen-glitch-threshold-ns property.

Drivers must convert this value to IPG clock cycles and map it to one of
the four discrete thresholds exposed by the TSC_DEBUG_MODE2 register:

  0: 8191 IPG cycles
  1: 4095 IPG cycles
  2: 2047 IPG cycles
  3: 1023 IPG cycles

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v4:
- Adjust property description following the suggestions of
  Conor Dooley and Frank Li.
- Update the commit description.

Changes in v3:
- Remove the final part of the description that refers to
  implementation details.

 .../bindings/input/touchscreen/fsl,imx6ul-tsc.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml b/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
index 678756ad0f92..1975f741cf3d 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-tsc.yaml
@@ -62,6 +62,20 @@ properties:
     description: Number of data samples which are averaged for each read.
     enum: [ 1, 4, 8, 16, 32 ]
 
+  touchscreen-glitch-threshold-ns:
+    description: |
+      Minimum duration in nanoseconds a signal must remain stable
+      to be considered valid.
+
+      Drivers must convert this value to IPG clock cycles and map
+      it to one of the four discrete thresholds exposed by the
+      TSC_DEBUG_MODE2 register:
+
+        0: 8191 IPG cycles
+        1: 4095 IPG cycles
+        2: 2047 IPG cycles
+        3: 1023 IPG cycles
+
 required:
   - compatible
   - reg
-- 
2.43.0


