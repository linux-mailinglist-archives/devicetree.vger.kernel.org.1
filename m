Return-Path: <devicetree+bounces-166962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D663A8912B
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 03:22:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 461BD189BCF2
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 01:22:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6699A20B1E8;
	Tue, 15 Apr 2025 01:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cIbPWysn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBFE0205AB6
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 01:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744680125; cv=none; b=fOSmQ+tvB+/1Kjvy+sicqkJuqDdC+XExsQZH2S9KolcjbgLZ41fkZa3gBQDka+RUuqXPQEPfZvRisIqx6raJbele4tqu+JGsNyQZ8CwbPlnisrlYRlz4DZUTArAicxex73ljnA3ZXerax3tRuBDAZOJYZbUbHeAxz90LdGlO79I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744680125; c=relaxed/simple;
	bh=URlvRqhbj5ImLtDPl5cOouoXqyTh/pDbr0rUV0zHBgE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d/f9S9Rv/4Ma6Jx97Cy8tq1fy/eKl5RWiC08hR6XCPzniFJNMat7kqgwna7BOKhnPhgdRJr+lGLBwdhexFtq8dS/MRPzA4x/5VLBFhuqMkzSUbNoy5tniurbnKkXIknHItTPqn026k1dxKA0y6P/fbTZBkBXYjmHiX3eWXyiMMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cIbPWysn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F15Lux005428
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 01:22:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KNn2X2IcUv5KkJspfptEbi4P1UGojbL0g6+3Ze2LkjM=; b=cIbPWysnN5ISXqvU
	+4jvz8UW0XKA1ry5e3zA4iJoSxA7iNB8T9/9pEAEfFvbbk5yTvweB9/BRPvDqV0c
	aMmYR//l3f6junX+sxGfWNqL3xcwREi93Qp5kPLHVOexKN9tB34MPmJ8LCNHJOFB
	sFBPD8lNXUI1hy98kA0wSGwMB7xLWxKgFIX/YIogIB15qmSJwFBkyKN6s141GhQ5
	EMuVzPfgth6REy3rbq2Csd9Asgf6iYgJCTSA4gO0lwbsONYe0okGXujhynyTfjBc
	p5ZnqV0jrRwyrH4iPuuHNl7iC5ul7h5BwCw3a8BzrVdiuNoAhBdnd8bzk0XGiLfT
	a6VUlg==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydhq6fph-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 01:22:01 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-72c40592a9aso1850389a34.2
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 18:22:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744680121; x=1745284921;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KNn2X2IcUv5KkJspfptEbi4P1UGojbL0g6+3Ze2LkjM=;
        b=LeuBym7QEZtG9LzZIm1A+cFrt6vOn6nG/5W0/cD+jsAsiYXsDvabN/FmMm0ktbkWLe
         KC1N0hzfpSmxQc2Zx7QYC720QC/PZTKJA0eHgeklJa8SmZ0wqRt7UPtL7fdd/OE7Sq4R
         sOe0JWTg6tw0A7pmIC/Zl7op6Sy5JWJA0nLsL4bdTaA1sfERxevRK8nJbTp8+kbDDRlA
         h7gNRErSVmrIvCLvgez63VAAEPX0hHGu6WHKqNJ9oXt1CkdTeY5cQtPO3xchvqSZ3a4l
         7Uk/WzihcrDhRA0u6hGpUfhJ6tNrGXxRidsX6jYPexRgCq0CVzFB913m327JayA9Ev5C
         xRgw==
X-Forwarded-Encrypted: i=1; AJvYcCUNDxj0nVLBVCKUYFeIgIGJkr074rimq0BxwXfeCuNA5j/CTb1NsxdUqbPX+oliZ8/yUxRDDPTp67zi@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb3YK2nZ4XW5TTS1Vug07I/oni3XCriwgR7fa7OfKI2KjpGwNd
	fmcsdWJg94mdgoOJYc6iRAkVt5yOgg9zlcd3ksIIkNLa03WY0TiJuZbWHrZ9u8NW+PsSP2r2j42
	OEwnUG8WWJF2DzQ+trKAqcGF5PbyRjj5Dph+7BrSrLZe6EbAzH6z4p+ISfxP0
X-Gm-Gg: ASbGnctorGU4y53LMCSHKkso6Omdy2vzJdZ8rn907BkuhBwhokZKkl5wCEz4OPrRTQ8
	AkUX4CgZMXtihObBjXoLojMSyvzhww9lbbkyKbHzQITAJe5E6cHMIPk2Pq2qFIpm6LmSC36qn/p
	9PVUzMoJtOPF+kxlMUeC2Gdk9hRa1yB5Tx/l8jx6pDRH0o1vD3Whx7//GtG1WcwZWW0zN4YKeN9
	Uf3pS2M3PBMBMrhcE+1ULQQqRbqOsoi6ONE8zFlPKgRKBPHSDODEGYJBjH3NBDMke2D8s4ZB/Ik
	oIsOxf/0bHsLLsUCOzII1ZR3GmWeXYNINCvSlkQyfcY/5VzJl9Zxr35yRQ+5r2nfx6AxP9zStFj
	Mel3MOVKvYFM=
