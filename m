Return-Path: <devicetree+bounces-311230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tn30MQ4BLWqHYwQAu9opvQ
	(envelope-from <devicetree+bounces-311230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:04:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B0C67DE9E
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:04:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Dqkxvb1x;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311230-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311230-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFCAF34372D9
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 06:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99717389108;
	Sat, 13 Jun 2026 06:58:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A6B39937C
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 06:58:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781333931; cv=none; b=MoWUpaXoPHVlUANzXz5+af1Q0Upz8U8MF4TJgYh677ZvYjMOwRmhTRLeQz68vF3MtmFusD37KkIqb5yKdFv3pgnu2qAfmkJlK+nRxGWFJLKB9XXebK5h+j3sem19r5kRIN3qVdZRoyBuUl7lZswcj4+InCJBy2KALMz/6lAUt0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781333931; c=relaxed/simple;
	bh=+oC/cphUq61z1tUYe/It2wm8zgDiOcsdp+YquhThWMc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=K6qme0wMb0hGCj9zFZZlLSfyqQdwz9JhThfCqZqv/muvoQvdO6WRlTC6LdFeab77gXqdUKmkXCo29KCO2zt7FyWB6eG8aZFXfD8/zl0FW0s23NmiBdsjOULJNYrszx+q/LTMsq4rIZtv7bqQ9y3LQvoj0u0dOsgUrmwXpryaiVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dqkxvb1x; arc=none smtp.client-ip=209.85.128.52
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-490ac357c55so15187155e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 23:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333924; x=1781938724; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6qXDWY05NWH/jJuuAS5m9EpuxlsKXS/Zj0XFrGsO4MM=;
        b=Dqkxvb1xPdmE/QivkU0Tep8gUL6/WD4MmKfUCtrgNDooB2RHfshyYYkXYndpy+BVlO
         H5ycKTW3luL+Vm2DsNGh866zz1NAMBj0WQIzrrOMZdOaiML64q3QeAGQQmoWqLjrodxo
         d3vuSFeE/8eRR3NiFWyrYVw7d3jNuQC6+9mUlKfJuhPwkTg/JLGEzqM5BjasBGr/jgbN
         IQhRp4xg/89+FG8GcomlLt7v8fXaD8LLQ0p4Cjl4H3oe1Nwyg05sq8Ud3BmioLiYs+Hx
         YwbjzdpCO4po64DJzKSLidxm0ZBLr872i9boDOEk19PHKeJU/slYDMvpkxHE1QFwYrf3
         dK2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333924; x=1781938724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6qXDWY05NWH/jJuuAS5m9EpuxlsKXS/Zj0XFrGsO4MM=;
        b=jtBQSDBJxgf5bITS4qJXz2ZeS8Nxq+tyAlkljVG1os6Xcdj37Jl9hKv/HaXNYrbevi
         KkhUh7Q+fB4AsI8ztBXqLY6QY3qry56xaElzil1esvyo0ZEtaqHcV5Yvf0tH2J1gGLYe
         uBrwzb3hcChzP2IqXdgY4CUfqa2lg7H6p3V62WfTKwAEfVhJ5CYMMcOex1EMuxl+MyKV
         pIN61F1FKaZ11kaU+Is79uebnIz+EDsBMVbiMSAfIpQNFATTLvuhVpUyGGfSdZpF4Sla
         8eM2w0opzTl5x7UTG9Zk4msoLACDnWWncPP6fc4oftqqZEEKiQVgAcMJBPgQoJj52aiS
         xv5g==
X-Forwarded-Encrypted: i=1; AFNElJ8zqg+3OJK6wXrLMPd4ZLcNUOkWYzYmfKJ/VNk6NqVgZb9qo/7qXsdnzYuiT0sq5I2i4fbJ4pTPLcSe@vger.kernel.org
X-Gm-Message-State: AOJu0YxYLSCTFBlIprE6vDJboqO855Pk902ZwEotl3ENVvDQ6Nucv1wL
	dVokCkX4s197GDNo8x/P51lXX/9Y0nKhvueEROcG1A51qHNlJbP5cha8
X-Gm-Gg: Acq92OH02Lg6sBP1VBIB0cKyl4Yk68KJlBPqVYD85naxHF9EgusxExuHHvM2Dx05wwH
	QG/E1Y1NizlBNPqeTIMefS5w4Y8NRPeu3OmgvTAqsXYTXHuDzNOTom244RD2LHf+la6xvUDeAXy
	rWx4+CS5l4Xfga0iMWJacrKEVwsUlu/WDNLwkJ2q/TVRguFnazx7Izabc37fIQwvQysN+iusjou
	x193IsF9M2+XboEvSiGuHdSQmakWn8ztJm2QBV4z3MoukZugWrajiykcqPho50GVnod6FfNDOvI
	6x6JZqPKkOBY8PbbP0jORqO8eNzKW+IjRv6UljeAux/VRRZTSYK774iGc01JNWoQqqmryu1LQkL
	VrjKIeDaLnKKAfWw8hspZUduVOqFNkyR5gFEu1B8dzzRS8HTpoUGI3zwDE9G4T8K6fLqLT0DAr5
	eqq9IUs3qnXLgnqAZCSjfMySvXNPcbdGlVJL5350dmzw==
X-Received: by 2002:a05:600c:46c4:b0:490:b355:9c8c with SMTP id 5b1f17b1804b1-490ec4fbcb7mr81233115e9.23.1781333924116;
        Fri, 12 Jun 2026 23:58:44 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:43 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	xxm@rock-chips.com,
	chaoyi.chen@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	jonas@kwiboo.se,
	Midgy BALON <midgy971@gmail.com>
Subject: [RFC PATCH v4 9/9] pmdomain: rockchip: Add a regulator to the RK3568 NPU power domain
Date: Sat, 13 Jun 2026 09:01:16 +0200
Message-Id: <20260613070116.438906-10-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260613070116.438906-1-midgy971@gmail.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311230-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linux.dev,rock-chips.com,cknow-tech.com,kwiboo.se,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ulf.hansson@linaro.org,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-pm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:xxm@rock-chips.com,m:chaoyi.chen@rock-chips.com,m:finley.xiao@rock-chips.com,m:diederik@cknow-tech.com,m:jonas@kwiboo.se,m:midgy971@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 35B0C67DE9E

From: Midgy BALON <midgy971@gmail.com>

The RK3568 NPU rail (vdd_npu) needs to be enabled before the domain is
powered on and disabled after it is powered off. Give DOMAIN_RK3568 a
regulator parameter (like DOMAIN_RK3588 already has) so the NPU domain
can set need_regulator, letting genpd manage the rail wired up as the
domain's domain-supply instead of marking it always-on in DT.

Suggested-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 36 ++++++++++++++++++--------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 490bbb1d1d8e8..19db307e3811d 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -138,6 +138,20 @@ struct rockchip_pmu {
 	.active_wakeup = wakeup,			\
 }
 
+#define DOMAIN_M_R(_name, pwr, status, req, idle, ack, wakeup, regulator)	\
+{							\
+	.name = _name,				\
+	.pwr_w_mask = (pwr) << 16,			\
+	.pwr_mask = (pwr),				\
+	.status_mask = (status),			\
+	.req_w_mask = (req) << 16,			\
+	.req_mask = (req),				\
+	.idle_mask = (idle),				\
+	.ack_mask = (ack),				\
+	.active_wakeup = wakeup,			\
+	.need_regulator = regulator,			\
+}
+
 #define DOMAIN_M_G(_name, pwr, status, req, idle, ack, g_mask, wakeup, keepon)	\
 {							\
 	.name = _name,					\
@@ -241,8 +255,8 @@ struct rockchip_pmu {
 #define DOMAIN_RK3562(name, pwr, req, g_mask, mem, wakeup)		\
 	DOMAIN_M_G_SD(name, pwr, pwr, req, req, req, g_mask, mem, wakeup, false)
 
-#define DOMAIN_RK3568(name, pwr, req, wakeup)		\
-	DOMAIN_M(name, pwr, pwr, req, req, req, wakeup)
+#define DOMAIN_RK3568(name, pwr, req, wakeup, regulator)		\
+	DOMAIN_M_R(name, pwr, pwr, req, req, req, wakeup, regulator)
 
 #define DOMAIN_RK3576(name, p_offset, pwr, status, r_status, r_offset, req, idle, g_mask, wakeup)	\
 	DOMAIN_M_O_R_G(name, p_offset, pwr, status, 0, r_status, r_status, r_offset, req, idle, idle, g_mask, wakeup)
@@ -1274,15 +1288,15 @@ static const struct rockchip_domain_info rk3562_pm_domains[] = {
 };
 
 static const struct rockchip_domain_info rk3568_pm_domains[] = {
-	[RK3568_PD_NPU]		= DOMAIN_RK3568("npu",  BIT(1), BIT(2),  false),
-	[RK3568_PD_GPU]		= DOMAIN_RK3568("gpu",  BIT(0), BIT(1),  false),
-	[RK3568_PD_VI]		= DOMAIN_RK3568("vi",   BIT(6), BIT(3),  false),
-	[RK3568_PD_VO]		= DOMAIN_RK3568("vo",   BIT(7), BIT(4),  false),
-	[RK3568_PD_RGA]		= DOMAIN_RK3568("rga",  BIT(5), BIT(5),  false),
-	[RK3568_PD_VPU]		= DOMAIN_RK3568("vpu",  BIT(2), BIT(6),  false),
-	[RK3568_PD_RKVDEC]	= DOMAIN_RK3568("vdec", BIT(4), BIT(8),  false),
-	[RK3568_PD_RKVENC]	= DOMAIN_RK3568("venc", BIT(3), BIT(7),  false),
-	[RK3568_PD_PIPE]	= DOMAIN_RK3568("pipe", BIT(8), BIT(11), false),
+	[RK3568_PD_NPU]		= DOMAIN_RK3568("npu",  BIT(1), BIT(2),  false, true),
+	[RK3568_PD_GPU]		= DOMAIN_RK3568("gpu",  BIT(0), BIT(1),  false, false),
+	[RK3568_PD_VI]		= DOMAIN_RK3568("vi",   BIT(6), BIT(3),  false, false),
+	[RK3568_PD_VO]		= DOMAIN_RK3568("vo",   BIT(7), BIT(4),  false, false),
+	[RK3568_PD_RGA]		= DOMAIN_RK3568("rga",  BIT(5), BIT(5),  false, false),
+	[RK3568_PD_VPU]		= DOMAIN_RK3568("vpu",  BIT(2), BIT(6),  false, false),
+	[RK3568_PD_RKVDEC]	= DOMAIN_RK3568("vdec", BIT(4), BIT(8),  false, false),
+	[RK3568_PD_RKVENC]	= DOMAIN_RK3568("venc", BIT(3), BIT(7),  false, false),
+	[RK3568_PD_PIPE]	= DOMAIN_RK3568("pipe", BIT(8), BIT(11), false, false),
 };
 
 static const struct rockchip_domain_info rk3576_pm_domains[] = {
-- 
2.39.5


