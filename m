Return-Path: <devicetree+bounces-212719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6043AB4395F
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 12:57:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F12461C80336
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 10:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCD4B2FC019;
	Thu,  4 Sep 2025 10:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HTiKcyTK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357542FC86C
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 10:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756983414; cv=none; b=rNcJdHNeIMoceuNlZ75VAdPByZvnja7YGmN+0T3ElOdaAjt6l2sxIvEmFlo22EoMCum6FKdyjAOmHfQCgxdK/JSELFSdSpe5gvwxadBZ6pOKTWd8aWkWHeNd6l5enNlcvbIsFu4jh9moXXmZxuzCqllXkjeT9lBJ3pp/U6nmmjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756983414; c=relaxed/simple;
	bh=fD8gmiEfvHWqA/qKuJvc+eRI/STX56LOgZaEfMt7N+Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jSpfDgIoiisYs1+BMt0YHoVTypsnncAehaRtYxwfNlx0VBcX/DiyuZnJ01OtCn5ykF0SI7vEjRVDGss7o99TFl/f3BcvN7GDsLnqUKY8dMWFPI5MF0N4BfhotLtq0luttCmjwqp664lV8nl5wWBgBlhLzlSJdkOkJ3Ozd0x+ER0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HTiKcyTK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XD9I014043
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 10:56:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Bwb/aCh+px1
	clBI7DNv6FaMGNCjRZCn6kYUkRggRljo=; b=HTiKcyTKwNBupUEpMVjNn49Cez7
	dRGhAGC8g9QncYVXjnLdd76Lf/YzS1KoLVfznPyiqYnMXyyborZczMj/JOYw/uo6
	sjUCIaaEoGX07kD2oVraz8j7q3B8YW79lRD6iOROCScLzAQ4jCVzJV/2uRCyEfyR
	ptnPIEVeOw1uWA0BN18wZAkvPoCTdVm0Jd1dN8InEHkKa8ykXwHzpo2edYfW7pGE
	LDeZU9VFtFTs4CLgOi1mvO9FckGP/4FPN9+v/YKSbQx58VdN1jrB83zkz4/XfVeU
	xM1Qaa2FrZIT+qaLK7r7UKR6DNGC+bd2D8vQPEcoy+9swHiIaqgZnDhR95Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscv7bxw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 10:56:52 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b311414656so24649821cf.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 03:56:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756983411; x=1757588211;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bwb/aCh+px1clBI7DNv6FaMGNCjRZCn6kYUkRggRljo=;
        b=Eqo3euIIzuKeKLoqL7tzfwAH84VnMkdN0kWMtGsfwADgOY+8yVccCSQr2IK3kpiTFK
         WFi8qIK4OjcfcMxCUeusYpH5dIm0VRvF2x73EdQTd1jIBO7s9PGlm/SHCQuyDKWytz+G
         8MMIKzDITpR21SW6IQjyvYnK4UdbLo1mezOMSHX9UQUAZRJsKU6nSRKDmCzPlVBesJib
         sp41b9fSlW22xU6NNK2/1ftPYwsLt7CrzG10qTKsgYGwyWtsqx55rfSuOB1h9PS4fzYK
         apvF1ns71zHp+Ggr8KSxKmhUk2w7Tj4GnlOmR356O7Xy1OmYQi2tg8ghUpWlgPzu3wZj
         tCdw==
X-Forwarded-Encrypted: i=1; AJvYcCX1SarPHOYOPlj3Ifjpx0M1OwObb/BHjBMcJ6jHTxAankfTNL4ZYv4MwBGchyc03BV/R8hEDI84OTqy@vger.kernel.org
X-Gm-Message-State: AOJu0YwVIwp33HWBdG9AN/MkDxFBaa0AwhUYVLsPnyg3scfR6C7jZKsC
	x5ZIK0ok+gC42v6XQKwWGLjlH8BcugcEGsOovXInwiICkDPtb5S9nVP+f0hJdyUanWW5eQ5ucQd
	CB7ICt8TYXCrd5whSqQTR8bQHbs1bfF8x0dwbN5neySUzjDBmGv31XhDDOUCRcfiU
X-Gm-Gg: ASbGncv7y0EqcA7aIhmK1ocAozgo7bIhSOirkx87ENyjX7HotHHtywKI4ATByIJdt3B
	R/rGPnIeyG8U648w91YNyuSSxFncZeDvgJsfahFvYQjTTJ7nCs01zmveytxurZsBoqkjjOdxl5Z
	7KcCLas3YrVHAL29P1em1PCuOgiadj258FfFB9X67D57r45x36mO7Hit4Hf/SeImuAlY+kc/oig
	cb6OBBjTBH7b1HULdEX/OI7U12Lpqb4ImOX4COvcriUxYYwozpOnBziOVAAfL2vIBSBJ6CwmDvq
	1Wm5HiJL6oU+ft5jKms1H2blTWaA3kap+wv5hG8olTdbtOkMYwUZNw==
X-Received: by 2002:ac8:7f0d:0:b0:4b3:eb8:f6a with SMTP id d75a77b69052e-4b31dd858aamr194624521cf.82.1756983411482;
        Thu, 04 Sep 2025 03:56:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHB7hdDpsknZLEtfa0eJTg4s5Li7VqEjjEr6dg75smCTU4fKnF4eoi4Bd/tkvBR/IpY7CBbMA==
X-Received: by 2002:ac8:7f0d:0:b0:4b3:eb8:f6a with SMTP id d75a77b69052e-4b31dd858aamr194624361cf.82.1756983410978;
        Thu, 04 Sep 2025 03:56:50 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d0a1f807f9sm26462334f8f.38.2025.09.04.03.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 03:56:50 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 6/7] dt-bindings: soundwire: qcom: Document v3.1.0 version of IP block
Date: Thu,  4 Sep 2025 11:56:15 +0100
Message-ID: <20250904105616.39178-7-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX5EO5EqlAwF9y
 au/w9WLC6VdBdYH2TaaO/V7ATSCrfI5Lf1ecTlkmRmpbCntV//aXze94UnaRcWuCqzZZwRDt38o
 8C3G0S9zY2i7aXO30qGIHiPx24TsVwBE12e9QpQgmD5EGhQNuYt5q8NCEW+H+I2L5vcEz5C8nTb
 DtDP+aqXIqCcC18Dj8xhz7BdRFNnV5pmgwMGQpl5KwnvFLBSpPfqCSpSloeA+13sLPoYmn6fGBt
 fcvVSEQYH2lWIrKsoMJvEBycgoTGo5BL7NaiCNiNGulVwMfRcH9CgHdVwWNiFxF/xox8EaJvXcg
 sjOJOF4KTyBHI1+7KJYeJycw0ktuZbAMQwg+L/3zCuBxzgWMGqI6MkLrNnRBVg/vd/ObCT+Lmy7
 HFbxnHdL
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b97074 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=W-ialWlWjSFIadUgVrgA:9
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 93QUG89YTPmROq7dWrTx07qQsmjiz7Hy
X-Proofpoint-GUID: 93QUG89YTPmROq7dWrTx07qQsmjiz7Hy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

Add bindings for Soundwire controllers v3.1.0, which is available on
Qualcomm Glymur SoC.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
index 7ea491f7e828..003023729fb8 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
+++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
@@ -23,6 +23,7 @@ properties:
           - qcom,soundwire-v1.6.0
           - qcom,soundwire-v1.7.0
           - qcom,soundwire-v2.0.0
+          - qcom,soundwire-v3.1.0
       - items:
           - enum:
               - qcom,soundwire-v2.1.0
-- 
2.50.0


