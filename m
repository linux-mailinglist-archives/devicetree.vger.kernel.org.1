Return-Path: <devicetree+bounces-307577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /KQFERCpI2oWwgEAu9opvQ
	(envelope-from <devicetree+bounces-307577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 06:58:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8046E64C6C2
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 06:58:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=YJj9WjiX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307577-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307577-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 93F2C301BCF4
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 04:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FF1F305680;
	Sat,  6 Jun 2026 04:58:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C731C2F8EA7
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 04:58:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780721895; cv=none; b=LmqYwBpCXLER4Lyygd4cw08+i/BGBC7+wvjuRxGveRh69Adesc25VP1YhPlwsHh29waZf9BDRMF0Nb2/L4liMjfk2jzDJA1yC4grYfihkGXDcjKKQvhaD80XmIfr2sr4/whwJ6d8Tg1kjbYdn6BWMANCcC7ojhHPh5/KSSt89t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780721895; c=relaxed/simple;
	bh=TwTMH444TQxyNANvjbKliwqB2xUrF4F6rItPqPyQfQk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nCo0hgv50olOfoqipQZAonSBSpkviZn+3juglI+MQgfP3GhPj4GPNfGG70r3ksIM8G9BnM3MADewn0ZdsqsF7ph0NbpV5Km0A8bKBlqcJLLmpzYPgVLYiyDl7ruEM/GxflLw8U2SYBK6tq4C55MLLUz6Bm2Vod+uaOUSwlSowz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YJj9WjiX; arc=none smtp.client-ip=209.85.208.41
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-68852a4fc68so4547884a12.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 21:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780721892; x=1781326692; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VIXOvbsU7+o0n1Qu63VvvDhjmq7U5oR0cXTC0wZz+Oo=;
        b=YJj9WjiXr43PEAcbIaLfkvdprJG+MiDLNcOh1yMpwgG2uNq7XJtBRhk08MJASekLay
         z58rrhW47XSdwDTuW5ifeoNXDeKkIWu9COyB9zIShjRTs/SOZqD59C1e8IMGs1GAidUI
         8d496OhP2+cvrDr3QhPgj9UnWD8meVa+KxP5Fdw4j4Vi2LVuZtjpG+eMYbjjJWH2cACY
         6aj4mDbQ7Uf06nPfxHRxguoy9kj01jtphW0nbyvfb2RVILzpcGFVCnjHoH+7aiVn1//W
         2cEfebvVPo5AQEFd1tVeTnVyGsLx54cTq6MDVKjkaz53PGiTEeX02wXPbe7CUxiCzgwf
         K/yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780721892; x=1781326692;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VIXOvbsU7+o0n1Qu63VvvDhjmq7U5oR0cXTC0wZz+Oo=;
        b=q/IBJ1477TPBD0TVttuiphQ5ZnqTdkWYzxdB07eWgXEN08nfta7Y6oAX3PPCQlUBmz
         yySjcGqTO/jEAauKIaFA9DMo/g6+iN9rv9uTNeg287RryHMz62U1reteyT6sIG0yAC0y
         kR3DqJ3BOfHwgudYWl/9kJLHDjtEdDY7hfNXOlCmMnSLgqk539OLuwZjozt4Qcrafs0g
         K08HZsO3txhgLeWCjtQTytu5f14/I37sFerTDgBGERN0GAK8ActZWD0TheY5UjT38WDc
         zbQFJ+zeg0RC+cCXDbXMb9rxL3OCsBUBDca824L5/E93NEAlw2f7h8dcaE+2ZdxkJ1gM
         IbCg==
X-Forwarded-Encrypted: i=1; AFNElJ/6ZrlJ0Xvd9L3hE0cU3qeb4RafVrMHATKBRfIrWycUJufB1St0jtQNCQOSt4qmTX1h/Jg5hgClmNm/@vger.kernel.org
X-Gm-Message-State: AOJu0YwzRQ9ZUyEq0bJcRil0yWSyavbabZWySm+wv7ne8qKPgocpn2R5
	JE51uwfPgaftFyY9FnTIcXcls/UxTqchrcH/5WZzyc+jy5bUJgpHZ7so
X-Gm-Gg: Acq92OHsZy1IS+StErwxKRlNqA7V3JV+0Jcigc58vAwCs8dE/ASy2isl08wNSIgr8Vr
	ALgoOr6T8kmIeLi+4wz6/29w8dvPVjXT0rVV7kstDp5cN9/caQ9r0wgELV2yOY/qI9KeixHOKTc
	nzVE3jrmwC0B8Lsid6MZhouDASvrZMpj3jPvXrtAsDGZmwLu4LbzO+DTnmrSiFO7cZzdPmZEEJR
	wS3Dgo9ur8eKKUSTx1d7kF+N7hFuXeLx8vDRZ4B8mqwHN41sMvwoKai7492Ia1aETWLlwG2IiSk
	3svqcMNHo6x9kd5u7OgzfQaX1Zhe8fInrzYtWad/g8XQ+aLeaXsF5bRELtUatUHNikn32ag6Jzv
	Og4zMAguaaXvdkqa28Ye8YVrlEWWkyD2b1XZ+9+FNkiJd44baW6UbrkQr4ltd7LlKonF6zaU1sS
	vqr+91V9L6V+FKPwj3LeqDnM+v47DY3D3ZYg==
X-Received: by 2002:a17:907:75c2:b0:bec:db41:e4ae with SMTP id a640c23a62f3a-bf3737ebea2mr248152866b.43.1780721892058;
        Fri, 05 Jun 2026 21:58:12 -0700 (PDT)
Received: from xeon ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf054e086fesm570597166b.32.2026.06.05.21.58.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 21:58:10 -0700 (PDT)
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
Subject: [PATCH v4 03/14] mfd: lm3533: Remove extern from shared functions in the header
Date: Sat,  6 Jun 2026 07:57:27 +0300
Message-ID: <20260606045738.21050-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260606045738.21050-1-clamor95@gmail.com>
References: <20260606045738.21050-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307577-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:danielt@kernel.org,m:jingoohan1@gmail.com,m:pavel@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:deller@gmx.de,m:clamor95@gmail.com,m:johan@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-leds@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-iio@vger.kernel.org,m:linux-fbdev@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,baylibre.com,analog.com,gmx.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8046E64C6C2

Using 'extern' is not required, drop them.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 include/linux/mfd/lm3533.h | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/include/linux/mfd/lm3533.h b/include/linux/mfd/lm3533.h
index db0a5e5c9e39..aab8f08dfcb0 100644
--- a/include/linux/mfd/lm3533.h
+++ b/include/linux/mfd/lm3533.h
@@ -82,14 +82,13 @@ struct lm3533_platform_data {
 	int num_leds;
 };
 
-extern int lm3533_ctrlbank_enable(struct lm3533_ctrlbank *cb);
-extern int lm3533_ctrlbank_disable(struct lm3533_ctrlbank *cb);
-
-extern int lm3533_ctrlbank_set_brightness(struct lm3533_ctrlbank *cb, u8 val);
-extern int lm3533_ctrlbank_get_brightness(struct lm3533_ctrlbank *cb, u32 *val);
-extern int lm3533_ctrlbank_set_max_current(struct lm3533_ctrlbank *cb,
-								u16 imax);
-extern int lm3533_ctrlbank_set_pwm(struct lm3533_ctrlbank *cb, u8 val);
-extern int lm3533_ctrlbank_get_pwm(struct lm3533_ctrlbank *cb, u32 *val);
+int lm3533_ctrlbank_enable(struct lm3533_ctrlbank *cb);
+int lm3533_ctrlbank_disable(struct lm3533_ctrlbank *cb);
+
+int lm3533_ctrlbank_set_brightness(struct lm3533_ctrlbank *cb, u8 val);
+int lm3533_ctrlbank_get_brightness(struct lm3533_ctrlbank *cb, u32 *val);
+int lm3533_ctrlbank_set_max_current(struct lm3533_ctrlbank *cb, u16 imax);
+int lm3533_ctrlbank_set_pwm(struct lm3533_ctrlbank *cb, u8 val);
+int lm3533_ctrlbank_get_pwm(struct lm3533_ctrlbank *cb, u32 *val);
 
 #endif	/* __LINUX_MFD_LM3533_H */
-- 
2.53.0


