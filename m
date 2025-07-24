Return-Path: <devicetree+bounces-199459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F953B10BC4
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 15:43:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3B8BD7AA4E6
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 13:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A58E82D948F;
	Thu, 24 Jul 2025 13:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MSVN/Ph5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A632D94B5
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 13:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753364569; cv=none; b=d34bii2UAKsoM3Tfh9QL2OU5H93CUmjLbL0VcZucRMqFT64o8ZHxi11IZ8WP8ZkdxEhRMZBSeaZ5ZBRbIZ7wxoGboz9chlSaVTYGeH2vyh75SmreYC/o3iwWpRSX1KxeHWnxRXCuD51opOQM9BVnUTVt4BdcX1gp+xRoY1lvjFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753364569; c=relaxed/simple;
	bh=vGRgVTOfDssnsSqYnvBFvPNY1C/z3DVIT6+xrGICpvg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qO24SONL2iiU7Fu3V6qmweOftnBmL7/OiZZO0p8iiU3RoNJIjLzBKkXlM1G50JpYbzDlFxPwJ/HGSuMsyuGVEI2mLJ/2gCGh7WF18p64rcO10l/Ob1QjmAUIwiJU4iRtO5nb6QEeLR5SpovNouJU9lCbIoPK3WNo8xaBIYeBlXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MSVN/Ph5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56OAF3HD006839
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 13:42:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sZth73oB8B1
	222ELpFTANlY4LXWFy5IwxIszsgN5J0g=; b=MSVN/Ph5IOY2qxNn8k+r7kq5wVv
	XnVMNrIaGps/EdquNHpYCT/T48JSXcTAi9Z0gRik8oZ0orKowceMlaIWRUPIygfT
	5nvNrfIatRI+e2cdqnVX6kaHydHb17YqJ20e/0xjzzlwGsp7WGPCNWIypu+jaHJ1
	3As3wNLrH2C/IOzBQYSIcmTSroSuR15ELA53A3ZAvcWWhspx87ccvfKP8gM1VEin
	ja1lwe4J8iyKti+aYzdBWLiqqYRm62/Lxxw2zKCY4GA3Vga2P42fXiU2THfUI1Wy
	1T+ssj1gRPVbU2f/sX9PB49/TShLyXReWuMz9eA9CIYCOMOGbVQu23vL6mw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481qh6u0x9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 13:42:46 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-706efc88653so22685086d6.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 06:42:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753364554; x=1753969354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sZth73oB8B1222ELpFTANlY4LXWFy5IwxIszsgN5J0g=;
        b=hUJWdI0vQpBd/JILwsu063I5CYXtCiXlDBOaWfKAC+f8OL4/DoTzHvi6ckdCi/UBTx
         ipuNR1t/Tx7Y5InAoEk3/cmtituGWMMtssv3xua0eVZo5b+2TNT7ZoH9lFP1okC6zUal
         PrUa2Q5JjV6ihTbEU2pZIdmzmRLeQeuhElpDaIZIFDl7btTmxwqsZvaDWnifpSt7Ybxm
         CqDRMNVuakoVUPcIgz6nfBtVpL1+Hvytlum2yJDaqweMzPh8ZIfV9xHiiLdjnQ7DsXh6
         EQDv8jHcOT3M0yUhP4gViLkC4crhVspMW+kf3N/TUyJ1v4MyhvGMfsERdc2k7c8DCIib
         91xg==
X-Forwarded-Encrypted: i=1; AJvYcCXwbwj/xpX3hvNubEeLVJG9h01eymB1pmzHwuFzakrAUIabqXZgSZDi/WLyD921wqTS70haN4eRE6Hv@vger.kernel.org
X-Gm-Message-State: AOJu0YzV9lm272MYdA8gUFYs2QA7o9VwlEoQm4Wrzm4hgDtNXbXKAIAZ
	gfYka9bfcF8E/XhEU/h1QYnfBqPZJANLNr/pc1D2E+C9xAQ2H2mWc5gQFh8xy/D8kPWC9LEydyQ
	hD9YwwTWLBsSOGUJyuAWrRVhtaIkSTKemo1KGfyd8gcuoe2KlEwETNVRJqFt9u9V4
