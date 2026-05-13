Return-Path: <devicetree+bounces-296865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEHrOS2BBGrmKwIAu9opvQ
	(envelope-from <devicetree+bounces-296865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 15:48:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 65680534588
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 15:48:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5142931DCA95
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 13:19:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1263E3090C1;
	Wed, 13 May 2026 13:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="KWYq6mDK"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A892A303CAB;
	Wed, 13 May 2026 13:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778678289; cv=none; b=iG9NlkTmDEsvIcHEFMH4MbZ7dbiFuA/LwvKoSuObGHIGw/OPwBdCW3foajb6uQ0P2d8PODrig9veokiYST5OXBR00wUSIw8IRtbN1octVfAiV+93cFzFi3NfdduJ5+qTjmIeseLN/TE+TeFNZESVnLFV3DQNEzfdbNSzIPVQfjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778678289; c=relaxed/simple;
	bh=bSJ25hdhRUWRW/tt7xLdkj0tLeAfFpTuwryHocg6FPM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vw94KHlexp/mXXzTOzsgiDrbX8nInZN2TmTV8iZCIaA3/cCS2/dYzF9uweMyvlwQ7Kf2ynnZeymU1EDmuQiRfVfoO4y65vOJNvK5P6BZmg9gQLAwvtNww0o1xwsFLEuiyw69zU3lVg4SEZfdZze6zxqhK+ZbV9LGh5hNXq2m+V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=KWYq6mDK; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 737B02E4F;
	Wed, 13 May 2026 15:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1778678275;
	bh=bSJ25hdhRUWRW/tt7xLdkj0tLeAfFpTuwryHocg6FPM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KWYq6mDKn3YTBmsrpB+gmpADSvAEOqMRdYIoxsDrCZpEooPq+q4N+hau/Mxdg9v8d
	 D4bcnmlCwGIBQfvmP88AHvjRG7OX6Qf+CzZ3VBPhxYW/cg2pblEzOEgF/xhSNCK9Hr
	 zJoJWmvqTlnEGykIXbLBFTkCH2CK6xPXh02+H878=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 13 May 2026 16:17:29 +0300
Subject: [PATCH v2 07/16] drm/tidss: oldi: Remove define for unused
 register OLDI_LB_CTRL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-beagley-ai-display-v2-7-9e9bcefde6bc@ideasonboard.com>
References: <20260513-beagley-ai-display-v2-0-9e9bcefde6bc@ideasonboard.com>
In-Reply-To: <20260513-beagley-ai-display-v2-0-9e9bcefde6bc@ideasonboard.com>
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
X-Mailer: b4 0.15-dev-c25d1
X-Developer-Signature: v=1; a=openpgp-sha256; l=737;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=bSJ25hdhRUWRW/tt7xLdkj0tLeAfFpTuwryHocg6FPM=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBqBHn+2YNXZZ8aN7zUh1BcDJWnr/httpnHSfxdC
 cui6qEUcaCJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCagR5/gAKCRD6PaqMvJYe
 9SiqD/92c2VScAUTj8GGdabM+26DMx/WnaEAeKL7Xr0dK0X766sGDIr+pltCP7TpbKRVBk48LX8
 UVOeX6UMs8i6Gv8EI94LABG54BXMBDZX8LEjV5q3jdiV+3U7OKu5xTnN+qugSHlXwI8J9RN5/HV
 JDdam/oFzvnDu9fnjqTTkYHHUYtTWYh5xYeH9Ocnyop4bEVdVx87a6KLyl/I/RI8entf1JwlMC9
 2xyg/SBt7ib3koWQJZsESSqvaaw5dNNd3p75kFFtMXVssoeaeJY+GJbRnQDR3ONVoJmZSWvZfrc
 vQhCc8SKk5rAYK31mJg6cPp+BDKOcEqqP+jy3FhYXiZ3aeGttksrR28c0Rhw6npgFtvn9zCsCYO
 D9IszvVqi3RVGGP2t5CblnrZQnCn6M0v7yJb595Ogc0Hxb/HpsIt1oYF7m8D6y7vSIUs00KCVO9
 PnSWlDzdVIflD6Cb9RoNX4Ygnvkxhzb4w93t+78QA2uuxsmhQMYmA6KGmrK2uZ/MmR81ZsyUC0S
 54G6i1FMLlDWujFD+Az/Gqs2SN5+FTD2jKR1/hnQsONUNk7cqUGMGnybQYVnH23CYETJdcG0HuM
 Ee5NxS2HUMlmzpxxOZMfzQrL3tc4vI5f28BbIhBFRy6ELLrGeQX7n2lTxcs2ljHBUOiwHY8sps5
 vRzPI3e0rqvR0bg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-Rspamd-Queue-Id: 65680534588
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296865-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:email,ideasonboard.com:mid,ideasonboard.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ti.com:email]
X-Rspamd-Action: no action

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


