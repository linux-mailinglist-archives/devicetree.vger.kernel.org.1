Return-Path: <devicetree+bounces-220856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F089B9B838
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 20:38:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2787419C574C
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 18:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DCD03195EE;
	Wed, 24 Sep 2025 18:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j/88b+Cc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C00315D4E
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758739081; cv=none; b=P6TkqdNXXMFix/ahHA3Pozax9+70l4OsRiAJwKpomWXXHCmpO/eCZmftP3rTT+Rko4ugl+wek2UQoOXmIEtxrqW3dV/0c/m7T2A6wcyT9U5dcnkX2YBBMoIA9Y23QjUqfMiPffiMN4Eae2J9CjDyDyxjuhktmOHnrD7MSoQdnwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758739081; c=relaxed/simple;
	bh=T97FcqFinqlzYxgH+rSC8Mhx5RHcO1oPAjZVAZ06tiY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YyT5Kud1BsSyy1DiPsDYTzHBAYY+Xpocm7Dcyx/OQhAcyla4Tyftqam6OT7jcSBsbmm8pDE7aEzGh6MTjNcKQGcTVTeGrd3cTqBONUpMOtFCrHuhP0GkvZD3yla4wxmuwuAFdTY64jmpXqz8h1CEkOLq4y8PIu1GF1MZsWrBc3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j/88b+Cc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODFG4H019923
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:37:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=B3CY2hC1i6M
	iUSuv87D5Jm3r0035lg4EZdY8cNWgc48=; b=j/88b+CcFbQf5LdLKyp9gg/yCNq
	hucTkUaIzxSy8kKOePLODXXyHnun/YbaWXGPyiQNp/SeLyZ+I6LLxKWNjKV1GTC8
	LEFgFeqC5tDKZUzFsBFCfgPnSwyGdwFbFgLkj2Q+Tn2vBSfRvnGjKyN/9O0Ol/Z5
	wgNV1J89pGG1yepsEq1mrv+yadbEBG/JLStWvOtxvjZ15OIg7HFKq+cG6Ugejy7A
	xFjqB2LXuFUlD4TcZPdcurXZ8qa64svPhkf0a0b2WFMlGEvYqzo1/r0N8VeGl1Qf
	ZiXl3GrxQ0/MVNGCr612FoF+wOXjvcO6+Nbctf7VPMQKUan7RtI3WVGwyGA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdxmmf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:37:58 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b55443b4110so46883a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 11:37:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758739078; x=1759343878;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B3CY2hC1i6MiUSuv87D5Jm3r0035lg4EZdY8cNWgc48=;
        b=Tc3SjaiXN/5hXmxtlsgtgkMHO+2/zKu02RaqbuVDsJncy9xLX7+jIZGDEEcWtz1efW
         AwTitzviFCbmcUP4c444uUZu2ntWPbc24vioxag7BENX5B71qEoqZ6gQueIVBOy1ZxTL
         H7SuTJzAA8YuorXx7n18hisUi3WcIlC4hwGZtqszupguLqYnJ0vaHisqWlkDzV3fn1WO
         SbbHDTRtn4zq84kcneTpa6LWoXz/v2d4U+hL+5LrPaTlRT82q98DYVXF8EgLMa7aAJaL
         i+h0byIYNojjRMeKeB/QABIU1ZO7kpwSgmihYgKU+vUsuUAoMQlRFed7RtgD3xjMxsDq
         IEiw==
X-Forwarded-Encrypted: i=1; AJvYcCVL76Y9001uoo+y3cXbWbalusXjwVR58tVwdK+qfPhvA16ynohmtUVvMChYon0vpLvsZKm5YAfbJqtL@vger.kernel.org
X-Gm-Message-State: AOJu0YxzNBZ+JxiEQy9e6b0g6kegGBn8umEf6zjwA9cs8NYQM9aKDvXz
	xcNsNfZWAAX+Grx7MA6M0iiiIh52MQYlollyk4q/80q3XYgHw+kPdnsFEijHA0PT1qcatC5f4aR
	7roSOq4lJzewK1f8DF6aiyhlJVEDSb6s1ZnFVy2pguVMsjm5OcwgMnXKHURbKU4Xw
