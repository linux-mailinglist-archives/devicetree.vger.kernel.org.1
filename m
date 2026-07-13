Return-Path: <devicetree+bounces-325376-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QS0zGIi6VGrEqAMAu9opvQ
	(envelope-from <devicetree+bounces-325376-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:14:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0134A749ADD
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:14:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Ijk97rTV;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325376-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325376-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4F403040F90
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C93B3E5EEA;
	Mon, 13 Jul 2026 10:13:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D463D9530;
	Mon, 13 Jul 2026 10:13:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783937584; cv=none; b=mIfh6v3Y81azQFd7ePaqs9ATi3A58NSiITTlSR2NWKGmxXcuRx4fKCpJP/eIRUlHbI9dBtrJp0Y8eGQS1iOEdDnDnwrdpxHnEpUGFPcGS0sLCw+v7afSp9waUTKTz2MaPKxLYVSvK8CYgORlQZKTBZsajdU8arrv5aV+9Q5OfS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783937584; c=relaxed/simple;
	bh=r+wAQb9yhTvl6rPXmFGVyfFSB1IhImatws4R7IYEpqo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MmEmpUkOciEGvO4vynku3EPX0DTjKcXJU8eIxUSqZEtUeHsfSJIiIK4GHNowJ0opfX8fCuV2GpzLIiOpkQOwAYlpcXzvQoarsouGKX//LendeSLI4aBwvaD+h5NWUcttxqhhSehVO3jbQjTZL3Sw4a9j4fITWF2GfPCoaAp9cOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ijk97rTV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C43C2BCB8;
	Mon, 13 Jul 2026 10:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783937584;
	bh=r+wAQb9yhTvl6rPXmFGVyfFSB1IhImatws4R7IYEpqo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Ijk97rTVcVnPNkgNWd210ObIDMVErrctqOYdx887NtBXygC1JkzyVpHttaFQMqgHE
	 8So2tMVzCjjJ4ZxEeQCfcrY+xA3+1ZNn7vGeWjGu85f4u9TMduI/wMaBwDLZQkODa+
	 SEKaU7fDCuaMtkZqynLChdPDXIzndUyN03rwOwHtvsNwhbC0BYey1u+Sgq/S7Kj8Ku
	 Oc1S9HD2i9UKtvHFwG+PF5aVvlOFskaN38IQm23q5CMpk/q7IuvQGUOpja9eoDvp9g
	 1wQfenZ20MaelDcwDSTRkUA5rfT8G8sg1PWnF2yGIwe4opHz7NWgjRW7M+7brkJHfB
	 msrq4pArZ5rFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 832EAC44501;
	Mon, 13 Jul 2026 10:13:04 +0000 (UTC)
From: Haoning CHENG via B4 Relay <devnull+Haoning.CHENG.cn.bosch.com@kernel.org>
Date: Mon, 13 Jul 2026 18:12:40 +0800
Subject: [PATCH v6 2/2] thermal/drivers/imx: Add calibration offset support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260713-b4-symana21-11221-imx-thermal-support-upstream-6-18-v6-2-88a378faeca5@cn.bosch.com>
References: <20260713-b4-symana21-11221-imx-thermal-support-upstream-6-18-v6-0-88a378faeca5@cn.bosch.com>
In-Reply-To: <20260713-b4-symana21-11221-imx-thermal-support-upstream-6-18-v6-0-88a378faeca5@cn.bosch.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Haoning CHENG <Haoning.CHENG@cn.bosch.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783937579; l=2618;
 i=Haoning.CHENG@cn.bosch.com; s=20260709; h=from:subject:message-id;
 bh=4RI3KwRlC8Yl5nDcFypymQ95vC8TXe4NB1RjWrUCQYE=;
 b=ZjXUHUSzr1P2LOslVCEvFksBcDLlIQ10c85S/WRlXJSDB1+GkJ+rmpryb0wvvghE5XBZHKLlQ
 +8+OgeSYfcIDzDg0yuhhUt2ily+rJ9QsoYxKH+hcMK7qQCe5hhrCJ6S
X-Developer-Key: i=Haoning.CHENG@cn.bosch.com; a=ed25519;
 pk=glQGwad/fosRS5gZUJYbLDPPLGe7rFTrTV2VxY/ySdc=
X-Endpoint-Received: by B4 Relay for Haoning.CHENG@cn.bosch.com/20260709
 with auth_id=860
X-Original-From: Haoning CHENG <Haoning.CHENG@cn.bosch.com>
Reply-To: Haoning.CHENG@cn.bosch.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325376-lists,devicetree=lfdr.de,Haoning.CHENG.cn.bosch.com];
	FORGED_RECIPIENTS(0.00)[m:rafael@kernel.org,m:daniel.lezcano@linaro.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:shawnguo@kernel.org,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:Haoning.CHENG@cn.bosch.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,intel.com,arm.com,pengutronix.de,gmail.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[Haoning.CHENG@cn.bosch.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,cn.bosch.com:mid,cn.bosch.com:replyto,bosch.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0134A749ADD

From: Haoning CHENG <Haoning.CHENG@cn.bosch.com>

Some boards need a small per-design correction to align the reported CPU
temperature with board-level measurements.

Read the optional fsl,temp-calibration-offset-millicelsius property from
DT and apply it to the i.MX6/6SX/7D calibration formulas. When the
property is not present, the default offset remains 0, preserving the
current behaviour.

Signed-off-by: HaoNing Cheng <Haoning.CHENG@cn.bosch.com>
---
 drivers/thermal/imx_thermal.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
index 38c993d1bcb3..0a443e608957 100644
--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -207,6 +207,7 @@ struct imx_thermal_data {
 	struct regmap *tempmon;
 	u32 c1, c2; /* See formula in imx_init_calib() */
 	int temp_max;
+	s32 calibration_offset;
 	int alarm_temp;
 	int last_temp;
 	bool irq_enabled;
@@ -223,6 +224,7 @@ static void imx_set_panic_temp(struct imx_thermal_data *data,
 	struct regmap *map = data->tempmon;
 	int critical_value;
 
+	panic_temp -= data->calibration_offset;
 	critical_value = (data->c2 - panic_temp) / data->c1;
 
 	regmap_write(map, soc_data->panic_alarm_ctrl + REG_CLR,
@@ -239,11 +241,14 @@ static void imx_set_alarm_temp(struct imx_thermal_data *data,
 	int alarm_value;
 
 	data->alarm_temp = alarm_temp;
+	alarm_temp -= data->calibration_offset;
 
-	if (data->socdata->version == TEMPMON_IMX7D)
-		alarm_value = alarm_temp / 1000 + data->c1 - 25;
-	else
+	if (data->socdata->version == TEMPMON_IMX7D) {
+		alarm_value = DIV_ROUND_UP(alarm_temp, 1000) + data->c1 - 25;
+		alarm_value = clamp(alarm_value, 0, 0x1ff);
+	} else {
 		alarm_value = (data->c2 - alarm_temp) / data->c1;
+	}
 
 	regmap_write(map, soc_data->high_alarm_ctrl + REG_CLR,
 		     soc_data->high_alarm_mask);
@@ -277,6 +282,7 @@ static int imx_get_temp(struct thermal_zone_device *tz, int *temp)
 		*temp = (n_meas - data->c1 + 25) * 1000;
 	else
 		*temp = data->c2 - n_meas * data->c1;
+	*temp += data->calibration_offset;
 
 	/* Update alarm value to next higher trip point for TEMPMON_IMX6Q */
 	if (data->socdata->version == TEMPMON_IMX6Q) {
@@ -629,6 +635,10 @@ static int imx_thermal_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, data);
 
+	of_property_read_s32(dev->of_node,
+			     "fsl,temp-calibration-offset-millicelsius",
+			     &data->calibration_offset);
+
 	if (of_property_present(dev->of_node, "nvmem-cells")) {
 		ret = imx_init_from_nvmem_cells(pdev);
 		if (ret)

-- 
2.43.0



