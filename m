Return-Path: <devicetree+bounces-311705-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D700GKahL2oMDwUAu9opvQ
	(envelope-from <devicetree+bounces-311705-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:54:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7AD683F53
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:54:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=gYyhofKn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311705-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311705-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD78030125C8
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 444B83B38B0;
	Mon, 15 Jun 2026 06:50:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91ADE3B2D24
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 06:50:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781506235; cv=none; b=vBX4Di3OXguwDo0zqz5tIcpXStbLr6xHY2OH40NqmxWazHC1tctcPFlhqJg5YQ0V9nuOrKGSyvxetuB2I63NSMzaGEh4YUfASw8mLaaK8v1rJLTAEHVbgr+jjTp+ExL8NkE7tQU2s9SSfVcw8kZsaOixU71Sm8gwQlMlOnYSXfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781506235; c=relaxed/simple;
	bh=VjTynNhoL7OqpjBeVgYrniPDPsDKrrq3UKagVD/oo8s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eCMY0hvvgvezVjI1JENSp7NSXah2jTJ/qs3l7QGPOx4n9CnV9wCtYAHJ6BqYJZLDOVpH0FMQcGzu6nWLznPo91hKyZeTQh/Mc6thqb5m1GBsyr5pD9iF4xjVCC6mrIuLzfh+B9Pn0ZJh5NPtpAoRk88CK9IaCvaX47uKi33u7Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gYyhofKn; arc=none smtp.client-ip=74.125.82.178
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-304e83724bfso4118625eec.0
        for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 23:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781506233; x=1782111033; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IHx1+R/J17dYEVk2E+ls+XsmeltEygUylDakA0bf7co=;
        b=gYyhofKnwGCEQDHN9ALZrICg7UX4b+XWUXa/gvolWRk8+rNc3t3RYYUsk27EY7HqY1
         ER6zo7ZeVpvr/7Y0HNp6b2V/y+nLYwwqbLKDYuMuETSCq1XwrGojDVld2iWBhyxDIPDM
         4ZEryJdd7VhKlOTRhNSTGHMAHBq5AhJIIrYn4ffkAA68KIIbT8UwG5ssq8CvpzH4Z8fu
         uZrI1s/WxNteQb7KR+bxf7AqnYBU1YYaVSL2PnilUt8LdsFYpv82/qObNKeMugaw7pIi
         a+qTJ0qyFTgT6dSCxyBAyhYjgBnh3JWCQpwWA+4VrLCmj7OYXFbV8MaHPiAYvGyiHfST
         mE5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781506233; x=1782111033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IHx1+R/J17dYEVk2E+ls+XsmeltEygUylDakA0bf7co=;
        b=G7GO2Cv6CgZqz7tt14nFPy0waQrN4aPkb+BwPfki1nelRYk8qtE2feRtjP0Gxj7EFS
         HJDi4HPrguH4cw1fRspDrXnIr7JcLbjIxLV/Q8U3Ev0gPk7h3exk99Xnj+7KXwr+dkib
         LkFrnakaf5jF9Lk+W+cGj9EjygZI0S6ShiCmSv+u1jEfDvS2sQU2pMip8KfEDEtcPswb
         H4bZae4rzkLuOCcuKlTdzxDuPalEGsggQFJEpDNGUOpc4kSgsbcybtGby3J4O5fGJi9+
         PjBgsJ9+5kfh7Ea8UjrCmR3PFz2VSsH74yJKOIYNoSC9NMc+EMnw6d1T+KdX1aTz5sct
         /ugw==
X-Forwarded-Encrypted: i=1; AFNElJ9Lgf19paCWZ1h/nTYrS0mXozW/ByF2WkI2dbdTvpckRZJMTNm+CcrQqWsDoqn9YM4yYuPFXsIfNe9m@vger.kernel.org
X-Gm-Message-State: AOJu0YyQhaN9Uy9QjDnffBuf2l/0VXJOPCB5+vdbPcQC3eUQJXA9XL2+
	jXS+vyV79rff/Y2bzXI9iJao741Ehi/BsRXSNSwcEFlK5Fw1tJP8Fh3t
X-Gm-Gg: Acq92OFrNRPjxCKkLNaD2ki+QUijZD3Es/AlRg5GGv/V4qyvN15x1waVCIsE+Ohl7Rn
	T5sosp6my8E62LyGoXhpqX+Se4qlHInC/JhOy7PSP2x9UEU64kSqaNEhvvv/TqMdyYcGqJbMPha
	yHz/ztDM470lSDSyHQ4WT0d2DrC8ZF4+qBQ+PaM0l2N8/1WZ+1T8pcNcg/cWixmTkoALDbFD39U
	StfwCcyjoeSJbohDrzi5q2Y54QjCkK7BkTXeh3YaanF3pxvjJZOGmCsesOe8DreSL2QCrfDyCVM
	k0p4FbteheuR4+fDUyQ+UhRIUW38H8oZjxzDJRrJPTWNsjHJ7j1Ss489lSZ7k6VIbsh138/7jD8
	7jX/M0D8hbsf5bJ1khzQKGUqCr0tUbg0x5on+eGliPP5JPJ1ox4eZoumefJ5lYNEWWMVXN8M86W
	Lhim/V51Mq9YbRZ+avpwgc9lMe9LHifdyRNaVDxM4+NrGKo3O5tz0HfUzYcKij7Zcj/9tRRBplH
	PaDPXFoQHrx
X-Received: by 2002:a05:693c:3b09:b0:304:819f:5029 with SMTP id 5a478bee46e88-3081ff3dc01mr6294428eec.2.1781506232688;
        Sun, 14 Jun 2026 23:50:32 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081eb9a2e7sm13516812eec.30.2026.06.14.23.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 23:50:32 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: zhengxingda@iscas.ac.cn,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: ychuang3@nuvoton.com,
	schung@nuvoton.com,
	yclu4@nuvoton.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v4 6/6] drm/verisilicon: extend Kconfig to support ARCH_MA35 platforms
Date: Mon, 15 Jun 2026 14:50:03 +0800
Message-ID: <20260615065003.76661-7-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615065003.76661-1-a0987203069@gmail.com>
References: <20260615065003.76661-1-a0987203069@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311705-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[iscas.ac.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	FORGED_SENDER(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:yclu4@nuvoton.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:a0987203069@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[nuvoton.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD7AD683F53

The DCUltraLite hardware ops and HWDB entry added in the preceding commits
enable the driver to work on Nuvoton MA35D1 hardware.  Allow the driver
to be built when ARCH_MA35 is selected; this dependency is meaningful only
now that all supporting code is in place.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 drivers/gpu/drm/verisilicon/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/verisilicon/Kconfig b/drivers/gpu/drm/verisilicon/Kconfig
index 7cce86ec8603..295d246eb4b4 100644
--- a/drivers/gpu/drm/verisilicon/Kconfig
+++ b/drivers/gpu/drm/verisilicon/Kconfig
@@ -2,7 +2,7 @@
 config DRM_VERISILICON_DC
 	tristate "DRM Support for Verisilicon DC-series display controllers"
 	depends on DRM && COMMON_CLK
-	depends on RISCV || COMPILE_TEST
+	depends on RISCV || ARCH_MA35 || COMPILE_TEST
 	select DRM_BRIDGE_CONNECTOR
 	select DRM_CLIENT_SELECTION
 	select DRM_DISPLAY_HELPER
-- 
2.43.0


