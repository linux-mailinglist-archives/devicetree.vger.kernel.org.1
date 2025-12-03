Return-Path: <devicetree+bounces-244098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A74D3CA08B7
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 18:40:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3BF5308C781
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 17:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B24E325705;
	Wed,  3 Dec 2025 17:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dce7Gp1O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC01A31326B
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 17:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764781706; cv=none; b=qy1IhNXzgQHZbfMDMSDtV9hwCqCgs/QpXPJYsHW/Di/AbJBhuCg/ijRQn0rrOjCqunmKUptLRqWj3vPwgNOQ+qEh8nVbX0FCpViNMQHsljD6kNNv4YwJLUjzk2xePAzRjVaIVuoqVhtAadAu1PtBSlI1Z4l3nsplCDhsTCuRL0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764781706; c=relaxed/simple;
	bh=xXnEx3PQpfAGB++vb471mTrg+QrHjgJwqcNS6ZzHczI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=n3MFjXJbySiRLrqiG+XgjpYTU7tUhILVMCO+m+zDiuCLm7JrjXw++ZOs3N6eHRC+TTXchlTv3k30WVAz1L9V8pFSG4QoQ5y8wKYxiomlnhWri0xgOlyCJ5CXSo/uxsNRFpslfPqhLFrk46ZjOYjNFiyOMOukErn2TknIF+cRJa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dce7Gp1O; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-3434700be69so9738702a91.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 09:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764781704; x=1765386504; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pBJFyu68J6Bp7h4JVdx9Vv54SkiKMXxF2cUFb5Z/EiQ=;
        b=Dce7Gp1OIhNcUOnqMZ3DySoUxw3d+1g60NhCmLB1drzm3kVwZ68+OQuMrtmJCqlAh0
         Q3k3xleBWegFM6x//fFSmDVFLw17Cl/e25R/P0lpNhI15ED0MgSEGzBpo6g5/rcYwZLm
         BE0aI3vlvd3hw2iPB+KSMh/5mtTa+H6H++m955Nfv/w7sShnm24VjFiZxYVPBGiE383h
         +fN9fCYOlYSygx+BwY7gLWhzgzdyqzKl+ECExQsa7pQvT18okaTj7f2hPNEZjd7hZmII
         QU7YnhHX/Kkv4h0LzigXpes7dsd8Tj6Tse8InMXy68kfUkFN+wtzGJtKNqA0tt+WQbku
         ciXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764781704; x=1765386504;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pBJFyu68J6Bp7h4JVdx9Vv54SkiKMXxF2cUFb5Z/EiQ=;
        b=B7NNa2x8bK6qQ9rycomAAOe7bq7QXlJoPfiBg71qqpAgMC92sC5yEUXJMEZwIa1ww6
         OgvZrIZ0oRmV4L7jBydPElgKLg8pCMunAZUWksBvrWv2kH44wYQ4Yk8Osuv18V06/0fs
         c9mqOaTcC7UhztLOF++t2igKfZFPehxWHiqeZvgLLThwQVp7r5Y0YRx3vMfp/fNnJgYQ
         htKneC5zsEsOwleVFVTC68T1RMoyjd0zZbedcrHyB1FYJWwKYUCuUnP4cKdBfMpTVNjD
         rdhHlgD9BLRGvAWgllpFaSRCyAhx2Ec6PMaaozslXTWqfxPhx37f9G+NXp2d6jvuuEsb
         D9nA==
X-Forwarded-Encrypted: i=1; AJvYcCWYj57VSmOlS8/96BmZY6/VPdWMuewpSsORLnYvfSBKM0FP/qLtlFpZl6GxV+3Txx7GyUyFayxCyNIY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4J0Xs33kZoehtTfN3jxZyDqpzwfjipyGdU+l5RWXdQcsXwGrr
	0lijTFJHtzCFVV3UZHNAl8KvJMUkOOphFIVMWugqRbfvLnQ4Gagn/UqK
X-Gm-Gg: ASbGncsKZ59GcudRn1eUA5XCBse6CsqY2UcRlCT60C0Sd+8vS684kdcNV3H68IE4QqK
	CsQ/2swRW1Jnu9B2dte5ulQt6QpPsOtzXvNIYNV6tFdYwIgQpEvg45KtG3z+dx/JeHt0fBoZWZl
	jrG6Yj4IwAigf98A0qry+5dWhSH0ZxYaexxiRdit3T2JZPgORwH0ni4Ha8MbOljF/CSTHGE2gW6
	fOhypjkl52SIhdM/RWdjT5j3D0rwafxn52gNUEO9Ay7YWQa1z+xzqDLMeJg7Du5fi0fflIJvYds
	AxrBYjoL8Wpl2ZqM+U+qvFdre4L55T3WYibuyCMhfjUIBP6L1nLWx0CYnezZ4utztgvjfZBrHfT
	U9CEDQzyGGEMSsFOaRt/6Ftqlx2GJo/cKdwSQOZJmKo/NImcqHfy8cZ5Ij4jyWGnOzQVqa7lJVB
	nTYY6+jI2EPHc5b3XlVPs=
X-Google-Smtp-Source: AGHT+IEOFPrAaqKqsqkA6fVb5DGAdtJMcHhJEEPr2VDB+dUBMUwJgpBspXc6JakMLmnmqpY4L4OeTg==
X-Received: by 2002:a17:90b:5483:b0:341:194:5e82 with SMTP id 98e67ed59e1d1-34912844db6mr3091094a91.30.1764781702242;
        Wed, 03 Dec 2025 09:08:22 -0800 (PST)
Received: from soham-laptop.. ([103.182.158.107])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-349212be927sm2144835a91.4.2025.12.03.09.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 09:08:21 -0800 (PST)
From: Soham Metha <sohammetha01@gmail.com>
To: linux-kernel-mentees@lists.linuxfoundation.org
Cc: shuah@kernel.org,
	skhan@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	Soham Metha <sohammetha01@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] Documentation: remoteproc: fix deadlink
Date: Wed,  3 Dec 2025 22:37:02 +0530
Message-Id: <20251203170702.42769-1-sohammetha01@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The binding file 'gpio-dsp-keystone.txt' has been converted to a DT schema.
The current binding is located at:

    Documentation/devicetree/bindings/gpio/ti,keystone-dsp-gpio.yaml

This change was made in https://lore.kernel.org/all/20250714202850.3011952-1-robh@kernel.org/
and merged in aff0a1701b020c8e6b172f28828fd4f3e6eed41a

Signed-off-by: Soham Metha <sohammetha01@gmail.com>
---
 .../devicetree/bindings/remoteproc/ti,keystone-rproc.txt        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt b/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt
index 463a97c11eff..91f0a3b0c0b2 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt
+++ b/Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt
@@ -66,7 +66,7 @@ The following are the mandatory properties:
 - kick-gpios: 		Should specify the gpio device needed for the virtio IPC
 			stack. This will be used to interrupt the remote processor.
 			The gpio device to be used is as per the bindings in,
-			Documentation/devicetree/bindings/gpio/gpio-dsp-keystone.txt
+			Documentation/devicetree/bindings/gpio/ti,keystone-dsp-gpio.yaml
 
 SoC-specific Required properties:
 ---------------------------------
-- 
2.34.1