X-Received: by 2002:a05:6871:6110:b0:2b7:d3f1:dc72 with SMTP id 586e51a60fabf-2d0d5f4090amr10019055fac.29.1744680120835;
        Mon, 14 Apr 2025 18:22:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJwt2/pw/TKDxOe3/ZwOr6JXH8gmfHTPuRHsZXhMIL+LWzVwzrLU2WsXS2TQSNzGPifrt9GA==
X-Received: by 2002:a05:6871:6110:b0:2b7:d3f1:dc72 with SMTP id 586e51a60fabf-2d0d5f4090amr10019038fac.29.1744680120510;
        Mon, 14 Apr 2025 18:22:00 -0700 (PDT)
Received: from [192.168.86.65] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2d0968e090esm2652538fac.6.2025.04.14.18.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 18:22:00 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 20:21:53 -0500
Subject: [PATCH v7 4/6] usb: dwc3: core: Don't touch resets and clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250414-dwc3-refactor-v7-4-f015b358722d@oss.qualcomm.com>
References: <20250414-dwc3-refactor-v7-0-f015b358722d@oss.qualcomm.com>
In-Reply-To: <20250414-dwc3-refactor-v7-0-f015b358722d@oss.qualcomm.com>
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
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2780;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=URlvRqhbj5ImLtDPl5cOouoXqyTh/pDbr0rUV0zHBgE=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBn/bSztKOxprYrriYG0rGispB3Ml42IrwUN6o7+
 CgvwdHPaHiJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZ/20sxUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcW0MRAA1JYxq3YPQOTZbewJ/GfhDIGa+86x+30uRXg1fMh
 YJf/OYnV5xbxlTgfcu+AN9BZV6Xm+hwI7ZReAnT27xvXJ4X2Nwx+LgMZKzPhn51ZqnPs9OCldKg
 Tt29Qql//iQJ6mvDaPWTkkGRiIYqLxzCUzcAZWjGSJHIrGbt4Wq0brK1gfH00RIazVudcrA0597
 /Ki8QfQcmtC67Ia3yyOHtXo8akp9LYHFUDEyExuaSnRSXA9etN5JEi8nFRuHmeqtJA6RmyzTvIw
 BEg8DFi+EgYwrREstWwLcLTrawP9DGAPOY0gLfuXBzDOkzHL9GsovVonDR0f8HsrxFXFXS2eeCH
 yGTIq5XvBNvRwIHHyJpU8cBfBmqAfUZRhqofx0iaJ5IeI/N2J71opiqtuM5ka69xldxfboC2rS8
 1irfouHe/bIisYewgyPAM+WlOh3GqZj+wan0Exbi7AppIv2XTBUdvcSm90MQmGCzZNfsa2CqKma
 7HXegDoRv2SDKDwBRfQ2IZhLtwu+iZfp1d6tgyqg3fN1QI1zo2iZ+GwGAPhY2Ay0OKkZsgdRXwT
 LolQmPcFyFJ0XwlDa4ldeWrJuuvnmRNDsdELjQgn5ChkbH0fcohgP973u/xrff618o9vH34Hux6
 kK88oX2hCmiPtsOPSbhL3d0ijCMNWrUGSInA8/gAFeiw=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Proofpoint-ORIG-GUID: C6YEeIO0abO76TsTUaI18hUucbXSvWND
X-Authority-Analysis: v=2.4 cv=C7DpyRP+ c=1 sm=1 tr=0 ts=67fdb4b9 cx=c_pps a=z9lCQkyTxNhZyzAvolXo/A==:117 a=DaeiM5VmU20ml6RIjrOvYw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=8AirrxEcAAAA:8 a=jIQo8A4GAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=8-AmaxdNuiZsqJm69HAA:9 a=QEXdDO2ut3YA:10 a=EyFUmsFV_t8cxB2kMr4A:22 a=ST-jHhOKWsTCqRlWije3:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: C6YEeIO0abO76TsTUaI18hUucbXSvWND
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 priorityscore=1501 suspectscore=0 clxscore=1015 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150005

When the core is integrated with glue, it's reasonable to assume that
the glue driver will have to touch the IP before/after the core takes
the hardware out and into reset. As such the glue must own these
resources and be allowed to turn them on/off outside the core's
handling.

Allow the platform or glue layer to indicate if the core logic for
clocks and resets should be skipped to deal with this.

Reviewed-by: Frank Li <Frank.Li@nxp.com>
Acked-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 drivers/usb/dwc3/core.c | 20 +++++++++++---------
 drivers/usb/dwc3/glue.h |  3 +++
 2 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 81324d586c0797a551b188685d7da2a504484e57..2bc775a747f200f6a7e5b7ba2771a9640dac5e98 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -2211,15 +2211,17 @@ int dwc3_core_probe(const struct dwc3_probe_data *data)
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
@@ -2334,7 +2336,7 @@ EXPORT_SYMBOL_GPL(dwc3_core_probe);
 
 static int dwc3_probe(struct platform_device *pdev)
 {
-	struct dwc3_probe_data probe_data;
+	struct dwc3_probe_data probe_data = {};
 	struct resource *res;
 	struct dwc3 *dwc;
 
diff --git a/drivers/usb/dwc3/glue.h b/drivers/usb/dwc3/glue.h
index bc446f92ec8b1b6feeb84ab2138516103833b259..2efd00e763be4fc51911f32d43054059e61fb43a 100644
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
2.49.0


