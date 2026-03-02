Return-Path: <devicetree+bounces-270028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPqKEn+SpWnXEAYAu9opvQ
	(envelope-from <devicetree+bounces-270028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:37:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6761D9E9A
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:37:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45F0330C469F
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6D503FB04B;
	Mon,  2 Mar 2026 13:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oo4MbrNN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A09BF3FD148
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458344; cv=none; b=uacrsCzXKThyCcNRBGPjnh/oKTnk5AAL51n+BCpBggIhyVqbQiJTXrZ7PP3Wi1sN8SGMNLoGRi88d2UmuW4BRmRGPGogxZowedvzOva4pt/yY0JDcCm4mCT3veS05OgoQ8BkO8WS64d2SPoYk2C8PKTGOVCrSPY7K+gOf39APYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458344; c=relaxed/simple;
	bh=/OAEYu8jHman9MxUf2Cw7PZoouqlJJESflhDoszAToA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UXyzzBl6PKcw4tMaYaOTS8bMnF8PQzbvdgMLsfNL2UKdhVDL3R2Z4nHFVun39dSIJnrEmoYwmSLKGXquIsGZuJS7Vz7Kmw3uzwWbDowxBNUkOL6vWLe9br7VhJF/G7tBB2RLCqCGVMw3IsnDmit3RUdocglaTBd7OHua9HkrJzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oo4MbrNN; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-65f812e0c83so8391321a12.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772458341; x=1773063141; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7bA8z6+Ihxqj6Q51dHeQDrm0g3jaymFmJkAFFDypHMQ=;
        b=oo4MbrNNX/QWN099HOszfX9ZuHVOxjnPx7WSEDstaliEMbdfAB9PQAb3Afr//lLTSo
         Syj4yJ8S9Fi20aVU3O8j1ogrLKQJOZSZd1TIcImrA39z8xkyTDhl0UFirWs73aqNxs/U
         1Jq51xLRsaSkbNGPZR/xetNhCxr+juIQHgN9/1kRIypl/7G3iMpTMEQ9D/GmaIbjltqh
         0PkUgbo6TSq5k56Dg5KqlFrGT/++RdXqHFi/LqORfV/nrVU6zb/XSaUmfy7q3wTuM/eP
         Ec+bucG+AkgvDFXFrTtMa+plH8Ultm7zB/Bib3aFun4uNgRoLIIkGxafXpINzKAyLLwk
         fjqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458341; x=1773063141;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7bA8z6+Ihxqj6Q51dHeQDrm0g3jaymFmJkAFFDypHMQ=;
        b=l1xoDwMZ/by6MfXWLDEqfSgXt/kF4NYP+M9WYB9A3vyLPO6BrpXHVQ7UO4+hcGpRFj
         yFRnWggSY+W+8MrcWcoxcCHaexPf/9Z+NZevs7I142QpZk/cXaOx1FGm85Mo/I8GL6QO
         Hr1cvwcvHL1hkRzm3bgoGY4Rc3UnLEXsJFPIe+c8OHcm00Mfzf1PBdorh13dAD/ENs+1
         gBngPgSxDv8h95P6AJNwriplV/PIRA0rMQGb3uVJw2NF2SfFs/IvUK5zatzioGKFnZ4i
         2kSgnAtjHaVsQCVEdkWvvhR5abIqTxsM9eq97/VxQpkJ29aSZjzqD087NgqGVHCGU3gP
         SmKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQwtWfFbMSpovI3HXaYK3YoZvFgsntSx06z4s84E5swhGOXv+Bc75adugbj4BehaOCGcWKSVJB/J7I@vger.kernel.org
X-Gm-Message-State: AOJu0YzMRLF1bQn7XK6Skin2t1iMWf8ViBo6lh6mDQgodPWFqjB22Kys
	1VURoD0cJyEVWzN7cOOGAP5eMdB7e8qBcrsZ9eLqFqz35jm7Bd6MOUqeOYIlE3Eu4/Y=
X-Gm-Gg: ATEYQzzbHaQ68lqJRLTpm5MOmFy/nuvesMtNGiGA5TfMh1Npyd4znVioyyP420l7zSp
	JEUUpWshGInqWSZ4Xk+HkPb8dY8vQ2/2lRt6JZqU3tugIYiqgqbv9Fcz4EuKu9orinKonHvzlsE
	eYE0msG7TRbDVRi9wqmMpyA1Lq3/abnEejvFn5mBMy1MwB6kHyyOBb4mQzie1j1BJTodyJuYrRE
	5LJFQI+mtdag9FW4VUwHgGyANiI5eWCHVgnQ7d9XHutM9Ukp9tDE6R7ZQBETNWJi+sjRbT1YQlU
	qIjadaIrLNsT79+3tFtxW4BnK19oIGq456wZvOPaU84IsbaxdMwoAMyvydDTrIiIMo5YVc9RTSS
	itjG3m7Fome+xhJjdJq0KVv5ejogdHl4IAhgjLUqsHwQoVGOP+SEQF8MrnXd0fAqtMNXP//zhQX
	37wdTsOJSExGchoe6yv8EmZL2tPEWTTM3q1z+5AlcxEzbFMbaN/oWCu4mg8exBwS6HG9ZRBjoHR
	CP6BzshVIZ59v0=
X-Received: by 2002:a05:6402:40ca:b0:65f:a60c:5ed2 with SMTP id 4fb4d7f45d1cf-65fddcef5a2mr7747903a12.24.1772458341068;
        Mon, 02 Mar 2026 05:32:21 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabf6d1c6sm3282988a12.17.2026.03.02.05.32.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:32:20 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 02 Mar 2026 13:32:07 +0000
Subject: [PATCH v3 08/11] power: supply: max17042: support standard
 shunt-resistor-micro-ohms DT property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260302-max77759-fg-v3-8-3c5f01dbda23@linaro.org>
References: <20260302-max77759-fg-v3-0-3c5f01dbda23@linaro.org>
In-Reply-To: <20260302-max77759-fg-v3-0-3c5f01dbda23@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Ramakrishna Pallala <ramakrishna.pallala@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270028-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AF6761D9E9A
X-Rspamd-Action: no action

shunt-resistor-micro-ohms is a standard property used to describe the
value of a shunt resistor required when measuring currents. Standard
properties should be used instead of vendor-specific ones of similar
intention when possible.

Try to read it from DT, and fall back to the vendor-specific property
maxim,rsns-microohm if unsuccessful for compatibility with existing
DTs.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/power/supply/max17042_battery.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index 0a6960bbf3a2..e21d2bd7e231 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -925,8 +925,12 @@ max17042_get_of_pdata(struct max17042_chip *chip)
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


