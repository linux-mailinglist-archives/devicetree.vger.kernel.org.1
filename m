Return-Path: <devicetree+bounces-196943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B0DB079CC
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:28:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82DD7502CE9
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEC8B2F363F;
	Wed, 16 Jul 2025 15:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vtbc4OJ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF5B2F2C5A
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752679698; cv=none; b=WsXgTI8UkXeXvzcEmlFaeKFkia6IVCLIg2uhllDrtQ1QtudJhVnTuX5muO7+xz1k7FJE6ZFwWY+zuOIJ0Yo6E8pP05sicZpKIfygqXh2ylvhvnR94dkM1g/dWT2k02Gm1tqjXUfiFUHiUDhxUytPVEZ+QjyeA7v51nsP2KEJo9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752679698; c=relaxed/simple;
	bh=awJhqK9vZx7HfSJmr9fd7vWzKJvnlam9KSwzA05jp7c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=F+wMKWgdxT7Vl98TZKKe33BZ9dXAWTzzOkbbTlIGizxiJku8ds7faQCS083NFSs8NSahqF7WO7TdLXR7W/sGg8VJsPfXtYX1HrLrx+4qd+UPVOVdBx1BtKCCIuYt0RKxSpT0KTmnluqNjqAWVilbUquSBTy85LcBXQ6U498z9ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vtbc4OJ3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GD2eSr023598
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:28:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=eId7Thpi9XZ
	dt0UdhQINAu7XwHMfKszVh+XHIOlEnig=; b=Vtbc4OJ3gC+WqXbqSbAz5OFi+Re
	932uuNUJV4X43NhFdYr0TIfI9s6nX/IRCHIxUooAqPSWHeAzPZlozHzPVosugvw/
	UDyr7afk4IWMlinxR/OGcNCDePpoH8PtiOsGe6JzIOC2cAaV287DUDcWQahHVYaD
	ddO2QO5ajKhv1gq2xL1xpoX6W1l6hZC4RPOV3VRht2wl8DlDm5+yu2ubYx9RMmxR
	nmuJ01RhahDKys4N/8sMlYzYvssR21hmWZWUxTjtpVo+3JWjCic8L/5WdImaCyy2
	OeS1lEBZ9TNuX4AmXnfIE3rquFLVicDbYe6UHjViPtfIk9fN1mlLMhe0Q0A==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wkrun8p8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:28:16 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-313f8835f29so41445a91.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:28:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752679696; x=1753284496;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eId7Thpi9XZdt0UdhQINAu7XwHMfKszVh+XHIOlEnig=;
        b=Vj7kXtNCRCCqPX5t9UAQ0eF39DTdw6vD/UeABWsIo7zrJh3a1C8DQjiv522SSviMdU
         /TlKEgjK1CmAp/Lv3BOoJPX9hg6IV+2CZOCCbPevif6OTaJWALttj0IohFyxrj8JAD9H
         RA0Cfgg3WgKGYYTYBaHhZvW9sFvuOvw3yi4+wNrnsNCJ4jGLHBxBS9jPAvtLQ5prTUX8
         RGTwDkRAYsb3/WX1xTmyN7d1sp6AGlvHJTVTx4BP9Xk9e/Dktzx56uR7RNPmWxkmkHoE
         0INZ6u7xgXUrmVXWdoiKo7jb9dYmcgLLCvYUdtwKuvPsZdZ5fLb1suzREPyGC2WjuPmF
         m6KA==
X-Forwarded-Encrypted: i=1; AJvYcCXNu/3kxzxyV23XXV/w26CWB5nnLix6iKSP18mBMoJE2e/O72Nd+UxPJ09ryP7gH3sog1qTbQAenQs+@vger.kernel.org
X-Gm-Message-State: AOJu0YyNMaw0RKTuR1yT+f3hkVeEp442NJrRXmJ25APPI21GlM8mafAz
	qz9S1cn8ufQuNvGbrcJ9XLu+kTamYDvXbvH671yxZPxQtZjSEOFABHZl4ZAuaZMNx+U0daLlyKD
	COLcQ4Owhn3CXrHlqzNYt6Jtg6Xtz0Q2ytSfxkSZzpHC4XYi22+CQpM7QHLhpHlMx
