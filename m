Return-Path: <devicetree+bounces-258226-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPAZJfzScWk+MgAAu9opvQ
	(envelope-from <devicetree+bounces-258226-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:34:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D614628AC
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:34:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C66C0562F94
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5225334E751;
	Thu, 22 Jan 2026 07:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="1+X3WkKA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545EC237707
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769067044; cv=none; b=nyW+IL2uNYm+e0ahUafgA4EyVwpaA1IR36vS0YTwiZIX3G+8zYaTqKztVSATBfwgZFF69TtL0FKbxWroAMOxwqb7OoHKBlOdPGDTifKzggXK29sNHg3JZdh8rbkfBY3e1rmlSuWlmvNr4TIo1JD2/GGs/qcg70CKLJq0d5hZb60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769067044; c=relaxed/simple;
	bh=tJAdYB72jhqifCdwS3RSRbdshVA50wCwrrtAEwfIlnk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OHsEdm9bgwZw5g11uQQGt02saqTqg9XBaJDMCmTCDv4qRqoXE5BS4a7RaRxLxQ2nOEoUWy4ZB/GZKYG/Ffx1Oc/S79ra7PX7yhWTMYyoWq2+m2o20oWnKADuaUnpjp+C5tPDU/6Jl4uWpMrmf00nrPedVdg70+PweNNGlgd8zJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=1+X3WkKA; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2a75a4a140eso3488955ad.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 23:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769067034; x=1769671834; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ELBSBXcYpRPoISeGMPMPpa1xgXhu62fyafslk8/Rm5o=;
        b=1+X3WkKAB1lD+Iw8d3EubikGgjnor3VUukbqNueUTj+lWvIvTUySjeHXKYNNhwiroK
         zAxe3Rf97HOyqB/gmobsNvy9Fk4NFoG1QS2CmpwCECBcvcIE8WgvqwcmlwmUdlCefgaF
         S54rIPy7yXF+YISLeAQYTDMdLLSHiiqK49HmGPQRCBhZQKfV2HRj75rEKvO+Jx+WORxk
         AfOsxa69+bzkASaZzM1WNoLkZIg4gIyXYlqdI+4Vx1HPbFUPJjMUBQGjrNhGHxu6pOdQ
         dNCNvzu+u7gAYjQBH4Txr3eaReAcTJf2V99xkcQgVrndDgYbzwxmLEYC7bT7Ov1zX+7U
         MDzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769067034; x=1769671834;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ELBSBXcYpRPoISeGMPMPpa1xgXhu62fyafslk8/Rm5o=;
        b=XaqwroGvSkDRyOWzgtlCADgaWTBa2sratU1Rroe55DtOxpEGTTZbOVu9IN6nrhhBuG
         QUSbf4ZP1019sgxRXllI2ZjNu90SbFPXMH/C0lC/wb1qTfRr6q/2Ga5u/qmJcJCAgM8P
         n3556AQYMQFeX4A+K2iYHmCB3Y8PCYKxgEbHe9SA1tHv/nFUxcrNO7LQ9W+dykDxSYfk
         EB5EQqrJL/XV4qFyS79PSCAM9RYP3Fc9gYUcJLrZGw8Hajf3gy1UqvQ3APXVh/5dlO69
         jPT5fiDYMJgYRcpl2z/Fzb1mh7hbk4PvGv2MZ58kiASz/kG6Iu1Nn1AwjEjot1rkmbDo
         Gssw==
X-Forwarded-Encrypted: i=1; AJvYcCXwiy48aBcCAhlb1qd3vU7Nah6iYwyvCMpq5RWwfF9OnPJqzhQ6A5Emb83xxOEGiXgfQj/VnrHrxlhD@vger.kernel.org
X-Gm-Message-State: AOJu0Ywmu2sDBohX4IUl8i7oQBbtUT6rBxT3KLg+hH19zoh1tGTXXUGg
	7MThlJqROGXLkMHlXa3W+oTYqWO7UVa/G54E50kNuhF6rcIVbvxVDRqxwtp6v/ECfF8=
X-Gm-Gg: AZuq6aLq0tyFM1PKDZlGdacmQJEZ3rOUzwAad2Ub5SjhdjDwqwt9oLdKYBXAVtaVSnv
	MFl/3qZtN2WUIFAHLmLQ1FlQWCfcVkC8id/h0/wWUGBXR5QfeBHtYAKrnRp7x1DeZgkRanaiBxb
	zU1q3qILyLYMUKWtyvvi7nvqPl+hmaVUTziv+QtWCCbuC23yLs7Dc6yqe0os66SD4/7FNJU+yIo
	Y9cWdgckv6Yl3mutqtC8LerD+DjyvFbcBa0dD/blb1g6SSLc63B4ECc10KXlCJ5nBiin0CqlOya
	gh7zlzCNc8YvN7QmjbbgxdN5KfnPL7ZnIn++RPhoMkY5lLYsq1ULO7/cexYC7JuqjsuvU+fPIo+
	YWf6aanQi85Rs8gfLjRcNFtMtPYZFhbZfsu1MG9Hdp69Tvim7eheE6kUbfiQPQPtq2UeN3GpX6p
	ycRsnxhSDhdGqXTh7c+aUIOGa4xPgY1uY=
X-Received: by 2002:a17:903:2391:b0:2a0:9fc8:a98b with SMTP id d9443c01a7336-2a76b059dfemr61934475ad.40.1769067034080;
        Wed, 21 Jan 2026 23:30:34 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190c9edesm171691845ad.23.2026.01.21.23.30.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 23:30:33 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 22 Jan 2026 17:43:44 +0800
Subject: [PATCH 3/4] regulator: spacemit-p1: Update supply names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-spacemit-p1-v1-3-309be27fbff9@riscstar.com>
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
In-Reply-To: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
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
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.14 / 15.00];
	DATE_IN_FUTURE(4.00)[2];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258226-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,gentoo.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,riscstar-com.20230601.gappssmtp.com:dkim,riscstar.com:mid,riscstar.com:email]
X-Rspamd-Queue-Id: 3D614628AC
X-Rspamd-Action: no action

Update supply names to match the P1 PMIC's actual hardware pinout where
each buck has an individual VIN pin (vin1-vin6) and LDO groups have
dedicated input pins (aldoin, dldoin1, dldoin2).

The supply is a board design decision and should not be hardcoded to any
existing power source. This allows boards to specify their actual power
tree topology in devicetree.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 drivers/regulator/spacemit-p1.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacemit-p1.c
index 2b585ba01a93d0ce163c33e14c8022a506bdce11..57e6e00a73fa416fd6e557eb5bcada7dc69df444 100644
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


