Return-Path: <devicetree+bounces-301665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNw5AI0qEGpQUQYAu9opvQ
	(envelope-from <devicetree+bounces-301665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:06:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0455C5B1AA9
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:06:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9D96230091EE
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 10:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7B923C769F;
	Fri, 22 May 2026 10:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="juimpBDg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7493A3C6A56
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 10:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779444228; cv=none; b=BUP2wa9LhDF+0usKyvPj9lCLOl+SrWwRdhfeqS3w++cH3fhgisx1QgbPQkNAgNtTJd5nOPlYQy8PeGNaQBEzTMEkQFVFzP0439q+1ZCT1gHKVjF0g8GlS1UQHe8bF4ua+A0fUt5SLUUBFyRVGrEwPPt5ZJsXbqjNAm9rec1ryvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779444228; c=relaxed/simple;
	bh=ExiN+C4YNDod2sNQFUItCwk6WYc3E9pIc8syzk45Va4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rHA0xFVJG6bIWpiN2Uoj9rVWM3YaMJfU/xWngkmBJVeOY877eNJAaxFspfdnY+VxBG/jVVZGFwpz+2bA6IXx9hax9Owfk525qVoYFsDuuZqjUaXSrs3w0gcI4kwwTsdg6VBiBxpRwZEWQslgMkqB7+5lmT65mMwVh1W4Enr8ygc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=juimpBDg; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2ba6485d219so53878045ad.3
        for <devicetree@vger.kernel.org>; Fri, 22 May 2026 03:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779444227; x=1780049027; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=78Vi4OavJbre02Pi7gJRdT8U7hvyFu4xORETXxXDTp0=;
        b=juimpBDgoYOXPurb+Z7STz/uD8aMkpza7JZCL6oJCvR0j3lj5FZ4V1brovd9XsxmHp
         fUHtRvFw33GS4UA6BzViTj6gb/F/86r4BE80jYFvMHHF1hnAgjMyXATJdroCpYhjfk4B
         v4UHQ5rMII/glj0bfLN3uGq1YzJNiDei44eDQNx4KlIgxkEkUCBEwX2pn6+KwgV54Fpc
         WtOvsqzXhNguN/xkHwIkKKoJ6INRA2G/P8W+HYKlLhDSi1BXCCSdpfnrxFaf7BEp1w0N
         n1Ws+AKJ1WiqPU0J25CfX8rfYhGBrB8S8flM5WMphOmhpVEbPJzz9/6S3hraK0XHk2hE
         bPPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779444227; x=1780049027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=78Vi4OavJbre02Pi7gJRdT8U7hvyFu4xORETXxXDTp0=;
        b=ryIq57Y9/lWyMYAttcGpOfIO4rQS2svPhOhBZAXbJ2Z4wjF1HpWNYLvBeGZSlSEDHr
         /TcupIvd/jYxFziWoWGpe0yonpM6q9LcO/8k+kXfyJsklW+mv8DVTuS/VtCeOY5lZbw3
         QhLtr7wrV7PFK9HMBvMhIU8sDI0yer18ibanz+0lV6L6htNqNEBMDsZFElGzdH7sFA/J
         ULGPusy1Pu5ygBrZi20eIcMJRXCwMOGI/KS56/s8f6H4RlLDDk8Bbol9w9CBiX2jrBHu
         JSgkxMSFP/mPI1glfwTbHdZzdaOvec8pAxxW1M5iM1Smyko552IP/DGTD/NZqA3WoEBY
         k/xQ==
X-Forwarded-Encrypted: i=1; AFNElJ8mUtr7EFxV8gRsVf/tyhiutfirIjOUqqy98sKl9LxK+o+yx4HpYkzb3npKoT1f85Lc5YS5L5q/LERC@vger.kernel.org
X-Gm-Message-State: AOJu0YwLSIjj3Fh1o6wFyMCusSzOf/MfGISO7lKRQIs3sReZGXMDFnDb
	BQD2mMFzNG32RP17psjRRf6cZOoEUg3SIcukniX2pKf9g/l93HxNQnJ1
X-Gm-Gg: Acq92OGoI8aVBAYFhjCJ/Rx6Gkv4gGoceBtvAWSqn2m5Rr0x2WlDNeBkFi+EdgLHJd2
	Q7bHcx6BHgGdwFGqA3oFG9M6s7Sntw65a/t10j81GT5+wPQEiY7QhtGNOTcHkp+YKKa2XTc956Y
	ZDbDEhREDp7CxsW96zddrDHAekUfNWOYdlYhmTnI6vvTBismZBkbGv3tg7wowHQXuM888fXiTSS
	Z1bQlMAzWJfodnguBjYPndHcEO7bXQ1JL4DkU0hjadPdr5j3VLXcLI2Jp2kxlmZYA5Ydycyr0NI
	VE/4Ci8/3a5Tj8S55ptc2nAgLuue8mCewKN8fHlC/0vCIpwQbMQ0mTAMu95U/XijUugF2TruSql
	l/5imzMU80pZtw+kp9iYPDcs2lkiHbGF5Q+fyiYkXNJIAQ3b6Sxf5ynBbxjifQZeGgZXRahK/aY
	di0zn7rspi6RZtd+2Ei9RAFjvMRrzgbn3TgRlXmJNLvvHvhMlsSmBd/BD96rQfS/KRr9BC
X-Received: by 2002:a17:902:ce84:b0:2b0:917c:bc4 with SMTP id d9443c01a7336-2beb03661a2mr27377715ad.4.1779444226741;
        Fri, 22 May 2026 03:03:46 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb56f4343sm18683455ad.36.2026.05.22.03.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 03:03:46 -0700 (PDT)
From: phucduc.bui@gmail.com
To: broonie@kernel.org
Cc: lgirdwood@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 2/3] ASoC: rockchip: spdif: Reorder clock enable sequence
Date: Fri, 22 May 2026 17:03:17 +0700
Message-ID: <20260522100318.73474-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260522100318.73474-1-phucduc.bui@gmail.com>
References: <20260522100318.73474-1-phucduc.bui@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,perex.cz,suse.com,sntech.de,lists.infradead.org,vger.kernel.org,kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-301665-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 0455C5B1AA9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: bui duc phuc <phucduc.bui@gmail.com>

Enable the 'hclk' bus clock before the 'mclk' controller
clock during runtime resume.
The bus clock provides the register access interface and
should be enabled before the controller clock.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_spdif.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/rockchip_spdif.c
index 581624f2682e..8de5b76cfe79 100644
--- a/sound/soc/rockchip/rockchip_spdif.c
+++ b/sound/soc/rockchip/rockchip_spdif.c
@@ -76,16 +76,16 @@ static int rk_spdif_runtime_resume(struct device *dev)
 	struct rk_spdif_dev *spdif = dev_get_drvdata(dev);
 	int ret;
 
-	ret = clk_prepare_enable(spdif->mclk);
+	ret = clk_prepare_enable(spdif->hclk);
 	if (ret) {
-		dev_err(spdif->dev, "mclk clock enable failed %d\n", ret);
+		dev_err(spdif->dev, "hclk clock enable failed %d\n", ret);
 		return ret;
 	}
 
-	ret = clk_prepare_enable(spdif->hclk);
+	ret = clk_prepare_enable(spdif->mclk);
 	if (ret) {
-		clk_disable_unprepare(spdif->mclk);
-		dev_err(spdif->dev, "hclk clock enable failed %d\n", ret);
+		clk_disable_unprepare(spdif->hclk);
+		dev_err(spdif->dev, "mclk clock enable failed %d\n", ret);
 		return ret;
 	}
 
-- 
2.43.0


