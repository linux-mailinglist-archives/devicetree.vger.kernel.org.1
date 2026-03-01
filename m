Return-Path: <devicetree+bounces-269713-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEcFHHo0pGmnaQUAu9opvQ
	(envelope-from <devicetree+bounces-269713-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 13:43:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C900A1CFAB2
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 13:43:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 214E0300DF79
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 12:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7AC53246E1;
	Sun,  1 Mar 2026 12:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A1386cb/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E5BE54B
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 12:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772368928; cv=none; b=SbaTJq0RJag+2yQkFKl5BW5LJ1dhfvxOcdHB/DeCCw9mp0U7SpZB3KwLjTDJ9Lr/K9zsjBJe8W1ljyhrTf2qxvhzcF94HQlLNSFXS0e/APUhLiRoXUuk1VkP2VH0rQXvXTeSBJhLLc+2Ge1BZ7sEi0DE98wQTgnW9uN8wo5Mbtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772368928; c=relaxed/simple;
	bh=68TTOitMU7bAIrRMPZbF/qMfnanWwr3FiJEjmQRSAQs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Xvo3jM/pmcgVasR37n2ijzvRrfhibFJl0AmuqO2sWH/9HhTXQg+jsXnTsYHWD8EvvhCvOfUYF1nVvADEwkw0KduIX7S+bXwP3nGvSB7UU12PZRaXfB5BkwJ+glMOLCDP8Q8Q+ofwE77gNwEP0fnkiFAT4fR7LpE77RDLRi+A42I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A1386cb/; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-56aa0de09e0so1159075e0c.2
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 04:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772368925; x=1772973725; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5okoGK4HOYT70Ij2zZZqq2yIlW9aGSZvFtA+KNZ5d8Q=;
        b=A1386cb/bqhjF4TAw0HqZgPEEXRj3fw2G4MaaP4l0MCdDzWG+dR49LaaDDaBqaPEEt
         8k8COA3gtFJjyc3M0j2JzuIVOFUONj/DIuQnTkxadK9OT1D206+YwWhZlWfG6Ll4PRNq
         ly5Z9wHx1TNXpP5Qg8p9mhuZyJe7miKHn7zFhuZVd9faz1usB3yxLt0SoLtk6N0m9/Of
         +4ketFOXVRCgO7BglVjJ/gWb5w0UQehRcVlHgHvFCvkaqJ9KG5v/UpliOsFGvKBJ6sJG
         wDOqTzvV0Dn0RTd8KhTiUejDWlCWw2bLRk6fHI47NN+SOBh7M/g+KS1gl8EMQFZ3fl0o
         yr7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772368925; x=1772973725;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5okoGK4HOYT70Ij2zZZqq2yIlW9aGSZvFtA+KNZ5d8Q=;
        b=aVvXlExtqH60hSqyyPxvWOBVCXVE90bGvMU4JgneyB8mu6g4FPUNGy0opGZjb8N3cb
         zIMtQVhNQboaQS58nIyCG/O5h6AbgCIJyQZtREI8mhpNweJtQISgBzgbYWPCPV8FMCPr
         auoA8OuMM3A8+MYfGejrjlNo2LzINUBQfKcyX3JBAjJs5wJd2utZeCd4helbniEqVgEI
         GTsOEHDEyP3pycn5bX3W/ic6Ao1kikvmUW9rWg4miMzhZkfczV0rMQ/nne05Dg76Ww3A
         8KEYrLRcH/aWVnsJq4+ylZEm/+NpLSIRV1kX5WnCWqB3xlX5y7rEwFq/le4k08g+kLj8
         WJeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSXtIvAscvL104yVGXpy4M9QS32L3UAy5uu71HxgNKXZ+MJb/gQo6Jbex7NxKHUeoDzvwUR0whzZiY@vger.kernel.org
X-Gm-Message-State: AOJu0YzgkwvoyyfC82Kcyk1szIRz495RjIJrW275aYHUwVJ9sU5CGKDs
	iRcHdLciOAnUM7IPT4Y573tvz2nVrDLtX28xrEAs163/RH2brOaPSrde2z2tXw==
X-Gm-Gg: ATEYQzz35YqpxmT9Tw1MfsU3vG90xHItwIWuyjyvOQRiHsmACHAEoJIXyuMWTqgPi1K
	kUJ1iHbGYD8QGuFSAebdBdmbJ6YvZUm0YzMy8JcEZz4iVTgtisSQQ5UbWEnGgvdGzaSylNs90oc
	qj+xF+SM1F9oho3+svsJA5ADBDTwDhLgmfBpTHg9MXff4tMB7EMt59/4RIFNUa1FynYEd1hn9yU
	cHPKgh0tuHUK9tYp19C/2Ar8vdbpn0U1Cu/9niVTIUxus3FmVOsZ5su9MdLviJaVfXcgBYS0aVP
	pN2SoaBoA/+g3QllfVyplie8kJxN8y2slWRZ0c2DHpo6uFEppfKjVGE48lcHHRrkf47OjuU2r25
	OroCCb08MpE5Tq/psYtqVT/zra5GLufl3PTkIicWpv5aF9SKI8E/EPYaPvluKOCo5yaA4F3H/Wp
	odWEvqf8kgW7nTfnNNGBumNEdT6d2r6GHW6EDkwEd6F8hUmdkYO3x+S6ouAThHHe+NCRQ=
X-Received: by 2002:a05:6102:418d:b0:5f5:6dc0:e50f with SMTP id ada2fe7eead31-5ff324b58f1mr3169537137.21.1772368925396;
        Sun, 01 Mar 2026 04:42:05 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:2168:1b6:3f93:373f])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e845aabsm10495317137.7.2026.03.01.04.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 04:42:04 -0800 (PST)
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
Subject: [PATCH] ARM: dts: rockchip: Fix RTC compatible on rk3288-phycore-rdk
Date: Sun,  1 Mar 2026 09:41:56 -0300
Message-Id: <20260301124156.473862-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269713-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.64:email,0.0.0.68:email]
X-Rspamd-Queue-Id: C900A1CFAB2
X-Rspamd-Action: no action

According to st,m41t80.yaml, the correct compatible for the RV4162 RTC
is "microcrystal,rv4162".

Fix it accordingly.

This fixes the following dt-schema warning:

rtc@68: failed to match any schema with compatible: ['rv4162']

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts b/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
index 10ce0554d4fc..a878a2632de0 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
@@ -94,7 +94,7 @@ adc@64 {
 	};
 
 	i2c_rtc: rtc@68 {
-		compatible = "rv4162";
+		compatible = "microcrystal,rv4162";
 		reg = <0x68>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2c_rtc_int>;
-- 
2.34.1


