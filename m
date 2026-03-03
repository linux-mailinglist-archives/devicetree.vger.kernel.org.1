Return-Path: <devicetree+bounces-270380-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHr9HKikpmkTSQAAu9opvQ
	(envelope-from <devicetree+bounces-270380-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:06:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D301EB9F5
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:06:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0EFF13085A5B
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 09:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA49738C42C;
	Tue,  3 Mar 2026 09:04:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB669388E7C
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 09:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772528675; cv=none; b=mdZkTJFuVUNi6dv3eC8nJczeBZtLOACdaW5/ePi2hKTVfYfLfizlY9m18GOPerocF6zPSIbTa6W/yHMOMd4yMiHRpgl+n9vpneY0pCp3LbPmAUxSoPGpTUs1mab9rVtIZddXU9eHb+t6/M1NpcsScOMk4gutwgS47mySx/65/eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772528675; c=relaxed/simple;
	bh=+SjfXXKp3c0wc8KEdqgR9dPREkkj2LhhEMz0XvYDYRI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tWif8zykUakx4A4JIIkrKOqAo2Rz3+z9U5xT5CpO+SqUV6kNTndrGmOu7VyeL1oZXk/Ab/FkrgaNRVhnvxb+jtJ/Sgk1MPt8urihNrjM9yW+GuzOvQXXS7xK1OH7n8y3mfW3+icePES6vbvzsxwbSqDcM2knyDM21bvKfca+HQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-c6e734ba92bso2536117a12.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 01:04:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772528673; x=1773133473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0L3t5+5v1063qWjRief/SwRioE8DmiEkQhc2hG7+TeI=;
        b=eaehlOB+mK+HTKN9perZWotC9+IoGX9NrsXO/toUQjx5iSzcqNPRSIbJh1WTPUzKM9
         yKQlJIR7FOdKmW2Bjvmnc/d5zedfOzAxzfPbWA+gn+yW0uc9p9Z8ei9kDTHGC8o+XTc6
         c9jVsxjXljUgauSGidQmDelgE+pOwQ9jKDbYptnO+2HWRtGD40D0BmftR0ITTecBaT45
         0G9aeIZK2fK2FJhkImw/Rm2pu18ZEeSaVJL/VBPVRSdyFgBS7lRqVCr9W1GAJJq25sWH
         0ubHhKheNvAB32+kRPGBxTNgK1IAF/shbSpNQu4AjZulfdLyePuy2iKqLtnePflHaEyF
         kgIw==
X-Forwarded-Encrypted: i=1; AJvYcCUy/TC4lDvyOmZ8l+bhm1W9rdrXTeNiXbNdT3tOtJZOpKTyz55B/2Ym3lHugX+/80T9keOhr8JodOkg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5LYhoT8znZGm4tYgm23U8eNwdW6DBu8kSyW+TS2QW1aBPB3oD
	HgwrK2U+tcGIu+94ls6vWVg4RFTPJ1qAETxBgFHv8wSKV+Esm0VEJWwh+nQlHqmr4dA=
X-Gm-Gg: ATEYQzwFZzUFXEijmIdQ0RPIIZ583u4okOTOJSvR1eUrYy1krXPWKwDpKwTRSUhSe8+
	2gAoFh1R91KgcnDPhMCUl81QG6cwqecImbsR1TA95DYa6yvCuCCPlzgNCGpEgryNQLvBH1B38f9
	v9L65QzFD83nc3qNTs7FeaJXDmlJV5uCHsWpnCJnKo/0Z/tBA2Vhg2TpBbMsb9ZwfSDfu25+qE4
	kmQfrMbdlbZKX+D8jU1WBibME9yLgF/Ab1pvlr0ptLma2llWOdD3wGN1qIaIyLeqe8B531lDeot
	HBYkIZ9fFne69mrRG/toLfggBfGxrrGYuP7JHBIgZHUQaF5YUiwrOD0chyvj2jSdiEkGQQSB81B
	Red5Ms9On0mUF/VHpwEQzpcKY/fWcvaoGCc0sOHaRFbiN5nuc775Z8nhNX5r4cbeU3Bjb00glSc
	5UFyKwlICbk27s6BET
X-Received: by 2002:a17:90a:d40b:b0:359:8f4b:6ed5 with SMTP id 98e67ed59e1d1-3598f4b6fecmr4980226a91.15.1772528672828;
        Tue, 03 Mar 2026 01:04:32 -0800 (PST)
Received: from archlinux ([59.152.111.50])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c4c0792sm1638259a91.14.2026.03.03.01.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 01:04:32 -0800 (PST)
From: Siratul Islam <email@sirat.me>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH 3/3] MAINTAINERS: add entry for ST VL53L1X ToF sensor driver
Date: Tue,  3 Mar 2026 15:02:42 +0600
Message-ID: <20260303090253.42076-4-email@sirat.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260303090253.42076-1-email@sirat.me>
References: <20260303090253.42076-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C9D301EB9F5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-270380-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sirat.me:mid,sirat.me:email]
X-Rspamd-Action: no action

Add maintainer entry for the STMicroelectronics VL53L1X
Time-of-Flight ranging sensor IIO driver.

Signed-off-by: Siratul Islam <email@sirat.me>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 61bf550fd37c..cb8ee607fda1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25093,6 +25093,13 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
 F:	drivers/iio/proximity/vl53l0x-i2c.c
 
+ST VL53L1X ToF RANGER(I2C) IIO DRIVER
+M:	Siratul Islam <email@sirat.me>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l1x.yaml
+F:	drivers/iio/proximity/vl53l1x-i2c.c
+
 STABLE BRANCH
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 M:	Sasha Levin <sashal@kernel.org>
-- 
2.53.0


