Return-Path: <devicetree+bounces-263469-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPdRGNAohmmSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263469-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:45:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3092101549
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:45:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A42AD3043212
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB99F421EE2;
	Fri,  6 Feb 2026 17:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hIEQ/jv+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bbXHqWwI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C4293EDAA5
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399759; cv=none; b=qljN8Z+35lXrmth/Ri2mfvH0V3kz6AzzBsku9m25J8wGUPdImwAwTC42ohTCYcMFMk/FHumXQxB3uwOI6NJGP2GW7KbRZFYf257B6c/5VJZYACs770C3Pmd0CDE6NpYtEt5kCncDSt+Sl8EWgZv2ueBVBvsiPh/RLbeaZ6d1K6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399759; c=relaxed/simple;
	bh=9fl8bfjYxtflTrpwQ+JEsijZ7KkoNEhoY7/L5W7VcgE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bMElUbZxD0eFXxCgvZstUgUXzV/OGuUauexHm/ceivkzt6U6XGD7UboegO62r0j5wekHTfJGEaCcDg1DgziizMzmpJtAc4sLm9UBPvV9f8cAcK4vPTgKnRG1VJQRUJEDQ0iZye/DqcZcH3+uSHzpeV2n+/qx8Cjb96gt9pq8Fu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hIEQ/jv+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bbXHqWwI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616H73Rv3924332
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 17:42:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=eq1swinsB23
	3N5IrjE+XE6BW0OuGc5vycgIlzP3MrF4=; b=hIEQ/jv+dToj7p+dn9SfH2dyODr
	kv+F5qk5SxsjRWamieih51Z+414NVJ0stADfNad8YNBZAT35cZT1X01jfeOtP6U0
	QQnPrv15Sy0QhAfVzZZLC+SJpNsJHdPFjbS21fTNKy0W0rKvYRnximz3a0eB3PAT
	W1WTyhBSvFVOwOe3ipI57IhXE7IYxBFwWqioP1ONYS5i0Ot1M/7Bq/aT3OQ7QB5u
	dvRzX5mDfVWi66sPwrpouaskxg6RuKFMPkB30AtzzfosDovSlRpKzA/93GtkR3N6
	R61+/L2uDCVGHhAuhyJBJVGfekylltVlhUEUyYR3H5QZJ3aEZQL4fKzFdpg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5mdur31x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 17:42:38 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c61dee98720so576917a12.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770399758; x=1771004558; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eq1swinsB233N5IrjE+XE6BW0OuGc5vycgIlzP3MrF4=;
        b=bbXHqWwI9j917j9VEqT042F5maucyPH4tbn2neeyoeCh72eDxSMEiajZkmqWSKtFn/
         1yInq9UikfzM6AR5KngOkQ9uGPFPIcUjw3SgO+++zjE7IN2+cCXGVh9cxxdgeLR2U4SX
         fhjLtRoMUCJh+Okex+FWTkP2PqzpTxYQnkMcBKE56Z+ceAZqF6p7rRtV7NYqgKTDaUOd
         03x3xvzVq06Xv9NzvGK4i+ohYB94rZHAPaAanoyU14HEogFcg0Q7Ey/2bjvlDj9pjQTg
         aH9AjC/J88GUGsDoBrlCdX5dXPXxBqZrCtRM9Qj4PhWBlw3q32qpVeTXQC5QPukko0/M
         oeZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399758; x=1771004558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eq1swinsB233N5IrjE+XE6BW0OuGc5vycgIlzP3MrF4=;
        b=uiUVJEK4cg/OJdEU8Yjv01qQAc6E+VOQ6oLR8FSKyHpxIQFwnT1pJDCheewBbskZNr
         zT0WvetiP93lRz3+e/0UBYPrhwZxLEwM3ij6XPO2wwpT0ZHqy8vG2MMnkXVTZEUHQDnx
         XL05csodJQD0trmbSVdvHdco+dZfqdvEF3iJMFOdJNqeY7h1f3GjukOqXkn3g/itQf/I
         e350ytEII4DDFqJo4QTmjHvpHLo5u92oGDQ795I4QlHlMyYh5kncS40xOnJNnauyg/yM
         ZTEhcoYmlcLPtRok9dPzK0qJFbOplm9BwObLFh4d9B/mMmPcu1N6NShaGcYYGuDU/Iu0
         yxoA==
X-Forwarded-Encrypted: i=1; AJvYcCVlTErmy5wZyC1thi5LOp7VXlCc9gVqDwbHfW1JDRR/o/YU08TIQw6g4QI2ZACE773UUrmPZL28Utdr@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9MVIRdCHbEec7sEEPlC8OaKPdNMpTkr0hYFRvYi91bg8YkLMN
	DwjL8H5ac3hzEuNgNa9EK7Lk/dtwmL6px/2pKrwZLjOtF9y3KoH864hDKOOBWdMZDjWEYQaJQSh
	J13+qDQOCiG6RuvuuiBp8mCcZAUZT/I3dX9x51yEfxZV6iTvoM5GKgweYQYhpK7FJ
