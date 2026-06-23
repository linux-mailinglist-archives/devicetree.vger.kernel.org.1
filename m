Return-Path: <devicetree+bounces-314978-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UmjfMZ7oOmoBLAgAu9opvQ
	(envelope-from <devicetree+bounces-314978-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:12:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AA96B9E0C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:12:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="DcUxPn/w";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314978-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314978-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DBC5430AEF83
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B743988E1;
	Tue, 23 Jun 2026 20:11:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99B4397E66
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 20:11:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782245495; cv=none; b=XWfgCVxwL2Kj442su1K21GXEsP3/6XLwrwqnGyOBw0sIVuYrFHNa2e/3TNEOapYr+zh1EUFYF00VBSs6xnMdIPrCL3pr/jfYr4gPP+/rcimtZxgxGh5Tsee1leRVUS0+gV/hMl0s1hR6sc4ruXpiFMMWQAU0DwS9yKOyqzQnft4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782245495; c=relaxed/simple;
	bh=YCdG7V7i0jUzDdTSWZ5jw6saiIr3RdMEJtuV17cyB00=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bdKh5loWVEu/6WyuEht7XLhbPg3jQDxBXZ+5C1ZPXN01rhMVqXsXmtR41Ceb8Ds/Mjsezl+qxL41xrf1nO8uYyusnoFL9U/sXROyumokRLGB3A2cV51bhE/s+jxMONClhMisgjc2DYJWHvq3fiyWX/J2pBOpG10T+KSuzzG2tlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DcUxPn/w; arc=none smtp.client-ip=209.85.167.41
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5ad4a5647e5so208451e87.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 13:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782245492; x=1782850292; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DrmXakNpkIbR2JV2psQpG19wT49o/K7Ic8w+q1SLzEA=;
        b=DcUxPn/w6qus8n06CccJCWgZIvdN6jcXnZuTp+5vyFCMccTYbc7nVbzjPtvXtl6+pD
         ctqcv0Q2u1OfmY0BU1d6+x+cOd2m1alA9e9ebYnAHdpAezvXu4bh5knfp+oXGMYJizx5
         R3yJ0h+3kI3+6t/ewUyPsi+W+bbIzcW5Kfxo+9aTUnoMEsbTgCBPrboJCTDAagoRq2my
         a29VtBhrlVFWUek/XfLBDmsU/p5P9kARFdFUTAPRgID6qNM/uux5NGPfM6fT7tfh+cd/
         KqOXCgHlCzqw0u9cztioCMgri0WW0HSgViL8oHaEvzjDniM0KzFCd2c4D1NuhEyJOSWR
         nqYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782245492; x=1782850292;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DrmXakNpkIbR2JV2psQpG19wT49o/K7Ic8w+q1SLzEA=;
        b=JlgruWRxpFxSjFplPGMvd7Nk/6bEBNJRRaNAZO2cEYNGgRj3VAqlLsHk/O4DUhllhE
         AQOmSYUY5eLxuEEe6aRWImzrbq1WQ2BMyV861gntvhuvn+3v33rLX4tXKqqI9lBmDHOf
         tN34cRkrgxDdPM24BjsnqHBCjklvn+uLt1dZyjQZZBnvu1xh54waeIHYJ1/g/t7vjT38
         ZW1L+hQox0BmSptIjIm8foDcxPK6RmgEmf0ogxNlD5v4qufuVUhfXwrS+xfsUigq1JXb
         QKde6aWVU7cXz8CAkH3bsdNvqkn3ApDeSDrxruqMb0VDcKv8kUjBNKoATduBQd4I+sGw
         rapg==
X-Forwarded-Encrypted: i=1; AFNElJ85pxTAF3VS3tE+vB28TJDRlP/pu41DNiqtCOG3sPgzyhZpvY1h2NyeSBKTODCYEiAEHVkFzieFAuJ1@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1c2ufGxtGss+lyiWqPRT1lVUbNo4bFOgvTKND3jDK06aiiV6n
	RCZgf6VMa278eqeuvsGKK2d1sfbY7vbAsMwEZISFUdaTbKE+PBbxMDW/
X-Gm-Gg: AfdE7clcOptqPd5IKkLJh3qaVkh9wJmvt45pp+tPj31yNdwe1kcXiNPQFDfUUUJBrJa
	7kZapP/PcR28z5RzMpRN7PFPPdqc+hFB5tRoeB6s7hURoeN8IDZWInABts/02vulks7plXkRCOx
	pVTT5LhbY1ZAUxhuCO9pbVYWuHaKYsJqugen8fwsUme00/4Nx/j7fnOn5iz0zBk0XXBn18CcSVy
	s7Jtn9wASNcIncj1zRdTYvLyWBxlxIe+CfonM+RyeXj2JFyFC5i7W9oWLGBRryAPEqXyRtIAROF
	bTC/MSk8PFpTFNYPSZuwJdImvuS06rWEMS7vtHwz1rcHx4WkcAW4lbnDn1zi82DysJKduXGEHZZ
	zTtS8e2u23TvektiqdQCy+/qZ8ZPCn4mc5sOfacKKwiL+25wUHIxgZ/XEkiAzW72J6eJ7s88c4i
	2MdZeQUDi8F+rjYpTVHT65iPzHqZludkrvVEGh4QObctTjuw==
X-Received: by 2002:a05:6512:3993:b0:5ad:3035:b35a with SMTP id 2adb3069b0e04-5ae9d590a68mr14275e87.52.1782245492024;
        Tue, 23 Jun 2026 13:11:32 -0700 (PDT)
Received: from Shofiq.home (87-92-251-137.rev.dnainternet.fi. [87.92.251.137])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad69551082sm1063392e87.26.2026.06.23.13.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 13:11:31 -0700 (PDT)
From: Md Shofiqul Islam <shofiqtest@gmail.com>
To: linux-iio@vger.kernel.org
Cc: jic23@kernel.org,
	lars@metafoo.de,
	conor@kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Md Shofiqul Islam <shofiqtest@gmail.com>
Subject: [PATCH v5 3/3] MAINTAINERS: add entry for MAX86150 IIO health driver
Date: Tue, 23 Jun 2026 23:11:23 +0300
Message-ID: <20260623201124.18271-4-shofiqtest@gmail.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260623201124.18271-1-shofiqtest@gmail.com>
References: <20260623174600.17100-1-shofiqtest@gmail.com>
 <20260623201124.18271-1-shofiqtest@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314978-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:lars@metafoo.de,m:conor@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:shofiqtest@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[shofiqtest@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shofiqtest@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 40AA96B9E0C

Signed-off-by: Md Shofiqul Islam <shofiqtest@gmail.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3115538ce829..361a7c8b99ea 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15863,6 +15863,13 @@ S:	Supported
 F:	Documentation/devicetree/bindings/power/supply/maxim,max77976.yaml
 F:	drivers/power/supply/max77976_charger.c
 
+MAX86150 ECG AND PPG BIOSENSOR DRIVER
+M:	Md Shofiqul Islam <shofiqtest@gmail.com>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/health/adi,max86150.yaml
+F:	drivers/iio/health/max86150.c
+
 MAXIM MUIC CHARGER DRIVERS FOR EXYNOS BASED BOARDS
 M:	Krzysztof Kozlowski <krzk@kernel.org>
 L:	linux-pm@vger.kernel.org
-- 
2.51.1


