Return-Path: <devicetree+bounces-258496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBeUDNhIcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:57:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A187769505
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 96C27300159E
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBC52451053;
	Thu, 22 Jan 2026 15:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D8Aa+9Nf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D1F4418FD
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769096631; cv=none; b=ImUBwHrmEuCW6dLIInptDh7P6GEOhaDSUggdDM2iSveBnwqvafgq83arS4Nw/6tR1JSZJo3JAcD8hiHJ+1rb8YwNf9GiNfTHnkOko5GKY6uSPUySCsiNRzchn0nVs6niuCGtU0exo5b36+Ai6PACfQvlBn3kyul1cnfWCbRTTZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769096631; c=relaxed/simple;
	bh=mvLpDBDtjjTy7WC1hkY3vl1ccJiFCt7eD41ttUSpx+U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NTt9ErfKZa6b1BKJGUGGc0WfD9EeT3eis3gMzdQSFbLdbafoOtAPYYGNPetEqD8bQyc+8dgRc0AXrOfhKuPrV91aQs8LkCs1S7q65OVHDBJVA4DqQL0BrCdga5nOnWigWvxhxRNhP2F3IIDSCIjbn6wHfZXBl/4pqUM3RDms8cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D8Aa+9Nf; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-64b9cb94ff5so1540521a12.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:43:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769096621; x=1769701421; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JjAudqG82zBneeIXc6AyLX5P/jBbCjeUnuIz0dqoYGk=;
        b=D8Aa+9NfSwRfvFE9J8LVFGnQBCFxZJBJUpfzXI8sfw61cgY2YjNsctyot9MjAdXTgh
         +4kCgmTz6FVYOiAxXSOVpb0plaTkuuVNVLqdZ+x8sMSiHlMg4Gmqd/XSCE2bZ5JQW9+9
         drNe2yWNV8yMvo54IGIKoTJ0Ao3xyc9HKdjH2lKRHG91SDzTZ4ToSSZx/rDjIRGPnn1h
         GkavFaMbwHm016ZByak6DnTOqpHThlZ02GMArS7e9m5uHJW3e4aGExlhzp5gbsDN0QlK
         wNng27pp0xj3VfSo2rlJx7qNlEFV3rZ4wclAsqPpvd/KySQatvb4xBjgzACAvUP5GTIL
         /o/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769096621; x=1769701421;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JjAudqG82zBneeIXc6AyLX5P/jBbCjeUnuIz0dqoYGk=;
        b=AQJeLd+Gmvd7BO0DkhzkH0gIzWt2JsGglfj4qT583FvV8n43ko60nz30v+NRAi2m0h
         j45szaqvID3u8mgJp+p2hWQAgX+WiHIbIhS7PFCEVEg3M5zYLVPkF9jdBNFMHVzap4DZ
         4UWFsknUJwNhl06mO6my+4D6pZuBLQvd8z/E+yq/g45tz+n/E/RIgUcxpGQ5hzTFnH0a
         saiwHgZYLxrcT8YoPTdtMIL9+F8eiDA9DLQ5l0P4APHYJZ/fBiA4rx3Q1jK1uLwiennL
         8nTML5Nx4DouZkCfoXw86Qxgdb+k1kYhCyBGDZE1y75fW8DOWne569Dvo33sLf2KiYDU
         CS+w==
X-Forwarded-Encrypted: i=1; AJvYcCWaZKHuwj9C4Vsu4H1U+tgBUbybrpPy96tOHAmba85Fug2RssgvwSxCk6lCVVhN0fphxKlAcThZ0XUL@vger.kernel.org
X-Gm-Message-State: AOJu0YwLp/SoZ5ySsADRvpM/yKqTS60TGR+qFbQ0iOoNtML0fm+pYpow
	DUdgXG1ry68AqzB5akMH2QHnun2uHKe7jigPZbzQjWD5TY0gSd89787gMG2ReDzmaYY=
