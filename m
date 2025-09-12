Return-Path: <devicetree+bounces-216316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22702B5457B
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:32:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0148F7B778D
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 399B82D5950;
	Fri, 12 Sep 2025 08:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bChzC7Ff"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5A87275861
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757665961; cv=none; b=npE4cTutdKZDm84LhBE/9B5Om0PxA8P/+qeqfV7EHnnx3taOSoJ47PKNb0vMYBWuB18drfMkD65wM5kzKDsVWdQPoH2SpDSYEqnuYTJVs5KZ7P0Mm2K2RIRJhKmOxDhV2Fk1M1vZ6V3O5l/PDL+Rr5xBNVj6x0Q92fUPk6JES5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757665961; c=relaxed/simple;
	bh=HG+b+jRIRTWPpc1sxXtE1A4aG886oTSQcaj4r4e1v4U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nKVoskPdpEhmFIQr44r+YQhJ3szRmjZT9Pd0Wbp8zZQJpAlFAX0OUsQ8ArXK6ll+xU434hEy3IdSBsVCQvPqo4lpb8JxCsfzUd7y4Wq4T2cDyJ44juN0xwQ5old3dXdax/qrs/XA20pinnW5xzbWg97d6nxQiOoBIr6PCPnP/Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bChzC7Ff; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C8VkdT015855
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XfwpEgA5iMz
	nAO8LzxBPMwKlKMUGeLCboiF0FAzcPH4=; b=bChzC7FfP150f+quUNHkzby3T/t
	L3HCAvGe/iUAxIn2Iz7wAdP3h/8H/9Ba2qZbryLkBtUYYv8VZBjXb0CuG6ljqsmc
	vZ39OGN/abduUgV+J4iEF7aXC5xbpG4qnXfxYDVi1fO6dNeqvewqKAX2IqjkZlLX
	9z6qjHtlwz1AOJcUsFi/dlzz8sjaENwzR7hBkEFTV5Zie1/k4PC7E0tu7ArBHf6M
	7sYjKY7r4Uj7c2+a92378J8FEZfAfU/ea7JpKr+soJw6cJyn24bSliY6W7ssZKP/
	IlYliYbTB20uXuWPtdTUHGl24dbXqX1k488VOyxMcvbZd2B4QyPxf//+2uQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4many2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:37 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70fa9206690so50889116d6.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:32:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757665956; x=1758270756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XfwpEgA5iMznAO8LzxBPMwKlKMUGeLCboiF0FAzcPH4=;
        b=B7mOM9RkNwVj6T46ULiohlzeXueS0ngaV29/em2TR/s8e8h/HLTEo33Mho2TVR4qm0
         gav+IlwVsV0iZlJw7mrokPlljvM7e+6TUKCzGHzJyDBQhapDgmk+QEdxK4bw41xPowx2
         DU3+945NlmIGQi2o6djpmWH7dpLlEK0UjxRulkTS8DKYMgyILr4NrD+wHH3osDoCJwbd
         n0m3GyC0ziI2Hck/QqKei3gx6ZNTAF8kW0JzPjQ0PsipWQv+uxwl7ln2X8xCW97WgAld
         WMHUcncraXmtKQx80uvtwzf5ZXJpkhgc2bDGZNP+v7eW0B8f7dzO8LsM2PCqixrNOhkF
         ifJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJ8q9/4wrWSUWDQdtiV6h7QHHtGBAja8Qs8Dl1WVuW6cA+bUpn+UwDlgbctirPwoxUBjxPTp7MtbqI@vger.kernel.org
X-Gm-Message-State: AOJu0YyelaEzvNV06TCM0jLd6y9OyoSJ2NJwcsz0lgbxpqgznSLPdbN5
	YFZAq4vw8ED5RcGHfZdan1OUumanUy4anEpUyWt3cF/PwWQKjFx7ci9PBJV9xIKqXDghPM/3Xel
	5mCvCg7GJ91n6oTI2GvN05xI4rXax07741rWtlaA34fkO/sNNzNUcwspkTIqHRzuC
