Return-Path: <devicetree+bounces-268826-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0A7MBAlJoGkuhwQAu9opvQ
	(envelope-from <devicetree+bounces-268826-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:22:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1721A65B8
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:22:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEFAD319C5AB
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:12:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9BFF33438D;
	Thu, 26 Feb 2026 13:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pQs3pBbL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AE7329369
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772111506; cv=none; b=ro2ZseyU7T+l2syfTNmDVVoSwcwU+2sCeCm2mJtsgj6Ig6sILHaM0KyoehHRfPsTy6WRFhmwBOUc2yM1P1s0gQYNkWUrnP2JpPVmSMJa+Ied1slw6xeTDBNT/tlBf8Y6g/UNuyXainm8lpbo094vMS8f2WCrYAZ3t4jHoIIzIJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772111506; c=relaxed/simple;
	bh=ntS4fqPIioaK4GOorQ6OXd2YXpStLXdHLtH4yKTAvDM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pFjGWxrgvMp5/2gSO/k9pX+z4sKkZYMs7OYWnim7QtJTRvHPipQ3hTNwxFD7ghqSUNZW6fwUeZB6uOcCE4Eslzd8N9+jYROhizqy79DcSDUr8auyQtQHftQIKoToi3T11eMEzsPsjb6ap3XX3r9nxdJ09htcs63aoVRgafwn/kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pQs3pBbL; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b934fdced05so99052766b.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:11:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772111503; x=1772716303; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h6y+YqcmDlZaWuwEmsiNt0O5Q0Y06fca5UIfK5pVano=;
        b=pQs3pBbL+vdmdoEeSUwrdt85jxhVilgo+AXYsadcnFTojBGMHp03//aT3qdTquJs/q
         cXEAGtqZ2MbI4yvujLjd/memVs4KD4fFELt1htAMwhoPzOztEz0VFAIhnq1xA3Igligw
         IKDbjZk5Aw4mDGbGfvGqDDk10t8EUkAZ5UlbhWS/29FbbAIUs3x1kAu/dMp5WRaPdq1y
         ZeLAwGmlA34Rem6uM8yvXkAEYZ7Ji3mrLlWcfxfCiTOu2g+f/T94z7DO77vGUFuFlOnz
         iR9dDOzNSJIZrriud3TOAo9romiVk3/1K5T7rwSZHRbzvS5TGIvsdSjnMHQidJoPWrpd
         5Vpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772111503; x=1772716303;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=h6y+YqcmDlZaWuwEmsiNt0O5Q0Y06fca5UIfK5pVano=;
        b=XNhAqoy23hXCvrWdPaTVGOarF/RQq4xet2QSVoOxrUtCaUjyUIJza4vArW4HFMTgud
         RFN5Zqust/76uf+1QNsSgZ/Bl6vel+5Uz1DlGbDPbBZ1PTmpSlVvxoXMLVWJPIXeRajw
         F/5NU0WRKkbte+SnNVnRN/1xyv7e0SdnzPkdPmKD47MgHw4BS7+T/LsFGGxEvAOP0wmO
         PJ8t/MVniyXxlfQ1yiKtRJdxzbXBtETozWcNyi51njpD62vYoYBtXqw3w9mdvA90xY5b
         RI8IYA4jLF4YS4DdvbUm2Thy2JQGSkHRRpxxjjsXZDEU6wI5YsOS73H/QzhI4jKJTCAW
         iV0A==
X-Forwarded-Encrypted: i=1; AJvYcCW9Oln6QR8fOinUlRfJMdzOxcWISb0VK2ISXsWhO7BpRw3eGc8ncuAwO+KXxXo6dpsES/OH1AyiQbi2@vger.kernel.org
X-Gm-Message-State: AOJu0Yziu8sQs8LzZNYjpVFiA3p9dmpBeHTSdZkQ+x/6Ru3ZWh4qbqxt
	0G8iKZCISeVZQQo6MuN1hO9GuhPUPx9IMc/IvPsVal04o76yqSNO7HIz96QsQuIDcKI=
X-Gm-Gg: ATEYQzyoqUAxOUC/S8lg3v7gsA4f9XrvHqJoswci/QFafizOF34kBq9Lq9m5N+Vy5Jq
	cye3refYLUaXvZCVwSKYXaP/Gic/dqcML9q4OX2u9j6N8Tl8FKOgnda9YHNCOcVZMhGtRLakzx7
	4K0nYR3/8XLglmvIQyfaOc4cSr2BuMbkePOF2XfseY17BkMqsTy2DK/ao+Rw/2v7NV6s7YQxO0Z
	YzgFYcu9aSzP1JFHmW6gaAq4RNlgdRG1R+FVxyFbsCFwjPWFS79BVSo777tAd5yTfkpxpCRQa26
	6cw5ivG4zy6OLaXDVK6AXkIfyOd7dbcQFLHdAVDhsf/YRwjjhqJlpx3GW+c0pdAz6PxPHQW9DoW
	916KO2s6Tub0K5L8OHMuKpsPyDFl8Xhu31h30jUxBbmdmL7e/9YY5qT1QyqBcUYCv86hY/jL5qV
	d6rnDtJrR899BL/IG+HLpI4BbQEXzssCkPWCwRGfds7Brnfjuj8uEzU3ylvQ91Qm0L1Zb1IAvkm
	JeTieBXZQSuQl4emc5hobgkbPcU
X-Received: by 2002:a17:907:d9f:b0:b8f:8660:3cb4 with SMTP id a640c23a62f3a-b935b4b8202mr125706466b.8.1772111502920;
        Thu, 26 Feb 2026 05:11:42 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac73d2asm55125866b.26.2026.02.26.05.11.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 05:11:42 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 26 Feb 2026 13:11:42 +0000
Subject: [PATCH 08/11] power: supply: max17042: support standard
 shunt-resistor-micro-ohms DT property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260226-max77759-fg-v1-8-ff0a08a70a9f@linaro.org>
References: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
In-Reply-To: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268826-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7E1721A65B8
X-Rspamd-Action: no action

shunt-resistor-micro-ohms is a standard property used to describe the
value of a shunt resistor required when measuring currents. Standard
properties should be used instead of vendor-specific ones of similar
intention when possible.

Try to read it from DT, and fall back to the vendor-specific property
maxim,rsns-microohm if unsuccessful for compatibility with existing
DTs.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/power/supply/max17042_battery.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index bae0670e2496..823533ea5a17 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -929,8 +929,12 @@ max17042_get_of_pdata(struct max17042_chip *chip)
 	/*
 	 * Require current sense resistor value to be specified for
 	 * current-sense functionality to be enabled at all.
+	 * maxim,rsns-microohm is the property name used by older DTs and kept
+	 * for compatibility.
 	 */
-	if (of_property_read_u32(np, "maxim,rsns-microohm", &prop) == 0) {
+	if ((of_property_read_u32(np, "shunt-resistor-micro-ohms",
+				  &prop) == 0) ||
+	    (of_property_read_u32(np, "maxim,rsns-microohm", &prop) == 0)) {
 		pdata->r_sns = prop;
 		pdata->enable_current_sense = true;
 	}

-- 
2.53.0.414.gf7e9f6c205-goog


