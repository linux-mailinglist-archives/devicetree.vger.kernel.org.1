Return-Path: <devicetree+bounces-264143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0P9TDo9Iimm+JAAAu9opvQ
	(envelope-from <devicetree+bounces-264143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 21:50:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E238111494D
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 21:50:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 231C9303A85A
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 20:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99BEF4279F4;
	Mon,  9 Feb 2026 20:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RKrrqfX9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PIIMGXNz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053E03AE706
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 20:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770670164; cv=none; b=k6hnUMnlcxOliexsmdwZN1HYmqXIIOZpa185dNuk5K0RNVlsBrX5Wb3Z5g3ZwTLHRH+rDUBjl82mxVzzztwX1lH5YmNXDJMWrZFYccIbk9abKMREaJBf74A8IR+UJ8WeVErxzRhO5gW4RwpZVY6FpEGON4vdSvnwUrw735yqiPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770670164; c=relaxed/simple;
	bh=szE3uTdQ2zlh+pJ+0h433F4Jn9gSZEhssLs2SPsqn0Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=i8cbBmhnSksmzJwbNQ0+SBJq28/U2nArhwlqzkt4LvPb+PhHgzxkcBLp8DOB8Owhn6j9DnF28lNhFCNgDYWoPRRC89YWHrJHwk9tTIcHkr83ioDhc68HiAbhU5CMro1sswqxHy67wyN7rN6Ce94mMk7I6XjZWlrJigs4HQIbpVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RKrrqfX9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PIIMGXNz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619JaY9g3347712
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 20:49:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NcxRueC2eU5
	LWtebFYR9VPhKwz6ZxYqBGgW0AGpwe1A=; b=RKrrqfX9Gb8mccVOEvel0hlK6NH
	QxH2vFugKe9frvo6f9Y1R3IS9ULzcsEsx8VSKs6fEpSO2zIYR5mEJFw3bRSsJ/pc
	qjCLKv/uuuosxKplawMQfNDipsl26BjodLWFQbY8KM5gIhtWPpR+FQXS7/2WYWRN
	yiF0F7WK+uVYqkWV7100lwHyOc0hfvxFEJ4ZDASPzIvBazw5UT8SlhNZylFa+foH
	I3jwd+WM7GPME5+K0Dc272VzLr8t119Rc1IEKX0joK3L4NSHgwiwkaAiFf2k2X5u
	7z21gl0LGIohJYrXuqMbslatPxnc9exvDnCTaAp3YrvoEwK+Bxdo5Gme1pw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79cy2xnq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 20:49:22 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2ba87c0e198so180529eec.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 12:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770670161; x=1771274961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NcxRueC2eU5LWtebFYR9VPhKwz6ZxYqBGgW0AGpwe1A=;
        b=PIIMGXNzW3OORTLa0ch3Nn6yPTlfHDMA2LphpB753ETvP8sEW6YBxrHg6WipX2D+Le
         L0C32lQZ5KEDLNbzdoY1bL2ByBsllMqpN08V1UCeMtBaKlUjAOlB2uO0GPikGqs7IpQO
         MpFjYDzCJU6qTTMhaBdbd9s/vHNsomkYq9QzHxwrStrtAFLoILLHDnm4ky2MUwIXKCSw
         TynELGHE67neyxdlH7Cmj7nKVVuMdpjwJLxNHDoxqsFTy0xMW+9pU4puWXzOo9ZJRqqu
         A1bIfN/rQuVe3wmRrMlAa4OuhVQ+rs7MdSrddar3OHyVo6HHdMbEyTKn78PI9YPebkgj
         1LRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770670161; x=1771274961;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NcxRueC2eU5LWtebFYR9VPhKwz6ZxYqBGgW0AGpwe1A=;
        b=hAeJ+CNNmYsliQiszhe2h3jkNJp0g3GwZEKajo3Pv7RR7LTA6P4gRyxs0DlTvPd6l5
         8muvcDW4Xj4F8vSNIzWZJauZzZUNGr5eSlcusAhQ3kMVYWPXXG16/1p9RW3wZ9MTAosy
         SrIs/svZlF2+ZgNiBj2v8KHXk1Sb6FySxNzMGpMO9auyg5UHPCXEQTzJzOJsQL72Z6+q
         mCE8lQbrYV2rzj8OxPY/7fugW2CJA5NfDTgA0Qit0SMWjCUoro7M7DqRtEr0bSAQsvr3
         nvqTesE3/BgJBPi/rdGkaR3ioI6PFj406J11cx+h36QRzNruZi5spLWnbaitGg6aylYL
         RS+A==
X-Forwarded-Encrypted: i=1; AJvYcCWA/XL1RVLk5b9/TL5tszBLZ3Aw3bx2OMI3Eo9/pX8chdtfetblC+98lEeJ2LE2Lu1xOcilB624zvXi@vger.kernel.org
X-Gm-Message-State: AOJu0YxNGkFFePcm+sM7cHWIYfF7JTVRdbiohZX8o+WX/qVKLH5vjFVj
	0lVQFkGj+2faTIDgQQ5ZlNHdYOqlDKJim1j79dwwK03upqnlItrOIOBQIyDNCWaIBE7lh5Dnjqm
	EIcwjW5gv/ugvcN86fVayQcDZ5V3afYH/yZ4+4Ib8SZHEZfqJaCW2Ihzf97312A07
X-Gm-Gg: AZuq6aKZk/tdeyROfJ77GmCrpcLJb8Ho2fP9qLehfJ8sF1ABjBR94e1kpZeqeZtFcF3
	0i+pyaXlkhH9vXLnJuwNconlEYj78yKnr7lJzLIOrVCQ+uaAKUOhz1+bN9rhXYt+TfLULQu+gWB
	HW6Tuo0TEwrj4xyylV6wGDx8RPUsVy4vNIN1Jfmoqvkv6Cg/PdWQeptwxh9223IAeTLFOvs4O6K
	Rer1TI6xuc1v9IR2SvJysrNzIgNjatfFrZJGg57HkZ8lxuYpb508Vz42FWGik8CXecF7cTywBdE
	F8u3yVUx4VegRiPc84caM+GOP9fyk/ongKMttivkIgcbI8rlO4O36cKspdDA4DqtLCFrqSQVudi
	ubcKG0brR+7BNRWpI6XXZja/Dh93SLv3RaPChF26LMOHmhiiE712GrwdLCmwEKl8463HWQ4Gd
X-Received: by 2002:a05:7301:38a3:b0:2b8:2910:dc9b with SMTP id 5a478bee46e88-2b8563d941fmr5919659eec.3.1770670160782;
        Mon, 09 Feb 2026 12:49:20 -0800 (PST)
X-Received: by 2002:a05:7301:38a3:b0:2b8:2910:dc9b with SMTP id 5a478bee46e88-2b8563d941fmr5919641eec.3.1770670160175;
        Mon, 09 Feb 2026 12:49:20 -0800 (PST)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba89ae14c9sm106247eec.29.2026.02.09.12.49.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 12:49:17 -0800 (PST)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: [PATCH v5 2/5] soc: qcom: pmic_glink: Add charger PDR service information to client data
Date: Mon,  9 Feb 2026 12:49:12 -0800
Message-Id: <20260209204915.1983997-3-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260209204915.1983997-1-anjelique.melendez@oss.qualcomm.com>
References: <20260209204915.1983997-1-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: vleQqBgjDURJsAr2Rh6TbRQcvO4OJoRv
X-Proofpoint-GUID: vleQqBgjDURJsAr2Rh6TbRQcvO4OJoRv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDE3NSBTYWx0ZWRfX4M/jdIXV6HNE
 QC26TAD83k49Tzhx4i0anoP++mh5EZaBqVdjqwK7l/3J2tyjIcv6GSby2D8DV67I5nCkDAA2A+s
 +mypR6dSG7XWjNwlxoRNQ2jOq8a9tTaIrHuUF2rC4HoBh75BbcE4MqdLh03hFw7q23JwTxTDAtM
 nyRRKqQHUDyPmROmL5iZ7C9Pru/dairn0o73qThwfXYTp2GD4A3MGQ895i9oOBFgs30PBNZ5r30
 ufsEn+gAQRMvkjpWcJNQGBD1HNEQXkTkcbc1g6FJ1DD8cG5NuKWPHlZbS0sc2Q19Xb4rtndBHA9
 uhpOXnAFNaTE9PfWqGVbFGW4mGNG9K4Q2eKyCtrqhryi7syyuzMdXCJ4bRiuaoz/EdGff7xTYLF
 LDozLIoyrCAoZ1h5aVZGP8iObp4UFfQq1pKKkG1bJmaD5alQxvqDgeQ0BDbFXdDcLVOjgDiZ5pX
 zJ/wZWgn4LoZhNLO4sA==
X-Authority-Analysis: v=2.4 cv=EtvfbCcA c=1 sm=1 tr=0 ts=698a4852 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=qLYHXgdTuLTpAkILo5MA:9 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[anjelique.melendez@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264143-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E238111494D
X-Rspamd-Action: no action

Currently, the charger PD service path and service name are hard coded
however these paths are not guaranteed to be the same between SOCs.

Define charger PDR service path and service name as client data so that
each PMIC generation can properly define these paths.

Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
---
 drivers/soc/qcom/pmic_glink.c | 58 ++++++++++++++++++++---------------
 1 file changed, 34 insertions(+), 24 deletions(-)

diff --git a/drivers/soc/qcom/pmic_glink.c b/drivers/soc/qcom/pmic_glink.c
index 627f96ca322e..df2fd03d3b33 100644
--- a/drivers/soc/qcom/pmic_glink.c
+++ b/drivers/soc/qcom/pmic_glink.c
@@ -23,13 +23,19 @@ enum {
 	PMIC_GLINK_CLIENT_UCSI,
 };
 
+struct pmic_glink_data {
+	unsigned long	client_mask;
+	const char	*charger_pdr_service_name;
+	const char	*charger_pdr_service_path;
+};
+
 struct pmic_glink {
 	struct device *dev;
 	struct pdr_handle *pdr;
 
 	struct rpmsg_endpoint *ept;
 
-	unsigned long client_mask;
+	const struct pmic_glink_data *data;
 
 	struct auxiliary_device altmode_aux;
 	struct auxiliary_device ps_aux;
@@ -292,7 +298,6 @@ static struct rpmsg_driver pmic_glink_rpmsg_driver = {
 
 static int pmic_glink_probe(struct platform_device *pdev)
 {
-	const unsigned long *match_data;
 	struct pdr_service *service;
 	struct pmic_glink *pg;
 	int ret;
@@ -309,12 +314,10 @@ static int pmic_glink_probe(struct platform_device *pdev)
 	spin_lock_init(&pg->client_lock);
 	mutex_init(&pg->state_lock);
 
-	match_data = (unsigned long *)of_device_get_match_data(&pdev->dev);
-	if (!match_data)
+	pg->data = of_device_get_match_data(&pdev->dev);
+	if (!pg->data)
 		return -EINVAL;
 
-	pg->client_mask = *match_data;
-
 	pg->pdr = pdr_handle_alloc(pmic_glink_pdr_callback, pg);
 	if (IS_ERR(pg->pdr)) {
 		ret = dev_err_probe(&pdev->dev, PTR_ERR(pg->pdr),
@@ -322,27 +325,30 @@ static int pmic_glink_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI)) {
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI)) {
 		ret = pmic_glink_add_aux_device(pg, &pg->ucsi_aux, "ucsi");
 		if (ret)
 			goto out_release_pdr_handle;
 	}
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE)) {
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE)) {
 		ret = pmic_glink_add_aux_device(pg, &pg->altmode_aux, "altmode");
 		if (ret)
 			goto out_release_ucsi_aux;
 	}
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_BATT)) {
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_BATT)) {
 		ret = pmic_glink_add_aux_device(pg, &pg->ps_aux, "power-supply");
 		if (ret)
 			goto out_release_altmode_aux;
 	}
 
