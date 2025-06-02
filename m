Return-Path: <devicetree+bounces-182104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDCEACA8D2
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 07:11:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D7031786E1
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 05:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC43190497;
	Mon,  2 Jun 2025 05:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="bkdfrsbm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83AC317A303
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 05:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748841100; cv=none; b=etWNGW1OMh8Edz5Wg0QVYl1SD3AzBv1rURkYGzBF3Q4fyMfQ/r/n/Wpn78tlMMP8BVTN2z2vIviyvrx5TSQXmsY+b/p6T2h/GQnRbQnG5c1xQXAOLE6YsIpqyuhyaxcobWSmKjBoyeY7jIQA3+zkl30r237L1HCGhr4NzNGt6Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748841100; c=relaxed/simple;
	bh=fBMmraWfxLq7HUrXgoImc3vLGw7rNTiJCLSX9/+vBE0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nof4OZVDNsJrg6IaWarmRXlwssDDeYnA9snvqiqnxc/qvGMaCPpc+D55jOsPm6QCxEAW7phSjA9JksWs1b6s+5mHC0Y5NPJUIXEd8GkCjuJD7Z9I2Q1IP4yvOqYyA1Ek3kDzZL0Bp7QDVlMjoEb3VYlxjNo8tAyfJxTqFQ3cqdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=bkdfrsbm; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-231e98e46c0so36100155ad.3
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 22:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1748841097; x=1749445897; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wpy7pqswBlGBPIRq9ziJBUuXDhOQvEIp935goKXFdPE=;
        b=bkdfrsbmWUt2Gth6JJ5K9q4/qeCbN8uHrXCG1cN0Va3DkpMxijXcavudF2AMDneJak
         30JhWyCH+JtfNMTP9pntDswp5kon3801o7dUFlPqPSCeChRmB6kAL01koTtay4FFwamO
         Iakr8NTorhaQ+mApaMwZD05tLfpKLvq8B90V5H+6Tkb4m3+XlML4VfEqg46xnl9377g0
         tNCzTuszRLiFETLwwZBMR6Ta0SnwvfyxdmzvRSSCfa3/9eHUfxRyDk4VZ3d9TbIlSrWF
         rPfTgS1HAk6y8KCsYYjJsR2fnHHEeWErpAHbryig8N6P0uez9uZEcluZ1aVjt+jLAsTt
         1q9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748841097; x=1749445897;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wpy7pqswBlGBPIRq9ziJBUuXDhOQvEIp935goKXFdPE=;
        b=czDBGZrivDt4LJJFLq2KAfSVvDuP7mKafkTcWZvc5PtpO/bUcJ82Uu/z+x3cKPfaE4
         6Li3YT5cBjDtG1JSx7Lf91d3TBf7KujoHHPR5Ag0hm8ZGrSjsyUsFxK7iwVgKkcuIqj1
         KtMQKNUfps5x+eu1xjJaNKP5XgGrc5h2lU47N2wlgZlrjju9WEygaaZfJKmBVAEI4Vzd
         HnHO982j2m3CEtWGm6J2O74Oq2eIySsJXhoo8kTVcnOonBThWhmiVBt5wYE05OTH246m
         xlR/qiMpl2Wk2Kzv+y9wYn+iPX32jC+vglF9uK+8kia2TPUzrLEwQPjJwUpH/pVjzn4r
         pLJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFj38CLLqyIlzcMYM7KCcg4+uUqBUh+jN35X/RKnUSdMMQNZRYqzg7TJyeKAege7AXzGkbfHxGoEz6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0ZVPg/DWSvIyiK6/qxvbaPiDyyIACm71zx/UxLMWhN/cZbzsz
	5CBk+ydZ0idQl8L2zB1ZXLXUpODlDt7p43H+ltx8PmDLrbfmWBTNfBqfIn1qYeFgyBU=
X-Gm-Gg: ASbGncvRxG/ZNQZ4y8VlCUhk2ftD61yDEALOvZw0uOD9HnOz5EM6xXOM6mgMH/Cp8Uv
	MoiufRZP52loK8ku2m3/kFJvkqMZLfl86d4aL2zk2a2i+TCMvjkUM/nUt+9dO5T4f0DzQGCvOMF
	5qBOVWH3ghYOYSaCEB+ytwX++gyMZZWEMRsEqugABaVdcZpNmh7RCZHB4GHHu7m8+08aVDXqDOY
	o2JJ8duDabJqLh2Lx2BafXMWtMZgoUQFm15y3NGr6R6MT9q87LZLd3pfjcAPxnhrhPJx9shF1Ik
	V9N16U1FRSmtkfgY81fRvLWObRQwjBetHkbxpxu1N0TDrvQ70YoSbGttNs/zORPMBCTRw/xp
X-Google-Smtp-Source: AGHT+IGALTc0/1tFLGhHIF2r9ZhN1RPRNEY+38maOOjRsNV4DmYxUBBG1NaebFKyRx8ArzYcQkcQSQ==
X-Received: by 2002:a17:903:244a:b0:232:59b:58fe with SMTP id d9443c01a7336-2355f6cb6b7mr94525395ad.1.1748841096781;
        Sun, 01 Jun 2025 22:11:36 -0700 (PDT)
Received: from localhost.localdomain ([123.51.235.216])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506bc85fcsm62709085ad.38.2025.06.01.22.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 22:11:36 -0700 (PDT)
From: Chiang Brian <chiang.brian@inventec.com>
To: jdelvare@suse.com,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	grant.peltier.jg@renesas.com
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Chiang Brian <chiang.brian@inventec.com>
Subject: [PATCH v4 1/2] dt-bindings: hwmon: (pmbus/isl68137) Add RAA229621 support
Date: Mon,  2 Jun 2025 13:04:14 +0800
Message-Id: <20250602050415.848112-2-chiang.brian@inventec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250602050415.848112-1-chiang.brian@inventec.com>
References: <20250602050415.848112-1-chiang.brian@inventec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device type support for raa229621

Signed-off-by: Chiang Brian <chiang.brian@inventec.com>
---
v1 -> v4:
- Correct the subject and commit message
- Patch kept in sync with series version
- Link to v1: https://lore.kernel.org/all/20250314032055.3125534-1-chiang.brian@inventec.com/

 Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml
index bac5f8e352aa..3dc7f15484d2 100644
--- a/Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml
@@ -56,6 +56,7 @@ properties:
       - renesas,raa228228
       - renesas,raa229001
       - renesas,raa229004
+      - renesas,raa229621
 
   reg:
     maxItems: 1
-- 
2.43.0

