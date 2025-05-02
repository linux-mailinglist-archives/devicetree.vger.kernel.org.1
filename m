Return-Path: <devicetree+bounces-173001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF3BAA733D
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 15:19:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4735B7B4EF5
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 13:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 704E5255F41;
	Fri,  2 May 2025 13:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ELlXN9VT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E998A255F31
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 13:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746191904; cv=none; b=bIZ3y1Y/Thi6NkVl5h+FpKRsZLFX9URPZhTGBWazAWgmnx3yEeX4eV1A/4zpZzrKFAl7lRq6lAP7zq2X2GQpAlbxoyu6/p4JSnLrFkw5hIGWdLFxuInwuidRYoRQBmS9cKkENCEbOtqcMwBbmU5pG9B2AkrSzs9R75h8/ZUEags=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746191904; c=relaxed/simple;
	bh=gwpUMbBpXzu5+reB0WmgsbjcDWnkBung9x+HZPAYJk4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XBm0QPUI9eNRtnnhDylo36UMAToSiUvoryz0Z2XR7mWayEom1MPqLriiBJi1R3P0R8DdBmnB2yrvOBP8VtlC8t2KBQAnfnqncElut15fap+QTG7nIqK5aTjny1VAqjR0G3ZhNc/N4mM/rYClv51ALnu9L35eg8Jsd+zZTqmHvHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ELlXN9VT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5421MwE4015197
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 13:18:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9vMvxizaT1xk4hie5Ubnws/xgswa1U+KGaDbkTzMKa0=; b=ELlXN9VTgH1/iTNv
	llV6kjC8VOW8N77AUJN1F8Rl0HWEqwvK0PQ3j3jvFqXlLBh1gG8rAzC4+O5YnFly
	u26TfYGxj8qplo2GVYowE6z5YOGvcBV/rosF6LD4UEj1fIsaPKMos502zsmwoOSg
	NJHnHiRa1FxHelydFsA39OG/L4DHzg+NBgGWjJ1vBqzVSj4TuZqYKYfI7EEHYyhj
	2Ft2ddLFfcI/7OVhwEN6KPYz0WXtIULKlntMnLk/R51VFeNNmnEJvoeVRDbWMGHn
	OHorjxKAzb0KpIdWvSUjDUBZs2OofMvRt7VJfLUeQaPiftLMAhkW5JrHwO2RotPe
	d5QDkw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u4gepv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 13:18:21 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b1f8d149911so1701973a12.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 06:18:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746191901; x=1746796701;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9vMvxizaT1xk4hie5Ubnws/xgswa1U+KGaDbkTzMKa0=;
        b=AOcueS10TbUXe9P1PPY1gZKCHtPgQYSJr5wspZl161UnXOFCwFUPrerTXGSLiryLqH
         h9plj1FqaaL9OalL37TAbfeYfoGwLYHsJhYKX795p5I7eKaPwP+0fF/HrwW02fz9muSq
         7hFglksKlYe1Ak2hKSFJePWh37AaSfR9rZkoZPn4otLmO4fa55II94dFWrOYcFNMhgRL
         FuslZh8/k+KQ1YQYOmMDrR/EPvgkwYuHntWkxkcr7o4AMhJUAnlinNQiHRqyDApk6Put
         mg/0l4R7I9uYtduBQrGbv6djujpsVGRmIDYD72vI2wZSnq4r4UYllaq0eJyqT+/P52me
         BG9w==
X-Forwarded-Encrypted: i=1; AJvYcCWoTVISFqJSZs0I8CfMDJ43WgsDeHnd/Ud0sxumdEzeBkamjgthta0NSoN/OkINbVJEDHYyugYi6VrZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz262kbWl+OdO/0wHffu7DtWQqhPXkiZGohY9LjE2wnQ2Q8g6c4
	BNYVHPFmfj0G4n75Bs1ZAVO1BDaHgP0R4vW4EmuYOqP+MObGWZ2LVPZwHqokh/KgX4XpSWrFWr6
	CzE/VsYv5XhtQ8uewleLKUZeal0lLepRPLtJyBSJidlBi5yQyO3x6UUgYvs8dSJnCoLHF
X-Gm-Gg: ASbGncv1bELlNWRXRco7LXpz/MAGjTbu9HPpAkKjvjhHxJevpT5xE+X0rLw6HhuaNOo
	omhdKF3nf01uJFHCKDkI28F1w/aXDDCNGoUd38zzNBj4pHp5/1HodP8uszH9O/2ZJ/bmMppVOMn
	XTlj37BPyURRgeIyDf1kkmKPGd2in9R+q3wgR/OL4QoKL5S8eBT5QQhP2NJ/YBD2inm++gUpBaK
	G6u3pjIBSbLWpVPHBgdluOS+xkMEAdupj2DShNvl6XPDYjr6ielLt+zQpc65dJ6Ky4UVBkkccl1
	TqOgByCeGNupZwOvlY/MkrPo/rnQLQqnjwCurYTC5vxYTkxU1XnlsoEqh+JyL47hf4Zg2dcXWl9
	IVxZQ1I7C36hrBQSvSMzgXOkFzWmbW+YSujwq7FXxTp05wjs=