-	service = pdr_add_lookup(pg->pdr, "tms/servreg", "msm/adsp/charger_pd");
-	if (IS_ERR(service)) {
-		ret = dev_err_probe(&pdev->dev, PTR_ERR(service),
-				    "failed adding pdr lookup for charger_pd\n");
-		goto out_release_aux_devices;
+	if (pg->data->charger_pdr_service_name && pg->data->charger_pdr_service_path) {
+		service = pdr_add_lookup(pg->pdr, pg->data->charger_pdr_service_name,
+					 pg->data->charger_pdr_service_path);
+		if (IS_ERR(service)) {
+			ret = dev_err_probe(&pdev->dev, PTR_ERR(service),
+					    "failed adding pdr lookup for charger_pd\n");
+			goto out_release_aux_devices;
+		}
 	}
 
 	mutex_lock(&__pmic_glink_lock);
@@ -352,13 +358,13 @@ static int pmic_glink_probe(struct platform_device *pdev)
 	return 0;
 
 out_release_aux_devices:
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_BATT))
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_BATT))
 		pmic_glink_del_aux_device(pg, &pg->ps_aux);
 out_release_altmode_aux:
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE))
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE))
 		pmic_glink_del_aux_device(pg, &pg->altmode_aux);
 out_release_ucsi_aux:
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI))
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI))
 		pmic_glink_del_aux_device(pg, &pg->ucsi_aux);
 out_release_pdr_handle:
 	pdr_handle_release(pg->pdr);