X-Gm-Gg: ASbGnctmsGCNYSh9RFRsvIfFt+0sUHJ/3oBJZtNGSuaWFXEcQAKBu6AiMyRXA4t9ZJw
	yY5Wz5pixU1qcPGjMNcL2TAlJz0S1ED/lpnHB1XbHOZ7KBD9iSHYdmyQ5NHxRFyAYlmjlTtzNyV
	ex/nlltGZGsXg2/R/FXGAwprgsn7JGbRNJqDLtn0qpuH6k251oeWPqEiuh8NfP8gAfuK92QvQ4x
	ZHw+7goRQKrcJenUOQFmxFkPHc2zwwxL7Vcf/uLpSxCDHISIUDEpY3ah8mzKQMmBBdU+brk2ju1
	yTFOq7Zo0lm7HzK2XVC3/SO2CqlymKi3e5+agaURZ/A6d0vMnWskaUkuz81nAXaTBRRqnBp4yup
	bmd0LIzegr/UNXKiBI+nSE1VDG73jUAsl3kPWJFA1QshBEgCyl2lm0IY=
X-Received: by 2002:a05:6a20:3d1a:b0:249:18e4:52a9 with SMTP id adf61e73a8af0-2e7ccc59ea8mr699685637.9.1758739077909;
        Wed, 24 Sep 2025 11:37:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYFL5L9wefd1CvJSJ4agMNAcdiizATbs8L/gXpjLu4lLw/H9iBQnCCFdWLJ/wMVOfQL8qzWQ==
X-Received: by 2002:a05:6a20:3d1a:b0:249:18e4:52a9 with SMTP id adf61e73a8af0-2e7ccc59ea8mr699655637.9.1758739077477;
        Wed, 24 Sep 2025 11:37:57 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b555adca754sm6523412a12.16.2025.09.24.11.37.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 11:37:57 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mani@kernel.org, andersson@kernel.org,
        mathieu.poirier@linaro.org, konradybcio@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: mailbox: qcom-ipcc: Document the Glymur IPCC
Date: Thu, 25 Sep 2025 00:07:22 +0530
Message-Id: <20250924183726.509202-2-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
References: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: pNqkBBToI_AmngLrjcfu08sF-nDTDnyC
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d43a86 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=5H-Rh-Mn9-agE4ZKsUcA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: pNqkBBToI_AmngLrjcfu08sF-nDTDnyC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX1Vd+6IkWAVp7
 beJ5Y9DSdzXVy4alqaTfmt6HwWZOILnnlf/tEohhgcM0PcLAbzY6Rd9U3LfhqQygIGZ6SkBI2AT
 E6Av3urm4Jfg3q5vOOizhOAKK4pqDB4MN6o65QYSSAbCvYDb80mpXowQ3982PmRjDZ+fMwh81X2
 GMO8UFDk7EHu8RJ0jIK74DeSnwNTRMdA1CTW0jq+xG4LPAB2ouEONy0+pV5R7BFlyaeqMTWHgzJ
 1oUg9c6hE/h/pCnxtGxWcR1DQAk9N82jetmgnT0aafgC8D89ygyTBLsTsO9drfdhfwQhqCdq0YG
 iWKVawfxIq3BNKSX7/+7jM4sI7lm9sw81JnifNqbRvcTd3wJcLUesn67znMQPYBVQPQzp5e+oHm
 yqZdqKdv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

Document the Inter-Processor Communication Controller on the Glymur SoCs.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
index e5c423130db6..129870185884 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
@@ -24,6 +24,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-ipcc
           - qcom,milos-ipcc
           - qcom,qcs8300-ipcc
           - qcom,qdu1000-ipcc
-- 
2.34.1