X-Gm-Gg: AZuq6aKdrA5j0HlG+uetq6mmflWcyTlrqCoCgSJ6hnTtbEh4Xx5OM2a9w0M3OOAkQwT
	G8vNXC/nPBkZ9Be+irMrb9JlQpmoXgfz6gKvJyIoHljejrstIAkz/Pfre5MOUxH4+FyYhDStZX1
	hgApjuNcxybmE+/SRNvQ3PdTW+mF1Vbw61QkCGHlBkGVt1nYS7V+yDrU63taicdo8+irkTpwvw+
	rzdzsNEOYdWXiowneeUk1ATqZtgtZUEudib5eWPAc0EjAnGnSaJzcm92Bcse6KqkxC+ZRWF8VoN
	h80W4rw64oirZFdu5/fDl5+7p4MQipCXJkoqFoxWGy5GExmODa/8joo6Opm52srLTe6qqFy8+fZ
	5GcajKwlVx+MwJ2FhpWYeVuCFQjdyWUr1KC3W7h+Cyrhyb6y+e6V+QnFE93dQnmlCUXnS+Ey28T
	QYvnQ/rEMUZG9qMgeuX8VBE/Ia1fxl2ms19g53IEvxewPXF+6ENkar2tgbwssHcK7ifAKVVYk85
	uRp7g==
X-Received: by 2002:a05:6402:350c:b0:64c:fc09:c956 with SMTP id 4fb4d7f45d1cf-658487b7eb7mr24682a12.29.1769096620921;
        Thu, 22 Jan 2026 07:43:40 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c49f4sm16334363a12.31.2026.01.22.07.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:43:40 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 22 Jan 2026 15:43:35 +0000
Subject: [PATCH v7 08/20] mfd: sec: s2mpg10: reorder regulators for better
 probe performance
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260122-s2mpg1x-regulators-v7-8-3b1f9831fffd@linaro.org>
References: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
In-Reply-To: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258496-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,gmail.com,bgdev.pl];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A187769505
X-Rspamd-Action: no action

Bucks can reasonably be supplies for LDOs, but not the other way
around. Since rail registration is going to be ordered by 'enum
s2mpg10_regulators', it makes sense to specify bucks first, so that
during LDO registration it is more likely that the corresponding supply
is known already.

This can improve probe speed, as no unnecessary deferrals and retries
are required anymore.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 include/linux/mfd/samsung/s2mpg10.h | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/include/linux/mfd/samsung/s2mpg10.h b/include/linux/mfd/samsung/s2mpg10.h
index 9f5919b89a3c286bf1cd6b3ef0e74bc993bff01a..aec248c51f366359ff323f421e453a0ec1d1dfa3 100644
--- a/include/linux/mfd/samsung/s2mpg10.h
+++ b/include/linux/mfd/samsung/s2mpg10.h
@@ -407,6 +407,16 @@ enum s2mpg10_meter_reg {
 
 /* S2MPG10 regulator IDs */
 enum s2mpg10_regulators {
+	S2MPG10_BUCK1,
+	S2MPG10_BUCK2,
+	S2MPG10_BUCK3,
+	S2MPG10_BUCK4,
+	S2MPG10_BUCK5,
+	S2MPG10_BUCK6,
+	S2MPG10_BUCK7,
+	S2MPG10_BUCK8,
+	S2MPG10_BUCK9,
+	S2MPG10_BUCK10,
 	S2MPG10_LDO1,
 	S2MPG10_LDO2,
 	S2MPG10_LDO3,
@@ -438,16 +448,6 @@ enum s2mpg10_regulators {
 	S2MPG10_LDO29,
 	S2MPG10_LDO30,
 	S2MPG10_LDO31,
-	S2MPG10_BUCK1,
-	S2MPG10_BUCK2,
-	S2MPG10_BUCK3,
-	S2MPG10_BUCK4,
-	S2MPG10_BUCK5,
-	S2MPG10_BUCK6,
-	S2MPG10_BUCK7,
-	S2MPG10_BUCK8,
-	S2MPG10_BUCK9,
-	S2MPG10_BUCK10,
 	S2MPG10_REGULATOR_MAX,
 };
 

-- 
2.52.0.457.g6b5491de43-goog


