Return-Path: <devicetree+bounces-271168-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iE30MJ1hqGkUuQAAu9opvQ
	(envelope-from <devicetree+bounces-271168-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:45:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4C3204874
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:45:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C921F300D0D1
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 16:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A406A36D9ED;
	Wed,  4 Mar 2026 16:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e5/BzF2R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C32A363090
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 16:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772642713; cv=none; b=Lg5FNFlhk06TqkyEqIrs1n1nqi9v4jADKCraB0MlEeRQbflrz2YBDzaBxlPgjnJawGL6vl9Up8n7nzMiqiZHgNgJvq8YxXlgzmPoZJkb7p8BniypDYB/bsmhT98tWZlsLBUQ8NN8G5F0JUHpVNz62WA/jTP5o3mbqkG6HPEtUPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772642713; c=relaxed/simple;
	bh=BmpCniJA4XFIYMYKfYwadgS+ypzLos/MPracZe7asOY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UJZuoTZHOVjag0OdU1oh8IC7onrRXZzTg4FV3k5xZY32izpKzxjkdHRjSAdFVcC9yxjUrBBQEzeztFXig44JZ7/YN9r5XQlhSh88fvRc5Mch1XZc4KgoCVW5vQY1Bn42U1NRbG+6rNfzRAmCpGC16OQgD0/3OUb5Tul4vScTcts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e5/BzF2R; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-56a973a7bdfso6129233e0c.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772642709; x=1773247509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vSqwphXV0lntnfqs2BswODSP2JF/VYqeGhd0vIuj4qw=;
        b=e5/BzF2R87vq3yXoqx1mLz2IA2ESqIAtjTD9ZXfFkwGgLxGXiWifGRrTLMRCWqwEnE
         8NsoigHSmJumxgrxzl/xmONaAoi7whH2QZpwWWqg9btyHyQduh4uYqs4tOKKNW/e56FB
         hUoc2MXUEtvoZEeaJ2//AnPfVuevkhck6qwR7aGRRsbxSunM+dtN98vMdBKvkwEKQdXb
         oS8HOlCch1cSsTWeYJWMAitROcsP3MCNW22nGuwOtK4GykIdYYzJCPkaF9zEAqcbuBAq
         noeSlrWaCHrteH2t8rKHqE0P2aZsIcdNwfIKpMT3XYUBCE43TFwkXNW1DtSs6ppQTwGF
         Ub1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772642709; x=1773247509;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vSqwphXV0lntnfqs2BswODSP2JF/VYqeGhd0vIuj4qw=;
        b=MQvE+Ouk0ivN4rCcL9pbgrMm1kf5GsferjKd71xO6ubugHBbSsAs6z86l+5voLU9Nw
         fdSLHpdgFTbnPdaZyElN6HGEkK68twG2D8WJp6oaCPDkpNnAPo+E98mdkNjboieymCdx
         QF5sBTUsZLvfyMKFuIrwTozOAtlVHJ0jZzcfH171x2n8E4hgZMGHuul7aj7u2+G2I1Jo
         bT6yA5WY6zudgCouiRQTMdFgJ6HFNEHxi0mIR0plaSxQuAU25bJgox9b9sG+bzg/gaFC
         fbY7lxw60CXKiTTta2AHv2BOyy+dQmDH2hrX7luxyTdgPRAmMEtEEFh7mbBmjrogtapR
         o8/w==
X-Forwarded-Encrypted: i=1; AJvYcCUQQvXsePSVUAFviPiA/Gs1GTosX/ykJgbLGhq7YlJIA42mp+1cfm2jyHSc2OeupCJ7B3w3RdVNwZlm@vger.kernel.org
X-Gm-Message-State: AOJu0YzMygN5VLwiNHFAssU5o1F6cIZVn3yfkKv8c3TcSn34+1dy97YZ
	mKr+u8569IaR0eBQu1wfAwZVmN1T0hFWswAOHJoF9kM8q9YqC2XcJLGp
X-Gm-Gg: ATEYQzxpTRCIOw/hXQn0TtKFOB4PSAHW0bG1nOchyRrcV15Lca9+0/jB4xCcYZxAVwL
	rRbgXrqSgsihybjbq2Uq1gWpTIwNIBRAsuNDuYCqdxP82q7IUMxsA9NeP6YeYyV16N2JNxnUBzy
	jBB5AFzv4PzWpMTLFnkx2fftoMeBKR2SQEYAqJSQHe3b0LzPmWkAp6M5Q3vSq6zvpO1dc+JI2Ez
	tvU4gUYXGYoXI2pFFlGxbW1GWzZAMN5AIiORjTR5OR/3E5PU49TMvba2wIoSQOvKyx6KNCHdZzN
	RxwnlbytQrxfpxEe9Y2E+OTWcb51+ZdZIq9cP1OzI8ULyRw7bgpVCLJcrwiEIKIuvzD7L9YgxnF
	AAQnr+xeqnMbA89M9dJ1YMj0H05G8GtH80rIa0Q9q5T138nVzzq/h6C8fUVqYtBBtel8ZDemDTV
	Obbec1yMAHW7x7P59UjGQeuJZimvHKjzxCcMIImVZFg9seHv2GC9r7fPWmURWpPtNHvf6K5HpkQ
	A0CrBw=
X-Received: by 2002:a05:6102:c8c:b0:5fe:f14:e701 with SMTP id ada2fe7eead31-5ffaaf11d15mr1217828137.24.1772642708940;
        Wed, 04 Mar 2026 08:45:08 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:aef4:cbcc:b059:892f])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e845aabsm20613914137.7.2026.03.04.08.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 08:45:08 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] ARM: dts: rockchip: Fix the trackpad supply on rk3288-veyron-jerry
Date: Wed,  4 Mar 2026 13:44:48 -0300
Message-Id: <20260304164448.1024410-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 5B4C3204874
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271168-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,2c:email]
X-Rspamd-Action: no action

According to hid-over-i2c.yaml, the correct name for the 3.3V supply
is 'vdd-supply'.

Fix it accordingly.

This fixes the following dt-schema warning:

'vcc-supply' does not match any of the regexes: '^pinctrl-[0-9]+$'

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts
index 6894763979f0..0bf03b1ff2ab 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-jerry.dts
@@ -488,7 +488,7 @@ trackpad@2c {
 		interrupts = <RK_PA3 IRQ_TYPE_EDGE_FALLING>;
 		reg = <0x2c>;
 		hid-descr-addr = <0x0020>;
-		vcc-supply = <&vcc33_io>;
+		vdd-supply = <&vcc33_io>;
 		wakeup-source;
 	};
 };
-- 
2.34.1


