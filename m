Return-Path: <devicetree+bounces-266627-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kChGOAPtlmmxrAIAu9opvQ
	(envelope-from <devicetree+bounces-266627-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:59:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8410615E079
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:59:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 77767301C154
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB191324700;
	Thu, 19 Feb 2026 10:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DiLWifq3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD362FE563
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 10:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771498735; cv=none; b=rHz035zS4KbMZ6EgE4VpLVsTcGjXkUtIiazaWNGD+Yau5avWtFm/G+N60j+FldLgl/SYIUCicTV3jzNDCfeJd2lw5yrPdiqA7hQpOKh77XG+N3E1HnvQfJvGvMHcTiPjcd+QOsHV119nklStHNEv26IVkDlysXcnMEnivus0gj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771498735; c=relaxed/simple;
	bh=v7Ln36tAHP7qBrXwMfNCRfR+1MwugDj8qIFgVwam+O8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UOGVb/Ku9jaBywkGkUP8f1btr08ofkF4bxBdrqHa/BiynYT/d4J3X9X36QM64dT6cLAEcwhY/eX/0IdG6vWJXBf+4C6LKEn+nQMVdQKwyJ1o75VbpxgWdtKqgOv/djZFEOxqfM0ALN0TR7hoSnAzvNtckOO0n+B3Dx8rWa9X8cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DiLWifq3; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a7bced39cfso8324055ad.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 02:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771498734; x=1772103534; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HnTETGcGMywOispd3Uniut5lXDOEv1AIFJuxKzNySRM=;
        b=DiLWifq3T0RKNm3nMaBTyHgCS1C6rbAwFXWUgbb4sTxA+Z8LkRFy19lqFD4s7UxRS9
         LW8AndaxLdcWeRoXwxX6mWBzKFtExRqfrL2t8pxg3yaS2mQtwDGt9fQ+YQWn6yC1FJyB
         Qs3MBH/biHyJXNybYT8F5dKIRE8fFuUFQ0tsjAlb0aDC789OmEkoPqIsMG8Ox+s8sAxB
         JdYSpfdcYZ2K4Ty9wx/wb/C/RyJcoIaBxLTKFjmEO6RENwHfC912Wc0nfvTS/mOP70cH
         x0601iuGWyNZWgNZWnm55KuY20YN2VTgc2K7Txi+2B5TjloAOTB46uiD1JFC6fTz3Jt1
         r+PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771498734; x=1772103534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HnTETGcGMywOispd3Uniut5lXDOEv1AIFJuxKzNySRM=;
        b=RyR3yJKz03jMGEOcQ+FBhglJBf+DnAg3TwkimVHjiuUJpswKlYcE64io5XTRH7hAJ9
         pH99QsNi0d6ADJ46XnPYJUs2AtDuf9C+TCWL678h0PbX93mN0m6P5ecltPtbxRcbtPhX
         PSFjbrdl+6sai30IJ0QUPf/J1svK4TJmQDZ4EJI26gZVXbaQC66Vu3+9HyHiamoa0260
         nBs5m7jgcGCFPi695hEStdNXWJ74Kb3EIS0BIhLSoTTIWtV3LeI/8V1ASurmqjG6KzXs
         s/TUQjAgESRbyZL+pthpcsPGM5vqXghKdem3w/jECpTLVki0I87l/TjcaMqWl7ZG+kSi
         k0fQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+erl41LoOxs3ADVJflgBfsgRjzDWDXkIFC0D4hTw+SYgJCfQa7cNFUai38nrpNDYdWTJ76QjSEyuE@vger.kernel.org
X-Gm-Message-State: AOJu0YzrBisnBv1+uK8WOS0a8x3smvucRo6vW2fpvNi0cAHr20njvaiK
	olcA82JcZwuQYqgkNk/51t5VD30Xk+J0Pq55kG1MJLh4bgFnr5cQbKVB
X-Gm-Gg: AZuq6aJPX9NhFP3tMLAoYJB8fmkiHT7pjs3+tslIUUUXE3/c3Q1UV5BFJCTsC89lXsd
	8bY4ycAlYvAzPa9P/vB5Kolz6GME+BQFZmkkbQvMgtWbPdCotELiSNZVBsy7wa864lt8BRSgkTY
	ORldu51SYmR8++nmXNH20FrsgP1hqoj1V6x2RsI+XVMaz9ixS9Fzmml5P6zIM7ftcVNCytJsCGr
	unLp8f7UdSkWdEcH5wkzIwwfWVDUnY/ZQOKz74ihrq3HIsBoij+iP+u2BxOzBqBNsoLwhDDaNfw
	iw6W/qmz8udKBzuSAzZKVHZzmieqyPCvijxdVYvv02YQws71RbCdGXBTDaLy5x7Ug0vW9ln4ast
	/q2mou+iPIZhJJesYt0UIBZ+HAX4x0nLRnXFxCSc3ium9U88v0PQMkF04bzmFKKZXMzjmZniudo
	hg1tyULjgDcxptFJC9UNtCr63KZ0yT3Kx/d4kMbXIJxKpd5A==
X-Received: by 2002:a17:903:238b:b0:2a0:c1ed:d0d9 with SMTP id d9443c01a7336-2ad50f6df20mr42474765ad.46.1771498733914;
        Thu, 19 Feb 2026 02:58:53 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:939b:3231:1953:3f2f:aba4:9c8a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1aadd9e8sm164339745ad.74.2026.02.19.02.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 02:58:53 -0800 (PST)
From: ASHISH YADAV <ashishyadav78@gmail.com>
X-Google-Original-From: ASHISH YADAV <Ashish.Yadav@infineon.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: =?y?q?=5BPATCH=20v2=202/3=5D=20hwmon=3A=20=28pmbus/core=29=20Add=20support=20for=C2=A0NVIDIA=C2=A0nvidia195mv=20mode?=
Date: Thu, 19 Feb 2026 16:26:29 +0530
Message-Id: <20260219105630.11929-3-Ashish.Yadav@infineon.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260219105630.11929-1-Ashish.Yadav@infineon.com>
References: <20260219105630.11929-1-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266627-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infineon.com:mid,infineon.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8410615E079
X-Rspamd-Action: no action

From: Ashish Yadav <ashish.yadav@infineon.com>

Extend the PMBus core vrm_version handling to support NVIDIA nvidia195mv
VID mode. This adds a new VRM/VID encoding type and the corresponding 
voltage conversion logic so devices reporting nvidia195mv can have their
VOUT/VID values interpreted correctly by the hwmon PMBus core.

Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>
---
 drivers/hwmon/pmbus/pmbus.h      | 2 +-
 drivers/hwmon/pmbus/pmbus_core.c | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/hwmon/pmbus/pmbus.h b/drivers/hwmon/pmbus/pmbus.h
index d2e9bfb5320f..3ddcb742d289 100644
--- a/drivers/hwmon/pmbus/pmbus.h
+++ b/drivers/hwmon/pmbus/pmbus.h
@@ -416,7 +416,7 @@ enum pmbus_sensor_classes {
 #define PMBUS_PAGE_VIRTUAL	BIT(31)	/* Page is virtual */
 
 enum pmbus_data_format { linear = 0, ieee754, direct, vid };
-enum vrm_version { vr11 = 0, vr12, vr13, imvp9, amd625mv };
+enum vrm_version { vr11 = 0, vr12, vr13, imvp9, amd625mv, nvidia195mv };
 
 /* PMBus revision identifiers */
 #define PMBUS_REV_10 0x00	/* PMBus revision 1.0 */
diff --git a/drivers/hwmon/pmbus/pmbus_core.c b/drivers/hwmon/pmbus/pmbus_core.c
index be6d05def115..4d7634ee6148 100644
--- a/drivers/hwmon/pmbus/pmbus_core.c
+++ b/drivers/hwmon/pmbus/pmbus_core.c
@@ -885,6 +885,10 @@ static s64 pmbus_reg2data_vid(struct pmbus_data *data,
 		if (val >= 0x0 && val <= 0xd8)
 			rv = DIV_ROUND_CLOSEST(155000 - val * 625, 100);
 		break;
+	case nvidia195mv:
+		if (val >= 0x01)
+			rv = 195 + (val - 1) * 5;  /* VID step is 5mv */
+		break;
 	}
 	return rv;
 }
-- 
2.39.5


