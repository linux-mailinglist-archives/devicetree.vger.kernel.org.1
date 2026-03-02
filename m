Return-Path: <devicetree+bounces-270030-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OBQFciSpWnXEAYAu9opvQ
	(envelope-from <devicetree+bounces-270030-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:38:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7601D9EDD
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:38:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD9FA30DCE86
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:32:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 862274014B4;
	Mon,  2 Mar 2026 13:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iOn9HMwb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091F23FFAC3
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458346; cv=none; b=UwZVDDtvKwJKG2VMNfvKT3eEtg+kP2FFM9ArBeZtsS6zBYnnbRUU79u1nc0xhNONqOGo23NnnkdMdqwO2Yi0vqa43rzqo/JnWqmw478jGYLuEwGBA9X89Yn2zhrYrEvzwuvT9VaTX03QOg7XPZi8m0mYGTTDjJmKE7oMmmCbddU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458346; c=relaxed/simple;
	bh=RljhWrFUV2Vr3KF+ktWVi6/U6PhZYUjyI1YmlGYnvwc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LrE67v3PtcsUGYPZ1tiEO+x9OPG/Z5oUH6iAXOB/WwOCXyXydyyTowiM40zU2jzjOR6oZtz/oF0HJSpfmMgp3Jml8YawCDAdKtH2rgq/ElLsdOz1zZnTA4hsultlhWdnr8dnZn37zuCPsr0KeYJeYPfDbzId3GylJlnndEwx9eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iOn9HMwb; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b8fb6ad3243so663078066b.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772458342; x=1773063142; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sgo1gAmw/LJ8DgBY5wJQL6t/OWotxqWFL7Li6v+WLyI=;
        b=iOn9HMwbiBqMcjLKeKTH8XqkpIF8B6LQLG8j/YgdaExakJxoWnhq67MstNSEVZtzrQ
         syuvaVn8LVQa5fAqu4Ly7Evn6MXGlmv3XxUVj3iIQTijacmiBQ7sjDzuZbJMRo2cTzKR
         tSZ1+Xkkp94eUMpzhdlqP8JXjjzAlN3CkPDB6vOf2hM3aA8p2GbJ65vYxOb+sjWi3fkR
         9dBSzC3s1Q40nj1rEPXDInI/DkfdnK7a4IK522kOAKo3aJYlDphuFsmrGLQBy8eZTA54
         NergyIngFkSEXjggqZACURvH+ToBADl6+RlOy2C3OtQSvpnQ+pmCB8+Hod4dElV8EB6L
         jPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458342; x=1773063142;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sgo1gAmw/LJ8DgBY5wJQL6t/OWotxqWFL7Li6v+WLyI=;
        b=sXpubarebf/CHv7GRPgKtf1RTw4x6uY+pwPWzTg123T4mOp16qYO8cgXsrWSTuC8fR
         mUKVGEeyyeEC6aE9wAD7nVJCsmLW3VkpwF5f0EV2+W1qfuP5zs8C0PKj7ifR2+a0Ru4m
         G8VH7jKpZXCFyZU425VcN8y4OmxLi8gvZb7ax98o6YEJB9L4/BMY3G/ZE36uop6ndL0z
         iCoE56n3xS+zVqn8m3J001fPSz6gKZIB0pyIwxqOP8qWDxNMN0fMvVdvlsmPSD3GPaqk
         WJ5uiA5bknn4dmiO/RAMqqqBT3uKvpB7pgfwz/NZ7wBuhdY+OAiQTsXTmhKRfcfQ6KsH
         AQEw==
X-Forwarded-Encrypted: i=1; AJvYcCVb8eQ3sobH/3raGaX062SAFtQAOyxPxq8NsIVGH7XDnnb6EBg4HlM+3qWBR4Kp2NST0Tkz53fCWo9S@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc+iZHb7myAvgc3pPRos8k1tM4u9qMl7vFpZJCuHhJMOhPie4f
	L4J4gWH89ODoeTjcOwAdK5V7MgktEuQ+GYrI5Z84QNvxkLSs/M9tdOkFQ9NVmTSLMYo=
X-Gm-Gg: ATEYQzytzcu4FIZ9LIgaFCGx7GtvKXneE+fvKM+Fm5hokO6uH3kGKGZyv73e+Teb7Wp
	8HH1Q+fZ4Bqvvy5y0lfdVUJcYtubndeMa8pXeou5b1hSsfp3Hwf4Hxp3IPfBS3DEcjl0aFwNvsC
	iG6f3KFfWzxjaOn121zyvWykjeOenyRmIKXJZbCXXt1x/tpx4ywVWqltTBWRNkGMM/WoazheIjM
	ls+29RqIutSb4zvsTOwNpBMwm4mGYCd8T6DTmg9V6AWVMaQ3gdXuqJMbjXazDQ767DaamdaycjX
	xIwoGRkh7sTbRSSXVBoxn4LA7ZNj7MY3/knfVBc+SZzo+vjQqUH4jpBwB/MFZM5bdJPJDaQSwpg
	qgd/m6kQl8slh9ubA0kh/kkHY2ERaKlS/3RhlYsDAV3QaBCA3v51K6CdlGFAfmhmJw+VsriCJW3
	TjqHsFeiVl2/uIrxkU6zwzyUIUBSCOJMTif9aVpXlwPytyAxsPYonyfmUcntb4QCEK57uu4mgLi
	7MMlISHAyvSByU=
X-Received: by 2002:a17:906:46d7:b0:b8a:fae9:5c60 with SMTP id a640c23a62f3a-b937654862emr537345266b.51.1772458342220;
        Mon, 02 Mar 2026 05:32:22 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabf6d1c6sm3282988a12.17.2026.03.02.05.32.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:32:21 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 02 Mar 2026 13:32:09 +0000
Subject: [PATCH v3 10/11] power: supply: max17042: consider task period
 (max77759)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260302-max77759-fg-v3-10-3c5f01dbda23@linaro.org>
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
	TAGGED_FROM(0.00)[bounces-270030-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: AC7601D9EDD
X-Rspamd-Action: no action

Several (register) values reported by the fuel gauge depend on its
internal task period and it needs to be taken into account when
calculating results. All relevant example formulas in the data sheet
assume the default task period (of 5760) and final results need to be
adjusted based on the task period in effect.

Update the code as and where necessary.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
While I do believe this should apply to all devices supported by this
driver, given the register description in max17042_battery.h, I've made
this change specific to max77759, as I have no way to confirm this
works as expected on those. I've found a data sheet for
max17047/max17050 online, which does describe the relevant register
0x3c as 'reserved', hence I'm a bit hesitant to enable this for all.

v2:
* update commit message subject prefix
---
 drivers/power/supply/max17042_battery.c | 20 ++++++++++++++++++++
 include/linux/power/max17042_battery.h  |  1 +
 2 files changed, 21 insertions(+)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index b9a21cef2cc6..bafbf8706055 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -61,6 +61,7 @@ struct max17042_chip {
 	struct work_struct work;
 	int    init_complete;
 	int    irq;
+	int    task_period;
 };
 
 static enum power_supply_property max17042_battery_props[] = {
@@ -331,6 +332,8 @@ static int max17042_get_property(struct power_supply *psy,
 			return ret;
 
 		data64 = data * 5000000ll;
+		data64 *= chip->task_period;
+		do_div(data64, MAX17042_DEFAULT_TASK_PERIOD);
 		do_div(data64, chip->pdata->r_sns);
 		val->intval = data64;
 		break;
@@ -340,6 +343,8 @@ static int max17042_get_property(struct power_supply *psy,
 			return ret;
 
 		data64 = data * 5000000ll;
+		data64 *= chip->task_period;
+		do_div(data64, MAX17042_DEFAULT_TASK_PERIOD);
 		do_div(data64, chip->pdata->r_sns);
 		val->intval = data64;
 		break;
@@ -349,6 +354,8 @@ static int max17042_get_property(struct power_supply *psy,
 			return ret;
 
 		data64 = data * 5000000ll;
+		data64 *= chip->task_period;
+		do_div(data64, MAX17042_DEFAULT_TASK_PERIOD);
 		do_div(data64, chip->pdata->r_sns);
 		val->intval = data64;
 		break;
@@ -358,6 +365,8 @@ static int max17042_get_property(struct power_supply *psy,
 			return ret;
 
 		data64 = sign_extend64(data, 15) * 5000000ll;
+		data64 *= chip->task_period;
+		data64 = div_s64(data64, MAX17042_DEFAULT_TASK_PERIOD);
 		val->intval = div_s64(data64, chip->pdata->r_sns);
 		break;
 	case POWER_SUPPLY_PROP_TEMP:
@@ -1142,6 +1151,17 @@ static int max17042_probe(struct i2c_client *client, struct device *dev, int irq
 		regmap_write(chip->regmap, MAX17042_LearnCFG, 0x0007);
 	}
 
+	chip->task_period = MAX17042_DEFAULT_TASK_PERIOD;
+	if (chip->chip_type == MAXIM_DEVICE_TYPE_MAX77759) {
+		ret = regmap_read(chip->regmap, MAX17042_TaskPeriod, &val);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "failed to read task period\n");
+		chip->task_period = val;
+	}
+	dev_dbg(dev, "task period: %#.4x (%d)\n", chip->task_period,
+		chip->task_period);
+
 	chip->battery = devm_power_supply_register(dev, max17042_desc,
 						   &psy_cfg);
 	if (IS_ERR(chip->battery))
diff --git a/include/linux/power/max17042_battery.h b/include/linux/power/max17042_battery.h
index 05097f08ea36..d5b08313cf11 100644
--- a/include/linux/power/max17042_battery.h
+++ b/include/linux/power/max17042_battery.h
@@ -17,6 +17,7 @@
 #define MAX17042_DEFAULT_VMAX		(4500) /* LiHV cell max */
 #define MAX17042_DEFAULT_TEMP_MIN	(0)    /* For sys without temp sensor */
 #define MAX17042_DEFAULT_TEMP_MAX	(700)  /* 70 degrees Celcius */
+#define MAX17042_DEFAULT_TASK_PERIOD	(5760)
 
 /* Consider RepCap which is less then 10 units below FullCAP full */
 #define MAX17042_FULL_THRESHOLD		10

-- 
2.53.0.473.g4a7958ca14-goog


