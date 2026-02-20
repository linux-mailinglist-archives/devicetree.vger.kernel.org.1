Return-Path: <devicetree+bounces-266869-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IGSBzwnmGlqBwMAu9opvQ
	(envelope-from <devicetree+bounces-266869-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:19:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CAB1661C7
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:19:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2C073048B2E
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A97DB320A14;
	Fri, 20 Feb 2026 09:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="j/gZjPgA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A7731B824
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771579156; cv=none; b=K/XefnH4MjxCUocjTy+vOvnOAPE1MGn8Kgc2SBaJqigmpa7O+Pp8ooF59RcvtS/NQqhST4UBIOkikLAeZHfb4VW5+p4I1xYe09AFwT4qQninkT9v+KPO1DGABTT+Gc+QL1XuYSUROZkKe7SGffqZDNCguL+sJLa3Qjd1UGg1b6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771579156; c=relaxed/simple;
	bh=Pa8v8Yv22/bRxGvwx9RtUWdjQtXpeSx595DQVqT0p/4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FkVm6Z0rMFoahYvqcgDh77cr/TjYl9r9RFlatyQM+bUuvmPmLE3SgIgFS70UxjSO8Wv4E41uzUFP7KNB3DyWGlnzj090fKcMXcXlwdaH2a8nkhQerh44ZGsQMBMjeCiAh+OcMWBYDYJTSZtSkeBTE9vOn2fs3RvJjjnu4t1f/yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=j/gZjPgA; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-65808d08423so2696759a12.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 01:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1771579152; x=1772183952; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A3S6MbSTO4MkMrBu9nf7AbP35XblYDK2xH6bZHiUcC4=;
        b=j/gZjPgAXIEfqCa3x5ZZMGaAdM+s9QAgSqGdu4G6P3MgKIrYP9g0jJ+senPJQ4mXiC
         hmkOBVYGlvu/wgYnkBD15Octv/CHxo5MRVrogrmvjc4a6jkMp3USYt2C/enUkcu33BU5
         e+Fy45KJwhQuf9MWNpvW0sfWtE4A6N4sp5v2mBiLFgRzJUB+6sTmqzgPZeimwfqLrJir
         hIVcXQvctj8xyg1TGh1QvoMqWIjlMe6V7NLcyeirD0R0afHa0owLgtz5ydcp4JDG+h8x
         0v0sAI593ToH//x8hPM4MLe+iHlrl/+39ubgKcLjD7HvAijsP96m30W8gvKDHFOdp/JP
         vwdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771579152; x=1772183952;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A3S6MbSTO4MkMrBu9nf7AbP35XblYDK2xH6bZHiUcC4=;
        b=hT9jjKJ9+wtaHX3TPv7Htspuz9w2Cu8q7Rl7UmtqEH1r2ZMXGMkh3kNRSNHVsf/ip0
         rOtu97XG6rRpUBh+S1Bx6fZqYIWKIs+TJkG0W0VtaCFWU01YPeR8rZpdhAYwLeLodmBn
         Zrnv+Xgl4L7rnjuzWF/EHS5j4K2lYBzRqWq6iDovEI7RRBgUpRPrsbpXn3GRhGGh+TwW
         Cg1XuMUGUntKjMFqy5l7Sxzmzsu0P/StAVjyG+KquDBBKMErS9YbLma4a12sfZEnzoJW
         6wUYS4BjF4RfIjoaDZbkXJ3o3smx5zwHhh14Qk1BepiSEEO/lEiWMNwteHZRvb2xa8s/
         VYDw==
X-Forwarded-Encrypted: i=1; AJvYcCXx4fuITopnNARd2Q00Zoxf5im3ATD5PTt4S1thZlXo4sTMeDNEwoJxLnGYeHTS3FVh/59QzSTmSvTS@vger.kernel.org
X-Gm-Message-State: AOJu0YxnmVORJnViWN16YcX/9FmGAMnCxOASYMw5zm8+ZN5LiYwCGF+W
	sBCuoUyM6Gi2pggFFI5uhH4/uxg5TXvK7fvBZMZ9nLQkusDiPqmFjKUlHj3266UyJEg=
X-Gm-Gg: AZuq6aIbAXH7Dqgw1PsqF1IM3mdriyLQQctJgDhrVyEs1qdU5TDTXzdmjFa6XSsZV/Q
	6uqBb88zCZj+Q1o1OgCMhdArPdxUc9ZRn/w0PbLd0l2m1BxETmqFXI0O2wdwjnjhvz/pjMM/ccC
	8jmI/eZsdzCQP88EnSmeuBVjo8iZcYZafrahv2r4HGt8Vu1k6sCHORATkJXKTvguCYm7TwcUGNK
	N8LE3sqeewzIgYz/P1gJfhRRHLM1ooTuV8fGHRNIWBb4GI3Bu6SF1LXXZANhMX+1QR0pC1ohBT8
	TYH5cA75YjmXyMt/gMrLz+zkp69i6Tf89ZViIS2mcm4DwrqbeZAA/2YkwZcf+PPSenTVwwouNMe
	Zhf5a0wIzhaxaHHVtMe0J48D1SjBdHng+9rSH5/XxhpGzd6bMZubvB+LQQzw0BRH969uA5IK4n9
	lMxcRrFp1HpwO/Uttjhye7wB/UrzKRuhObMaV97+yhc+pM+cLNtBYukz1YkOx9l6iIJYakojY1V
	L05v5mwJNOiHCJl
X-Received: by 2002:a17:906:ef0c:b0:b8e:7208:ffe0 with SMTP id a640c23a62f3a-b903dd028c7mr585851766b.58.1771579151978;
        Fri, 20 Feb 2026 01:19:11 -0800 (PST)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc769111fsm667098666b.57.2026.02.20.01.19.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 01:19:11 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 20 Feb 2026 10:19:05 +0100
Subject: [PATCH v2 1/5] iio: adc: qcom-spmi-adc5: Add battery thermal
 channels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-bat-temp-adc-v2-1-fe34ed4ea851@fairphone.com>
References: <20260220-bat-temp-adc-v2-0-fe34ed4ea851@fairphone.com>
In-Reply-To: <20260220-bat-temp-adc-v2-0-fe34ed4ea851@fairphone.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Laxman Dewangan <ldewangan@nvidia.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Hans de Goede <hansg@kernel.org>, 
 Jens Reidel <adrian@mainlining.org>, 
 Casey Connolly <casey.connolly@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771579150; l=4306;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=Pa8v8Yv22/bRxGvwx9RtUWdjQtXpeSx595DQVqT0p/4=;
 b=bI5SYVmFRauGR8YDVWfVU+87qHPMpEth/dQ/iA9E/N8ZOyC5gGBcOJDpqvzwHD9JvAKCcXzkN
 ow+00MWJnqPAwq5M5XrtNEKDKuV4iVKMSto5MZq9pp2/uJF5AdqGX4v
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266869-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:mid,fairphone.com:dkim,fairphone.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B3CAB1661C7
X-Rspamd-Action: no action

Add the BAT_THERM channels with millivolt as output, which can then be
used along with information regarding the NTC in the battery, to get the
actual battery temperature.

A static lookup table in the ADC driver won't work since different
devices have different Ohm and Beta values in their battery NTCs, for
example a NTC can be 10kOhm & B=3435K.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/iio/adc/qcom-spmi-adc5.c         |  6 ++++++
 drivers/iio/adc/qcom-vadc-common.c       | 16 ++++++++++++++++
 include/linux/iio/adc/qcom-vadc-common.h |  3 +++
 3 files changed, 25 insertions(+)

diff --git a/drivers/iio/adc/qcom-spmi-adc5.c b/drivers/iio/adc/qcom-spmi-adc5.c
index af3c2f659f5e..6ad75368d3a3 100644
--- a/drivers/iio/adc/qcom-spmi-adc5.c
+++ b/drivers/iio/adc/qcom-spmi-adc5.c
@@ -543,6 +543,12 @@ static const struct adc5_channels adc5_chans_pmic[ADC5_MAX_CHANNEL] = {
 					SCALE_HW_CALIB_DEFAULT)
 	[ADC5_XO_THERM_100K_PU]	= ADC5_CHAN_TEMP("xo_therm", 0,
 					SCALE_HW_CALIB_XOTHERM)
+	[ADC5_BAT_THERM_30K_PU]	= ADC5_CHAN_VOLT("bat_therm_30k_pu", 0,
+					SCALE_HW_CALIB_THERM_VOLT)
+	[ADC5_BAT_THERM_100K_PU] = ADC5_CHAN_VOLT("bat_therm_100k_pu", 0,
+					SCALE_HW_CALIB_THERM_VOLT)
+	[ADC5_BAT_THERM_400K_PU] = ADC5_CHAN_VOLT("bat_therm_400k_pu", 0,
+					SCALE_HW_CALIB_THERM_VOLT)
 	[ADC5_BAT_ID_100K_PU]	= ADC5_CHAN_TEMP("bat_id", 0,
 					SCALE_HW_CALIB_DEFAULT)
 	[ADC5_AMUX_THM1_100K_PU] = ADC5_CHAN_TEMP("amux_thm1_100k_pu", 0,
diff --git a/drivers/iio/adc/qcom-vadc-common.c b/drivers/iio/adc/qcom-vadc-common.c
index b03cf584b165..09a13e2b0ef4 100644
--- a/drivers/iio/adc/qcom-vadc-common.c
+++ b/drivers/iio/adc/qcom-vadc-common.c
@@ -309,6 +309,10 @@ static int qcom_vadc_scale_hw_calib_therm(
 				const struct u32_fract *prescale,
 				const struct adc5_data *data,
 				u16 adc_code, int *result_mdec);
+static int qcom_vadc_scale_hw_calib_therm_volt(
+				const struct u32_fract *prescale,
+				const struct adc5_data *data,
+				u16 adc_code, int *result_mdec);
 static int qcom_vadc7_scale_hw_calib_therm(
 				const struct u32_fract *prescale,
 				const struct adc5_data *data,
@@ -333,6 +337,7 @@ static int qcom_vadc7_scale_hw_calib_die_temp(
 static const struct qcom_adc5_scale_type scale_adc5_fn[] = {
 	[SCALE_HW_CALIB_DEFAULT] = {qcom_vadc_scale_hw_calib_volt},
 	[SCALE_HW_CALIB_THERM_100K_PULLUP] = {qcom_vadc_scale_hw_calib_therm},
+	[SCALE_HW_CALIB_THERM_VOLT] = {qcom_vadc_scale_hw_calib_therm_volt},
 	[SCALE_HW_CALIB_XOTHERM] = {qcom_vadc_scale_hw_calib_therm},
 	[SCALE_HW_CALIB_THERM_100K_PU_PM7] = {
 					qcom_vadc7_scale_hw_calib_therm},
@@ -583,6 +588,17 @@ static int qcom_vadc_scale_hw_calib_therm(
 				 voltage, result_mdec);
 }
 
+static int qcom_vadc_scale_hw_calib_therm_volt(
+				const struct u32_fract *prescale,
+				const struct adc5_data *data,
+				u16 adc_code, int *result_uv)
+{
+	*result_uv = qcom_vadc_scale_code_voltage_factor(adc_code,
+				prescale, data, 1000);
+
+	return 0;
+}
+
 static int qcom_vadc_scale_hw_calib_die_temp(
 				const struct u32_fract *prescale,
 				const struct adc5_data *data,
diff --git a/include/linux/iio/adc/qcom-vadc-common.h b/include/linux/iio/adc/qcom-vadc-common.h
index 3bf4c49726a7..ce037994b019 100644
--- a/include/linux/iio/adc/qcom-vadc-common.h
+++ b/include/linux/iio/adc/qcom-vadc-common.h
@@ -93,6 +93,8 @@ struct vadc_linear_graph {
  *	voltage (uV) with hardware applied offset/slope values to adc code.
  * @SCALE_HW_CALIB_THERM_100K_PULLUP: Returns temperature in millidegC using
  *	lookup table. The hardware applies offset/slope to adc code.
+ * @SCALE_HW_CALIB_THERM_VOLT: Returns voltage in uV of a temperature channel.
+ *	The hardware applies offset/slope to adc code.
  * @SCALE_HW_CALIB_XOTHERM: Returns XO thermistor voltage in millidegC using
  *	100k pullup. The hardware applies offset/slope to adc code.
  * @SCALE_HW_CALIB_THERM_100K_PU_PM7: Returns temperature in millidegC using
@@ -114,6 +116,7 @@ enum vadc_scale_fn_type {
 	SCALE_PMI_CHG_TEMP,
 	SCALE_HW_CALIB_DEFAULT,
 	SCALE_HW_CALIB_THERM_100K_PULLUP,
+	SCALE_HW_CALIB_THERM_VOLT,
 	SCALE_HW_CALIB_XOTHERM,
 	SCALE_HW_CALIB_THERM_100K_PU_PM7,
 	SCALE_HW_CALIB_PMIC_THERM,

-- 
2.53.0


