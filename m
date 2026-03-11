Return-Path: <devicetree+bounces-274020-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wC5vFedKsWlCtAIAu9opvQ
	(envelope-from <devicetree+bounces-274020-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:58:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C582D262A8D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:58:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B5765308F8D5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70CAF3D524E;
	Wed, 11 Mar 2026 10:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pu0KEVVp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B3E3D34B8
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 10:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773226706; cv=none; b=tzuvSlHF5iSVA1mt2iAw9ZQN4tlN5NeF8sKjG8bEDe38qk7wmLxamvhsVfSPZV2HnxWbhnVh7wpQBqAJ41SyUZexIqmriBDHWOBYef3F7hh7wWcZgH2Oa3s8L8AnabzLFUo+098ar7MinuiE5Ttigq6GrRaPzWdxFVTg+9BCBS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773226706; c=relaxed/simple;
	bh=5+YpbmPk+2Hz0y7cbOQvMAf7V24uiqRccSFMB9vS5ig=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iI2hd7UFb8oQPO5QL6bFavYK62TsBFe4qNLWudQP5wlWjE5CrFHCDdkc5Ngqxll7bq8kZsvtSIVrgl30woch62hmElQ6JQZONIpb60UHHZiPIzehjcIi98XNx3AHaYI7wH7aEFq2NeBNsFEWQeYw32aC6e1WOt/amJB1VluRNAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pu0KEVVp; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4853e1ce427so35265385e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 03:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773226703; x=1773831503; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W83A5PfaPs7aR4943/4m98NPOSE8ZZIsXZPPJaIjP6o=;
        b=Pu0KEVVpJhn/O1QkSHqKiwGoF8PwEqJCLMwYXIOZ0jRwf262M08477Y6GLx+vbUJi+
         8DkJamf91af9yg/VCtCUOM1r/rdiay5MaEXwJgY72j12PXA2ZyEh60ci6803MWSxwWYq
         EcfwecZb9KYdBhsfT/AtFjzRZo3VZYXZ0WCzlGivV9AHVBAHE6QqRcT2AGhmeOLC+zmw
         4Omy8b2TtNCUWTSXk3Dz5sqaPz45wAWZY1M6Go1IDlDo2zrWnUzTob0psIt1pOeeLjRb
         Jlhjwqrk8wzxJLO1IdKOC/NK4hcO165cMCdB6gggkV8sRCMdAsMZXTHytL+L5OGqMSBU
         6p0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773226703; x=1773831503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W83A5PfaPs7aR4943/4m98NPOSE8ZZIsXZPPJaIjP6o=;
        b=kOycgl/MM3+sBdlg6ukGHqtL6453nh6K6biMccPpJYp4smSw89EBVl+5QeYLAkucaH
         ILEFcY8f/KZfjHV7q7TSkLnxpJVbEw+6ZMxSbnj/nM6ktGwvvMOREhzMdsvGbN9ZP0gJ
         +F5o9BhzPVYFC8jesrG3TTE5rQhQI1KBJejSMlNC5VKNFwkclpxb7VrRnvPWOxBox/8F
         4ALZPjLGTFgHsqpJi5SpyoWubpAPjneNzER721Ip3y6COYQSrE76Hn+lTE5KSW492q4A
         KT8w0hsw//frnrr/IbepMAd82OuCm+kchKRw4OX6dEgKoscbirDIhTT93n+enTHSMGOD
         f00g==
X-Forwarded-Encrypted: i=1; AJvYcCXoNRSPod8b4heqb4y/Sarn6wvCbBHqlgtTUNvS/6TaxRkq9eNdpa9bDh5T2FxpmJAXfFqasnVNmfTy@vger.kernel.org
X-Gm-Message-State: AOJu0YyXkX1KAwDrlDxtT0K4q8SRu1QlHbcsSxp5QvSL+g8X5T8rd3nm
	NpwuidcWAWQBsT9qU+r0f1YYq7aaV+4Be70cux8GsA79g6s43WvIAdNgmfYe7CEbWYI=
X-Gm-Gg: ATEYQzzsvQgeOz4OwLxXUcjzgRP2w0c8N/mCva+pg12R9HpTOr7g9/0D1r2AXUqUcWS
	HtQxwyQOCck7ojsvDdbMK0AsXOpY2nu9uji4lfAwuuqwqQC63dNQ0IhBvexIDeawYB8LGVQ9zf3
	Kc6CKL9Cn/gCyzSCCpLfgkengJD8xyiJfDOYF0MgZ0Hz8EssY73lOFckoBuPjj2HtYroNX/UFW0
	oecnMYCmDWtUyRyQ4DnCXD2zoo574PzsIYgn2009DB91Kb1nx5L46YbLs68ZIoIabUqqhPf15jE
	1ejktMASEOmgT2shdfyS1MEHDYyiW7wrLh0v0aoD3Rkbo4AoQMWPCdo5PpqN/XLfv7l+a6PVpUr
	8MHaSH6zF+KOB6/AysnHIqt8xGWvI5lWLdcF6+R30Vvkd8nR+cGgUnJgoDGrAHDuR5Nx//AGgrS
	635BUXXKF/JTzHV0y/hMW1y+YcLTZzaYAEte9shj/GQUt5O1dY1RUxCNbj4l9T0eeMiXSvS/0m
X-Received: by 2002:a05:600c:c0c9:b0:485:3fa9:358c with SMTP id 5b1f17b1804b1-4854b100b5bmr25908855e9.17.1773226702944;
        Wed, 11 Mar 2026 03:58:22 -0700 (PDT)
Received: from flaviu-Aspire-E5-572G.. ([5.15.232.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fc0ba972sm592347f8f.24.2026.03.11.03.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 03:58:22 -0700 (PDT)
From: Flaviu Nistor <flaviu.nistor@gmail.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Flaviu Nistor <flaviu.nistor@gmail.com>
Subject: [PATCH 2/2] hwmon: lm75: Add support for label
Date: Wed, 11 Mar 2026 12:58:08 +0200
Message-ID: <20260311105809.107357-2-flaviu.nistor@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311105809.107357-1-flaviu.nistor@gmail.com>
References: <20260311105809.107357-1-flaviu.nistor@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C582D262A8D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-274020-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[flaviunistor@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add support for label sysfs attribute similar to other hwmon devices.
This is particularly useful for systems with multiple sensors on the
same board, where identifying individual sensors is much easier since
labels can be defined via device tree.

Signed-off-by: Flaviu Nistor <flaviu.nistor@gmail.com>
---
 drivers/hwmon/lm75.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/hwmon/lm75.c b/drivers/hwmon/lm75.c
index eda93a8c23c9..66178ac63e4f 100644
--- a/drivers/hwmon/lm75.c
+++ b/drivers/hwmon/lm75.c
@@ -108,6 +108,7 @@ static const unsigned short normal_i2c[] = { 0x48, 0x49, 0x4a, 0x4b, 0x4c,
 #define PCT2075_REG_IDLE	0x04
 
 struct lm75_data {
+	const char *label;
 	struct regmap			*regmap;
 	u16				orig_conf;
 	u8				resolution;	/* In bits, 9 to 16 */
@@ -363,6 +364,16 @@ static irqreturn_t lm75_alarm_handler(int irq, void *private)
 	return IRQ_HANDLED;
 }
 
+static int lm75_read_string(struct device *dev, enum hwmon_sensor_types type,
+			    u32 attr, int channel, const char **str)
+{
+	struct lm75_data *data = dev_get_drvdata(dev);
+
+	*str = data->label;
+
+	return 0;
+}
+
 static int lm75_read(struct device *dev, enum hwmon_sensor_types type,
 		     u32 attr, int channel, long *val)
 {
@@ -534,6 +545,9 @@ static umode_t lm75_is_visible(const void *data, enum hwmon_sensor_types type,
 		switch (attr) {
 		case hwmon_temp_input:
 			return 0444;
+		case hwmon_temp_label:
+		/* Hide label node if label is not provided */
+			return (config_data->label) ? 0444 : 0;
 		case hwmon_temp_max:
 		case hwmon_temp_max_hyst:
 			return 0644;
@@ -553,13 +567,14 @@ static const struct hwmon_channel_info * const lm75_info[] = {
 	HWMON_CHANNEL_INFO(chip,
 			   HWMON_C_REGISTER_TZ | HWMON_C_UPDATE_INTERVAL),
 	HWMON_CHANNEL_INFO(temp,
-			   HWMON_T_INPUT | HWMON_T_MAX | HWMON_T_MAX_HYST |
+			   HWMON_T_INPUT | HWMON_T_LABEL | HWMON_T_MAX | HWMON_T_MAX_HYST |
 			   HWMON_T_ALARM),
 	NULL
 };
 
 static const struct hwmon_ops lm75_hwmon_ops = {
 	.is_visible = lm75_is_visible,
+	.read_string = lm75_read_string,
 	.read = lm75_read,
 	.write = lm75_write,
 };
@@ -721,6 +736,9 @@ static int lm75_generic_probe(struct device *dev, const char *name,
 	/* needed by custom regmap callbacks */
 	dev_set_drvdata(dev, data);
 
+	/* Save the connected input label if available */
+	of_property_read_string(dev->of_node, "label", &data->label);
+
 	data->kind = kind;
 	data->regmap = regmap;
 
-- 
2.43.0


