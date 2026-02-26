Return-Path: <devicetree+bounces-268829-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KOVClRIoGkuhwQAu9opvQ
	(envelope-from <devicetree+bounces-268829-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:19:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 514381A6470
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:19:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8CFE2307C898
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F5DE3396E6;
	Thu, 26 Feb 2026 13:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xxUz9LCd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75C8332ED0
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772111509; cv=none; b=BcmnkaBhNzRosDM3ZOcer9HwJvhM2yeWCI8NMaTkFe10DEYOWNZKfjRrj83UWPZ2NN68HjyDtrGYf7sMv6KJE/r0S9k6PfCEDz86v+rgrw3BeC9tmGdy526cA98oXt5tqYugOCeYrG1diSMCcaxXmsX9eNW/LCDTmkkCBX+OlJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772111509; c=relaxed/simple;
	bh=wlWid3O9Fpab/ITze5p/VvOOHbyf58AYdw0ERtyxjDw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DFfRbzXNds3Thzkh6AGH7h0psiDYacCD346HCzPWqC09FEnP7KYDD4r17EkBZbHuNasGmA1JUAG0H4URnRk8joSaoC/XydGWaABmKTol/muYH6hqDQDfbkGI+vZbwdyAWWQaTFp+wuwOzaLhNqN7C54FkxP8AJel3ZMrkqkmOEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xxUz9LCd; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b936505e7a0so50111566b.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:11:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772111505; x=1772716305; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5gN0iJe9ljlr3ty39XAJfVPtgf4B+kaTwHCMAMG5dSc=;
        b=xxUz9LCdaPtViFhfaAM1gYrhlGH1L+SrnQv/vqEJh8qROPC9Sf8EUwYHfHKL6paj+T
         gTmSSZdbUxi/k6A5pkdaiL24aUPLkiJUNIp/yZcac/GbUB+066WFr+V2+jKLvSlLxR0v
         0oYFkuGYolv6MClw4PFCHAN5uFJ/+GfCYuF3mXsNNQA3uXagd4AtZ0spvmTJyf1qrpk4
         Lxa7eymfv4HwPSpEdaGDAPSYGN+4Fnekso9WQe4MzmgIOLXxZUibco2muzARChMEhSOg
         XtOWChhch2X067EmBNmJn6hn1gm1uCuPpMNfzmMnnt/7zuo6ZG8enSbQWNLEtGdjZqiM
         EeRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772111505; x=1772716305;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5gN0iJe9ljlr3ty39XAJfVPtgf4B+kaTwHCMAMG5dSc=;
        b=utZSXwfFoHeYSRlJLM+aAlgE2n8PObvGwVhoc+qohccpnSKgZV00vwWXtYjNUjJ9DT
         bEUZh2HAt5pCKZHw+47OkTeqI5ESFmzpIPcAmDvMv12PeSBil2AXck/ZG6Skj2PU91mA
         t077vJgJ0qPwBGUls/84ifvCJzUgSFpohQWBpvsit/YTcUqC7uUD36jKo4ZbTcxANTyp
         y0QeFeaKX0ZwkywCeDqQGSOYjeUaXqGjb4ZmkXkUmMEWna2YSd465oYDovw9AdhkdVxZ
         VozRCs0EgjmA3jnrXDRgB+56b2nBEnJ9DellU9mfAey0CJZa7Pqau5GekkVQnZLuwPMz
         fGzg==
X-Forwarded-Encrypted: i=1; AJvYcCVwgE9kes5StAxTgiXnuNlM53WckzfmfayfoGaxLEO4WaqBXQkBZpVEmTO4iSsWmwfCFAEOHh4ptgBV@vger.kernel.org
X-Gm-Message-State: AOJu0YxaNeKiEpXWnKGN0oc9Tpy6KrYIVg0TjV/qY/sxpFa1wrnfDqHc
	cojfbsQXe6VUXx8CyORF3Kwt7lJTfeuCAqnZzZRAC8jOl2rRD0KYMJuiJ5AxnRESpz0=
X-Gm-Gg: ATEYQzyNL9OT2GVg372HM0kpB8ZFTaHuR0g2tTnvaX/c/X69bB8+iBfQmAn6rkZXct9
	lyAuYhItbipJUC+Yeu81uknDllu21kVNlF1jAkoJU2z5gMCXVdC6oEyi/txOc6YOuMsdQIsZdls
	N1JWjLrH7PFhNl2Uw4/gWUY3YpnkkP12grm1QrWIxNHFcvq01fAzx+9nA2kxptbyt0boXD6/SjW
	GxGgj8MzhI1qM35gBvTXr0L20r++whz/O/W1G5pNPtbToCg7D5dCcSNfzt1M4bT0fC6xa8lG9w/
	QEoRjQ+U0VJVCvG6U4V2PjGR/BKv3zK8KUAdqmwc6Eo0RKF25pcszvDGoXGMkuee+8xMZhkgz8U
	siRV4Snmh0htDRWpr8xlKV7Q5CynPLQUHyqrfkrly1qQMep41EYuSTaaQpK3G89HRoVuWmNXt3I
	wWZ02iywO/R8HvyYqYh7KljxY5NjD8SwEIkssWznsDO76F/zO5R/LjcKig8K1L8LYNTnHEZg1uH
	qVgdLjyqhT7o+c+4A==
X-Received: by 2002:a17:906:eecd:b0:b93:5349:d48b with SMTP id a640c23a62f3a-b9356f319fdmr159637366b.10.1772111504825;
        Thu, 26 Feb 2026 05:11:44 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac73d2asm55125866b.26.2026.02.26.05.11.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 05:11:44 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 26 Feb 2026 13:11:45 +0000
Subject: [PATCH 11/11] power: supply: max17042: report time to full
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260226-max77759-fg-v1-11-ff0a08a70a9f@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268829-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 514381A6470
X-Rspamd-Action: no action

Report the remaining time to full as calculated by the firmware.
Similar to time to empty, the reported value is only meaningful when
charging, i.e. if it is != U16_MAX.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/power/supply/max17042_battery.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index 89909b140cf9..cf8602d925a2 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -89,6 +89,7 @@ static enum power_supply_property max17042_battery_props[] = {
 	POWER_SUPPLY_PROP_HEALTH,
 	POWER_SUPPLY_PROP_SCOPE,
 	POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW,
+	POWER_SUPPLY_PROP_TIME_TO_FULL_AVG,
 	// these two have to be at the end on the list
 	POWER_SUPPLY_PROP_CURRENT_NOW,
 	POWER_SUPPLY_PROP_CURRENT_AVG,
@@ -447,6 +448,23 @@ static int max17042_get_property(struct power_supply *psy,
 		if (data == U16_MAX)
 			return -ENODATA;
 
+		val->intval = data * 5625 / 1000;
+		break;
+	case POWER_SUPPLY_PROP_TIME_TO_FULL_AVG:
+		if (chip->chip_type != MAXIM_DEVICE_TYPE_MAX17047 &&
+		    chip->chip_type != MAXIM_DEVICE_TYPE_MAX17050 &&
+		    chip->chip_type != MAXIM_DEVICE_TYPE_MAX17055 &&
+		    chip->chip_type != MAXIM_DEVICE_TYPE_MAX77759)
+			return -EINVAL;
+
+		ret = regmap_read(map, MAX17055_TTF, &data);
+		if (ret < 0)
+			return ret;
+
+		/* when discharging, the value is not meaningful */
+		if (data == U16_MAX)
+			return -ENODATA;
+
 		val->intval = data * 5625 / 1000;
 		break;
 	default:

-- 
2.53.0.414.gf7e9f6c205-goog