X-Gm-Gg: ASbGncvL/SxrHyBnvVvBgD1ClHaZ91kMDPEdTNWApw1WdiblX+6Ds4EUnnT2OJZeyYZ
	KymHp0iDjFjO82OjCn6reKjHa+JDr0bf/8cAty6kVCh0LUEeRh85hobn8m7URuvV4DozOYekJXd
	jfeddZvD1JIJQZPkSErHL7zpbmVhwhuAHpuuEChCQDXQmD54vuLWwVhDFMl17axpTEZHe5Y5Bil
	Xm3IKbPuAUMniTeWT0OPIjW5ZwwB1qMcAFmQbb54HEDrD7aq69zXBCZ8Wx6qGNbH1e7EVy29/SR
	B6Tn1p4BhXlXNl8Et32MM0a0Foicuuk/jNBNwoo1N+uE51lwhsia1SMjH0zfAkEaQGgmKA3OPmX
	yJ91Ii4N2qlZA9O6BNf7XmnHvIomx580sVz193ourShzd6fKqNLynTyHc/CqZ
X-Received: by 2002:a17:90b:3511:b0:312:ea46:3e66 with SMTP id 98e67ed59e1d1-31c9f45e1c5mr3880522a91.21.1752679695710;
        Wed, 16 Jul 2025 08:28:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtxskSX4ykowgYW6uvYkR4w5BMuKXIb3nL0la8MIwNTod9JbY4bqqI87oJ/MQXKSnNbpjtsQ==
X-Received: by 2002:a17:90b:3511:b0:312:ea46:3e66 with SMTP id 98e67ed59e1d1-31c9f45e1c5mr3880481a91.21.1752679695170;
        Wed, 16 Jul 2025 08:28:15 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c9f20e87bsm1688563a91.35.2025.07.16.08.28.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:28:14 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: robh@kernel.org, lumag@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        ulf.hansson@linaro.org, konrad.dybcio@oss.qualcomm.com,
        quic_tingguoc@quicinc.com, quic_rjendra@quicinc.com,
        kamal.wadhwa@oss.qualcomm.com
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: power: rpmpd: Add Glymur power domains
Date: Wed, 16 Jul 2025 20:57:57 +0530
Message-Id: <20250716152758.4079467-2-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250716152758.4079467-1-pankaj.patil@oss.qualcomm.com>
References: <20250716152758.4079467-1-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 2YOZ1mHDL8Y190HXTm9a5QAqj8y6j4BV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzOSBTYWx0ZWRfXwjEREqf8HW7c
 zOUHTfeF3DpserzgftYqrfPNB7LZI7sONNf7HLCeMVoIYoYHIBqGEJT8l8q9ehHtRmpA3NcEtoV
 9ESeNQ0m+YuFsiEK4+Gb74I6IjJQ0gs+6JV8rBfIMucwJ9J8g7nvnVzLyb5Mx/FIRIBirBJrZ1V
 Wk1P9W6RRDyfZStNWVGB4SljKbaTQBjPllihZ3g5I31ts/XfbTRSvHBJ4ekJIddxhpZ1aa6+evp
 W9ISATcPjS51zyN+apEcboooz6NEb+xK2vwUNVlElBL2HWKIGBxcmCnTm+3NX3hBfWPsQWq/kuE
 LCNcy4/sZSZ08Ve/cDZOs+a592AGQQV4OXSVPXQvrg8tHZPc7XX6kAlWcJSAo3y+R3a8qlz4A1U
 +p2F4YigR1omGLnBDYmeHrQWmmeMgx+GeWQhzzARrmIqS8WLckH6iaaawmgg90eYAC4x/VYs
X-Authority-Analysis: v=2.4 cv=WqUrMcfv c=1 sm=1 tr=0 ts=6877c510 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=mKLVYdK_SoQD2tn2_ugA:9
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: 2YOZ1mHDL8Y190HXTm9a5QAqj8y6j4BV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 mlxlogscore=915 bulkscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160139

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Add the compatibles for the rpmpd power domains on glymur
boards

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/power/qcom,rpmpd.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
index 7d4394a3ccbc..af5fef872529 100644
--- a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
+++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,glymur-rpmhpd
           - qcom,mdm9607-rpmpd
           - qcom,milos-rpmhpd
           - qcom,msm8226-rpmpd
-- 
2.34.1


