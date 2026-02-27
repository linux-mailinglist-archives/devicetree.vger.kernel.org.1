Return-Path: <devicetree+bounces-269095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CY+G8BEoWkirwQAu9opvQ
	(envelope-from <devicetree+bounces-269095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:16:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 062301B3B88
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:16:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B26CF304033F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B48C36BCED;
	Fri, 27 Feb 2026 07:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VjawdX1s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEDF36BCE8
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772176518; cv=none; b=Vock6tylMbdV04aq8YK6IND0cECCiyWYjpTm0Fb10JhNkzWycpC1ruiVdJtGDcEA78gJAHOwga6N+voayk39xzHC+1pRZHQaqpKp5Wjog/PeTo+WQQA9VpdF6zPV/XVeJSztRFG56r9IG/VCWyVn6+njLmL8rhAdArk4DWRQflg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772176518; c=relaxed/simple;
	bh=wVYvUIvThmeYxK9y1dkxq/j7c+TyFXalQgUYZy7JXWk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zh6Zi8tVHJcGQ6dVNkgLXoTU5PGTpZkVDV1xDsnLihbebj6ORgyGzu0x2vfUv2ZPuQ92cZnph2hsRg9dLJMC6/YVsu/VmcUK1jRsEC2hZdAhoTttTJaDCSzqr0T7kZIuzpc5VW/g0avPl1pP/r8DGsl7V5XiBq+3ZNEDbsOCBMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VjawdX1s; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b93698bb57aso209193066b.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 23:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772176514; x=1772781314; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kxP6griohT9HSxEeETfyibe+6CSx5ahGktEAwrsPHxE=;
        b=VjawdX1s8rgx96og/2Qb/OfG4aWnjM0am6JvuNJ+nDB52EgZXQazHHVECz3+/vC5xQ
         la7OLFlp2K9o21MoltWNEb+jYPSZGv8XIQFauOxTYPlty5LiHYUpoHsAB9VFsE0xiwXu
         HEI2XHBKET7SrHf/FfEaWXj+ha4KU09By95W+1xSD0F9qgjTX2DE60klfcUyuqmQRK33
         2+z+HL7OIPbvOZ9xXqz8F/tp1WDddQdYCfSe0GvwuR9OgKt3kQ/NjQlyqi9JX3dFdi08
         h+LYa0LEcvhK398t1qru8N9oaITGjuQiv/Ry9bsrBRM6GU0m56Jk5vI4J7/TjzdiAb5H
         KyXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772176514; x=1772781314;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kxP6griohT9HSxEeETfyibe+6CSx5ahGktEAwrsPHxE=;
        b=e9QiIFNayQE7M1nXwxiqCqEncxJhS4L3kEg8IkoxH3v1IYumkyF5omFH2FvNjx4kow
         jK6JWq7hb0jgOHFhD+JSUpFUD5k9m0gRLLSQkMEJiK+4YeyiTMrfBot8SB1VgHOD0aDc
         1cRqC8pzyef88W4dxuuSNPTt1m/0VuZ15YsIY6rwjY5Ott5kg+1xnDMOGdLPHJxxw8cV
         lNjol2g7pudYxTYuzqs+WK/pAn/b89GPLeCLVhiQ3yg2DcWGeZjgUeq+gCdIHwP9znCC
         ObACBiANWf8BWkYB4R0nUVcme1e7rb+YASc2UvXhug5NQTSLL0qzC3ZNCGoSsP9O2NnC
         amcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUETQMq/2PQnRsAqPQF4ZOHiI2kCnsgkRAZAfUD4404RAjUfyAVgGf5Pg8tYfjjL6oSVcD0gXZY5ya4@vger.kernel.org
X-Gm-Message-State: AOJu0YxoA5EU42PjD5yFXnaweP9/bArI7YXFFwjPBRgS7ikUv5NmWRdQ
	57owH3LgRObvbVYm/cijf4NBqKc+4ioQV6p4RtWBryBpcMs9GYCS7ALGQ63xHrMfJZM=
X-Gm-Gg: ATEYQzzI5jJZxm4A3bLqnUTx8bB5+obZdJgkqoQH6oSaoOqRTA6cJs99YXIyJ4eSIlg
	OmMWH4reuwF4AWUX0DmcmhFZzpqlxj2ah7616vlBAbtYtscaF9P0R/GVzirRisCP8sOTLrkeibq
	IxewhPBWFwoWuG85KdAfCqFnVixFNGyrJCboKeRPr/qRlmeQ+6eCr32s7IN7ufhwqGcCr0/Otq5
	0Ep0suMijmpaF/ppEHQUfy4BQCM/PrTrTqOJKT92lhG63jcTjsJ1hlFjezxbIUn5pJlJb4o4PmH
	xGq+tjPamykmdftH7pWjYU6bD0QloSRjXvTPLutd4veDrH5l8p9SH0SqQHfoDNcgwmb2NgI7N4q
	NtOHvbZs4+HSSZBVAwvPvWXK67NvRLCWfsaQROQSjaibbUH11hWja6BodWlBvht8NI3660qID1P
	q2UaXyzRuGh91VydYUWs/aK+Mze3/JOUCNcVEBsdLePZ2V2UdQDRlnX4uF6rN5OQMO7D1BONChS
	n19vn8mf+tmL+UPtA==
X-Received: by 2002:a17:907:d11:b0:b87:6bb4:9eaa with SMTP id a640c23a62f3a-b9356f38f98mr305079966b.8.1772176513601;
        Thu, 26 Feb 2026 23:15:13 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935aeee867sm124205066b.66.2026.02.26.23.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 23:15:13 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 27 Feb 2026 07:15:13 +0000
Subject: [PATCH v2 08/11] power: supply: max17042: support standard
 shunt-resistor-micro-ohms DT property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260227-max77759-fg-v2-8-e50be5f191f0@linaro.org>
References: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org>
In-Reply-To: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269095-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 062301B3B88
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
2.53.0.473.g4a7958ca14-goog


