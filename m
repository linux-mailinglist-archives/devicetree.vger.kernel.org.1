Return-Path: <devicetree+bounces-67352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA918C7A8E
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 18:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CFCE3B22438
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 16:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 688471EA87;
	Thu, 16 May 2024 16:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b="LnDRW9sO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF86079DF
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 16:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715877745; cv=none; b=lA5PW1wEd46G/t5q2PCSCiuG9cTbz7rqqExAwMYxQQi3E1wgWTDuqs7nS/K16b9vB7G58pGb+KG7yjG/icC7aQnWtOKOAvOSac23pLtQdIo2Jww8yo6cYmLsd/8QePVM275CyeI8UHg0NAxQhSJghpI7tg6Qj7NSUqaKoCSDuOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715877745; c=relaxed/simple;
	bh=UwgZknUu6CAOz/IR9be36P6hpO03NDzOxnGjt8+Y30I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=glIlzGPHtrDrig0J7CJIx4w/IX6jJMhceqzVGKxYkgVxJ2ahxXvaFN0eD5k3Ceng7feHOHuJbGPkeTQ569+dk9m+J0vXSdJXNsSl2McrgCdfsJKF+wUNkFWVytfFfbV17k5ua/Q2HqoiQnljg9hpY1rbaLkOXrttsGRH85GXZug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=melexis.com; spf=pass smtp.mailfrom=melexis.com; dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b=LnDRW9sO; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=melexis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=melexis.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a59cf8140d0so312852266b.3
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 09:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1715877742; x=1716482542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8dfDoFjby3SyG/aRSMt4bJnHeuy60vGajFgy+PGk0RM=;
        b=LnDRW9sOcAzbgiinfza8PjVTnmLmCzl+CbVJ8rP1KXbIL7jn/FpurtjlBEvzn5JWCk
         aL1UMskdCNJCbdObuckYMUpznBzfV43O4sCUBe82VWLfOC6kgiwOCE0Y4k9X1pqLejZJ
         P9M0A+CPTLy4dquCLxTQijw6o15tfsnCUZ0aUw+c2YaIwjp3CPJJxrkrlxp/9A12SKvh
         3MggeZxtfYb55gaI23XSzDnzsen4OK+FwcxlVaMz8I0K+q8ZwMReBTskatOWwMiV4sOt
         Ys34YvLop5YRZ6wVGEmJLcg1Hnp6OlmjnsfODpDRqTpih55nStVXuRbx1aI83gYrOllC
         K+ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715877742; x=1716482542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8dfDoFjby3SyG/aRSMt4bJnHeuy60vGajFgy+PGk0RM=;
        b=O0Z0cLXH/tyO0JSZndG/uKjeBFDbwYvmX3VYN0znIgPlR0WakNfVHgFboAcR+OgbHg
         62+W3S+9x4TaZRokWrsUO1qw1UsEMEeEtG0T+kjfV7Gj3l4Hd8xm0cJc+Qc6nYTIlEso
         kTmPaY0Nw9sVnhYZV6n8Ia5sk6w/ppkLNQ8m76Vh1lvt4qTHDcsqyzgEVn1OsR1JnQJd
         CbEcg6PgyX0LxAT8dceENGrVqOtk5VF9lXVmAF6p8k+As9xqNSNyHl+bVp3PrybbqWhU
         0rF5eKuNp0OFGi/6ddsNaP79Y2sxL5aFrCsGrlOD+HKe91IDBaoruuTDIBtXeO2k+zFa
         AF2g==
X-Forwarded-Encrypted: i=1; AJvYcCXA5/pbNq94AG3zI8LZYMbbqUIGN1z3P6FMP9rPaTYd15AVz3cNBtM9ecRs5VcivM6tLM33xyNgzw+NYAgNALuRc7zsOG9qfEyuvQ==
X-Gm-Message-State: AOJu0YyG0Sb4/HN/il3yaDHIoNZ4cuBVxA0x9J7REMilLHFyH8shX0y0
	OKsXMzlHKLsZwDtQb3JMAvTxfS1fe3BNuyQK4Ey4CTVtpTkPVnHNsMoBoH6t2Q==
X-Google-Smtp-Source: AGHT+IHHSSq+yHl61xDILgBVZtLr68A2+EBy/A0zA/FYVAkD1jgORtv0oxqn9sts+GSSH2kJCM/fPQ==
X-Received: by 2002:a17:907:7d8b:b0:a5a:669c:286b with SMTP id a640c23a62f3a-a5a669c290emr975549666b.19.1715877742286;
        Thu, 16 May 2024 09:42:22 -0700 (PDT)
Received: from melexis ([91.192.181.19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781d342sm1006647266b.6.2024.05.16.09.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 09:42:22 -0700 (PDT)
From: Volodymyr Kharuk <vkh@melexis.com>
To: <linux-media@vger.kernel.org>
Cc: Andrii Kyselov <ays@melexis.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Volodymyr Kharuk <vkh@melexis.com>
Subject: [PATCH v6 07/10] media: v4l: ctrls: Add user control base for mlx7502x
Date: Thu, 16 May 2024 19:41:52 +0300
Message-Id: <4fa9a631f1435c799324cc5689e12f454ee6c904.1715871189.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1715871189.git.vkh@melexis.com>
References: <cover.1715871189.git.vkh@melexis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a control base for mlx7502x and reserve 16 controls.

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 include/uapi/linux/v4l2-controls.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index 3ac204818bdf..224a0f6b888c 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -216,6 +216,12 @@ enum v4l2_colorfx {
  */
 #define V4L2_CID_USER_THP7312_BASE		(V4L2_CID_USER_BASE + 0x11c0)
 
+/*
+ * The base for Melexis ToF 7502x driver controls.
+ * We reserve 16 controls for this driver.
+ */
+#define V4L2_CID_USER_MLX7502X_BASE		(V4L2_CID_USER_BASE + 0x11d0)
+
 /* MPEG-class control IDs */
 /* The MPEG controls are applicable to all codec controls
  * and the 'MPEG' part of the define is historical */
-- 
BR,
Volodymyr Kharuk


