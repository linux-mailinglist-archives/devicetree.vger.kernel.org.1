Return-Path: <devicetree+bounces-269550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFPnKSLgomkV7gQAu9opvQ
	(envelope-from <devicetree+bounces-269550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:31:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D3C1C2FB6
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:31:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7F2C31181BB
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90A5D43D50D;
	Sat, 28 Feb 2026 12:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O/z0w9Dx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="USOYEAzM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD17443D50C
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772281770; cv=none; b=O8Ie7Ra5qh2OEMX7AFX/fIvUlmnjtrjN+JCFOPACo2s9Nv6gHXK5k0teJ/Gl+tjNY5fWr4q1Ylnzc498zazrdZJ73ExmU1XSnBrLtWS3dN4lbAnoRJXPJKxYOyefFlUB5mg0deta6Zr7Yvt1vQuielrP4u2e9w/BmC/caFZ8SzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772281770; c=relaxed/simple;
	bh=KhA6l9FXGGh1ADW//4d+9pqBGmS+IoxIsdsRwnaryCs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hfGA2CTJAUAewepGmVNfeTwWEe2Ns/aMu61AAwgjAL+oCO2Z9hHqpiQsZmJ3fzjvtr8fIcClXvVLf1iojkYGnG1L6leMJKkpxcXM/l/MEDz3cYgppfGxjpo+q9lqf6Rlg4Cjussr4MwlyANeVsPYBTfFY8AU5RwB/2ZAWVFzKi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O/z0w9Dx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=USOYEAzM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S90ChC2002001
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:29:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rya4IV21avMOXB0mD3SUe4rEM7SkGdmLQR0mPNFOS+M=; b=O/z0w9DxagjN1BJP
	X0xVL6J0CanHxIz26uriFKDMtZPz5+ARomrYdXw8XZEY+KRweFT48cweLf+CoqeQ
	LI5gHZJWo59n3zIffnypQ7+qkeYlFgXq91eQ5G+ushFpmtU9yQ7eUUpVv567brXg
	QUatnHVPabytU+d4/pK9pCe+fTcRzzohYKKPEcOTvnHvmNhAkHl0W/3Kax86I0iE
	9Cx6ckgJLYPMJT2VKtUYm9EjBiESIs89VTDaamKalWLKBrGdlGfIP8OXG8ebX30s
	+0WFqtzHJfQOWl3QqJ5ednOl1iMpQOeUx6rKWMmQO5GBPksv/48/YKBCaC7vY4da
	ulx8Bw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksg70suq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 12:29:27 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8274bb61b6dso793264b3a.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 04:29:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772281767; x=1772886567; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rya4IV21avMOXB0mD3SUe4rEM7SkGdmLQR0mPNFOS+M=;
        b=USOYEAzMBbq5+1ov8fZ4e7R90sH9ua2VI70T3n4+NplqUBQdhApJmatJQZsF+2kdn4
         wVwIRVuZjw50oWnWgIWtcYvuSVfjutZVIAlU9jnbOdfSZ/u1N05+PeXIbdpN6Ce+nMT0
         35o+ieBgWEB+zyYBsmgqmhOswmbnG4qW4PPgOpe67khlVp4JSEnv2MmIskmRzu4SnTlp
         PKuFAP2+Ax/E0g0R/5QVCqTRk9kH4cSUBFPFl/+wVkZ5pTNlNS03WYRwppCIPbSar866
         GkFzdOnsNppWCZ5E8t4JbDoyog7vsYSAsnLldiVYbkEc8SoMxWzc4XbjfpOFiHqBU4xP
         46iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772281767; x=1772886567;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rya4IV21avMOXB0mD3SUe4rEM7SkGdmLQR0mPNFOS+M=;
        b=HCe1Rg6+vlL91G1bxnQD73iB2uJXvpqKMGEAMGtagrsog0GCu+ryq8w/p0U0tWtXuU
         ZGoTa2RgDT6fWKNzoOIocQK838rHs5qkHfqE61gDkjyuXLaP/FDLPizi0H7xyPATotEU
         CMJvOyZwx6XJsOx9swTNMQkRK4dQZhPVLxtfmpBo974J9lwsunm7tYquPTWDhAex1os0
         hcDRKU7gAUsX+OJ9MYHqhlfWliq0q+7YXxSldIW2wnYGPrV6BRqIiwS2QtvMWWOq4Tbw
         JbvcdURiBXNaIOz8b6+/5Dr4JmR+V2mKSADC01UPjmhDnNrWtSvNrjHQYoF+tMb15156
         iAig==
X-Forwarded-Encrypted: i=1; AJvYcCXSZFLMGu9zpmL60pEc7mh9GK+OUhAAoGWhCtjjjU7asXG0VoGEjhqk/0jgTkvFxS4jhZcjreJT8huX@vger.kernel.org
X-Gm-Message-State: AOJu0YwePAJUbT+iPvMzLuJhu9IJvzNO9g5B/LiiU5/ocbMtp8v9dsU7
	TiTjw/wq08Xs1pNm9pxkh/VNfmByd9Xq0tr7Q7/PytFSJdVnyMEjxRPfH+09FIJafI56qY370zR
	nPla8OgCrX8FD5BcLSlpQHFcmX7lpuCp5aYEykY1rIKP4ZG4HE3dKhQk9dzBR5maO
X-Gm-Gg: ATEYQzxl9/PSiVrOaRDe6DnknoDeOcgLUeRT+QdKsWp+ub2JmKEMZa0e+2FnnEKtffh
	maRdDuz6uF5N6Vnkl399VIb8uHmnG+g4s2pmpjkzRD7AEie0hycoK9macVbc/p85Kn4wR8kVDcx
	pPDirosJ5CqwhZZGS3yMm+2OryJmvPxWdxP4/q4lrRV8nzTqVdGKcO5MBqGH+XJK5btV47N5MIP
	t5tdtIlPT2b2KXl9xUa26JyXMZYxNf8NDpk84YtQJD6sJtpW85Wzbg/mDHSpgD3N8WSPg0NSEpj
	hhdh0nGou9A6slV/ZzVlu8WmWRtlgliZZPhO2li9AgFwScsbUZMb756zh4+XPBHq7zzJTSxiAcO
	SXpVrzmmHsYqqKktiIo00NZfuCo+yAcvuFCwRp3+FnRQkAxPCkOn1HT8fL/t2C74jd5e0L8ziA+
	MdxU59jeuXrpdyOl9462zmWXCHdkO08L2J6AoeOiXOhj5TKNs04PRBSJEN
X-Received: by 2002:a05:6a00:2e04:b0:821:a7b6:10a3 with SMTP id d2e1a72fcca58-8274d9e67cfmr6018758b3a.34.1772281766779;
        Sat, 28 Feb 2026 04:29:26 -0800 (PST)
X-Received: by 2002:a05:6a00:2e04:b0:821:a7b6:10a3 with SMTP id d2e1a72fcca58-8274d9e67cfmr6018721b3a.34.1772281766150;
        Sat, 28 Feb 2026 04:29:26 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d4e10csm8130048b3a.1.2026.02.28.04.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 04:29:25 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Sat, 28 Feb 2026 17:59:03 +0530
Subject: [PATCH v9 4/5] watchdog: qcom: add support to get the bootstatus
 from IMEM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-wdt_reset_reason-v9-4-f96d7a4825d3@oss.qualcomm.com>
References: <20260228-wdt_reset_reason-v9-0-f96d7a4825d3@oss.qualcomm.com>
In-Reply-To: <20260228-wdt_reset_reason-v9-0-f96d7a4825d3@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772281742; l=4446;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=KhA6l9FXGGh1ADW//4d+9pqBGmS+IoxIsdsRwnaryCs=;
 b=4fzwpqhxnxVE/nAu54V8k30XAvehg6JkE1Enc+3pgcvas0+Ei60lm2jG67Z7ndJwsSe8r9qjB
 bkEaawbfoWCChJUP3h/sjCEBsiAno1+0q1gZDo1D8k7HjGfoPejd8x5
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: l4rBeeZPQW7korVav6QvLM-VrfuqFr0J
X-Proofpoint-GUID: l4rBeeZPQW7korVav6QvLM-VrfuqFr0J
X-Authority-Analysis: v=2.4 cv=FaA6BZ+6 c=1 sm=1 tr=0 ts=69a2dfa7 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=qKWHfwwlgvfnR6H4MV8A:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDExNiBTYWx0ZWRfX2Zvcny8IZI71
 BhWVDpt3Xqevf5D9YejbP1osjmODzusAdLIcmPMn9Vc4Nol2jfOLSxxAPVV/vAssuWXNOrsaQZD
 pojyEa5/pXVkbbSgVurQhy0XEe52RpkHiULIN6F/YEn7ayols3K8rGWb/vg3xXD6ZbK84KTQbpF
 rklTUqya+oEATQJyFn0IrYBgNZgNYGMHm6YhNlKJ5AeeGQtgZyRRNgt4P5qH6zwlv50hIdHPKzm
 O3Fdr1R0HSnv4EdxSRqA/oyvO14O/pIqyKy8WIZml2wWny1VyBIygsXXFArFMs93y0QodpvKByV
 tkN4G/BE1sKmvZj1SZLlHRQNEMZeEyh5wj5/WOBlpADCY1pAw3XHNKJC30yNf0UgyfkIMbaul0E
 IReQN/TkkENXpN4oZvBzfMB+TvCYjl4cc/RBh/CiFAfnAHiJHb9Jh5MNVad2avNNC4Ol9XxQydC
 aAvgn6iUgBtjMmdMHfA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602280116
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269550-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 50D3C1C2FB6
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v9:
	- Log the error message and continue with probe instead of
	  returning from the probe
Changes in v8:
	- Picked up the R-b tag
	- Updated the comment as suggested by Konrad
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
 drivers/watchdog/qcom-wdt.c | 42 ++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/watchdog/qcom-wdt.c b/drivers/watchdog/qcom-wdt.c
index dfaac5995c84c1f377023e6e62770c5548528a4c..49bd04841f0c8c4c5eb4e6b3a4864586aa9dbf5f 100644
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
@@ -193,6 +196,40 @@ static const struct qcom_wdt_match_data match_data_kpss = {
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
+		/* Read the EXPIRED_STATUS bit as a fallback */
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
@@ -273,8 +310,9 @@ static int qcom_wdt_probe(struct platform_device *pdev)
 	wdt->wdd.parent = dev;
 	wdt->layout = data->offset;
 
-	if (readl(wdt_addr(wdt, WDT_STS)) & 1)
-		wdt->wdd.bootstatus = WDIOF_CARDRESET;
+	ret = qcom_wdt_get_bootstatus(dev, wdt, data->wdt_reason_val);
+	if (ret)
+		dev_err(dev, "failed to get the bootstatus, %d\n", ret);
 
 	/*
 	 * If 'timeout-sec' unspecified in devicetree, assume a 30 second

-- 
2.34.1


