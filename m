Return-Path: <devicetree+bounces-228493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 696E8BEE417
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 13:56:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19CA7402344
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 11:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B9ED2E542C;
	Sun, 19 Oct 2025 11:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HQX4nssT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B9922A1D5
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 11:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760875004; cv=none; b=TBiO2if1vYAcDNadJMaTMapGvl6GbC5Wtd8SLzexAEfAnwr+8z1GsAW72M69qXoA9L0aZNOKL89goFzWFn7nPdYAlikozeSRt7LOEir9sVdwMlsKMno7bJ3hyO5CTs8oeEr0a3VOohe4ILJ9Vwr+TFMlJXxFn91z8v8o9PQeKk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760875004; c=relaxed/simple;
	bh=YlZ0ROP5gJyeqaSTmWX1xfZV7ZJUSRqclRMBwrURXks=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fiLZru5ak/cnBm5IdGjKnjoCR+qolTXsif9H4nFMJv5Im7q3GmjyIEnO+S+tyW9Lp6PLxOk0Qn3XWNh6xgOwrZff43b6d9yoCgbjCobDUiDIgW5772j4MbAtktoQ58gxLnYTWVwLolkO2Uu61pfWeu8oWSLfs4/2AasY47u2L+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HQX4nssT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JAo0v7015017
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 11:56:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=qUL97SYJ6g5PgkNTlGLntC7OPdptYf5BU9K
	KW6069wQ=; b=HQX4nssTBFjgy4XrNtQPzhjeta3qag2pfWU4Yn1I8MIJdMwt8Tf
	4lFk+4tbNKKr9XjXBLFpccgsjDpg4jmmZ2Iz2OJDbiTD5PXYYTEdYBp4umlcjj97
	1r6hkmOreAfAasxgRosaZdl2q3iuksSpRwUj5xGWaJXejV3DYsQfXwPaUtiwzAHH
	jAY7A/hziBNxjEBxgPrebF4c7ZZaOAwQt+qSlihwB/ZK3Bw42208In2NI3Y2oNNy
	FnL8hVgp5oaChhL7g0ROu6c9IKO3kxPSPCLsTsYdiFYO2+aJosN3JC1lYsLfmNF5
	emwVa5GxmymWbL6VT93VWYYCJiGbhlgKVWg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3nfa8sa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 11:56:42 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-78102ba5966so3168900b3a.2
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 04:56:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760875001; x=1761479801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qUL97SYJ6g5PgkNTlGLntC7OPdptYf5BU9KKW6069wQ=;
        b=Bevo/ASLrzxKaVOzKqc8X20hg5Icz4jS3CpL7V4gRwJDjrITg22euGbqJcq90pbjJ1
         msAxdP0NyhTi1bZvJXCTgkXOkcOBi3axV3lPqFzCx7Gd1uZVoaci5fLSE/a4RXEkVxYl
         QltLmIDom6OkXQyaveRV+rqa00t12xdAfi0/jyXoVfuLIB5z13qrJwvYJyN0TcINGl15
         c3UVKDJkYX3kvGKHHW6Qq0ClJ+kuF3SqBN0Ad0g1CTFCMtlf8dnKrD4f46cKXTdLUDwN
         EcZe8S605a9ArdCNOxC3suMlZbOEeiWr0lkJczsrHFD8sDF5ZQO2/CLZ95RlZacybbTZ
         Mp9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWr9LIdsnlITVaS4H6iirGUmVi0qfSa7GcJpeFs0ciqPOKRU1b9F/Y2ihbLl2doH3lhbhVnij5kxYBL@vger.kernel.org
X-Gm-Message-State: AOJu0YzPQNIhLH1T7a1Q22WbhAZw8wHPSGKoe51H+QpJRag1aw3Vochp
	+leMUMdvoz/QItxRoAV/GZaJb47Wl+OpWe9FIFFc3Eq5EPY4AMiDLyGr1R/qEqzEmm96m3kf7X7
	o+SWdzjsgDbzp6zdnOXhlS+Uj2CXMcfPg5f5GHvkVFAd/tBLA1NksI3T8zuOqlzcY
