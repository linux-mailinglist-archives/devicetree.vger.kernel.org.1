Return-Path: <devicetree+bounces-263790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGyYGyVXiWlQ7AQAu9opvQ
	(envelope-from <devicetree+bounces-263790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:40:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B1510B6B1
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 04:40:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0BEB230078CB
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 03:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13ACF2C0261;
	Mon,  9 Feb 2026 03:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e/uwdRNW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f46.google.com (mail-dl1-f46.google.com [74.125.82.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0668286891
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 03:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770608391; cv=none; b=DeHTGedKlGjM5JPFZQ2nr7wMvuBOuFQSqG3wQ7ypENecYxgrNUONYUgcafqlKxmc92myCudKBJlaNsYszVW4FnvIX/Iq9pfBTTRClEcEDfKL0Uc/TRRre98iJQf3bi74HXM1exD+ksTtIqgDCE1QkKvjXMuCDefA3HM8udw1uxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770608391; c=relaxed/simple;
	bh=ECn+IK/VfyQCC2gxaQrekOjXex2M2EXhTLmhUg6BTQM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kue5aRC/jEEzbqjO7YYX3jrRJGefLoWKw9hQsNZMdMM3YqezOtPLvLw1TnLsxsBshGDwigCiKUBliEEjFnYlnhCmrDe7vOqnakfalhQ9ssM+0Hx+EeMwxgqn5vcTpFpyDL5kILxQhydmNywfJg2DHlDeihT6MTM4uRN7t/ELL5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e/uwdRNW; arc=none smtp.client-ip=74.125.82.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-1233e05c77bso286069c88.1
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 19:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770608390; x=1771213190; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oY93OIO5iWMwE1xSdytzeXaZOhP6N9yAtW4y2SpJcLc=;
        b=e/uwdRNW+k6JQJ1Bl2dNnVqgmvIbpG4vV+wrfrIE0n4T81hhl9kMcLyscnR2v6t2eo
         ibTt4AaCiGHrT4Rbs58eH4nsFNLW2QG9Y6BCReHviMMunwsKgZQ12L8h5kFCn8wQ/4sO
         2XybvY7w3mCMtTHTfrsp4U07M46GOX7lq4LxMFusndaHmxSTSmycdQ+oKl/j1SdZfpbS
         OsuhWra6R35B//1D9Xnkp0ptN718Dh9w2S4yXU9Dd/4SElbJYbOqB8w58i+1CWsK5uK6
         2K2VmTvGdr5sv8knMrkc0hnn5MseVw64V7KZCTAucRIAbHgs90qt0+4qVktL9L7cPtnN
         PqtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770608390; x=1771213190;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oY93OIO5iWMwE1xSdytzeXaZOhP6N9yAtW4y2SpJcLc=;
        b=uafxEghAoQLeiWXUNCOqhy3J0EwLY+lcavjwn4fsKZ7T6VDLWEtwX1+TWTzrtSaDct
         9IXLEdQQlyuy1fc5TTX2Zs9PEmAxJIv/HmtgGkts2fQGDKoUf0l0b0PNSX07vDJzy7vV
         InABtmiaSVwBOC4Dyz+TpJ/vf57ELXbRKiicBvXzm2n0+TkvUtUFi48AK56D5Qh5++Y2
         v1Xwf4kNyEnq0q5lrX2AFOtT2mxsLK87hx0kQ/QkZqBzCxKY+rWOGFS9lo40ceIs3v6f
         bQsgRHb7jb1/OgHAhhs7eQ8eeBUgeKoFOm8F621NsWvQU0jFTZX4zudSDSFaOJNi+R6d
         7+sA==
X-Forwarded-Encrypted: i=1; AJvYcCUBcALorSBMPxKxkbXDkHB16RC+XtXV2XemBbyVWHEu5wiuj5t0u4uwlqJyYSy4B14W2BzfZTzjB+Xf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+WVofxsygg99LfF8tG2hRDpvdCR7aPHO3utlw+z8nA/naj45U
	RXBMchir277MXJXX1uPMk05E6d/qT3DCDZc81v7v+6CJYJXdSbRxSzbE
X-Gm-Gg: AZuq6aIsWHFlwiuDf1V1mjcpXaZED3kcPNfhhWd/a4CiaWyn0qAKRT69Zv327zOceMw
	l0v0wvzhUGPmui6pMhCP1XLL8W3LBx13/Vqc/IinxLtedNVWONKh8FVdnym5VgqwRfYq0DmXqIw
	+E1NvzJQLqYDzmjV0GLv1qTVgwshAxgNmPbz80t/MjdgK3aDJg5S75Tm/WfUXTFglYkkIp2i1AL
	BOo3OW6M9Urs/RW5XOUYDPLiVu1PvWXPFbT9K4dTGnnAIj2rF45Jq1MfZjMMUFwcN6VC+AHMjpg
	0exJ6R/ORGNnXm2HORTUGb9D5x4+gOZM7xP/ysdGT6LWGHsnrv3Cv+du91z71f0l6khu8gUs5gy
	efQlJNpr2CzH6MLcUUBa3pfPbwT4akjL6c9EAqjoIIlhbcVbRIoGnsc2f5HDMOsi2/JjHi3m6Ku
	mcYI38/etipMA=
X-Received: by 2002:a05:693c:360b:b0:2b7:2b3e:699b with SMTP id 5a478bee46e88-2b85682e73dmr2193316eec.9.1770608389797;
        Sun, 08 Feb 2026 19:39:49 -0800 (PST)
Received: from [127.0.1.1] ([45.32.86.188])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855af5ca2sm7682073eec.8.2026.02.08.19.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 19:39:49 -0800 (PST)
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Mon, 09 Feb 2026 11:37:02 +0800
Subject: [PATCH 1/5] iio: proximity: hx9023s: fix out-of-bounds access when
 copying firmware
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260209-upstream-20260219-v1-1-2b4d74e309d1@gmail.com>
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
In-Reply-To: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Yasin Lee <yasin.lee.x@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=941; i=yasin.lee.x@gmail.com;
 h=from:subject:message-id; bh=ECn+IK/VfyQCC2gxaQrekOjXex2M2EXhTLmhUg6BTQM=;
 b=owGbwMvMwCEYyfeRr6Zs90zG02pJDJmdYT/OMs+4mFak0L+XceOWF0msMpG3F5R13jJ+8vKAZ
 8ibYKWLHaUsDIIcDLJiiixnXr9hzVd9uCf4t2sGzBxWJpAhDFycAjCRYimGf3rBAfH8vU8MMs0P
 3znzwVZ84/mAY6uOH43Jtrvl1jKLR4rhF9O3jbdmcfrK/vy8YPsNjT3fuENeFKtnmFizOuilJnX
 6dQIA
X-Developer-Key: i=yasin.lee.x@gmail.com; a=openpgp;
 fpr=CCEBEC056F25E1BC53FB4568590EF10E7C76BB99
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
	TAGGED_FROM(0.00)[bounces-263790-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 19B1510B6B1
X-Rspamd-Action: no action

Initialize fw_size before copying firmware data into the flexible
array member to match the __counted_by() annotation. This fixes a
potential out-of-bounds access that could lead to a kernel crash.

Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
---
 drivers/iio/proximity/hx9023s.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/proximity/hx9023s.c b/drivers/iio/proximity/hx9023s.c
index 2918dfc0df54..ad839db6b326 100644
--- a/drivers/iio/proximity/hx9023s.c
+++ b/drivers/iio/proximity/hx9023s.c
@@ -1034,9 +1034,8 @@ static int hx9023s_send_cfg(const struct firmware *fw, struct hx9023s_data *data
 	if (!bin)
 		return -ENOMEM;
 
-	memcpy(bin->data, fw->data, fw->size);
-
 	bin->fw_size = fw->size;
+	memcpy(bin->data, fw->data, bin->fw_size);
 	bin->fw_ver = bin->data[FW_VER_OFFSET];
 	bin->reg_count = get_unaligned_le16(bin->data + FW_REG_CNT_OFFSET);
 

-- 
2.43.0