X-Received: by 2002:a05:6a21:1786:b0:1f5:8e39:9470 with SMTP id adf61e73a8af0-20cdfcfc862mr4645084637.31.1746191901012;
        Fri, 02 May 2025 06:18:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF3vWB64AN3R+aqhJiA646DNNY2YvW+T/GKptK3r5zllmEiCgaz3jFKpQSKdxiGPuXwx1gfIQ==
X-Received: by 2002:a05:6a21:1786:b0:1f5:8e39:9470 with SMTP id adf61e73a8af0-20cdfcfc862mr4645043637.31.1746191900671;
        Fri, 02 May 2025 06:18:20 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74058dbb939sm1525886b3a.61.2025.05.02.06.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 06:18:20 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Fri, 02 May 2025 18:47:51 +0530
Subject: [PATCH v3 3/4] watchdog: qcom: introduce the device data for
 IPQ5424 watchdog device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250502-wdt_reset_reason-v3-3-b2dc7ace38ca@oss.qualcomm.com>
References: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
In-Reply-To: <20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, bod.linux@nxsw.ie
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1746191883; l=1548;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=gwpUMbBpXzu5+reB0WmgsbjcDWnkBung9x+HZPAYJk4=;
 b=QADu0rUVoDu09hkso28bhGRBNTAXFfxP7Jw8a5UPLjcywek9SbOlxtIcL9OL651RyGZyqZuF1
 N/6HmcsbNCQAKIAVsjdaIssoRQ+FufXH5ZhXlR3+kHlahB0KOjDy4cI
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: kyx2x9lhwMtwpX27ozrbzmkjgYWRGiuQ
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=6814c61e cx=c_pps a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=rRLmAKjRkRCCZZ2CrwwA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDEwNSBTYWx0ZWRfX1GaPwWF1Bzzy PUUKZmdbatYcolwv7CLzKPcR2cKsrSSCxCvJImDg0EuLIxLahFjnYqPSMXgHbKZyAKN6556Buzp skGtVflWRjWLY5ZUZC23jINv7JXkbfFC9/2VTb2LZ0VwstGeiGVfAdTUGDfC8rPgWQ0llKqy2aK
 X/lTVAjn6ynKg+AOlOPa3WsRD1ViBrhWB66jonaCzKnuvvpYOLzOQcbTfOm4PRsH3cgnmxgvlMM WXh5vGdZ5X5aYWs6hqIsnSbtt7NqZM2YN9rprEbRorVFhlaUF1ygdp09WXwHLsiE3iGutUAS5Cy DuxDnDodg60Fi1faVto+ZiztRjV+TPiXEbriagk4PAgBt2FOSmnj9be+12wHXcEhTXEZiMGEBSz
 9EZWV3wjhhA4XANpEVgPO1nW5QI/Xe3jb67/4aAB7cbm3+qU5GHkCtyecoleKMKOfEkBmQbN
X-Proofpoint-GUID: kyx2x9lhwMtwpX27ozrbzmkjgYWRGiuQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_01,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020105

To retrieve the restart reason from IMEM, certain device specific data
like IMEM compatible to lookup, location of IMEM to read, etc should be
defined. To achieve that, introduce the separate device data for IPQ5424
and add the required details subsequently.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v3:
	- New patch
---
 drivers/watchdog/qcom-wdt.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/watchdog/qcom-wdt.c b/drivers/watchdog/qcom-wdt.c
index 006f9c61aa64fd2b4ee9db493aeb54c8fafac818..dfaac5995c84c1f377023e6e62770c5548528a4c 100644
--- a/drivers/watchdog/qcom-wdt.c
+++ b/drivers/watchdog/qcom-wdt.c
@@ -181,6 +181,12 @@ static const struct qcom_wdt_match_data match_data_apcs_tmr = {
 	.max_tick_count = 0x10000000U,
 };
 
+static const struct qcom_wdt_match_data match_data_ipq5424 = {
+	.offset = reg_offset_data_kpss,
+	.pretimeout = true,
+	.max_tick_count = 0xFFFFFU,
+};
+
 static const struct qcom_wdt_match_data match_data_kpss = {
 	.offset = reg_offset_data_kpss,
 	.pretimeout = true,
@@ -322,6 +328,7 @@ static const struct dev_pm_ops qcom_wdt_pm_ops = {
 };
 
 static const struct of_device_id qcom_wdt_of_table[] = {
+	{ .compatible = "qcom,apss-wdt-ipq5424", .data = &match_data_ipq5424 },
 	{ .compatible = "qcom,kpss-timer", .data = &match_data_apcs_tmr },
 	{ .compatible = "qcom,scss-timer", .data = &match_data_apcs_tmr },
 	{ .compatible = "qcom,kpss-wdt", .data = &match_data_kpss },

-- 
2.34.1