@@ -372,23 +378,27 @@ static void pmic_glink_remove(struct platform_device *pdev)
 
 	pdr_handle_release(pg->pdr);
 
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_BATT))
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_BATT))
 		pmic_glink_del_aux_device(pg, &pg->ps_aux);
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE))
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE))
 		pmic_glink_del_aux_device(pg, &pg->altmode_aux);
-	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI))
+	if (pg->data->client_mask & BIT(PMIC_GLINK_CLIENT_UCSI))
 		pmic_glink_del_aux_device(pg, &pg->ucsi_aux);
 
 	guard(mutex)(&__pmic_glink_lock);
 	__pmic_glink = NULL;
 }
 
-static const unsigned long pmic_glink_sm8450_client_mask = BIT(PMIC_GLINK_CLIENT_BATT) |
-							   BIT(PMIC_GLINK_CLIENT_ALTMODE) |
-							   BIT(PMIC_GLINK_CLIENT_UCSI);
+static const struct pmic_glink_data pmic_glink_adsp_data = {
+	.client_mask = BIT(PMIC_GLINK_CLIENT_BATT) |
+		       BIT(PMIC_GLINK_CLIENT_ALTMODE) |
+		       BIT(PMIC_GLINK_CLIENT_UCSI),
+	.charger_pdr_service_name = "tms/servreg",
+	.charger_pdr_service_path = "msm/adsp/charger_pd",
+};
 
 static const struct of_device_id pmic_glink_of_match[] = {
-	{ .compatible = "qcom,pmic-glink", .data = &pmic_glink_sm8450_client_mask },
+	{ .compatible = "qcom,pmic-glink", .data = &pmic_glink_adsp_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, pmic_glink_of_match);
-- 
2.34.1


