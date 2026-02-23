Return-Path: <devicetree+bounces-267564-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sImfOvyNnGmdJQQAu9opvQ
	(envelope-from <devicetree+bounces-267564-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:27:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0A417ACC7
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:27:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A1A031C2693
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AF30331214;
	Mon, 23 Feb 2026 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TErMkM4w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4C0330652
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771867113; cv=none; b=n+RSjV2EO5Rs5gx0D7HUeo3H4EucOqVtxG+R7JuURevT+vVuvHg6fkgEoLhw83U4vOWprGRx3uOTY+FOl1MYPMA5Z3aPlArgSX53CidQkeu4RtI5tylclJQa398zmtOnkLbmf3/nFbyXBmPKdTwPbTVWQ9SIgqjOZQRGvEnC034=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771867113; c=relaxed/simple;
	bh=uxYGaJ3P458lu3G0cMf5GUqhaAntuF9M6oJUdaMzBds=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GZ6SNFWQoiXInJvH/73mpGwUnfoKFW3ktLYWj92wfYSHZCO3eYXFC8vVQO2/TrbENdujyl4smmalZAvIv2RN9Xx0EfDhg8v3qhMjc3rS8W2Oivw8fNjvOgvLgnMGRj/hvvxtz7OUCF8okYbsUWsNORvTRvRhLGV74ipI0Kldx2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TErMkM4w; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-43638a33157so4296597f8f.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771867110; x=1772471910; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4tprEZO19LVPoDO66HWFcNuv9Wp3nvVBibsZ70DTJ4o=;
        b=TErMkM4wRQpR1nFCnXHkQeJsWXpycU2gjujrVwJPNfyXYxgIHNJgSddm61znd4XdCg
         lTCJB7RSNvBJS/xR/97fXUT1+yr2jWQwS+1sglHjGCGDrQBYULluoJwyrf3U2X3tDWgU
         lYtbwAES+138DGCmF7bogZBLrE68B3uNa+IYRn5huREfbauMOATpDmnUrEoQ9+p4+WeD
         ZwMHlZMLqEN8ffGPeQaGo8OrltUPcbbRmLBcb7CK9LdK73pCgCvLLX8i/j8SlT7UhCjt
         mtKLp9xxOLyZ50EK8VmeImDuRKNiRhFs3A9Zsj1ol3noKJRCyIbT4c8TlApnH9IpDr70
         /uZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771867110; x=1772471910;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4tprEZO19LVPoDO66HWFcNuv9Wp3nvVBibsZ70DTJ4o=;
        b=YiUqf+tBAQ3dfWdf2ak6vn7pmPzjJqdN0Xhc+6ptxuL/Y/oRVNHVRvHCR0sZXpZLXn
         2rLOgjuvA6C0m8kVE4/ggfRGP4/nxY17JSFHfnta0u+61KEBO0nw7nfyzQTpNbn8QoDV
         2aKchbks9eiEL0ygF5dU8tebktdEGWxzJHKJYvB3IE0edMuCtzqBYhhmxgScpkND5E5l
         GRATuikn1kS3NuDbDk2w9rEhDBHUAOL8r/3bjn7/JOO/XxbhEoOrM/HBoUEaUazV6hkf
         WxLtn3JiQeLOPZ7eS+B8VQ9E96ut1CZBVb1WL1Hk0HdNnDrgmD3zxQV/0CttpBHivV2K
         3+4A==
X-Forwarded-Encrypted: i=1; AJvYcCXe5+SVEIErXo1TGAbIB3zNnqNBjNCTrezYbWk1XPZAQ9txfbPY593gW2pAzAUr42CaB4iEHRMIbz2m@vger.kernel.org
X-Gm-Message-State: AOJu0Yzuj1MDWoe6bixrYAmQJZqyhq5mgYhAGlPA8sjU0m7awTIjaBpu
	PP4iEuYR0VrXMbbcxByKxa8QqKd/uMzMwdMIkXzY3Sxd5p7LGnL3Aoty
X-Gm-Gg: ATEYQzyLDmsZS/3hlZGr1Dmm82pord3YTNipEuFB+mouJj2piGh2/Ghy3XlXb2VXjns
	2Dh1qcR0WEAbKC7MOs7XC4iwuOy6OrNcr0SwO44cr2XlIsApMIxl1dyFk/CoKwTiBgKDJlUxGWD
	DlTTu2giwxjEZr+hPAx2oavOMCpmq3mXNPtk/CgT9uvJXeTbKNiTYKJI4vJ+FCnTFGkXh/+Ix0S
	aZklHu2e65rE19gFEoG3eMkRcxl+EIn8BbSiJw0KzUSggGPv9Fe35Lwt8st4hdqHOJYCo89jf6f
	mfJcJmkjE8HHiXcoLlD64eyAt3ePgYT23F+xRGulQOqXgCVkxLm/BcNL318/WNLJ3X+/7xZmJGl
	fqmmeMWiKQ8CyW3MelSBCsxHBAzCDAMeKlnSGuXrjW+C0G7UIbnaFz0AFS0lNlEXaIERGpTPIW4
	ykOCVX1wDQJTXT8RYwLj8=
X-Received: by 2002:a05:6000:2486:b0:437:81a2:46eb with SMTP id ffacd0b85a97d-4396f17b1b8mr18714978f8f.41.1771867110323;
        Mon, 23 Feb 2026 09:18:30 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c982sm20871454f8f.31.2026.02.23.09.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 09:18:29 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sen Chu <sen.chu@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Lee Jones <lee@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Eddie Huang <eddie.huang@mediatek.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Julien Massot <julien.massot@collabora.com>,
	Gary Bisson <bisson.gary@gmail.com>,
	Fabien Parent <parent.f@gmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH 8/9] rtc: mt6397: add compatible for MT6392 PMIC
Date: Mon, 23 Feb 2026 17:12:47 +0000
Message-ID: <1d7d0048eb2d51c7b5551deb765951d33dacfec6.1771865015.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771865014.git.l.scorcia@gmail.com>
References: <cover.1771865014.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
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
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[packett.cool,gmail.com,kernel.org,mediatek.com,collabora.com,bootlin.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267564-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5A0A417ACC7
X-Rspamd-Action: no action

From: Val Packett <val@packett.cool>

Add a compatible, using the same data as the MT6397.

Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 drivers/rtc/rtc-mt6397.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index 692c00ff544b..6b67d917f8d5 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -334,6 +334,7 @@ static const struct of_device_id mt6397_rtc_of_match[] = {
 	{ .compatible = "mediatek,mt6323-rtc", .data = &mt6397_rtc_data },
 	{ .compatible = "mediatek,mt6357-rtc", .data = &mt6358_rtc_data },
 	{ .compatible = "mediatek,mt6358-rtc", .data = &mt6358_rtc_data },
+	{ .compatible = "mediatek,mt6392-rtc", .data = &mt6397_rtc_data },
 	{ .compatible = "mediatek,mt6397-rtc", .data = &mt6397_rtc_data },
 	{ }
 };
-- 
2.43.0


