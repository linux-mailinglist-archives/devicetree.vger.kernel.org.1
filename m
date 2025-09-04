Return-Path: <devicetree+bounces-212597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13331B43488
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 09:49:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBF335E2C7A
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 07:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EEB92BDC25;
	Thu,  4 Sep 2025 07:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oqUBqmAb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245EC2BCF68
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 07:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756972156; cv=none; b=W/FCuDZXtPzkF2FMLZ2JeQkm6xeSKwjN8RX4/0klvPnj/TXXYt8kBX2JFuBV6qUto/gaXYgN9z2jUH0Q8n8UcGFAmSUU5vAlMRq1FLTBwsg1P/XfHDW/WWpFUiv/g3QJHWAGjnG6BXB6OyCAfGGfb3jcDJcLJUJR85CbGMZc8xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756972156; c=relaxed/simple;
	bh=ES0C/eHUJ0vZMSiE7e9k3eopudAsRoEFpDfAJn+GlGw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BcNqxabImDAFSrBzQuaNrz7ZC3X3LALiF5Qp/fEFmYjW8ookHwW/qzXo0dE1uNIZ4Dan9UufExD4EQnJ3u0rVKFbkxT3wuQVOX82PpxgYLmQHW9v4+NSVD+dm2VK4++V0DPqdR0F0kCGBmcephkpiqx7HxEWu/LXcCxMah+eGv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oqUBqmAb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5841TfiN008689
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 07:49:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jWgEnfKM2T8SN4ZowpfF7xlxhdEVJCQ/+pQl9CKBY4Q=; b=oqUBqmAbYvjzY4to
	H2OaZVo+EJMQndkcmMiujq+3+/CLy2NJGNqn6FHALGy2eF7m7mxCxL2KpHxO4v0O
	mmEpQmoD8lbvV5yZSlQeRAvpOX0ANDwjSI917fMlntMczD8plpW1LqL5Z/BL9PEt
	9WCyirBTkuycr8/1gnQhgE87quDrjy8qa4X73Dzq5ZK5e1bM7WaL9X6fc5/3k+D7
	wW1RfoqKcLXBlvH5aTIj7pV5GMB1V7dhx+g4+RSecFcsQ9e+FE4+NwLbHnvFTu6E
	wx/zy8PZDb0fSQq/Le/T0AOTQMuZ0Xywo0Oo71jdXK7lUMKkQOoJ7rhEfFxVF2JC
	V0WOrg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscv6t9k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:49:13 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24ca417fb41so9936235ad.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 00:49:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756972153; x=1757576953;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jWgEnfKM2T8SN4ZowpfF7xlxhdEVJCQ/+pQl9CKBY4Q=;
        b=sLe7u5TRVRvROHukwiac33roLEOLKxI4vyw37szGOQKbaXRoBJB90S+wk1ZEMQJPsY
         K7QPpIBiOdjNwJm4dFg75HLWqT2Ik7w5dtomlnOG15UTpVY8vQpy5ZvMlSTYV1sxoOby
         VDITTBsKx5wnPlpO6ODmkHOtB0TO8/8+qfSCEiFPVBdtyxSk/XKWkRDVNGIpipq+oVgh
         GjS9ty3sbrqv4Nm2lrzdjdJfMkLaX26zA2Gyl43+celjf9fd7lfRp+/yEldnZi/2fsrw
         sdAS7tBe29G/0sd300rWUZzq9sl9Tzis588Bk8D4LcioaoDIsLW6d9GkEpLDfnW/nwPR
         SmFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUx95anCsVZbexe+7Fzfm4LyUAQ/8vhkFf+wXoOSstCShA2LBZSBC4jMvN3FjfQcNsuArPb1cvqrMff@vger.kernel.org
X-Gm-Message-State: AOJu0YxN2fZohvaRtXyLXwfV6ua3Zolm3VNfEvmdqKDNq3dUc27FsGmH
	UdSnRDSyArazCKKwUzLvDOoxnBo4Kl27JmaRb7P9GaN2yCvEVb1UxYtH39HBKlcNk6XlwOHGjP+
	oTawbr7+ibfIuwfbwmc+llrq1vOzRaVN+AX27iCJ/MKjd/iIgG7VTrL4qH3/3eIwT
