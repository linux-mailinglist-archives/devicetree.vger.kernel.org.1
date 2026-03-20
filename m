Return-Path: <devicetree+bounces-278221-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHjaGY8ovWkG7QIAu9opvQ
	(envelope-from <devicetree+bounces-278221-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:59:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CB48F2D92EB
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:59:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17EDF3063D48
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B63BE397E82;
	Fri, 20 Mar 2026 10:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f0IXdxph"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539F8396D0C
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774004319; cv=none; b=SnB66m/ZnfjxASKMOdtG4v95Wk9e/hsKZwwGWGcsKkZBcu104qId9UzKYA5+Wy+gnCrDX1++wV4uLz2ygWbuXDuXW92PYSRnl/20OtMPzXc8VlXZCXxx4+0Fdeo840VsqpF2TcBP023ntxGs9RexuXosfBGrtHJs8T5QmhskFwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774004319; c=relaxed/simple;
	bh=khv4KiOaPus1Er9/vrg3hWk5QJzQe7XCamT/YqqOt3w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ExCyH5DnudRKS5NCepoMudNC5AQL7wpw8rkZ75OPNs2OkL6CQLlJjqFB/lBg0MRMkUmiYkOpifd+0QT2ac2gHNKlkaWdc1ke7rQrd8HVc8o7gIbL3u4q5DlzIPwpIE/UItf73b40ToRJ+cQE8l3sxxpcpquVulwUkyhJlZVaQ+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f0IXdxph; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c648bc907ebso1229939a12.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 03:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774004318; x=1774609118; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8tFuqEw7uEaxrVCM0c2XUrmdxZJJpRpZ/5YMe+0gkds=;
        b=f0IXdxphMkkXthdI9jvje07bCE6oPGh6VkGoNuuSB4Q6QX6y1ODCZExWFvLADkx08S
         Yk40Vr/qYxU0D0SKhu4Rmu0S7A/Z5TUkr8LRF0cL4Toppb6Hl44/8bAfVONd7ZYnFVNp
         mpFW8BkHJDCy2ipExceYINb1op7+YLhaawkWyjFiwEV4o2TeYgKdi5YHcF5qVYy2KOpB
         3CkKfP/b1mzjZEE2yx8U9l+bIUB4f+a9Sx+rZGKDhm28yi4HluL1Gnh102mVrLk4fVq9
         wgDJmhutt5oTqLcths5vxY06OgtUNeRAjuOAqFA0juFw+ckfaKwj/gKVXc/CXqBi7Iji
         Uykg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774004318; x=1774609118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8tFuqEw7uEaxrVCM0c2XUrmdxZJJpRpZ/5YMe+0gkds=;
        b=bc4qVmYbx4hOOgOH9lnoPFwf7D7Qo35uJkb6PtpXwVSlimBCbTqXLuOt/5LEvG4U0h
         X6VJjs/sbF+WbrmXVeJw+b9+fIAwOQtCXFhfEXUqbrss8nGki6gNeXzbJcvwwMpzCMwA
         D1Wx9HfkO4qI2YQ/r3+VbWLxLWawLjfzRRTzCZJHhdT/GdH3Z2S5gGhHbQTaZRYrrAKH
         wF0Ev4/eEPGeJzgsblnSfHWH0Kfwpz5tRLx6qoa2gFyTQRMO9ojnQyLaRnm44cjhmpIy
         HP2fGWiSvU57hlT5JITJP8pA3rwINhDd6DPIxZIwKJhhFuZ0cZAeGtj2ikfeZDV8uxox
         70ag==
X-Gm-Message-State: AOJu0YyHABdql/b4Z9TqgqyCFAE656ZWcVREEIpcigbY+LvSxxlxqbfP
	lJPcaxPlNQQ7IAh9dDHmjiO/pnV0k4pRXBZpNSqBWGGiogBrWosfkMDi
X-Gm-Gg: ATEYQzxqDtaOdzokQJZPAT4Ye+s4zwC+MhIQs5zSCC9NDVtWsfw/SSiqIJuj1JHaZpG
	u0MtC/DkPS46hP51AV297g25EcuEl6xyqYLbXskDd6zq2aK9nGzwCZBykKTpZxaAKo7CA2iR+FG
	EKXn6iQbPYCt9asC+2XOKgwyednmR+elZpNyV7J93jHJHjZUCtsAY5LyGtK8XAUIgtDd33PHFFI
	orlPCuWKpCc+w+xFdJx6lwJR/hzPoGTC1TDp50+TW0x0zb4/aiGoTfESlGak3T9sgYkbCnCM1FG
	BPHoDZS8IQhAC9YOCejfj+65hxxSgYQZFQQAjTryLJe7x/YlwjHgQaHOuMs1shHUQnfses6TAsH
	iRtNIiTBVkbb1/SSJcdmLVXrINubIPQKMPDP/iNaw/5Vwgf9OamX1YPvWKM6p0TLLcGD5iEqfWD
	mFefSCAHlLrHXOu1KNi915IqQgI5Aa21lakk67epRJPiaezFDajFgIqwwWzXrBpPMubfMwayNqS
	VcMxf20HmflAxTJkw==
X-Received: by 2002:a17:903:244b:b0:2ae:567f:fd7f with SMTP id d9443c01a7336-2b0827e926bmr23836145ad.53.1774004317735;
        Fri, 20 Mar 2026 03:58:37 -0700 (PDT)
Received: from buffalo-ssd.taila54753.ts.net (M014013071096.v4.enabler.ne.jp. [14.13.71.96])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b083516eacsm25636405ad.15.2026.03.20.03.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 03:58:37 -0700 (PDT)
From: Akari Tsuyukusa <akkun11.open@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Akari Tsuyukusa <akkun11.open@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: mediatek: Add Lenovo YOGA Tablet 10 (Wi-Fi)
Date: Fri, 20 Mar 2026 19:58:21 +0900
Message-ID: <20260320105822.447337-2-akkun11.open@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260320105822.447337-1-akkun11.open@gmail.com>
References: <20260320105822.447337-1-akkun11.open@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278221-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.714];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: CB48F2D92EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add an entry for Lenovo YOGA Tablet 10 (Wi-Fi) tablet board,
named b8000-f.

It belongs to Lenovo's "blade" product family, a codename found in the
stock Android "ro.product.board" property (e.g., "blade10_row_wifi" for
B8000-F and "blade8_row_3gdata" for B6000-H).

The "blade" family includes several variants with different screen sizes
and connectivity:

YOGA Tablet 8 (8-inch display)
B6000-F  : Wi-Fi
B6000-H  : Wi-Fi + 3G (Data only)
B6000-HV : Wi-Fi + 3G (Voice)

YOGA Tablet 10 (10-inch display)
B8000-F  : Wi-Fi
B8000-H  : Wi-Fi + 3G (Data only)

These devices feature 1GB of RAM and powered by MediaTek MT8125 or MT8389
SoC. Since these SoCs are tablet-oriented variants of MT6589,
they are grouped under the "mediatek,mt6589" compatible string.

Signed-off-by: Akari Tsuyukusa <akkun11.open@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
No changes from v2, so added Acked-by received in v2.

 Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 382d0eb4d0af..ab3c5b1152f0 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -44,6 +44,7 @@ properties:
       - items:
           - enum:
               - fairphone,fp1
+              - lenovo,b8000-f
               - mundoreader,bq-aquaris5
           - const: mediatek,mt6589
       - items:
-- 
2.53.0