X-Gm-Gg: ASbGncsMype34NPNGMIlo9ZOwm+iXEBWkuXidk26aGjxths1wr8rVuzvrdXuBrKZybj
	3+n08BIlDT34fxyPlNrIdj+jVCOXpPtPiEa+onZA5H+9XS3h5NUfm+LLzMuvvY8nQAHQs2v3OuE
	9m5LEtOuLTPA1Xm4VvBkLkF5WqZfqwxvUTIC7k2jAlrt3xngK2J4C/HSHMxNRh2WhjxAaQmy1Wf
	3R++wqCJA/IdN08UBO0XHXACLlMiWQuzWoOXHU69d7VFCy7XfCi6IHPRv9LhSL2hDNNXv9KDRfY
	w3g0WhFLJFqkWG8MPX7QF+F+NIzZiwOjhKF+MakzrUh4NztANz3MnndV5carMDQqobqREOhZVLe
	BQQnfxvTf7HvhaRr9wXDOc/vqJMjSuEuHrDVb
X-Received: by 2002:a05:6a21:3391:b0:334:a82b:97bf with SMTP id adf61e73a8af0-334a8644619mr13330668637.54.1760875001133;
        Sun, 19 Oct 2025 04:56:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKOi1ONCU8C3sWPP+vbxnfjGdeVLuUrxOpyg5H2azthwS1hFEUAi/DGOLztXP2tszOin5isA==
X-Received: by 2002:a05:6a21:3391:b0:334:a82b:97bf with SMTP id adf61e73a8af0-334a8644619mr13330652637.54.1760875000707;
        Sun, 19 Oct 2025 04:56:40 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a76673a86sm4970822a12.10.2025.10.19.04.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 04:56:40 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2] arm64: dts: qcom: x1e80100: Fix compile warnings for USB HS controller
Date: Sun, 19 Oct 2025 17:26:30 +0530
Message-Id: <20251019115630.2222720-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 4cxZKKINESBDh9JEYKO8UiiB327q-6nV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyNyBTYWx0ZWRfX8GfuCL+2mHWj
 NGzlnmPuKFfAph5bIVohNkJiSxGVEOr/C6JNA1kEEizChoDmsMwa8PRpxqOe9jAP0pQknEnAHrT
 C/iuUNXgrvzPKJjIZLwgUGvsYCY+YB+leBdUO0Gn+ujrRAGOV0OMG08xdor/SKhFWfSanHxbc9z
 +Rg4Eajh7v9FtOCZEpfwb6cZwBT1GekevE9PIKPfLVE6zcKbovIRF/S0iaGkaQ3dW9y3mVXFhnd
 bQ3RrIUO6P/35faLVrXXvbJ99j3bcywEhnWQnpNVWyeCuQqZDzM0At1gmRz0TOfTiO6ILJ3bDhJ
 rlUzstD5Ip3AHnwKRfRBtyUiF5Jwka0859mgOYkJSnDoWZuoHaCKf7zk6pLI8d/hDvvtou48cJF
 t9Pstoroi4gonrq0HVxGXngykbvG+Q==
X-Proofpoint-GUID: 4cxZKKINESBDh9JEYKO8UiiB327q-6nV
X-Authority-Analysis: v=2.4 cv=EYjFgfmC c=1 sm=1 tr=0 ts=68f4d1fa cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=mzrBCZWHuliTEfAr3rUA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180027

With W=1, the following error comes up:

Warning (graph_child_address): /soc@0/usb@a2f8800/usb@a200000/ports: graph node has single child node 'port@0', #address-cells/#size-cells are not necessary

This could be since the controller is only HS capable and only one port
node is added.

Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Note:
This patch has only been compile tested.

Link to v1:
https://lore.kernel.org/all/20251014022121.1850871-3-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
In v1, the fix was done after flattening the USB controller nodes [1].
Since there is a system suspend issue reported on that patch, the
flattening patch will be sent later after its fixed. For now, sending the
fix for the compile warning.

 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 51576d9c935d..6beef835c33a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -4939,15 +4939,8 @@ usb_2_dwc3: usb@a200000 {
 
 				dma-coherent;
 
-				ports {
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					port@0 {
-						reg = <0>;
-
-						usb_2_dwc3_hs: endpoint {
-						};
+				port {
+					usb_2_dwc3_hs: endpoint {
 					};
 				};
 			};
-- 
2.34.1