X-Gm-Gg: ASbGncuUvFeUfn4Fzc7oClMSWDM/Ly/RDvo4ciTnk+ZyGQFbrvQwOzHGIYvPeT981k8
	NVMlB4eNtWW3prXpFqn38kl/e1QAAc6SQ2QF9IlMKH4KI4H8L5/kRdcdSyKZOpmwOSIlFv6MMf7
	ntP/N53UWpJLdGeUVs+HpQ/4ZOJlRsVgEQAD0YPk6J/MaQ/AMS3DpCIHf13+nXoruEwhhg3XNVj
	K7AG73/14DRs4SRqMeIjtKEGuA6sKx7nXpEggSeeMfOtjIwwzV0Hb+UnJSdfHvCzoO4+8DCX353
	DfOf2wzTRX74lW2YJr8PDlf3BKJo++77wlAiICYFEyE7OEodv353xw==
X-Received: by 2002:ad4:5ae5:0:b0:704:f7d8:703a with SMTP id 6a1803df08f44-707006e3bebmr113655036d6.46.1753364553677;
        Thu, 24 Jul 2025 06:42:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGwZCs1ZXKsn8nvGRMR6iJSS+ZcmyQZ1l84AjZ3RmhPlugzRsIO+22IOdFC4rpCj3UyNAasA==
X-Received: by 2002:ad4:5ae5:0:b0:704:f7d8:703a with SMTP id 6a1803df08f44-707006e3bebmr113654516d6.46.1753364553099;
        Thu, 24 Jul 2025 06:42:33 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b76fc7885esm2228471f8f.35.2025.07.24.06.42.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 06:42:32 -0700 (PDT)
From: srinivas.kandagatla@oss.qualcomm.com
To: andersson@kernel.org, sboyd@kernel.org, broonie@kernel.org
Cc: mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, srini@kernel.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 1/2] ASoC: dt-bindings: lpass-wsa: remove un-used include
Date: Thu, 24 Jul 2025 14:42:28 +0100
Message-ID: <20250724134229.103001-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250724134229.103001-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250724134229.103001-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=CZ4I5Krl c=1 sm=1 tr=0 ts=68823856 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ZRooaDHkeuqK4k2OZnkA:9
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: GKk9LgxCusmsft1qrFb5MsK1WqCEto09
X-Proofpoint-GUID: GKk9LgxCusmsft1qrFb5MsK1WqCEto09
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDEwNCBTYWx0ZWRfX6YAWLs52bd3j
 cPFpOv4TcmzfK6PyrxdQ5Mon1fAjW8gY7hATUgGHG3aPKvNzoG7F3s/3rOFimSLXWlp0gdsXeC4
 KSckiB/bQkc8bkysGYalWK8kcAAVs4ubmsdL5LiPIGQv22tZX8bKwVlRkD4cRhzPaOPcqppeHY/
 ZkoCtdTmC49xJLNWHs7Sxe7AomEsw2kPUZS2A6v713IUUyA2n1F/TuSggtcBleSFeHUqmiEjLkC
 H9epqW9jjS4lD/1ELwtH9DFfUUvKDwig/do1GDfFXeMuFapwGDryMu0I1g/dfmZkPn9jKHFxUDp
 GDustLlBqMbcyO8EeiILqMN8mhFH9e0ec8mdtk3jOC4XZyjGsUrH9NFZBELU8OJZwFE3vRh48LH
 oOCeEB/6ujrq5ZFP704LHPsBSGlRKT9jR+If/efS7qlnGl6hSB9mP00cU8ZOc+aRjhpN5NVu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 mlxlogscore=960 impostorscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507240104

From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>

qcom,sm8250-lpass-aoncc.h is really not used in the bindings, this patch
removes it, this also enables us to cleanup some of the dead code in
kernel.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml          | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
index 9082e363c709..00d9813d72bf 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
@@ -103,7 +103,6 @@ unevaluatedProperties: false
 
 examples:
   - |
-    #include <dt-bindings/clock/qcom,sm8250-lpass-aoncc.h>
     #include <dt-bindings/sound/qcom,q6afe.h>
     codec@3240000 {
       compatible = "qcom,sm8250-lpass-wsa-macro";
-- 
2.50.0


