Return-Path: <devicetree+bounces-268147-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KK7eJxGbnmkZWgQAu9opvQ
	(envelope-from <devicetree+bounces-268147-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:47:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 019CE19281E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:47:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 028C53116722
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25E02DF13F;
	Wed, 25 Feb 2026 06:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UhYxMXq5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OpmZeGOO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FBDE3002B6
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772001832; cv=none; b=Pqm1kN0TO1Lt4VSK8aYReBENHSnCVrIP7xCxgCk2oElMN5rMvGTvRrkX8tikX5llsm5deb0FKupO9Lkn2p+w7A4aDgVTMY2QB0HD4F3i/MaNWxd5pwHLShDmZBwXECzOvsP0E5PVdY5HLgw7Ln6d5xNYYCoLMkdLXpycgrIVyV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772001832; c=relaxed/simple;
	bh=2/6Degxp7ls2d8D8xPc26dEqc+84ZT2Bgm76mBX3ZCc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t2iQ9PPw670ffVKHJr9aXbVLtcO45uP34OngJAPSx510EnD0P6brdLZKcsH7RsNsHZG/+fbpK1f1UPu5gau0YKd4lAi1K5w+2fvyKZ9DxAjyxuH7kS7tLt56G8jqXyAnxHaMWE/xduetEPD16rSZRL3O2KxJZm6x0UzlHzb9WeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UhYxMXq5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OpmZeGOO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P2H7Gi4077445
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:43:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HRprrDZrnbfgMS9tr7mTH+TkKXh96VfAvqJuPeXhuvE=; b=UhYxMXq54foXaa0c
	IoyfudS6PKi+dZctDirpG27k3eVKN6Lscitoe6imYp8PhUyy5nvVEifBS1lQUtpc
	3KXrxTTkEPpH8j65xNV/7iRiwUX/IHEEGGLyEs+xYJNrQVYr0k6Qh0r6+VdrsiUi
	+F0As6lwq6LHg+YCF1p/7TSzjUmlFuBz6OMcZlqmQWSdblsYdu9nuV21w1YiOPNe
	dRiSjVfrFEhgDM+PQXheBgwrFXUqHWDnCC7NSb0M46AMrGk2A/vAt+tpyjPZsxkP
	tjSTxKr0MrhhSqlVjgFrfOUc4QrX1mRnR72X2kYqDrr5O/+Eo2rN+Fb/bO6IB25j
	9aw46w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chr5p8ku6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:43:49 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8243767ce2aso2877136b3a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:43:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772001828; x=1772606628; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HRprrDZrnbfgMS9tr7mTH+TkKXh96VfAvqJuPeXhuvE=;
        b=OpmZeGOOLr+ks5tmuYOHsEPJlZ3T6OGDjECKBAkN8iapD0GLUYdzSEALtPVVgTqDxN
         d71dSEjY74i8nRlW2piVY6O3jjbIZPcDYG7UtEkRjHc+GdWPw6KTczj+v+j0OgexMkuZ
         JvVwsncuyO7oV2L48e58ctVYhFwcf7Y0LD2BtbnWtVwOq71K81n2C0ib9kbPLmo1ZxX9
         ZJzkf/SGR/dQ8hco96XGJWOn4y7ID7zXRilc5z3MOzEpW3Y6KBBSYf/KGS4pgloYvioZ
         AnqyIie3qr9tLSzkz7Oc8gTVsv41EuWBK9CnmPGJ7rlgcgRVLg2h2HW20LlpPcwgHVV3
         Yllg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772001828; x=1772606628;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HRprrDZrnbfgMS9tr7mTH+TkKXh96VfAvqJuPeXhuvE=;
        b=s31igY2hTDEAp4/ufFts38QTtUMqNJ6h4Ck01oYZexSbB/cWk2UMJt9uE5bpKEReLD
         L9jceKwpu17KYjtd8BG+f4u9S23E7PuGF/IN6/UbznPkPd9+Z9sZclBjSoH1ThkPDMoT
         5Ht102Fq7Gau++6kBipZwqYhMz/7aIff6yS5OgRj+X6GHAl5hh/VQqm7glIcW/mMA+SM
         I4pKPp1zTP+JerZKxNU3cxXxhPB3YX7S3i+t4Tww1jlYdWgXI0T0H85Pznf/DQXTbsf9
         KzFApfRKwKeXXaCdhLlqYdzTE3oyiMqv4rrAwVlZaUvQkiVbMwEn4l8U1uLDlUXVcKRC
         Yc7g==
X-Forwarded-Encrypted: i=1; AJvYcCVnrdWwsiHEzPxASDn4Frp317spUJFDGCse1U09LkycBqRwBJ9q50o20UzTxinwFp6jtW36VVd/DhLI@vger.kernel.org
X-Gm-Message-State: AOJu0YzdZKWP4BTMXIuFb7aPSNQYMmZYBizz/6OgUJQ9ies+ZXs4DD5A
	/Uf44z9s6SCWVvr9uqJ3fqlSaKFjvNCifO/usXBpbGzv/Kjp91C7dzAgaDI1A0pWknXhhHtWbcX
	lp0X1/GCMn3hMqKoDRbtyPg//jtk+nVkZap3UrtPDOaQXypBzgs5FC3Hm08b/6DSy
X-Gm-Gg: ATEYQzzrJp+CCaPUR15mqR1EF/Tsn/d6wA14QwFsalDQgl+Angg+FykxDIo7XOASMZ/
	/Mn5aEo9GdgAdFQnD6Baq0AgIHkgi8Y4YO5bQmupshE5LlR2BgyyZiwO+7m6lIU0Bysrq4ptBtx
	bjL1/i2F3G30NwBhjMLLyk/0NfFhSf+dCqgEmyAs8grXw1IlhGDYWqLBLK4ozTbeCDfviGQA+Rg
	qrM/rcg1t8icwy9eGsZcA2oOKO8QEqhKTN3khdS8xgmzgm+hwdZT1ZIAFtpDUkxQfehxEgYvf0Q
	tU1nyCy6vN4q9Yz8NjT0w9/STbIeWN9TMgHzAX6YyvFkdoPuomkD/i26iWecLXgJuecCBdy4hTk
	IINQ5KzClMTS1CosdNSqRvMxSXzBAIw7gxeo2lX9mHd0pdG1AeFMZWYb8s9vwGDFGQ9uIUXCLL3
	fU9mTgLpFzL2N0vErgkX8yYr6v3293qomysDX4oGZsK/cFW9SYn2UbAbC3
X-Received: by 2002:a05:6a00:3a14:b0:81f:48d4:a979 with SMTP id d2e1a72fcca58-82724aef59amr1164967b3a.49.1772001828553;
        Tue, 24 Feb 2026 22:43:48 -0800 (PST)
X-Received: by 2002:a05:6a00:3a14:b0:81f:48d4:a979 with SMTP id d2e1a72fcca58-82724aef59amr1164950b3a.49.1772001828091;
        Tue, 24 Feb 2026 22:43:48 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd692b99sm12856570b3a.24.2026.02.24.22.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 22:43:47 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 12:13:13 +0530
Subject: [PATCH v7 4/5] watchdog: qcom: add support to get the bootstatus
 from IMEM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260225-wdt_reset_reason-v7-4-65d5b7e3e1eb@oss.qualcomm.com>
References: <20260225-wdt_reset_reason-v7-0-65d5b7e3e1eb@oss.qualcomm.com>
In-Reply-To: <20260225-wdt_reset_reason-v7-0-65d5b7e3e1eb@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772001806; l=4138;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=2/6Degxp7ls2d8D8xPc26dEqc+84ZT2Bgm76mBX3ZCc=;
 b=GSUHP2MXZT7g9xlSvOjgIR+Uox5ha4fkv4Jp5Vah3qDHUN4xADELEBnGTDciblqr/1Kyy5Wll
 XqQvb5NtzvEDxsKcbX+yt5RgTkKoiqiV66M0S9PsxHZwgRz9DmwJ2Y4
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA2MiBTYWx0ZWRfX7JinigyWla5V
 Zt4fEUAf2HfhVn2U0wRdOyWNE4pOaXgvK0SRCr4IrMGGwofKgSw89aRwkBL0KWcUozb9uY7ojlS
 esE6l8rZCZfNSX6JbY4mGZ4TQBd3NE62n16vS15SMmk4sXLj/z/rRAYNwwRZpKo62ZbVWQPsD10
 cqNhqyDjbHHupfnByvDV0NskbhwII9YDUAVsrCOcmx5ncJqSoZKjXFVwX5dXdeKxvKhmQyDJFOX
 IZFDfbD1AeJBLrE7rZ8cypCQeBnSjm6rX6RLSO5lmOXGFQ0dgEX+UgEtwqeARvhtFL1wRz4PB4k
 Idrc17pHHMGkhFWDOWcn6bLmaQnbAjW0Lc99VZqgwmC2pGI5qoT2cg9LZfyl3/k6sSTbUS47DBv
 SuvjX/CZX4lqKw7xKCC+RtyzZnykA795mCx2O2sJOls83w8n1v2f5IaMliAipBVPAZaeUUNOb4C
 yBNXey7Wg7pHTJNdzCw==
X-Authority-Analysis: v=2.4 cv=GstPO01C c=1 sm=1 tr=0 ts=699e9a25 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=sA5c4iyB6yEouCyTFbQA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: q1R9hmlZKE0p8rG5fuZlhmJCLmwPolAF
X-Proofpoint-ORIG-GUID: q1R9hmlZKE0p8rG5fuZlhmJCLmwPolAF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250062
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268147-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 019CE19281E
X-Rspamd-Action: no action

When the system boots up after a watchdog reset, the EXPIRED_STATUS bit
in the WDT_STS register is cleared. To identify if the system was
restarted due to WDT expiry, XBL update the information in the IMEM region.
Update the driver to read the restart reason from IMEM and populate the
bootstatus accordingly.

With the CONFIG_WATCHDOG_SYSFS enabled, user can extract the information
as below:

cat /sys/devices/platform/soc@0/f410000.watchdog/watchdog/watchdog0/bootstatus
32

For backward compatibility, keep the EXPIRED_STATUS bit check. Add a new
function qcom_wdt_get_bootstatus() to read the restart reason from
IMEM.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v7:
	- no changes
Changes in v6:
	- Reworked to get the restart reason code from SRAM region

Changes in v5:
	- Use dev_err_probe instead of dev_err

Changes in v4:
	- Kept only WDIOF_CARDRESET and dropped other codes
	- Renamed qcom_wdt_get_reason_reason() to
	  qcom_wdt_get_bootstatus()
	- Moved the existing check inside qcom_wdt_get_bootstatus()
	- Dropped the device data and put all the details in the DT node

Changes in v3:
	- Split the introduction of device data into separate patch
	- s/bootloaders/XBL - for clarity of which bootloader is
	  involved
	- Mention the sysfs path on to extract this information
	- s/compatible/imem_compatible in the device data structure to
	  avoid the confusion / better naming

Changes in v2:
	- Use the syscon API to access the IMEM region
	- Handle the error cases returned by qcom_wdt_get_restart_reason
	- Define device specific data to retrieve the IMEM compatible,
	  offset and the value for non secure WDT, which allows to
	  extend the support for other SoCs
---
 drivers/watchdog/qcom-wdt.c | 43 +++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 41 insertions(+), 2 deletions(-)

diff --git a/drivers/watchdog/qcom-wdt.c b/drivers/watchdog/qcom-wdt.c
index dfaac5995c84c1f377023e6e62770c5548528a4c..14853162d57ccae3092fb1c01616fdfca0108e74 100644
--- a/drivers/watchdog/qcom-wdt.c
+++ b/drivers/watchdog/qcom-wdt.c
@@ -9,6 +9,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/platform_device.h>
 #include <linux/watchdog.h>
 
@@ -42,6 +43,7 @@ struct qcom_wdt_match_data {
 	const u32 *offset;
 	bool pretimeout;
 	u32 max_tick_count;
+	u32 wdt_reason_val;
 };
 
 struct qcom_wdt {
@@ -185,6 +187,7 @@ static const struct qcom_wdt_match_data match_data_ipq5424 = {
 	.offset = reg_offset_data_kpss,
 	.pretimeout = true,
 	.max_tick_count = 0xFFFFFU,
+	.wdt_reason_val = 5,
 };
 
 static const struct qcom_wdt_match_data match_data_kpss = {
@@ -193,6 +196,41 @@ static const struct qcom_wdt_match_data match_data_kpss = {
 	.max_tick_count = 0xFFFFFU,
 };
 
+static int qcom_wdt_get_bootstatus(struct device *dev, struct qcom_wdt *wdt,
+				   u32 val)
+{
+	struct device_node *imem;
+	struct resource res;
+	void __iomem *addr;
+	int ret;
+
+	imem = of_parse_phandle(dev->of_node, "sram", 0);
+	if (!imem) {
+
+		/* Fallback to the existing check */
+		if (readl(wdt_addr(wdt, WDT_STS)) & 1)
+			wdt->wdd.bootstatus = WDIOF_CARDRESET;
+
+		return 0;
+	}
+
+	ret = of_address_to_resource(imem, 0, &res);
+	of_node_put(imem);
+	if (ret)
+		return ret;
+
+	addr = ioremap(res.start, resource_size(&res));
+	if (!addr)
+		return -ENOMEM;
+
+	if (readl(addr) == val)
+		wdt->wdd.bootstatus = WDIOF_CARDRESET;
+
+	iounmap(addr);
+
+	return 0;
+}
+
 static int qcom_wdt_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -273,8 +311,9 @@ static int qcom_wdt_probe(struct platform_device *pdev)
 	wdt->wdd.parent = dev;
 	wdt->layout = data->offset;
 
-	if (readl(wdt_addr(wdt, WDT_STS)) & 1)
-		wdt->wdd.bootstatus = WDIOF_CARDRESET;
+	ret = qcom_wdt_get_bootstatus(dev, wdt, data->wdt_reason_val);
+	if (ret)
+		return ret;
 
 	/*
 	 * If 'timeout-sec' unspecified in devicetree, assume a 30 second

-- 
2.34.1