X-Gm-Gg: AZuq6aLduLHcZmTVnuzZyKYyml8tvedsVcArDpDmdUhVwKbUm8kXY01shUqyBxpPCQj
	k3Rc9DBhk06AJx0wh3Qc592cgkTnQPnXQS95pYTcM3wJxmQCtnNK6fIbUN1oYVZTZOYPbZknGUN
	5juj/cYlIiK3RhzcMj/re8IOntMiWyvNi77DpVpZGYOu46MaW4rMu+Jtc5rdVm9Tsoco3sJ/C2e
	SfSu2CHNJkV7HvO10eR8MdiEIngTkmbFQA2JmmITJEi/Xid4gThtUXJGroxTc5cv9qWVhOW6eUD
	3IBbgXTavzwLx2kzenijYi550taSPIXa9dXpOjEQaUUGkRujvEaWmkSpdpsVyPH1XS8ID4X9qFH
	fDVCQHgXQNbahynNjVWtIJ+h/vGG0VleuZ0x+aUM9ND0=
X-Received: by 2002:a05:6a20:d526:b0:38d:e674:b60a with SMTP id adf61e73a8af0-393ad029dc7mr3808101637.36.1770399757493;
        Fri, 06 Feb 2026 09:42:37 -0800 (PST)
X-Received: by 2002:a05:6a20:d526:b0:38d:e674:b60a with SMTP id adf61e73a8af0-393ad029dc7mr3808056637.36.1770399756714;
        Fri, 06 Feb 2026 09:42:36 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb5eccbdsm2639387a12.19.2026.02.06.09.42.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:42:36 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bjorn.andersson@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
Subject: [PATCH v5 10/13] i2c: qcom-geni: Move resource initialization to separate function
Date: Fri,  6 Feb 2026 23:11:09 +0530
Message-Id: <20260206174112.4149893-11-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: hR0lpH-1ISDmLC7X-06zSrxzDM_OxRr8
X-Authority-Analysis: v=2.4 cv=Nu7cssdJ c=1 sm=1 tr=0 ts=6986280e cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=T4QVXHuY6bPIseVWQ88A:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: hR0lpH-1ISDmLC7X-06zSrxzDM_OxRr8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDEyOSBTYWx0ZWRfX33YmI7C8jpmj
 yBMQEG7Sp/NdRTHU/i8cGIh5GGLsKkqKZhVl7gs968laKpY6yCL6XrCEXVRy3kfW49eUYAwCmbW
 6d7wsVgYo562sQfDthL2fL6uEi/8jvLfENcDvV9XMN9T8h+Ie0TW8O50mGsKrHZ2thy7qB6vTVM
 atVcGrK/4CFpDgForqRQGSkkdCm2nb2Mztkxgau3cxB+/cJ/BvQyxt4lPEkIPwax0dOp5FZzcKb
 VS2EeHiWzAJFFFxz9KUFMh6bjUV8FtfsnFdq/yzbo28lFfLfPmlvXAdhjjFa5NJzJYR/kY9dyXd
 rJEh9AHOUBm1GMqal51Tu6d9hjXf9a1j/mKn8e66WVUZluv+P7Hr4xWMTyoRoqj/VX4eGocmVFz
 ct+L6Gt3j6f6H1oSVac9/VQft+C47Um0UgWDAp519E1Xf0ynrTCF50DzC8V5hBPGbWXj2tDrD/v
 x6rkJmadHyGkJ5174eA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602060129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-263469-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D3092101549
X-Rspamd-Action: no action

Refactor the resource initialization in geni_i2c_probe() by introducing
a new geni_i2c_resources_init() function and utilizing the common
geni_se_resources_init() framework and clock frequency mapping, making the
probe function cleaner.

Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
v4->v5:
- Added a Reviewed-by tag.
- Removed core clk, has_core_clk and icc_ddr variable.

v3->v4:
- Added Acked-by tag.

v1->v2:
- Updated commit text.
---
 drivers/i2c/busses/i2c-qcom-geni.c | 64 +++++++++++-------------------
 1 file changed, 24 insertions(+), 40 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 81ed1596ac9f..05f5705b0319 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -107,7 +107,6 @@ struct geni_i2c_dev {
 	int cur_wr;
 	int cur_rd;
 	spinlock_t lock;
-	struct clk *core_clk;
 	u32 clk_freq_out;
 	const struct geni_i2c_clk_fld *clk_fld;
 	int suspended;
@@ -125,8 +124,6 @@ struct geni_i2c_dev {
 };
 
 struct geni_i2c_desc {
-	bool has_core_clk;
-	char *icc_ddr;
 	bool no_dma_support;
 	unsigned int tx_fifo_depth;
 };
@@ -1045,6 +1042,23 @@ static int geni_i2c_init(struct geni_i2c_dev *gi2c)
 	return ret;
 }
 
