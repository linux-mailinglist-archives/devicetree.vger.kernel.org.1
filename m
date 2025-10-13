Return-Path: <devicetree+bounces-225823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E4049BD157E
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 05:59:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED4B11896256
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 04:00:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5398727A93C;
	Mon, 13 Oct 2025 03:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OsiHS6h/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F171DF25C
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760327972; cv=none; b=fz4RhhS17+waJEztTJtLEj1AdUBfuCU1tsr2Q7045M2xUCjyzLlEkRkR0HkOr2h/0keBFikwTwaBCjOB68DgN08tx1UlvOspnDe21j981YLAHzQVM+Yl1oLJoHfQe/9KjKVWqrY8HKlMAIvgTFCxhyXxUiTHamtqOMfH6MXMVcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760327972; c=relaxed/simple;
	bh=4s97OXsE4t41H2WY4gfLk660rhvi503He0pOltw2Gjw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Sb8iA0CJnY3ml4L4i7bJ6Px4CaPVeFjmXSnJ2tPvC4ZrmTtX//AZ1ib/Xj8mjSQn/AEcepfLqBcS07VX00Ul3LIaYTtJw7QGGyuilBeYcoOAtZvtu0A7GBI17iwvHXVDwjGxhcw6xq4srC0cnXCy7dW/NHo9UVtE1zAJT6edhQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OsiHS6h/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2n6CR000378
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:59:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=RMNDKKR886AjMuufIuUKdsSR0GOZWJ31sPM
	ac5ueuzg=; b=OsiHS6h/PXetzJ68Vfd9KrL4bPcXsezkfZvFDHjSke8nPXovoLs
	5NYN1nzjyGwUiXfHvaGbSBOPB6jswbuVxAnRGFpfa22wPFFX0htfrKNS4gZ4+XM9
	PmwyX1RGR/HwnfHD6jyhHe0g4tbs0SQARIC0VXaugmoQDOrcyUOPyrcar8tafBKY
	t2WuEJ+MzNXR7QCh+1BfMFQC8bLMWQ+odcrLPTSI7/f43HlgVBVMx+RR1IjzkbuI
	19lCun8l1FUssEUoHq9KeyLTiURdP6Bua6GMZM1x228w7+8nlfFVxRFc1hJoYfhM
	OcH5AFCCtU5cisdBb6KDljlDs85DTgqBvFw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qferu6au-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:59:29 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-27eeb9730d9so83242855ad.0
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 20:59:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760327968; x=1760932768;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RMNDKKR886AjMuufIuUKdsSR0GOZWJ31sPMac5ueuzg=;
        b=jsaB6sg/nAtdMN3QKfx+GbbCtYBAT7owOrNrkTUw9qqOi0Eb1l+4H3i6JVgonQZAkt
         1FPGK2B3uB/z0PKiAWcQc5Kk1YEVFzhX177Khkv1AbcSwv6Rv6x7I7XPxs4kszgUxm8X
         Nc5fW2q8u5xIiKoEMsajUiD3L4+8vyDDOEAsYlr+XotH0MVRqVcoywWvNQ4rT9U0Y51g
         6pHxcFXTXxqB6YvqQK2Bu1HiDhd90ig/fIAcJY2sWRnPSC6ukCo+csIUizbTCKyf3iKk
         IAiBYJAViVRQcOIFKTPM3cDIJjWuTQlZHpg0VVTS9NcM8ZGPkJ4FsmlNQJ1lrn57hj+L
         9CCA==
X-Forwarded-Encrypted: i=1; AJvYcCWD9qVTE1QlaBTFzkhcRJOITsf1sAnAE0ZJ7bYiVlBliKAB6ttyJQ6EsMU6nZc7imWUa+73yDvQVyO7@vger.kernel.org
X-Gm-Message-State: AOJu0YxPWRC2v98JFNjdwN0+uETUeO9RHXrZqL0sUhd6fO6aCy0pRMbM
	sYQ8TM9PzQnSKdggEpxAJuFmDsCP4krP0tGdc1OotEzPNXhUy4eezYgeJ9oWun+fDmG9hH4jxhX
	oaaej1oLtv9/wYCDP9PNLdnsh54f1EVbwumUg7FgcL3Euk4sEX4agJY8i4xim8CWr
