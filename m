Return-Path: <devicetree+bounces-303865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOEfNgpJGGpSiggAu9opvQ
	(envelope-from <devicetree+bounces-303865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:54:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB0C5F3226
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:54:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 63FB530801FB
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 13:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F38182DFF04;
	Thu, 28 May 2026 13:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="agxcVUNo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F4429C33F
	for <devicetree@vger.kernel.org>; Thu, 28 May 2026 13:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779976318; cv=none; b=sIR7x0pmjlZx2aVCrQusv7y7dkSmIPDdUI/Cp1igTvYgu/wESdkEJvm/7hu7o1CvoA7Nh/sX3O/jdYPxUYE4+p6V/Wbzg8cAc4t94iExpZ91jrP31FKkwArVFm7VtfA9Cke8Txt+PrtZwEhl4xG5HxUptinyjD1fN5LSi8ZjYgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779976318; c=relaxed/simple;
	bh=bNI9riTSmou7+zW+mF5Zb+cHzMSVVsaXDh2lYEatQQc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Pl4FDrrdxm2+IsZSze6Srophd1e0abl0d2q+u8Yk22A4u/llGtxdAEsRt6Ci670zj45pE+bylyGHqk9bgcRvZ+XfNmDk0TAJ+GZn2DPJ4kq7aF/Q4drHsb0wCF7uiKgYdojBs6MgzFefwLvCDJdHeobNqGFr5ezPPMqkP9WgWts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=agxcVUNo; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-68b2229b48eso984533a12.2
        for <devicetree@vger.kernel.org>; Thu, 28 May 2026 06:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779976315; x=1780581115; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HqOemnD04LJjQnMzwMBgcGs6gZ1ngsn7g7S9Cna4sh0=;
        b=agxcVUNoXS0667varjCB/l8usoQRDYzC5dLGzKK+J++F3MLdH3t2wtlPsD1C/TbHAS
         /TCGKcXiNLUpQ+PR3hLQWgNmdtg098ZwoLI8VirthUFh5rPC+ztBSb83CAAwQcGvCf8/
         8jN7h4DoCd+jFMZ+lW9nWWro5/JbxgIOIlwGLU4qnPxLImT8MAq2CjTfpataX7fY110e
         FSO9WoKoWIiREo2/cbGbsE+NyVm1WYGmpAtjAj248lpbZVVCQUnyGMJSveeygShEgMeq
         7HtaQp7DiV7npQcVm7t+VGq7SxCa6XGp28tuZIxVv+onrZmVS01hxNb8inIuNLxDBVsF
         24lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779976315; x=1780581115;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HqOemnD04LJjQnMzwMBgcGs6gZ1ngsn7g7S9Cna4sh0=;
        b=FZprtE6ndpNt4UPD+UYaWri9YDuPA9OvxlhJ3s1K8hu8PJ83rbPglfJZriSKrhwms8
         u3WchvZtRKqfgvy4QzmEX26mLRArkQQF3sDGv9//ZrLqkgTdwXGU8fKfwSq+iKmPR9ZU
         5XFm6JqkUAXr00RJ8L3j7CZ+WOfUKaoqKnk68kcn4IEJ5EiaO/Xyj2cZumGbg/py8vXx
         7mIJDbApoE/ZWMhL0QGPOQ7E9uj1JxuMB7R4GFxtZWgmT17PO9mUSxD6eXWFfvt8+ds1
         8I7igIwIOL5T3wCQ+qDF+C5a3PkKiahjqxDJwfMYvjXwj59anUS3mzCJpU/6ZOcLPz/X
         Mw5g==
X-Forwarded-Encrypted: i=1; AFNElJ+XmcCKc/7c16RpmH3Z2Ts2Sy7flWWuUHBf/ePuFiWpVNunLfm9lLRMEGcaXtEInTc5WcY/txw1jKSW@vger.kernel.org
X-Gm-Message-State: AOJu0YxJctv0VhRWZwhNGA+YPczjisufJFVX/+aKtppV4or6fhSTczI+
	TCOIm3Njks4k8HAKlXhVIfLy7hR5TWT0ugIxHOGG7dNIwp2DBA2gp6sL
X-Gm-Gg: Acq92OEe+0w8mxcBDyj48lp7Dy3/r/4YdB9xX9owfQetpkcYF0pdQ/nnxVWeAG6uUQY
	DQ76AXCdjCXIXsKl/fMSnf4L6Lo2mkIQ/h7wpUfz1TuisoJB2aao+Z8QyyT0GqGMnrBFIMi0naA
	9/cUXwRdcx3dYn9U0KoFW+U/vj44a2WFdC+qWQbY016KOCxswmQdUipe/YveUOpRBO6e5pI8LkK
	GHdWuyS27vVGuOqIbqUlSaHJltIP8VytIVw4u20YxQ/kCf52hWW86eccj9w6CeCv1KaQO+0mqix
	C4n932szCIp0ygUN3wO3mvpE5i2fx6WZH+2xtTixfO/PmfjZ4BL3T2+kCwVy2M+2Gsribn1N7ud
	+RnKLfsnk4VoJu5VUDh+Fa3pwL7T0RegUrtGmc8VMG5vZpFiEoeJpHFbbMtkRJzSpuW0DvNK3fY
	ItLfmJSRDylf8hM0l7Sy8tj8M=
X-Received: by 2002:a17:907:2665:b0:bd1:d549:decc with SMTP id a640c23a62f3a-bdd23af346bmr1376086666b.20.1779976314604;
        Thu, 28 May 2026 06:51:54 -0700 (PDT)
Received: from xeon ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bddc65da3bbsm723636566b.52.2026.05.28.06.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 06:51:54 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Daniel Thompson <danielt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Helge Deller <deller@gmx.de>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Johan Hovold <johan@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-fbdev@vger.kernel.org
Subject: [PATCH v2 4/6] mfd: lm3533: Set DMA mask
Date: Thu, 28 May 2026 16:51:21 +0300
Message-ID: <20260528135123.103745-5-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260528135123.103745-1-clamor95@gmail.com>
References: <20260528135123.103745-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-303865-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,baylibre.com,analog.com,gmx.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: BBB0C5F3226
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Missing coherent_dma_mask assigning triggers the following warning in
dmesg:

[    3.287872] platform lm3533-backlight.0: DMA mask not set

Since this warning might be elevated to an error in the future, set
coherent_dma_mask to zero because both the core and cells do not utilize
DMA.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/mfd/lm3533-core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mfd/lm3533-core.c b/drivers/mfd/lm3533-core.c
index 519f8c16a3f3..3cfdebf5fb52 100644
--- a/drivers/mfd/lm3533-core.c
+++ b/drivers/mfd/lm3533-core.c
@@ -526,6 +526,10 @@ static int lm3533_i2c_probe(struct i2c_client *i2c)
 				   LM3533_BOOST_FREQ_MAX);
 	lm3533->boost_freq = lm3533->boost_freq / (500 * KILO) - 1;
 
+	/* LM3533 and child devices do not use DMA */
+	i2c->dev.coherent_dma_mask = 0;
+	i2c->dev.dma_mask = &i2c->dev.coherent_dma_mask;
+
 	return lm3533_device_init(lm3533);
 }
 
-- 
2.51.0


