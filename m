Return-Path: <devicetree+bounces-268244-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPTDEjrEnmkuXQQAu9opvQ
	(envelope-from <devicetree+bounces-268244-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:43:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DF8195352
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:43:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0E1DE3014410
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:38:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63A6638F226;
	Wed, 25 Feb 2026 09:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JIisOhiB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AF638E5ED
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772012285; cv=none; b=NIDDpxba4s9GyT+pPV8OZQJx4d9t3aAs6HBzQXCFu/gyfKyALdjSSdub6IjCSGuSGBoXHnpOdsKhAmqeOb+6uJ2eA56SRg5Ved2/01R1TsWnkkklB4uPs7cQkkEU7RF71HWraB9lycyCpF+vRLvi3vBFnjOqKbFjU6bn2f7KuvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772012285; c=relaxed/simple;
	bh=o+Rh7ziHygMLN5eECorXPAefIAlC9SgTA43+0llCVwY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=W5G2L6V36WOvyjPROJKXyxjPcAwjpq9hGSS3BhQ/0erXb2xwamGE5P8LLp8zyXHrjgeBuIL8l1vRMlUg3Qs1d/DyhsagFBxKOltUDr24O2S/1P4fwfH5PLX6Ih+HvKdTZYgKFLjcU48EksNJQwQLIKnW7BebOttDXW+BA5RiX1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JIisOhiB; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a871daa98fso46692025ad.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772012283; x=1772617083; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GYGtv7Wc2aMLYdFMhuKq5N5C/O/GNs6HZR/j+tM7qfc=;
        b=JIisOhiBfsF2TmesdTriwZRd8spmBOSuRxkE7g2LndallxNtNw243MZuYzHwJHWinR
         n8fqSgYM6YqJtx2oD1JUzrTvIdPB1PVQS9V1nxPOhb/RXkM+xPcfwo53SUlxRbalzjP7
         xplmE8J258MFsTuehwemr1r20qgXrFHL8yT3DUlLBMaVZ3/SOcFbhMvcpD2hSVfThRpm
         cehCWknaMlYvipL7/COIBpkm/ALMBFpQ4JnqIUTuMykG3sjL8ZTSytZGamLf6fNx0G30
         RYdMSS0YR6I3wAv+moSddfre0QrvKY7FcIoq6zAg4/HV4VGbIOsWoOh1KYMOKeSfA4mV
         DRMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772012283; x=1772617083;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GYGtv7Wc2aMLYdFMhuKq5N5C/O/GNs6HZR/j+tM7qfc=;
        b=FJ6VZtefSS67Sb0oCx43BOkjLQTy0GaBrITM3jIVfchmCnQBIFHGxZrU25Dla5AFuL
         rSaoZbLO3wi8qNLIR86iT0adDqorYg6B9FnDkRh0uzuosZHL5sgZhicG950XzZKAfZB2
         HOXKjjXw2mDymS29rQiEoTBRbNH9wfipQ7/Ugxi64SxGudVsCfE64ejlU5yS+4oUYfy1
         gDMO96zwJsrgrtjVnQ4+FWvqTvvTmxNXGAwa8hyvlWfmACMHoCvPQ0Ji6x8L52GFV9Kk
         0OXLC+L8aw8oZ5CrebakECC9qE45ywmMphiRAnmaydBBKPK30Z+qdQhN9famd+KUY6W7
         0uXg==
X-Gm-Message-State: AOJu0YyJxDXCF9TWQb56ctmwgZgyJOIoJkxx9XkpLiw/cb19MTSmBtob
	8V9T4BXFi55XYHASiz611X47RE2DbDdtfkUpk3omHyroN8BVw8woEoWn
X-Gm-Gg: ATEYQzwb34urlTI9xaq+dW2OB/DYRK9l5bph5a2ABfyNAd/9hdxKQEBMvPOAw31IYFu
	TmZXSp8MQTT42bgBuMVz0GnJ5Y3kxmPYbZJn5EnyYEHvSt6t4QLfUnsdbOZHnZkJBDa8Yi9Q9ct
	daZj3dT0TOm2XGjZw/g+27esO8Q4W6HXjklnXf86fRL7NRHTPLAOWkyu3B3y6Yl0aqKmShczE7T
	qtP6DriZlweYCztKd0OnfPlAFMxu1fzVVsyGQVIR0iZWIGa/n4HiwsjQYq3GjnIAUqdNGfZqCJF
	8prTiU0AI73b/VXdedHXWOeKPSrjaZW1WIHhhmyfPan25CGFI7KLWUK7TyJV5g8byXH69KZm3aM
	/oN8gv7IwXEW/jgHCiiE6001Zdo/zRMo4/9mjfFU9zYcDxNI8SDYLuFD2gpRgEx1trTJVsgFK8c
	MISzdux78HeGtgPVKdAIzU
X-Received: by 2002:a17:903:98b:b0:2ad:bd4c:a0 with SMTP id d9443c01a7336-2add144435bmr21623985ad.47.1772012283497;
        Wed, 25 Feb 2026 01:38:03 -0800 (PST)
Received: from aruoarch ([2600:1f14:19a9:1700:1562:d618:7c99:f644])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad75052e9asm136228435ad.88.2026.02.25.01.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 01:38:02 -0800 (PST)
From: Song Hongyi <szpcq123@gmail.com>
To: robh@kernel.org,
	saravanak@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Song Hongyi <szpcq123@gmail.com>
Subject: [PATCH] of: property: fix typo in kernel-doc return description
Date: Wed, 25 Feb 2026 17:38:14 +0800
Message-ID: <20260225093814.124735-1-szpcq123@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-268244-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[szpcq123@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D4DF8195352
X-Rspamd-Action: no action

Fix the spelling of "success" in the return value description
of the kernel-doc comment to improve documentation quality.

Signed-off-by: Song Hongyi <szpcq123@gmail.com>
---
 drivers/of/property.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 50d95d512bf5..457e628ff9db 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -88,7 +88,7 @@ EXPORT_SYMBOL(of_graph_is_present);
  * Search for a property in a device node and count the number of elements of
  * size elem_size in it.
  *
- * Return: The number of elements on sucess, -EINVAL if the property does not
+ * Return: The number of elements on success, -EINVAL if the property does not
  * exist or its length does not match a multiple of elem_size and -ENODATA if
  * the property does not have a value.
  */
-- 
2.53.0