X-Gm-Gg: ASbGncvAHePziBzqUWOPDnt34sZmOXz/fZVowwJFnGS1KGMbuntTOIycQerkZihdgzY
	/gQ5GUrsAjaSz27dxhmjmYPFcRjrCRaJyaQdA7xB+AV6JTCHNVWO45PbaZl0d9aSsOdQpxiKXjb
	fziExx7gGfqivkqHsaxivi1Z82njnLzVQgVkQLbbolxeL/HxX6pqPuov9aMIFpTUkCyhj7/IdND
	Bblp1V2NLgLcYdDP5QGAF6+ufYNGsUsTI79Nv2K/Ir+ZFKR/8LxDxJpFA3v+p3dUeOaf9IxZeQu
	buFnosiGTP0uN1Aha1mcPj7Ew4Cq6+W3wcHjOlcqDc3y7QwNw+5g3DGp5W51r5Ao+qwJ8QKycKy
	W+w==
X-Received: by 2002:a17:903:40cc:b0:26e:d0aa:7690 with SMTP id d9443c01a7336-29027402c79mr221611345ad.41.1760327968213;
        Sun, 12 Oct 2025 20:59:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHVGLZBxpNB4H/Xm0MJmTnYuQju81RnfMPIBs8IrHHp9PZ9c6HxbnrwU84W6QcEl3NEorCEA==
X-Received: by 2002:a17:903:40cc:b0:26e:d0aa:7690 with SMTP id d9443c01a7336-29027402c79mr221611125ad.41.1760327967714;
        Sun, 12 Oct 2025 20:59:27 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de54c7sm120732305ad.10.2025.10.12.20.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 20:59:27 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        stable@vger.kernel.org
Subject: [PATCH v2] dt-bindings: usb: qcom,snps-dwc3: Fix bindings for X1E80100
Date: Mon, 13 Oct 2025 09:29:20 +0530
Message-Id: <20251013035920.806485-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=R64O2NRX c=1 sm=1 tr=0 ts=68ec7921 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ojRqNddluEt3zInEAqUA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: tGbPy-r6KyZgNBVd-KDFt9xBUvSVyYyc
X-Proofpoint-ORIG-GUID: tGbPy-r6KyZgNBVd-KDFt9xBUvSVyYyc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX3GWCz/MDKw56
 Gg5RnBODOJAsYfDj3OPMWKmKAUs/ZTRh5yVNtDAWIMAWPvrY9bktSrEih+vTwvGUh1JuN1bLg9t
 JYJFi4fGWGcyCSS5L5GeXVkRVWoDON0yJlJZ/o1ixJilK6MG/iXFKuxRJPmTbUkJpNJ+gYLHHqc
 yidWdBq5qJ1QCtNbvn1BpVkFXdy0yXzVnvONgdFnp8Vo2XHRtlNek3dC5+f4T+43fhBDorVMEO2
 oXGIp7rfYkR4VmhkihlU4MABpOr/2Z/62zEQ0prnzoyZue5iJ8vc0ejWUitjU/MJG04i8iJYsoF
 FIZ75LEV2qbZ4q9lLjRmk1BQVJRexc0eWrNTuZeo3dTiiOwo+ExOq2iucRt+3waqqG0fF+uEAcd
 H3UZoHLOGRDl9bahvNdspk1CLNrYuQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

Add the missing multiport controller binding to target list.

Fix minItems for interrupt-names to avoid the following error on High
Speed controller:

usb@a200000: interrupt-names: ['dwc_usb3', 'pwr_event', 'dp_hs_phy_irq', 'dm_hs_phy_irq'] is too short

Fixes: 6e762f7b8edc ("dt-bindings: usb: Introduce qcom,snps-dwc3")
Cc: stable@vger.kernel.org
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Changes in v2:
Added fixes tag and put error log in one line.

Link to v1:
https://lore.kernel.org/all/20251013011357.732151-1-krishna.kurapati@oss.qualcomm.com/

 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index dfd084ed9024..d49a58d5478f 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -68,6 +68,7 @@ properties:
           - qcom,sm8550-dwc3
           - qcom,sm8650-dwc3
           - qcom,x1e80100-dwc3
+          - qcom,x1e80100-dwc3-mp
       - const: qcom,snps-dwc3
 
   reg:
@@ -460,8 +461,10 @@ allOf:
     then:
       properties:
         interrupts:
+          minItems: 4
           maxItems: 5
         interrupt-names:
+          minItems: 4
           items:
             - const: dwc_usb3
             - const: pwr_event
-- 
2.34.1


