Return-Path: <devicetree+bounces-262650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCUSMuhIg2m0kwMAu9opvQ
	(envelope-from <devicetree+bounces-262650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:26:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3168DE664D
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:26:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5570E302835B
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76A02325728;
	Wed,  4 Feb 2026 13:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="EDLzoGbF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F65A27AC54
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770211403; cv=none; b=u4zkAzccZibIebgZ/tas6h3fpEVon85WxEMmhDVTauPPPxcoFz8DanMTOQ3NXkGZUutNPzeGxxoix8Mz4zWqBkEME2BCQm2fLAB0Hy/BYVBvaxgTBCXzZxr0iePqTvScrNWug48Jk1C7BwAeo2hkhJTxQWCPJam3oDejJk0VqiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770211403; c=relaxed/simple;
	bh=bwSSjtd9Xc/oMMlb14JH7P35jXxlRP1RtYQS24w0+5E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KfybDkuUivo9KT8mlkTHFMdMreN9jZb6lDsR5Rlv4h5RbjHNEndUB1BrGuSD5o0hS+4MvM/jU3xeJAH2CEziRQpNMF5F/nqX79LTTG4NAV1M4uQhkVu5tDIPtQbU867Pzm6qq8YZUPS10f/myCWNgmoYPQmikHws2gIteEVmydY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=EDLzoGbF; arc=none smtp.client-ip=74.125.82.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2b73112ab62so6344098eec.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:23:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1770211402; x=1770816202; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=52QKyIhmM4dHDYapFPsbOIih+RtCQKdTf8CY2ufMs44=;
        b=EDLzoGbFoPHB+5ctd9hv5PU76UKYQWt8Abm0qvn2UABYzn2AGu0w70Ph+fzOWTPPyV
         9EHCRoe59VotU1GeQJzmvm6hY+Op/RkcnON3+SX4CYMRoAsLtGsArFN0vCfrGqSaqMQ4
         sQv2bLen2YuE4G5UgaKlNgVANHNOU9Wr75s1GGh+eOh4Jn5ZOodq2SOoIehFdoJ2HkcR
         eW0QRgpXXKcwKEzY6r+kxbZ+LusdtPqhmAffbDw7Me2kI0VVdXuyooS4q3Z4HMKaj8Rs
         lKALQAtsJ03AQxB4j4EZyS94N15Rh4S/AkbggmwWeNzIc4EQsoDcfx2+a92YPbepjX5X
         qZdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211402; x=1770816202;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=52QKyIhmM4dHDYapFPsbOIih+RtCQKdTf8CY2ufMs44=;
        b=sbapwQlm9Y3aYYnayUZNkeCc1JeFKvNd2DbrK+Mi9+whxd9lrMPmgsohvBx0vNXBFq
         NOtNK3v2mj6V1xC9dCTwXTY66hPCpww9TkQk0r3dowLe79wSu3Ot3whQ8VUEq9xoGxHs
         QaYiVn/o/AlbSazY0cV83OLQhWCmPih+q5WurFYBNvQbDJifJGzuE+PH3k/gdsmY+ftD
         znsiJNsMhTSGH5dhJTg6/JOIBM3GpDF4qHBChT7/u57PUIO3gTPXGpMwRpo+0Z3BoUhO
         gYGTK0MmvwejHVyEMVEMfg7l1k3ZRY4WrO0oRZXHZ7X+LP/iNazfnuHKXYuE1s1+5lAI
         5kyg==
X-Forwarded-Encrypted: i=1; AJvYcCUV7FILsRLsKs3LE64tjsGvVmXVJABx+ze+KUTF+7AbD6+9FeFP3US1euonu5EPXKZXZtMEAerkcKtb@vger.kernel.org
X-Gm-Message-State: AOJu0YztC2u1ZXXgua71SPncBOoHRRirSXkYwI6ZLhE1dNa6wxibdcM9
	9JU/BmpaAiJPEyvS97hlzuu1NgGXZJ22ECjHP45KcHCKe9V7cfNZdBcCWajOGGMj16Q=
X-Gm-Gg: AZuq6aL+hmd/LcD5N9hWOF1M8H/MWewBcytVJH720I1mfC24Q34kT1wILOCnwoc2Agz
	rxjmAQRtCLe7tEaO0rDA9VrzOO9AUuaR9l1ZzMPc10BtUlSme5vuCOvA0X417KtBYw3O43DtmHS
	rj7BbqgHLQTDdXKfZc2sbUOxVB2yBfwtpI4tXlmt2/s+otBRekGPDQmR8oj8zI3F+Sma0LUnT4g
	nHgj25ay9w2UmdslcwO85pPOu2Y9cFoPTbgUJQTXrk/ElIfZr5WM8J4axsyjPZbe+oai29bWD/f
	ILUNJt63fMaVtk6D884NWivw/fP9Wj7D8mIE7cvCxZltcEl1nrh4FR2FqdhGn8dGUJ+ZSQQBKfv
	wKjzIxjlDj8Np4utGBs/cdKENcQVkDvbdk9CsUh/MeiQX8YQ2Bujd+1CJHV8fcF1f5I8rhffOu0
	z4O/HtriwtuU+V6rNlSaNeqf7Gge7cybM=
X-Received: by 2002:a05:7300:df41:b0:2b8:711:ae4f with SMTP id 5a478bee46e88-2b832876e1fmr1379549eec.9.1770211402261;
        Wed, 04 Feb 2026 05:23:22 -0800 (PST)
Received: from [127.0.1.1] ([2604:a840:3::303d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b832fc1d50sm1416731eec.27.2026.02.04.05.23.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:23:21 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 04 Feb 2026 21:23:02 +0800
Subject: [PATCH v3 2/3] regulator: spacemit-p1: Update supply names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-spacemit-p1-v3-2-a894b3057026@riscstar.com>
References: <20260204-spacemit-p1-v3-0-a894b3057026@riscstar.com>
In-Reply-To: <20260204-spacemit-p1-v3-0-a894b3057026@riscstar.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Yixun Lan <dlan@gentoo.org>, Alex Elder <elder@riscstar.com>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, devicetree@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262650-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,riscstar.com:mid,riscstar.com:email]
X-Rspamd-Queue-Id: 3168DE664D
X-Rspamd-Action: no action

Update supply names to match the P1 PMIC's actual hardware pinout where
each buck has an individual VIN pin (vin1-vin6) and LDO groups have
dedicated input pins (aldoin, dldoin1, dldoin2).

This is an ABI change from the original "vin" and "buck5" supplies.
The P1/PMIC regulator has no consumers in the DTS tree yet. For the two
K1 boards in-tree (BPI-F3 and Jupiter), power settings come from
boot firmware, so a probe failure has minimal impact.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: No code change.
    Update the commit message to state ABI change explicitly.
v2: No change.
---
 drivers/regulator/spacemit-p1.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacemit-p1.c
index 2b585ba01a93..57e6e00a73fa 100644
--- a/drivers/regulator/spacemit-p1.c
+++ b/drivers/regulator/spacemit-p1.c
@@ -87,13 +87,16 @@ static const struct linear_range p1_ldo_ranges[] = {
 	}
 
 #define P1_BUCK_DESC(_n) \
-	P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 255, p1_buck_ranges)
+	P1_REG_DESC(BUCK, buck, _n, "vin" #_n, 0x47, BUCK_MASK, 255, p1_buck_ranges)
 
 #define P1_ALDO_DESC(_n) \
-	P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)
+	P1_REG_DESC(ALDO, aldo, _n, "aldoin", 0x5b, LDO_MASK, 128, p1_ldo_ranges)
 
-#define P1_DLDO_DESC(_n) \
-	P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 128, p1_ldo_ranges)
+#define P1_DLDO1_DESC(_n) \
+	P1_REG_DESC(DLDO, dldo, _n, "dldoin1", 0x67, LDO_MASK, 128, p1_ldo_ranges)
+
+#define P1_DLDO2_DESC(_n) \
+	P1_REG_DESC(DLDO, dldo, _n, "dldoin2", 0x67, LDO_MASK, 128, p1_ldo_ranges)
 
 static const struct regulator_desc p1_regulator_desc[] = {
 	P1_BUCK_DESC(1),
@@ -108,13 +111,13 @@ static const struct regulator_desc p1_regulator_desc[] = {
 	P1_ALDO_DESC(3),
 	P1_ALDO_DESC(4),
 
-	P1_DLDO_DESC(1),
-	P1_DLDO_DESC(2),
-	P1_DLDO_DESC(3),
-	P1_DLDO_DESC(4),
-	P1_DLDO_DESC(5),
-	P1_DLDO_DESC(6),
-	P1_DLDO_DESC(7),
+	P1_DLDO1_DESC(1),
+	P1_DLDO1_DESC(2),
+	P1_DLDO1_DESC(3),
+	P1_DLDO1_DESC(4),
+	P1_DLDO2_DESC(5),
+	P1_DLDO2_DESC(6),
+	P1_DLDO2_DESC(7),
 };
 
 static int p1_regulator_probe(struct platform_device *pdev)

-- 
2.43.0