X-Gm-Gg: ASbGncvo0LLUREVNOEDNksLpC/3T0Ao1xR7ojOU2uXdwjt6Z3HP0+0TDm9I9zRvnkqU
	OtVHwrABpmPT72C3C5Se8Za4mC/6RKTAwzYPXqh2XsyM1fzW7dFPtzSlFVQSz5X+0Gh+6ax/oK+
	dsQGm9c62qXoHFw8hCaL779AsGNm/NNpWDUNr1wFqo4vFZxV6pKB3FHAYFqcWnDLTNtSbVoqYKD
	lS3drlt1JzjkNei3nkd31deiFdRMy/Q6whtqQRAEeJ3/LSK07TbpE0YSwyp6PYUpc4EmpHV1j+A
	OVSkvT/FqwzZar2e4LPiGpMQybHMcXSp3Z96MUZLpcK4uwqNpg8F0A==
X-Received: by 2002:ad4:4ea3:0:b0:70d:f55f:ef97 with SMTP id 6a1803df08f44-7621c32efaemr72387696d6.1.1757665956275;
        Fri, 12 Sep 2025 01:32:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYHFi7nQKEsfNo6HTdciqVCNkh4syB+/VM6ig6YPCJeUsIe4Add5fXHpY8kWwaY/XtcFL/nQ==
X-Received: by 2002:ad4:4ea3:0:b0:70d:f55f:ef97 with SMTP id 6a1803df08f44-7621c32efaemr72387486d6.1.1757665955691;
        Fri, 12 Sep 2025 01:32:35 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e017c1dd3sm31247265e9.2.2025.09.12.01.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 01:32:34 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, alexey.klimov@linaro.org,
        linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 3/7] dt-bindings: soundwire: qcom: deprecate qcom,din/out-ports
Date: Fri, 12 Sep 2025 09:32:21 +0100
Message-ID: <20250912083225.228778-4-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX6OS/Yxt62v03
 m0RAgUMpxKl5W3or8jDQA+Y+EvjzVrlGfbPlD6ZwnATgjQ8BfnkRzu3kZhbJzWHiSSlmsoj/syl
 As5rf047FDrDOdedNlVgSmRk3XuQwTSwzOi4lk9XJ4fObeCa6MkOdHmV44iC5FF3YA33hD49vbr
 JfAcZsNKCeYhie4GdNLwbewQWtIYIo5tO0XYTYm9n0n2S+DThWXXXdr9Fykuf6h8oRqEYweLPV6
 dBCbxkBciRDyzBkVBT89VBq0eBhd1taKTGLwHdSBlMofU0ugzrHKsLyPn6pqYS1j+91eYUe6ob6
 xwMnZT+v/Jl2crg0LJlA1q7su6QIWrukpSYrU35AKer+MtUtuUydfIbQoSQeAkUTA5K2MYv6R7l
 7aq3bGx0
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c3daa5 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=9b2JUy4lzbIbXjLhPvkA:9
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: VZEUpGO4OKgpE5wMKXC4gdXaZVmQE_pC
X-Proofpoint-ORIG-GUID: VZEUpGO4OKgpE5wMKXC4gdXaZVmQE_pC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

Number of input and output ports can be dynamically read from the
controller registers, getting this value from Device Tree is redundant
and potentially lead to bugs.

Mark these two properties as deprecated in device tree bindings.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/soundwire/qcom,soundwire.yaml      | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
index 95d947fda6a7..7ea491f7e828 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
+++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
@@ -73,10 +73,12 @@ properties:
   qcom,din-ports:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: count of data in ports
+    deprecated: true
 
   qcom,dout-ports:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: count of data out ports
+    deprecated: true
 
   qcom,ports-word-length:
     $ref: /schemas/types.yaml#/definitions/uint8-array
@@ -223,8 +225,6 @@ required:
   - '#sound-dai-cells'
   - '#address-cells'
   - '#size-cells'
-  - qcom,dout-ports
-  - qcom,din-ports
   - qcom,ports-offset1
   - qcom,ports-offset2
 
@@ -257,9 +257,6 @@ examples:
         clocks = <&lpass_rx_macro>;
         clock-names = "iface";
 
-        qcom,din-ports = <0>;
-        qcom,dout-ports = <5>;
-
         resets = <&lpass_audiocc LPASS_AUDIO_SWR_RX_CGCR>;
         reset-names = "swr_audio_cgcr";
 
-- 
2.50.0


