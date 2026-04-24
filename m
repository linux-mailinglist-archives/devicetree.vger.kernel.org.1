Return-Path: <devicetree+bounces-289877-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAakMF4a62lTIgAAu9opvQ
	(envelope-from <devicetree+bounces-289877-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 09:23:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58ADA45AA62
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 09:23:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B35E830054C2
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 07:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52215372EEC;
	Fri, 24 Apr 2026 07:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="rDn4JFzR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E218370D47
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 07:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777015374; cv=none; b=bvvjkJ/tohdTMQMTMBGiebclSgRjoTT/sO/R24eNB+BbadKvcQXt8ZvW2HbVfDQQS34dxkjkF6lB34Ef6RfpXNxTZkm5Yc0Zz1CN1nIqpmyMMjNvPE2M7Oumx+Luou+2WeKLOl7kGGJOX77fUWKdRI8e/Ew/VRgtq0jQshvioQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777015374; c=relaxed/simple;
	bh=NnTZhLTZnNfRAZTpInLPnO6pd8hHUs/jOhkVX7vXeK4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LLVAKnSu7ugeIpxq4HYCtIad8dSo9vM0mFLz/inVnwh7dHHuxVAso/ROJmRAMwwZWGltSSHloB8CBvygO3K19YdX4UyUU8jVYnk0XDFbCaoBjfPw0nZdHDtwSn5K6j1rzOhUc7eT1zHJm4MgiM9pJcqWsLyLcheFz2GjB81Q/ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rDn4JFzR; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5a3af1b7549so9451895e87.1
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 00:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777015371; x=1777620171; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d0a97i72KVR1eeUiCzxnD93bJZC8Qqjf+srt6bZebIg=;
        b=rDn4JFzRu2B+Ntr7IzOp2eSJ0UR30SsYAbEH962Iq+huak/sOJKRNI3gyMQe8Q8DpS
         8WNSJH6VVa9d3AP3i60m+lks9JPVzrbptvpx2qKw1JA8jYXkG+FoDAy08+zBtPeJ4zYN
         G6GooWMQCbwg9JYb4LZUpBQ+dQv5kKePE0QmKOxDwLcpQEYldOMZwUxGKvCjOATf+kvq
         QB0QPCPKGS3XdUmIbCL3syLP40iLJdZeKBL1oqQeYeVi0x+e62/o+lkWGxecvsKUwqVh
         4eKrASH3s70BQjLJyxY5Z7N9aVZSxXYtyR+9qwCFpVKXTH1XPFRdTAfGkXBz7xRvz8WT
         wdKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777015371; x=1777620171;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d0a97i72KVR1eeUiCzxnD93bJZC8Qqjf+srt6bZebIg=;
        b=hmnJTjcianxQztr3W+Gbcg9HAhUthJdEviAVQk/NDQJqSyE6ucBkmBBlwrSJKbhLeF
         qHRM8eZE4B0OrNOsmyzm23xVEgRZxypoR+EskBxHNS6poG/C5NUuyWNi/TmjLc6iagET
         zxA1ax/s3ImRO6ambAQswFF9V6oMx4qHPEX4jcjev+NbVCnuzdjrZMSdUmapGstXRRnl
         vJgki98HhXX911c/QXQlwGfy9pSo9UzgPm9yOENEHslWrl4CxBLpiT0ByH92ZEHZ/rW3
         35tklqnXC6AlUT0LwKJOHS3IvsboJd8VGmOxZOlfaiVCVoQiDhIwQxJFknXLIftRwZQM
         75AA==
X-Forwarded-Encrypted: i=1; AFNElJ8qpAx7xBn1iO+CtSpdY6vEK1sfAZ2KzJ2ZPFKV6S07n32ZalnijJHDdO/Xq3NKM8QGc5z9lRyDrQwx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq2aDIm+OiLGuRjsePTupFktZpJ4b35GraUOYpaW+DKNX7HgNY
	Nd0s4qvDLhb0K9CHCdWW0dk7wT4RIY8XWq0wEcWbCIkfSMWr3olVx5f5
X-Gm-Gg: AeBDievS+bbIREYdXtZuOFfyU/L4inBlzyJNINY/9jEvDOWYINVQbzJi7TrshhWMIYE
	WMXn1vKL3LW3hdSgc10+zcKBIyaLjCFuoZE8dGpcukfLxVADi73clLU7/pNf3vDZ/gwDaINZonK
	l9d4UlHnzh00Ae92c/S5iDN8Tx9lJN2RtyZxC3HzC+W+5H+MGT8EVPrSbDNE7QWzGs5+mBcxbej
	bVQ1vsADgjivrP0Lv6ohHb6G3TUW/yZWmURRe7FJ4dfe3TrK2TGAsAbqlU7b6kqQxGTlpXcPNVn
	EIKeMNeZ9R2nEtLbl9IqbzLvExWwIMi4T32yS5JvQFp+/K6pp0OMR0zF8ETcOTnj9OtbCSyEhas
	AmJ2IVtMJf9XH1tqxLmzFKO5++4FvJigch77xxAHgDDnSFjGmPtF5NXgsv1wOfHqPf8VuXyLOab
	dkXIihN0wDK8eDUxTdF+GcNCI=
X-Received: by 2002:ac2:4c4b:0:b0:5a4:b0:a072 with SMTP id 2adb3069b0e04-5a4172ca655mr9466333e87.4.1777015370516;
        Fri, 24 Apr 2026 00:22:50 -0700 (PDT)
Received: from xeon ([188.163.112.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a41a238563sm5612550e87.55.2026.04.24.00.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 00:22:50 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Subject: [PATCH v3 2/5] media: i2c: lm3560: Fix v4l2 subdev registration
Date: Fri, 24 Apr 2026 10:22:27 +0300
Message-ID: <20260424072230.90354-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260424072230.90354-1-clamor95@gmail.com>
References: <20260424072230.90354-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 58ADA45AA62
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-289877-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,gmail.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]

The existing driver does not call media subdev registration, making it
invisible to the media framework. Since the LM3560 supports two
independent LEDs, register each LED as a separate media entity.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/media/i2c/lm3560.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/lm3560.c b/drivers/media/i2c/lm3560.c
index f4cc844f4e3c..085a0ef70e39 100644
--- a/drivers/media/i2c/lm3560.c
+++ b/drivers/media/i2c/lm3560.c
@@ -364,8 +364,15 @@ static int lm3560_subdev_init(struct lm3560_flash *flash,
 		goto err_out;
 	flash->subdev_led[led_no].entity.function = MEDIA_ENT_F_FLASH;
 
-	return rval;
+	rval = v4l2_async_register_subdev(&flash->subdev_led[led_no]);
+	if (rval < 0) {
+		dev_err(flash->dev, "failed to register V4L2 subdev");
+		goto error_out_media;
+	}
 
+	return rval;
+error_out_media:
+	media_entity_cleanup(&flash->subdev_led[led_no].entity);
 err_out:
 	v4l2_ctrl_handler_free(&flash->ctrls_led[led_no]);
 	return rval;
-- 
2.51.0


