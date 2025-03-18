Return-Path: <devicetree+bounces-158713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F987A67CA6
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 20:06:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B03C7A8D68
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 19:05:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ABEB21423B;
	Tue, 18 Mar 2025 19:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dXGQw5rO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFFD213245
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 19:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742324722; cv=none; b=t6DAMf/AteJSWR3IxuOCD0rYncma6RVY7qFscVoLaatnbdqPk2t+4zmszOhLuE2tL5syPQvWnRAqzL1oWphUoXipckgBh/B2UekCFBg0brG2qwNDzJlxQyQyQQnTwh+6+ZEqimcee9qUOr8JTbjhTtoXMUm29z9Crhbp9IHVyY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742324722; c=relaxed/simple;
	bh=WPJQrgGJ5JNoI1QyAW97ZM1iUJWHmDJGfi1T4ZzLm4k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vmoyw/UZB9fUBqJu7lzS9gksh2mNvWBk5LMytKOdDilyh6TybtC2j3J56XZFKynV3/tTDN2/vaievjMTkS6jZGWNq6gL0YE8qQYYRI42DTLZEBuOI9GwgKWyOWxPQ2gJsd1NccGakLYU89mMZ31dptXJzsRUcR1EBgdnzpZjACo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dXGQw5rO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IAxkA4023766
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 19:05:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5PQOuSV7vHK/XUjuybxnKywOlSOzTf+LJdXmKu7g0/8=; b=dXGQw5rOUi45mc1P
	iUtOge5hEVg8ntYVU+fRGd2ODbX2H5as4yb5V4eO+X1Zf2mwf0qIPBsCDBnWl3dp
	QtBzO/jg/CUZCFinTk0+wVR0dS3qal+mRxKCvrYWKVkU9AZwXdhptOeq+CFikbOb
	VagKvrpKr17KqM6TJKf92huvg2Jpn4d+7ZpLK5qvmOFHakSQkYREgmzaFdJ9YxjM
	wewM8H0bE2OLk/oU1kQykvrEdEwVole1dJ+XAtWFMsMRoEjPaUwHL6cboQ+e1ryY
	2nIMitwQhNqKBAF+XCQNQlgeevsNNRWMT+yFXWoItrJIA0ydIM2rJrlmK0CnD/6l
	pr9OGQ==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exxbjwex-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 19:05:16 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3f3a3c63929so2198629b6e.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:05:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742324715; x=1742929515;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5PQOuSV7vHK/XUjuybxnKywOlSOzTf+LJdXmKu7g0/8=;
        b=Zp5aijESQHc2S0A0C1h1h4YMeP/qZ8YOw0WhEuNzRf+JCLhVYWiRqynB2rgKhaFWMw
         IOIgQD7FVF5HDqCG8hZ0Eoo5/hgq+4PFfC76oaEGLw/5a6CGWMQpiqjZB4xpBxj53VKg
         hpwh7734oE5D03B0vRl8x50rZQasb8+J+w52K2dk06jUvdZOLN72Izh0pix3gcxmOgbG
         3sgKcVF1x5ixqJBhRg2bPCadk5iD7+S4dcPrxvU4C3gC8I3aqKGRFUn9JrC7NOj/55df
         9Z3W2GLLGOKePisxNMHiWnrDU6vaEEK+IvuXwDhtmhEeMsTiCGQbMItB6ylDEFnZtQQC
         3xYA==
X-Forwarded-Encrypted: i=1; AJvYcCWtu+5buyV14ALZnUFTcY/Lvfj1P//Q0W/0PBMOIuh7TZjDUMlqshgADfB3P2djpNBXaf5K069bmOCD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7RQHGvNllYjY2aoShZn+9jd5KKwz0phE++xVwsiWO9uiXJboY
	tYGjhu477If/mwbAyR+blUMSDAiY6lyzknb3amnzkbJQRU4SE4PXDDQfz9dB0SyENglvNrdX/DA
	P02L7TPzZeA5FimNFvyE419GcjyAM0mUxhdqZa8u8aUI120//hugYUOFEPXCF
