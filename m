Return-Path: <devicetree+bounces-7457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E75DB7C464F
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 02:23:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 741492821F3
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 00:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 036056FD9;
	Wed, 11 Oct 2023 00:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="VZ6GeSq0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E53D20E8;
	Wed, 11 Oct 2023 00:23:16 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B488CF;
	Tue, 10 Oct 2023 17:23:11 -0700 (PDT)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39B02b9g008268;
	Wed, 11 Oct 2023 00:22:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=Eipf0qdUNseeeCPv1ROKNIpVDYWm+TtqgG+NoHVraz8=;
 b=VZ6GeSq0fsgkmUkZGjdUn56xQbY0SgQIPQTadXltXDYGe1FC67lCsIIGOMsHm//0jdbA
 tlCCDUebur5/GcRp/9q09B3HstTEYRG/xAbvOM/5ttiAbp2XHwuYpvrMKQ59IK8y5OJ0
 QqhPB/e+khmM+nzNnhWRFk+CXcTPCp+imbi8R39EEKL7nG0/LLWxuJKOM/XPcyk14WVN
 gq/wJgyJBO2qbEJ7/VvkLPXnR44f0wwiME4Tpn75gTsPNq0dONQGSDlaR8MFxrEQijmg
 lEIV8aoq0wy+ABn5jxZPkd7COFbcnEW2ZdD6aQg4QPSVvrjapZ0eb77qvCAYRZMpKXRD vw== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tngtp80t7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 00:22:29 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39B0MS85027057
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 00:22:29 GMT
Received: from hu-wcheng-lv.qualcomm.com (10.49.16.6) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Tue, 10 Oct 2023 17:22:28 -0700
From: Wesley Cheng <quic_wcheng@quicinc.com>
To: <mathias.nyman@intel.com>, <gregkh@linuxfoundation.org>,
        <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
        <tiwai@suse.com>, <agross@kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <srinivas.kandagatla@linaro.org>, <bgoswami@quicinc.com>,
        <Thinh.Nguyen@synopsys.com>
CC: <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <alsa-devel@alsa-project.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>,
        Mathias Nyman <mathias.nyman@linux.intel.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Subject: [PATCH v8 01/34] xhci: split free interrupter into separate remove and free parts
Date: Tue, 10 Oct 2023 17:21:13 -0700
Message-ID: <20231011002146.1821-2-quic_wcheng@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231011002146.1821-1-quic_wcheng@quicinc.com>
References: <20231011002146.1821-1-quic_wcheng@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: qfiOPaBh_7do5sbz9Iwe1ZJDBa7wNOIh
X-Proofpoint-GUID: qfiOPaBh_7do5sbz9Iwe1ZJDBa7wNOIh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-10_19,2023-10-10_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 mlxlogscore=939
 priorityscore=1501 bulkscore=0 impostorscore=0 mlxscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310110001
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Mathias Nyman <mathias.nyman@linux.intel.com>

The current function that both removes and frees an interrupter isn't
optimal when using several interrupters. The array of interrupters need
to be protected with a lock while removing interrupters, but the default
xhci spin lock can't be used while freeing the interrupters event ring
segment table as dma_free_coherent() should be called with IRQs enabled.

There is no need to free the interrupter under the lock, so split this
code into separate unlocked free part, and a lock protected remove part.

Signed-off-by: Mathias Nyman <mathias.nyman@linux.intel.com>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
---
 drivers/usb/host/xhci-mem.c | 32 +++++++++++++++++++++-----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index 8714ab5bf04d..a54f74933437 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -1797,23 +1797,14 @@ int xhci_alloc_erst(struct xhci_hcd *xhci,
 }
 
 static void
-xhci_free_interrupter(struct xhci_hcd *xhci, struct xhci_interrupter *ir)
+xhci_remove_interrupter(struct xhci_hcd *xhci, struct xhci_interrupter *ir)
 {
-	struct device *dev = xhci_to_hcd(xhci)->self.sysdev;
-	size_t erst_size;
 	u64 tmp64;
 	u32 tmp;
 
 	if (!ir)
 		return;
 
-	erst_size = sizeof(struct xhci_erst_entry) * ir->erst.num_entries;
-	if (ir->erst.entries)
-		dma_free_coherent(dev, erst_size,
-				  ir->erst.entries,
-				  ir->erst.erst_dma_addr);
-	ir->erst.entries = NULL;
-
 	/*
 	 * Clean out interrupter registers except ERSTBA. Clearing either the
 	 * low or high 32 bits of ERSTBA immediately causes the controller to
@@ -1828,10 +1819,28 @@ xhci_free_interrupter(struct xhci_hcd *xhci, struct xhci_interrupter *ir)
 		tmp64 &= (u64) ERST_PTR_MASK;
 		xhci_write_64(xhci, tmp64, &ir->ir_set->erst_dequeue);
 	}
+}
+
+static void
+xhci_free_interrupter(struct xhci_hcd *xhci, struct xhci_interrupter *ir)
+{
+	struct device *dev = xhci_to_hcd(xhci)->self.sysdev;
+	size_t erst_size;
+
+	if (!ir)
+		return;
+
+	erst_size = sizeof(struct xhci_erst_entry) * ir->erst.num_entries;
+	if (ir->erst.entries)
+		dma_free_coherent(dev, erst_size,
+				  ir->erst.entries,
+				  ir->erst.erst_dma_addr);
+	ir->erst.entries = NULL;
 
-	/* free interrrupter event ring */
+	/* free interrupter event ring */
 	if (ir->event_ring)
 		xhci_ring_free(xhci, ir->event_ring);
+
 	ir->event_ring = NULL;
 
 	kfree(ir);
@@ -1844,6 +1853,7 @@ void xhci_mem_cleanup(struct xhci_hcd *xhci)
 
 	cancel_delayed_work_sync(&xhci->cmd_timer);
 
+	xhci_remove_interrupter(xhci, xhci->interrupter);
 	xhci_free_interrupter(xhci, xhci->interrupter);
 	xhci->interrupter = NULL;
 	xhci_dbg_trace(xhci, trace_xhci_dbg_init, "Freed primary event ring");

