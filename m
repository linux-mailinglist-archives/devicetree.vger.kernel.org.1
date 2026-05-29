Return-Path: <devicetree+bounces-304128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uE6FIxRTGWqYvAgAu9opvQ
	(envelope-from <devicetree+bounces-304128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:49:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A155FF786
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:49:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4EA913037F7E
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 08:48:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A3D23BCD3A;
	Fri, 29 May 2026 08:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="ekI0lNYE"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702753ABD95;
	Fri, 29 May 2026 08:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780044464; cv=none; b=Rl34GU6CKjfqoFPx2SmIv5A7p5cC5r3pWMw/eBGdfzfAkzeHmpNlgPTfx7zUtpc/VM08/9VeBrILYBnsjRmsW4qhP/JMNaKxg6pg/mRUDpbcF67GfNj/YDCGXAFQifhgww2z4WoIAXmPcm4hBtAfnlSg4UWviCrQGsVyLRfi4HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780044464; c=relaxed/simple;
	bh=bSJ25hdhRUWRW/tt7xLdkj0tLeAfFpTuwryHocg6FPM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pMwXZ9gqx7V83i2tO+n7FcOy/lWXdCwrX8a3RWCHKOEzNfSdAS3wmpnEnep5ubir3FjCpfhItkzlw5oapKk2qZo2kTQKzz9WlH/3NdvNpav8J6ijv0HxFH8mUgYFSlDM/kivpnPKjvF46P0EvsSWcDxcfauGTdZFijy2XIY03Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=ekI0lNYE; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E92F326A5;
	Fri, 29 May 2026 10:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1780044423;
	bh=bSJ25hdhRUWRW/tt7xLdkj0tLeAfFpTuwryHocg6FPM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ekI0lNYEpD5uJ1r3QVup40ZK55XWicmJH5n0WGXJOXYr0nHKaUK4Kj1fOo9k+VmmH
	 e5QgxUPrt+knbsyhOEvheljNX+oFgVYR1DlaluYWN6oju0l/T5yCmuPkHyAnZX/nAv
	 Fvu7ctCKvffFBWDzGyoicY+GQjWMH6DbNhGO0kK4=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Fri, 29 May 2026 11:45:37 +0300
Subject: [PATCH v3 07/15] drm/tidss: oldi: Remove define for unused
 register OLDI_LB_CTRL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260529-beagley-ai-display-v3-7-7fefdc5d1adf@ideasonboard.com>
References: <20260529-beagley-ai-display-v3-0-7fefdc5d1adf@ideasonboard.com>
In-Reply-To: <20260529-beagley-ai-display-v3-0-7fefdc5d1adf@ideasonboard.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Swamil Jain <s-jain1@ti.com>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=737;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=bSJ25hdhRUWRW/tt7xLdkj0tLeAfFpTuwryHocg6FPM=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBqGVKNzaQTcZ0aIdK8qLMMQ4PN+TpQZEluUQPpO
 Y87V0SbqCCJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCahlSjQAKCRD6PaqMvJYe
 9QBDD/9PB5YsuHu2qY8zHPmApzxiMveuKCYfsEWfCZgaNApN1TUarSqLln+7/BwM92CZd3oWoKL
 W3qOKHvVpkjNJLIj9ah0UVUqq2ZY/RZrd99w/KzNtCYW4RDeJHjCLhC8b7agVLh4xFyw7b3MaJ+
 7/TqtjxwdUFCTVRZQ4V50bdmp9pnu8VxN8Dkjr9J7TyfJ4aphQZEOH7WJe61vTkaWFaQ4+5RNyY
 aD4RNhANG4KrMBhIAewLrf/wUkev5V038bYSsdEpxE80jR26cP0t/mNw1pMkycK4DCMqvV2MlD0
 NIEPjH9jFIOTGO5cvs5gaxLfb8CdiEFbpRjkxaYPwB2xjafe+0HjXRvIhUtKbUGUk54KRgm1iqb
 z5W6BCU/VBSJMMSKXQc/3XseBngm6BnGL91AadxTKXoOIannxdKJp0nhl2trpLoIjGz3Ciat4W9
 pbjwJivewE9Od8M8BNJrGNttmzPI61nMXghDb7vm+l6T+5TPhvdjKwLCO51SAxVrRVX5rfwZ3AL
 c9uHG7Sngo1OiWA7W3qU4N9/pOGZwQOXfl67Ddso+SIGEzqfWpws7iQGOEY3RPdqUsNOAuJB0d2
 JspWSVETtI0cZ/LkQ0uBcaDZADl6FMdPs5aRtUbfD5wQSojE3jdp/fRbhs/rk6xPsoX63ztOfSC
 njZCe47WubES/MA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304128-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linux.dev,ti.com,bootlin.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomi.valkeinen@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,ideasonboard.com:email,ideasonboard.com:mid,ideasonboard.com:dkim]
X-Rspamd-Queue-Id: 78A155FF786
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

OLDI_LB_CTRL define is not used, and doesn't seem to exist at least on
some SoCs. Let's remove the define.

Tested-by: Swamil Jain <s-jain1@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/tidss/tidss_oldi.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/tidss/tidss_oldi.h b/drivers/gpu/drm/tidss/tidss_oldi.h
index 8cd535c5ee65..a361e6dbfce3 100644
--- a/drivers/gpu/drm/tidss/tidss_oldi.h
+++ b/drivers/gpu/drm/tidss/tidss_oldi.h
@@ -20,7 +20,6 @@ struct tidss_oldi;
 
 /* Register offsets */
 #define OLDI_PD_CTRL            0x100
-#define OLDI_LB_CTRL            0x104
 
 /* Power control bits */
 #define OLDI_PWRDOWN_TX(n)	BIT(n)

-- 
2.43.0