X-Gm-Gg: ASbGncvoRc7+57keHW7sgzwxbGQRHBY/RG9E5qwaktmOB3pBZayc8HAxK9unYhnCRJr
	qJB9N0+2aYV1pxsp5hJjldrYvhvWd3cFpzIKHl7O9EFmN8BGqFeKPsN9Y0114XzAmo0NafIxNWj
	9ufwE/53/CP0KWWUUmu4bTQWN0uhnq87WYUU5dwgepp4qJHU1VOl/1OO77rjZBk9lBY6LAdzkZ+
	LqF2GW1vnRFOzYyAhehompd1xxqfbZ/iYrst3MmCI5eFOJmrGFCkjwVPZIbtnCmhh25z2R5CBnV
	7YIP7IKv7252oDDRnsu+Eg33ZtuYy4FZy5Be58Uhq3czLcCS9gLMbWcEqv3WWEJDrjvvEVuYV1o
	IuSN9eddfhfl+R01Oyf4t92GmQ/GsILmlXQ==
X-Received: by 2002:a17:903:32c8:b0:24c:cf7e:e48b with SMTP id d9443c01a7336-24ccf7eea02mr8148925ad.8.1756972152661;
        Thu, 04 Sep 2025 00:49:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9jqm8hZ7eobJ5rdqP6nJIGu6TDdPi9+/1PLXXMoBnIiAyw8MT+BFKlnVFqVwgqYqg5L730A==
X-Received: by 2002:a17:903:32c8:b0:24c:cf7e:e48b with SMTP id d9443c01a7336-24ccf7eea02mr8148675ad.8.1756972152159;
        Thu, 04 Sep 2025 00:49:12 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-249065ad5b7sm182194525ad.128.2025.09.04.00.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 00:49:11 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Thu, 04 Sep 2025 15:48:32 +0800
Subject: [PATCH v9 1/3] dt-bindings: arm: qcom: Document HAMOA-IOT-EVK
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-hamoa_initial-v9-1-d73213fa7542@oss.qualcomm.com>
References: <20250904-hamoa_initial-v9-0-d73213fa7542@oss.qualcomm.com>
In-Reply-To: <20250904-hamoa_initial-v9-0-d73213fa7542@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-5bbf5
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756972145; l=1177;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=ES0C/eHUJ0vZMSiE7e9k3eopudAsRoEFpDfAJn+GlGw=;
 b=nB8ww9lydz16Dn9sA/bZEdlI6JTzeEpOBjUEVVYuf44iAhXRqM6bDu0lK4udhiiNRjoQf+uc2
 TrZXfNKMu4UB0hela9f7a0at2+faIbpCh2kg28udj7IBHHlBI8o90bE
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX7a5c+1p3RvZ4
 HjrAQQYWiZ9tbY3cuhLGONB5IN0UhRoJXjtYW0oQU3RmcuWL1XDXUe5jMpM9e/9PKdwJ6pum/5Z
 d1cNWTaAYO00FuCafjIZf3xbi5XviHtlS0PfBZ7px4PbEAMF/y2MdfC+15qHtzgpOieYq20pij7
 MaRXwAzidbzdtJcdZPG2CCeds3dYnwlZaK7uYwCjkRgNEK4gBjfu3gY8vH450juJSDDy6T3W6Dq
 W53x02ixVRagCSk41Mcl2ZoqHmoj452Qs2a0fiNqHL3Mg2Xpx4CQFsB7xBreqPL22GCJ27cfsCq
 eU7GTUSXNfGq8a1YEGBfQyKAldVdBUHHK9HyCsHzrjtXWSxwMRjnY7uz4jV9CVEvhDGysh5DkDB
 lSUqLtLV
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b94479 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Bh1HEMNN3wmc11-eFpoA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: GpFyTkDi6ZdVmdMu_llLSjW4FvaeyFYn
X-Proofpoint-GUID: GpFyTkDi6ZdVmdMu_llLSjW4FvaeyFYn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

Document the device tree binding for the HAMOA-IOT-EVK board, which uses
the Qualcomm X1E80100 SoC.

The EVK consists of a carrier board and a modular System-on-Module (SoM).
The SoM integrates the SoC, PMICs, and essential GPIOs, while the EVK
carrier board provides additional peripherals such as UART and USB
interfaces.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 55e5eb75af89..6b6503181ad6 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1069,6 +1069,12 @@ properties:
               - qcom,x1e80100-qcp
           - const: qcom,x1e80100
 
+      - items:
+          - enum:
+              - qcom,hamoa-iot-evk
+          - const: qcom,hamoa-iot-som
+          - const: qcom,x1e80100
+
       - items:
           - enum:
               - asus,zenbook-a14-ux3407qa

-- 
2.34.1


