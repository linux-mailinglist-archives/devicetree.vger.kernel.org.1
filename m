Return-Path: <devicetree+bounces-254515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 35488D18BDD
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:34:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 37D343012AAF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ADB138FEE6;
	Tue, 13 Jan 2026 12:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fheMmXcu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d0SIhxeD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6F238F223
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 12:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768307611; cv=none; b=Z7JH3MXqu6raf0Kl5Yv4XN+gss4Fn3CgAijOi8BQQXeNQmSraaeWnSecf99YMovCtkeT/JSttx6JpVTynmTEriKtL8TnbgG10jfiEeJ4UR4jTebU4aV/FK+inEv50QGbUtpnqh7tjIhYwZbeeKt0W2oUJAhjnnatOrb6kwT2Otg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768307611; c=relaxed/simple;
	bh=p+Z5YhJTvjwskfN+mRUfX8mkgArxrCgucyMvCfVflZ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QQBKG450WrZAPHK+blqozXx/4tIFQ9KzjAvf721txQhsiWnv0hqfg1p8ZAaawPq/esStYhQzS1pAapq7WgBs5f1qI3xtXgMY5LaRFZhaXbJXN0ucIOKA35myPVAFPKJlfpztYKZ3T6OVzptH9efwbvpize5/1he93d5eBDqp2c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fheMmXcu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d0SIhxeD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5SpKN3868714
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 12:33:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EUuNeyrL4XzjK3BWb7sWjvSrSk5sQ1bWzB69LFur0vs=; b=fheMmXcu7lAW70wr
	Outoo0SNSuooV0qgMpdsuTxZOVxVlyOnBLSeSgwFOmSKsSlztsCf3cgx7VU+N0Fv
	FrwI+OptKs+g/Zgi6TdaGE6hKgIT+T6pET7Q5lQN0OQ76/9WgUKTabBh4tWzOqtb
	9BYSNgFZm8vvfgQ5592ZThAWTY0PoOcjrO+UprPkz6nr6YeMPiaqVKMfl+38qkYD
	rARsMgnXkxfI9JSl4xIY5wQXMjD2IiZPy4mCPejVSr9RXmb/SP3BHNoPtrRaDK0n
	6TrFbAfWL3J5H2myShsA4ZIEJdtKxrgkHqkssxLqstfuLns5WUTZMAUm4Wt5UqYe
	sH40+g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfxk98sm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 12:33:27 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2ea3d12fcso520486585a.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768307607; x=1768912407; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EUuNeyrL4XzjK3BWb7sWjvSrSk5sQ1bWzB69LFur0vs=;
        b=d0SIhxeDNjwetxVXaVBqKsiI8uBhgsU9rgERPAT8rqUaB3S9TxjprXtxjL8XCPcrra
         LpHbhHDd+PSjo4LX3e8q97bxLhdaCQwlNRQPrMjtkfQYePbAA/ugucXm6ignKvcDkL9T
         IJfzLmljJiHILt+GO9d8XbagQiojnuTYy4WGf94f+yLdJBqU5BGJXGFoQB4JAfOBlaXR
         /w3xtauel2qNR8jWmxvpa6GYpWwAMR5eZuss3ik+dYY26xBDkIVgESqYqkvUWay4lPtH
         4pfCeLmR1/AX938COclBS8ooqGjY1DVgzchl+pHGbazT2ShKTyxVrHFrQ6WYkyjRZiPh
         05GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768307607; x=1768912407;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EUuNeyrL4XzjK3BWb7sWjvSrSk5sQ1bWzB69LFur0vs=;
        b=gzxMLusz/6NfaOA4gi1rWHzFYA6lf86A/NlKSJTmahGzlMXb/e9rJDy9sitszy3pnm
         PIURnsBMhQ43EmK2MXWu8bMsnFsb4H4qKTjRUZ8FqXsm/0d5wFFH2pmJnnnZNzR8I+1M
         0G7g+QIznAwji9N4OLgS1d7Ufr5r672iWIhlijzigUmVOVgjdntFBLJ+BK0Mf0k/xkc3
         cOfjyRR4HeE/AVM1BCm0KeB+ZANSgMoUeZk/f48qs2GQia268mXdSjB6T97FidV1oRzw
         2KffGc5mnAoUsP1Cnw4Mwb5OE3hiHu/e2RGK9PKQd5KHc3Fch1/QhZtAPRGYrBS8RYHM
         y9LQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQ1qchbTQLB47b3VlknUXYu4vntO84/sFj4090PyIbvWM/jB9dh/cS7YeGw5G1bxQTzEwWpuqsd7cl@vger.kernel.org
X-Gm-Message-State: AOJu0YwMlR+AonkubmiNI9BXoZVAd9gTUwR2dD6QhDaklIltw66uM7tq
	99mtOKrHhOiwgADVUDgyzFOJisPOjPCudpUFWPjwP282maPOjU5UosKLzgQP6U9J4LokMa/0s/v
	vvtXJ/g3HjIlT1j1Wo9G0SAKZxlj4uyid4yAv1/+1l20cbf8wv9m9YALEJgcFy16+
X-Gm-Gg: AY/fxX4zLy+JEnHWViThgICz3K00jPCFylsJ8+D02Z4ZA5HxsGfhGgw7mahFkcRWS80
	k4D+3RWKrRMJGiKCkdMWSdD/UrC5rBsQ1VoUctPjX6tRl71MS/53hSulmbuz0xYEZWrMjksQHwk
	eUTXwI0+hBQI/G69VwKc8qd9XRF71rS9taXvuNqivu1N1NgOroqMrdEV8xaFYUBAt5LmfFOtdwF
	BNfUKBG9xjVus0gbT4Bkbs5Et+cIjtJ7A44aRZLsNU4B2s2tJn+yOh0B7BENIfp9nQAlMiBEXRJ
	LpDJc8eIe3B1rjSIuCRYhcc5LRrt7p2Th9+wdAMS2G1ilRflGdyoG6AzUQBg60zYw5yHcdw+EXa
	D+E5VTtyEQZ7d1K0Tpg==