X-Gm-Gg: ASbGncsHWQq903mTWn1nyje8mAcNJ5MS1nKRgHZ+bQV1NNgQcwSTIQSldJi+Qi/nnp/
	JqS7tcSEiRjRp/Fbki8wtbSA7pZ9WTznMvt+5Q6OQ0iGCRctBw0YH3jpdPE5/Al3UCbs68DW7lR
	/En5ctpbC+yYWRyi4xJNXEXCN1D6c5vJuJ/52bYkZgWvsNpWEgh6IifoisBf1uAVu9LYVrrC3zd
	V9VY6h5y/X9u/iyFOMZALp/q6sHYUcTV3co24DrIAL+OTO2+I8mKM/xKPMPrWks9xboYFSnxQed
	6UwkHjs5d8oidTDJdzoCKEqB6ShXmFYoaIWCT08Ip2Hc5kXRp8gzPiXbrJyE3kqF6UhwsMKkBp9
	JWAuP+XQ8ZicLqzE=
X-Received: by 2002:a05:6808:1911:b0:3f9:bdd:3eb3 with SMTP id 5614622812f47-3fea18191e9mr2584308b6e.16.1742324715134;
        Tue, 18 Mar 2025 12:05:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhBET1RbQMAqdsKs0V6lDWBggh8mETSjjnd5wHfwYqu7EjEq3AsOrn8Mf8JriWEIzXoPUBpQ==
X-Received: by 2002:a05:6808:1911:b0:3f9:bdd:3eb3 with SMTP id 5614622812f47-3fea18191e9mr2584287b6e.16.1742324714823;
        Tue, 18 Mar 2025 12:05:14 -0700 (PDT)
Received: from [192.168.86.65] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3fcd403b065sm2264273b6e.4.2025.03.18.12.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 12:05:14 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 14:05:04 -0500
Subject: [PATCH v5 4/7] usb: dwc3: core: Don't touch resets and clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-dwc3-refactor-v5-4-90ea6e5b3ba4@oss.qualcomm.com>
References: <20250318-dwc3-refactor-v5-0-90ea6e5b3ba4@oss.qualcomm.com>
In-Reply-To: <20250318-dwc3-refactor-v5-0-90ea6e5b3ba4@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Saravana Kannan <saravanak@google.com>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Frank Li <Frank.li@nxp.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Frank Li <Frank.Li@nxp.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2657;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=WPJQrgGJ5JNoI1QyAW97ZM1iUJWHmDJGfi1T4ZzLm4k=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBn2cPjDpA6+HpMvXuU8ypUVeaSqryV29F3lDwpL
 3D+SOFuQS6JAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZ9nD4xUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcXAnRAAnK6rOg4qq0WjJrNKDwsMogMEFqTV15KV97ptPN+
 0VS2R8VA11OpyJxKuxLxzNt6Al8y0XSE5olHX+Vah+B3ZOfUp/jEMrTjGNv/hyABA1WLK7V9VZM
 xxZdNTninAN/yPEGIrz4EZuQ9kE8Q+cHqJmHmHhclFMFRoCKmCOITxXRs9RihXf1wMWkgmjxP10
 JKW+YsHKkqrpF3Q9hWw2fvGd8bMS9zrhaSxJ2Q4u2Sb5A575yTx4W/sIedB+yzP8D2JZ3NKisVD
 nH8wuR2E1EDnr5XI2PS/Ze9y1TGO1zj368YQyfLNAwdrjZv3EZbR3g76Kpizzv9kOUjjCa/JWf2
 xxFFodadtZPJWzo+wuaqE7i/yskRIpCQOsRPOZG4OdJMJyUhTA26wtwU55YSesHOKHa9DaufBch
 Ub+jBI69iQOBdYIGVS7Zf1OXs9w6jkGTiSCVgzIkIa90Mr9ycYw5uRn+XCistYiDZ44qlAUpx47
 KwPLiYJquHct4zmeqWSf2sMsdkKkr/8Ue1SpZCI6jcVe8ZW3qlRPMydV24GNMGJTda6AJS/F7uh
 LQpkYbbo9n8c4JTGwLy8eXTtAcIoDzbwQeSncTZgMtLI6V5dOSFC6ZnouaXZFtKktkWXrdf/rUa
 k3yyRRAM5wsaweLgNScVfxhkQbnz6auM0HTdjXfihF+o=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Authority-Analysis: v=2.4 cv=QN1oRhLL c=1 sm=1 tr=0 ts=67d9c3ec cx=c_pps a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=DaeiM5VmU20ml6RIjrOvYw==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=8-AmaxdNuiZsqJm69HAA:9 a=QEXdDO2ut3YA:10
 a=efpaJB4zofY2dbm2aIRb:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-ORIG-GUID: Elk8QYOJmYWHxAucTwMvwNo6_oCfmIEk
