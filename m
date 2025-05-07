Return-Path: <devicetree+bounces-174828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A49AAECF8
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:23:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55278506D8A
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1056928F507;
	Wed,  7 May 2025 20:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mJFvkfJ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5039328ECC9
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649365; cv=none; b=Khdu72Q8Wm10CIZKMYejpZMQegMYg7C/loirK6K64T1X0PpJkpkuT9MRRw7Oq9U0J6vxVbB60E/oDfgL4NrKLEuP/jlJj5q2p7G+JpG2UQomJz5MNKRi8kDTcexI6njp5troFyOmBtI1m29VKXbGwi+f8Z/B/qCf1IUS7G/XyXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649365; c=relaxed/simple;
	bh=WJi6HvyjJdNcHB0v4nqr7RZCPhse/6XW11/HE1nhANg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O9uemwhIo7c3DmKZKauMxhEnMwR0f/rhLtIre21UaA1VjBFKR1JT6pOVWwt6FxV8RyJNTOPs8vVpzSPW6RNtCU5qVbLXe0tgxiN1zOVUo4UlbGHUsWU1KWxFYt+GfNqcjF4vLTBSg/NCDnfjqrloniGtvGRph5UAW661MsJUxLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mJFvkfJ8; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-72c47631b4cso135857a34.1
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649360; x=1747254160; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CStNfNX+Qe9CAKa9kWGR0bBTgEey43qr4WYZEcf8hj0=;
        b=mJFvkfJ8SIp/+DaKhHzjmxho+8kl6SUxkg4ufcDNda4vL88D7bSMjQnXJ1nE9v08De
         Ui1t/RAJMw9AwsxifDFhQiqvbLzGuBMK3i7V1Oq0+4t2JlndzhbNzsAMniZQ0H7URANA
         ipKBfYH2cWtSAqJgz+AYiQbv4lV6d0sVJ4g4CXYjYgzAXts4Rvn50c4hHkHw3/UN+PFL
         B4EPGgaDGmiHjFTcSjs/I1wLReqvTJdgWG+K2RnqmSYKw2TLXNeur6ksivpvh/kRvL1W
         Ffp1lVF6ge41C3Y7BrCNXLz43i27Xfrc7ZmitOlzAZomrg2ny6phGuHWnWZy2BjFTPzp
         agQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649360; x=1747254160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CStNfNX+Qe9CAKa9kWGR0bBTgEey43qr4WYZEcf8hj0=;
        b=YbRA1UGQnP4F3n1TPlGT5SHK5XQinWN7yCqF14vqbj6uyoi2OiEA73oWVPnsymEyK7
         Hl7lI5FLt/b1hzt/7IxUtgGZQvzP8Mww5Y8gMENlD5rjBFU0GYdINwVr9+vVHJFu8BGr
         k7qXBSYre+gAmswIbbyvcBQifLMl6CV2Ulx3Rjs9wkGLaGgVs+yAimimUgUxq12jPr/a
         W53HK+cn0C7nGPz1K1/o/gxAxLyBGkR21esj9j0gC6rpuiAoqBQUd1t3b8zfV3W/CcQU
         3qVzFGfnLlqss4JPbH0WBWdhZopk+WhrNT2+ukfK9IGo5JjnMcbON7FbtFjmzs5BTdK4
         417w==
X-Gm-Message-State: AOJu0YwKgEzKZtlz32ZAiUwQuqtsDhp6BuGmIqmFLhHyGRxYRXwgHyNj
	32H4mO9YqnPnoKiGunTo0e2DVIoshvSSHP4SkzNV+lPQ0AmgRVCa
X-Gm-Gg: ASbGncsY2xXIUQyZ1LcCB+R4DSrE9pDMsMcl066Fz96CA1casa9IpBuX2wHsYCgByY2
	OteisKe81rOvPu43jjxGzfJ3tEEyPQU8FuKvoaN++/VpaOWb9xAVik+2ZK5Q+R5Ii50ALsRBlr2
	GineHGzjnL7rbc398xlTq1skw56lkwdy5Y7W88CGrdq39Fyw30HQE9QbRjLXofocUOggNrypPsr
	VnGzT0+MBi/nkiqrHTpWoh/C/VItviMRdZ1hTbBWRinTzFmvpqVondY/ggcTBHG6vGsV9DoaA6W
	fSGDMTO9EQvQVkRVcOvS/Tf5Qu6dNYK0xWoEGfU6I6Qz6cLfuQFDNA8cwgsP
X-Google-Smtp-Source: AGHT+IHU/L1zNpnFPbQN5H7v31jrky1fO0rvKzweVlqImDkjzQ6zRsRlAWp/aFFj145iJs3SabcqmA==
X-Received: by 2002:a05:6830:4410:b0:72b:9cc7:25c4 with SMTP id 46e09a7af769-7321c9bc300mr462737a34.22.1746649360382;
        Wed, 07 May 2025 13:22:40 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:40 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 17/24] dt-bindings: sram: sunxi-sram: Add H616 SRAM C compatible
Date: Wed,  7 May 2025 15:19:36 -0500
Message-ID: <20250507201943.330111-18-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add a compatible string for the H616 SRAM C region which is
functionally similar to the A64 SRAM C region.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/sram/allwinner,sun4i-a10-system-control.yaml     | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
index a7236f7db4ec..976d3320c803 100644
--- a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
+++ b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
@@ -102,7 +102,9 @@ patternProperties:
                       - allwinner,sun7i-a20-sram-d
                   - const: allwinner,sun4i-a10-sram-d
               - items:
-                  - const: allwinner,sun50i-h6-sram-c
+                  - enum:
+                      - allwinner,sun50i-h6-sram-c
+                      - allwinner,sun50i-h616-sram-c
                   - const: allwinner,sun50i-a64-sram-c
 
 required:
-- 
2.43.0