+static int geni_i2c_resources_init(struct geni_i2c_dev *gi2c)
+{
+	int ret;
+
+	ret = geni_se_resources_init(&gi2c->se);
+	if (ret)
+		return ret;
+
+	ret = geni_i2c_clk_map_idx(gi2c);
+	if (ret)
+		return dev_err_probe(gi2c->se.dev, ret, "Invalid clk frequency %d Hz\n",
+				     gi2c->clk_freq_out);
+
+	return geni_icc_set_bw_ab(&gi2c->se, GENI_DEFAULT_BW, GENI_DEFAULT_BW,
+				  Bps_to_icc(gi2c->clk_freq_out));
+}
+
 static int geni_i2c_probe(struct platform_device *pdev)
 {
 	struct geni_i2c_dev *gi2c;
@@ -1064,16 +1078,6 @@ static int geni_i2c_probe(struct platform_device *pdev)
 
 	desc = device_get_match_data(&pdev->dev);
 
-	if (desc && desc->has_core_clk) {
-		gi2c->core_clk = devm_clk_get(dev, "core");
-		if (IS_ERR(gi2c->core_clk))
-			return PTR_ERR(gi2c->core_clk);
-	}
-
-	gi2c->se.clk = devm_clk_get(dev, "se");
-	if (IS_ERR(gi2c->se.clk) && !has_acpi_companion(dev))
-		return PTR_ERR(gi2c->se.clk);
-
 	ret = device_property_read_u32(dev, "clock-frequency",
 				       &gi2c->clk_freq_out);
 	if (ret) {
@@ -1088,16 +1092,15 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	if (gi2c->irq < 0)
 		return gi2c->irq;
 
-	ret = geni_i2c_clk_map_idx(gi2c);
-	if (ret)
-		return dev_err_probe(dev, ret, "Invalid clk frequency %d Hz\n",
-				     gi2c->clk_freq_out);
-
 	gi2c->adap.algo = &geni_i2c_algo;
 	init_completion(&gi2c->done);
 	spin_lock_init(&gi2c->lock);
 	platform_set_drvdata(pdev, gi2c);
 
+	ret = geni_i2c_resources_init(gi2c);
+	if (ret)
+		return ret;
+
 	/* Keep interrupts disabled initially to allow for low-power modes */
 	ret = devm_request_irq(dev, gi2c->irq, geni_i2c_irq, IRQF_NO_AUTOEN,
 			       dev_name(dev), gi2c);
@@ -1110,23 +1113,6 @@ static int geni_i2c_probe(struct platform_device *pdev)
 	gi2c->adap.dev.of_node = dev->of_node;
 	strscpy(gi2c->adap.name, "Geni-I2C", sizeof(gi2c->adap.name));
 
-	ret = geni_icc_get(&gi2c->se, desc ? desc->icc_ddr : "qup-memory");
-	if (ret)
-		return ret;
-	/*
-	 * Set the bus quota for core and cpu to a reasonable value for
-	 * register access.
-	 * Set quota for DDR based on bus speed.
-	 */
-	gi2c->se.icc_paths[GENI_TO_CORE].avg_bw = GENI_DEFAULT_BW;
-	gi2c->se.icc_paths[CPU_TO_GENI].avg_bw = GENI_DEFAULT_BW;
-	if (!desc || desc->icc_ddr)
-		gi2c->se.icc_paths[GENI_TO_DDR].avg_bw = Bps_to_icc(gi2c->clk_freq_out);
-
-	ret = geni_icc_set_bw(&gi2c->se);
-	if (ret)
-		return ret;
-
 	gi2c->suspended = 1;
 	pm_runtime_set_suspended(gi2c->se.dev);
 	pm_runtime_set_autosuspend_delay(gi2c->se.dev, I2C_AUTO_SUSPEND_DELAY);
@@ -1183,7 +1169,7 @@ static int __maybe_unused geni_i2c_runtime_suspend(struct device *dev)
 		gi2c->suspended = 1;
 	}
 
-	clk_disable_unprepare(gi2c->core_clk);
+	clk_disable_unprepare(gi2c->se.core_clk);
 
 	return geni_icc_disable(&gi2c->se);
 }
@@ -1197,7 +1183,7 @@ static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(gi2c->core_clk);
+	ret = clk_prepare_enable(gi2c->se.core_clk);
 	if (ret)
 		goto out_icc_disable;
 
@@ -1211,7 +1197,7 @@ static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
 	return 0;
 
 out_clk_disable:
-	clk_disable_unprepare(gi2c->core_clk);
+	clk_disable_unprepare(gi2c->se.core_clk);
 out_icc_disable:
 	geni_icc_disable(&gi2c->se);
 
@@ -1248,8 +1234,6 @@ static const struct dev_pm_ops geni_i2c_pm_ops = {
 };
 
 static const struct geni_i2c_desc i2c_master_hub = {
-	.has_core_clk = true,
-	.icc_ddr = NULL,
 	.no_dma_support = true,
 	.tx_fifo_depth = 16,
 };
-- 
2.34.1