X-Proofpoint-GUID: Elk8QYOJmYWHxAucTwMvwNo6_oCfmIEk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_08,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 phishscore=0 spamscore=0 impostorscore=0 suspectscore=0 mlxlogscore=999
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180137

When the core is integrated with glue, it's reasonable to assume that
the glue driver will have to touch the IP before/after the core takes
the hardware out and into reset. As such the glue must own these
resources and be allowed to turn them on/off outside the core's
handling.

Allow the platform or glue layer to indicate if the core logic for
clocks and resets should be skipped to deal with this.

Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 drivers/usb/dwc3/core.c | 20 +++++++++++---------
 drivers/usb/dwc3/glue.h |  3 +++
 2 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index b428b6fc3d0a55811e2f75d33d79df4b0c67dcac..77a9848a0ac70fbe563988cecbe489130989aadc 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -2198,15 +2198,17 @@ int dwc3_core_probe(const struct dwc3_probe_data *data)
 	if (IS_ERR(dwc->usb_psy))
 		return dev_err_probe(dev, PTR_ERR(dwc->usb_psy), "couldn't get usb power supply\n");
 
-	dwc->reset = devm_reset_control_array_get_optional_shared(dev);
-	if (IS_ERR(dwc->reset)) {
-		ret = PTR_ERR(dwc->reset);
-		goto err_put_psy;
-	}
+	if (!data->ignore_clocks_and_resets) {
+		dwc->reset = devm_reset_control_array_get_optional_shared(dev);
+		if (IS_ERR(dwc->reset)) {
+			ret = PTR_ERR(dwc->reset);
+			goto err_put_psy;
+		}
 
-	ret = dwc3_get_clocks(dwc);
-	if (ret)
-		goto err_put_psy;
+		ret = dwc3_get_clocks(dwc);
+		if (ret)
+			goto err_put_psy;
+	}
 
 	ret = reset_control_deassert(dwc->reset);
 	if (ret)
@@ -2321,7 +2323,7 @@ EXPORT_SYMBOL_GPL(dwc3_core_probe);
 
 static int dwc3_probe(struct platform_device *pdev)
 {
-	struct dwc3_probe_data probe_data;
+	struct dwc3_probe_data probe_data = {};
 	struct resource *res;
 	struct dwc3 *dwc;
 
diff --git a/drivers/usb/dwc3/glue.h b/drivers/usb/dwc3/glue.h
index e73cfc466012f07214291abe56454934ab014013..703d40c189565b1e28ae28afb8728b78f4cd2fca 100644
--- a/drivers/usb/dwc3/glue.h
+++ b/drivers/usb/dwc3/glue.h
@@ -13,10 +13,13 @@
  * dwc3_probe_data: Initialization parameters passed to dwc3_core_probe()
  * @dwc: Reference to dwc3 context structure
  * @res: resource for the DWC3 core mmio region
+ * @ignore_clocks_and_resets: clocks and resets defined for the device should
+ *		be ignored by the DWC3 core, as they are managed by the glue
  */
 struct dwc3_probe_data {
 	struct dwc3 *dwc;
 	struct resource *res;
+	bool ignore_clocks_and_resets;
 };
 
 int dwc3_core_probe(const struct dwc3_probe_data *data);

-- 
2.48.1