X-Received: by 2002:a05:620a:127b:b0:8c5:2dbc:623e with SMTP id af79cd13be357-8c52dbc6554mr23788385a.50.1768307606990;
        Tue, 13 Jan 2026 04:33:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEtIIeyq5hPCTTeP8m7mlB+ydYrTjSYdxzAl6l+p940XQA8Nhmc+8giqdXwR8p18pJq+gCXaA==
X-Received: by 2002:a05:620a:127b:b0:8c5:2dbc:623e with SMTP id af79cd13be357-8c52dbc6554mr23784685a.50.1768307606445;
        Tue, 13 Jan 2026 04:33:26 -0800 (PST)
Received: from hackbox.lan ([86.121.163.152])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8715952fc3sm635303166b.50.2026.01.13.04.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 04:33:25 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 14:33:04 +0200
Subject: [PATCH RFT 1/3] dt-bindings: usb: qcom,dwc3: Allow high-speed
 interrupt on Glymur, Hamoa and Milos
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-dts-qcom-glymur-add-usb-support-v1-1-98d6d387df01@oss.qualcomm.com>
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
In-Reply-To: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1029;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=p+Z5YhJTvjwskfN+mRUfX8mkgArxrCgucyMvCfVflZ4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpZjuPAXSVZt2fmUiaulM9SCMuY9LYjQINATPZd
 z47knfdzoSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaWY7jwAKCRAbX0TJAJUV
 VpapD/9P0ZzyL7cbfmcLUtWC3yrF7pOr8rJ93jwJSjpkUB9LQvXIvnhUc4dyMVoorv4pTarcWYJ
 cFVqQDY1AtpeNsBCzghvmCvNthXHEKdiH57EPGnmSALgg2tSWmcEYtyAvHvalxpKbMgXIuxoJu1
 uRFjojpQtRFgivYYyDxZTcpVQW2u71TqPRtNSUNDPhwVUcdz+DfkS7sH7/u7dW2V3cxHqzdko+c
 AOJkfj5xnu4g72Q82SR1jznP4YKyFJS7ND38JHx4EH3RKEVC1KlauVr1qsMCFfXNEodnNq8dChK
 2ZT/K8QuOuiN6UCtpoAbSibY596iq7tJpPVPcDOlpjNUw+IJo2t1ff4rmHIhC520u/5butrxBEX
 iGdzmQKND9wCqeTDOj176E5AdlGVj6gy8PfYra6IpQ2Y0+shZbKDEt9TEO/wWF32t09tYpks6nG
 ZUBtspG/GlJSz41+24iL8a/lQSXJuSnVYBvXEb9U5KMzxtMEoldDHhdrwof4kz6nNY0SrQbaZNF
 DkE1LXky8Eeg0390fQyhwjWXB1mrdGKc/cXNv0L8OQaY8cliDbZnpclS0CgacByZ8mkiUaqFPEN
 D0NpcmeqBZPkbEOqQnSA+Fn6Jljvusy4q2+aI94epl1Hy+RR/Ua+O6TyZvADCjsOqnmbJTpelO3
 dGQyXNny30yfkZg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: ZsAd2zmwoT0R-UDe2ssqeyoIX6BodoVz
X-Proofpoint-GUID: ZsAd2zmwoT0R-UDe2ssqeyoIX6BodoVz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEwNiBTYWx0ZWRfX0vFpNe+uKqEV
 +AmCva6HaNe5Jda7LjTrBeU/iF247PC4l0Vf+LXtrnDKZiP3f9CYUnLLNlUrymBg3uxu4wRUkLM
 8G37HXBJrnW7aPH+0per6jrBTkKkIrkWydOugUxzFbAaL1amluihCxxzWTKUCOchmnIVGBEOFDd
 yaWhXGh+v3bWqBmrRAHteD0ApcplbYQhizRlR1dXbD6FgNZHAgOIOpzchTqCY/ii2TFU87C/+te
 8I1SAvr5oTOdsAxMsIEkMWKoAVqG4FlkMBBQcAOY45BOoCCIbSHU/XbG8RxQgZ7Sdqs5ULHaEJz
 60lMg5ol7fEJvd7iVnltuXetyLn3t2w2pmTfn5b5vqrqWFGjVZD1uyAerLdMXXA9EbdR2Ig9LDk
 qiwgb4ABxMNLV1xodmeNPNAKP0kos1XKMYlhN5PZoO+f3XvTM1iNmd+gIxSvBXHM5KjKo2aXiI+
 iEHf7knK65+enMMlxBQ==
X-Authority-Analysis: v=2.4 cv=PvSergM3 c=1 sm=1 tr=0 ts=69663b97 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=RUlelSpolvTNyr7Sls5SJA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=vx3hbeaYKRubAM7LXykA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130106

Some of the controllers found of these platforms can be tied up to a
single high-speed PHY, basically rendering them as USB 2.0 controllers.
So in this case, the interrupt to the Synopsys DesignWare Core is coming
from the high-speed PHY, so allow the interrupt to reflect that.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index 7d784a648b7d..f879e2e104c4 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -500,7 +500,7 @@ allOf:
             - const: pwr_event
             - const: dp_hs_phy_irq
             - const: dm_hs_phy_irq
-            - const: ss_phy_irq
+            - enum: [hs_phy_irq, ss_phy_irq]
 
   - if:
       properties:

-- 
2.48.1


