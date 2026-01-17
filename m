Return-Path: <devicetree+bounces-256367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2C2D38D4D
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 10:12:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A7E1C30198F4
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 09:12:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B63C232B9A0;
	Sat, 17 Jan 2026 09:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CFYlQ8zV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 874D9301717
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 09:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768641166; cv=none; b=oFgptBBXlkYClBiWOEifyLu9Dwa1OuCuKLucnP7vgXlJkHB5vGgy+XUVPKtD+V1LugXlpxALVXodRxgQr71Hw6WWiLW+O0/hNOvmU2eF8rziAIq52sit1+n3HZuXOKC0XVlvFsgyIKS81cVyg5/ualnmEV9ZbtQESvEfnEXwJOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768641166; c=relaxed/simple;
	bh=azcZbVnhaqcYPvbtuV79VjUbEUhlxyg9oKvTSqV9gl0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BRQuf4/pCaQwXnoep0bLxlht0Pm49a5xCoQKCCzDMTCdTCofGEf9fYg5KN3MrDQe947ZBcYipCsLjSfui++IwvK92Q2D7HBucC6fYkyjMV+BAfWfePt9b9aYVxkxLOV9uUcFF2/RRPigPpYTuT6PscIAJCF8McXoWrL5sfYhDTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CFYlQ8zV; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-81ecbdfdcebso1694342b3a.1
        for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 01:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768641165; x=1769245965; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=M+JCaXQ16amp6hMUtWaxk+pdDmeoh4XrN4ClHnLFtuU=;
        b=CFYlQ8zVvcV/aDW8KaILOl140CViD0BHjmCM8+VhFpO9q1KoJqeKGl6DIoVHCN74US
         uHNtVlGI66NbtqfDZcSZRSTT6ngAScXGyEZjlhFhuP7tun9wgvBOXAC6f5tbnqLpyALf
         yoYm/r0B1zoizXS35LDnVxCra1ZXxyLjigZmCXEPHZKW2LiAP7FHgOkPZ8AAK/oepLUM
         AWv1YZmiWy2uX/nY7SqPKLmnxk+8ug5iK9UZ0vIQ3s6kS1vISguJMfaIvyeU0BFc6BnO
         ybKYVhtRuMXOU6AZua4/2CiT/ySdhEfrFH6MkAzgKA3yfuxYAgtoRn6+YU0fOKr0CQ7D
         5iIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768641165; x=1769245965;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M+JCaXQ16amp6hMUtWaxk+pdDmeoh4XrN4ClHnLFtuU=;
        b=EWyHbHW3rkTtB5dPu09dqGI/ICOwfdIfAN8Mi4TC7MXFIlednhBwEvNJFXb9yhiglm
         4YS1wlYyG09j9M1RWhZseiwZaNQzF3EZZH7/OphbKdT8G4Zp/Gcaz0K7CqTG5nATSroQ
         Lc5Vf4pg4cbNd8r7X0kPegbbWZVEscue0xWf8HB9GUkeTAFzYiJMdQVWmsxKFbowKs4u
         wK2QJOkFUz6ouJ1gB9UnDRHRMsW7QekEjn5BSx6ItJX77StFNyIFiqwXI+3DfY+CQlb1
         fgYnMsEFEyiMdajFA6DwNBGvwGta3mvDuH0FZFTW5/GPNEtjTYzRgn7QP9Z7Fh/c+FeI
         vhhw==
X-Forwarded-Encrypted: i=1; AJvYcCXhKGg7WdiQtnVIO11jLyrAaowdAE+vj6PB2LaDyi3jlGqzvMgALNg7U/Os6yh12er/Vs7o1bZrMBvb@vger.kernel.org
X-Gm-Message-State: AOJu0Yys+DPv6fRKv4aQ8lSOpsqBJiKAj7XSbEkEXxM+/onW9yC6f7bn
	XpzXe5qfB+HboxwOsZ314CKE++iwSmoJPLAUlRttsFLV2UAhAMscDWWu
X-Gm-Gg: AY/fxX7G4OvYlt2gRBQVNR5si6+/ibdA1qad7s2tmn6mAa/m+bKioJUgtOBel/+fub4
	NPi9P40WBTrA6pbpFq49TdB83bcqIPd4IQJW63YePQ5nOs/Pc+qARENLp+BS6P5HqBv1+Is+qmh
	r9r05K14cfLUKOxEm52nMHrqgas6jcYtdNAI8RCLlYb2G1wnSjyelxcJtRp7lNhNfNWdvoOHPiR
	8K7Vl4adWCQFedQPDbF/+BC2HFuxrKays96XXU69q/9SGVUUqNnIrR0GhA6gBcFWuAwYKr4VbnS
	hErueofAPOgffvQirAWIgHN3UM+w0qjsp4ZuOJQCao5TSBv0YlAbqXtLNpap5TfGATG/hBQI2MB
	qAz2xy8yYKcBYxlV3goD3IYaLq5boFmbQpUSpqWxgoVpXSpfxMf//4VRJlD14Agsnc0xjAX8tiy
	OeIcznu1pk3mTowk/6lfEnzHgBJKAjB9ayIW5WaOvKQVT3SZw9e9w1bRAl/VJl7wlA2AiAWLa5K
	CK743rprRJpq3FxHmptaUP/RL7j/Wohgrt42SLJwiAaDrg=
X-Received: by 2002:a05:6a00:2e09:b0:819:bad0:11c6 with SMTP id d2e1a72fcca58-81fa1881497mr4768446b3a.66.1768641164762;
        Sat, 17 Jan 2026 01:12:44 -0800 (PST)
Received: from c8971f1abf06.ap-southeast-2.compute.internal (ec2-54-252-206-51.ap-southeast-2.compute.amazonaws.com. [54.252.206.51])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa1278460sm4021131b3a.38.2026.01.17.01.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jan 2026 01:12:44 -0800 (PST)
From: Weigang He <geoffreyhe2@gmail.com>
To: robh@kernel.org,
	saravanak@google.com
Cc: grant.likely@secretlab.ca,
	shawn.guo@linaro.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	Weigang He <geoffreyhe2@gmail.com>
Subject: [PATCH] of: fix reference count leak in of_alias_scan()
Date: Sat, 17 Jan 2026 09:12:38 +0000
Message-Id: <20260117091238.481243-1-geoffreyhe2@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

of_find_node_by_path() returns a device_node with its refcount
incremented. When kstrtoint() fails or dt_alloc() fails, the function
continues to the next iteration without calling of_node_put(), causing
a reference count leak.

Add of_node_put(np) before continue on both error paths to properly
release the device_node reference.

Fixes: 611cad720148 ("dt: add of_alias_scan and of_alias_get_id")
Cc: stable@vger.kernel.org
Signed-off-by: Weigang He <geoffreyhe2@gmail.com>
---
 drivers/of/base.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 0b65039ece53a..57420806c1a2b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1942,13 +1942,17 @@ void of_alias_scan(void * (*dt_alloc)(u64 size, u64 align))
 			end--;
 		len = end - start;
 
-		if (kstrtoint(end, 10, &id) < 0)
+		if (kstrtoint(end, 10, &id) < 0) {
+			of_node_put(np);
 			continue;
+		}
 
 		/* Allocate an alias_prop with enough space for the stem */
 		ap = dt_alloc(sizeof(*ap) + len + 1, __alignof__(*ap));
-		if (!ap)
+		if (!ap) {
+			of_node_put(np);
 			continue;
+		}
 		memset(ap, 0, sizeof(*ap) + len + 1);
 		ap->alias = start;
 		of_alias_add(ap, np, id, start, len);
-- 
2.34.1


