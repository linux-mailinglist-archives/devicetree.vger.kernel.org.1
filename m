Return-Path: <devicetree+bounces-7467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 858F67C466A
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 02:24:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3771928376E
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 00:24:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62FFAD527;
	Wed, 11 Oct 2023 00:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="bYeR561g"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBDA5390;
	Wed, 11 Oct 2023 00:23:19 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB01FE0;
	Tue, 10 Oct 2023 17:23:12 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39B0FCOW005334;
	Wed, 11 Oct 2023 00:22:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=zE+YpGwFzSa4ZzGPBuPuR8jgHVnW3kvF3cbjnw+bnAs=;
 b=bYeR561g/KlINSSPLlw1uiZG7yeiTwiS0osq7XMEdkhRMxpwMg7Opj05xEspIZRw0wNn
 SWGT/3GHnV2/rl2u+snK+v1rWajaDN0XNamobNhjpZ2AEHQHFBDOyTmsTA5k9Ie8AlJd
 GujFYGAvvS+vJqsCJobUx7NniglPolWSvIZTWnMM0WbpfetCdHm49t+s26MsdC4w6DTl
 NTW6iXv5p2On/W5zVKP6A6jpFTzI9DXRErlKP0OB/oT3Pb5t3IVPCVA3Q/djhNP7sYce
 OrZoWojQjSrIVb8mri4TIitoVW5hdICX9vCUMY4A+VbHPfzcWYZRSgphnBSDP25vzTJF 5g== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tne0q08kk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 00:22:30 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39B0MTxd002130
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
Subject: [PATCH v8 02/34] xhci: add support to allocate several interrupters
Date: Tue, 10 Oct 2023 17:21:14 -0700
Message-ID: <20231011002146.1821-3-quic_wcheng@quicinc.com>
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
X-Proofpoint-GUID: kEpYpcV8V4TDmUYUhEbqTpZ1BvOov9EU
X-Proofpoint-ORIG-GUID: kEpYpcV8V4TDmUYUhEbqTpZ1BvOov9EU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-10_19,2023-10-10_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 spamscore=0 mlxscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 adultscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 mlxlogscore=592 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310110001
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Mathias Nyman <mathias.nyman@linux.intel.com>

Modify the XHCI drivers to accommodate for handling multiple event rings in
case there are multiple interrupters.  Add the required APIs so clients are
able to allocate/request for an interrupter ring, and pass this information
back to the client driver.  This allows for users to handle the resource
accordingly, such as passing the event ring base address to an audio DSP.
There is no actual support for multiple MSI/MSI-X vectors.

Signed-off-by: Mathias Nyman <mathias.nyman@linux.intel.com>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
---
 drivers/usb/host/xhci-debugfs.c |  2 +-
 drivers/usb/host/xhci-mem.c     | 99 ++++++++++++++++++++++++++++++---
 drivers/usb/host/xhci-ring.c    |  2 +-
 drivers/usb/host/xhci.c         | 51 +++++++++++------
 drivers/usb/host/xhci.h         |  5 +-
 5 files changed, 130 insertions(+), 29 deletions(-)

diff --git a/drivers/usb/host/xhci-debugfs.c b/drivers/usb/host/xhci-debugfs.c
index 99baa60ef50f..15a8402ee8a1 100644
--- a/drivers/usb/host/xhci-debugfs.c
+++ b/drivers/usb/host/xhci-debugfs.c
@@ -693,7 +693,7 @@ void xhci_debugfs_init(struct xhci_hcd *xhci)
 				     "command-ring",
 				     xhci->debugfs_root);
 
-	xhci_debugfs_create_ring_dir(xhci, &xhci->interrupter->event_ring,
+	xhci_debugfs_create_ring_dir(xhci, &xhci->interrupters[0]->event_ring,
 				     "event-ring",
 				     xhci->debugfs_root);
 
diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index a54f74933437..908b8c9d5837 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -1846,6 +1846,31 @@ xhci_free_interrupter(struct xhci_hcd *xhci, struct xhci_interrupter *ir)
 	kfree(ir);
 }
 
+void xhci_remove_secondary_interrupter(struct usb_hcd *hcd, struct xhci_interrupter *ir)
+{
+	struct xhci_hcd *xhci = hcd_to_xhci(hcd);
+	unsigned int intr_num;
+
+	/* interrupter 0 is primary interrupter, don't touch it */
+	if (!ir || !ir->intr_num || ir->intr_num >= xhci->max_interrupters)
+		xhci_dbg(xhci, "Invalid secondary interrupter, can't remove\n");
+
+	/* fixme, should we check xhci->interrupter[intr_num] == ir */
+	/* fixme locking */
+
+	spin_lock_irq(&xhci->lock);
+
+	intr_num = ir->intr_num;
+
+	xhci_remove_interrupter(xhci, ir);
+	xhci->interrupters[intr_num] = NULL;
+
+	spin_unlock_irq(&xhci->lock);
+
+	xhci_free_interrupter(xhci, ir);
+}
+EXPORT_SYMBOL_GPL(xhci_remove_secondary_interrupter);
+
 void xhci_mem_cleanup(struct xhci_hcd *xhci)
 {
 	struct device	*dev = xhci_to_hcd(xhci)->self.sysdev;
@@ -1853,10 +1878,14 @@ void xhci_mem_cleanup(struct xhci_hcd *xhci)
 
 	cancel_delayed_work_sync(&xhci->cmd_timer);
 
-	xhci_remove_interrupter(xhci, xhci->interrupter);
-	xhci_free_interrupter(xhci, xhci->interrupter);
-	xhci->interrupter = NULL;
-	xhci_dbg_trace(xhci, trace_xhci_dbg_init, "Freed primary event ring");
+	for (i = 0; i < xhci->max_interrupters; i++) {
+		if (xhci->interrupters[i]) {
+			xhci_remove_interrupter(xhci, xhci->interrupters[i]);
+			xhci_free_interrupter(xhci, xhci->interrupters[i]);
+			xhci->interrupters[i] = NULL;
+		}
+	}
+	xhci_dbg_trace(xhci, trace_xhci_dbg_init, "Freed interrupters");
 
 	if (xhci->cmd_ring)
 		xhci_ring_free(xhci, xhci->cmd_ring);
@@ -1926,6 +1955,7 @@ void xhci_mem_cleanup(struct xhci_hcd *xhci)
 	for (i = 0; i < xhci->num_port_caps; i++)
 		kfree(xhci->port_caps[i].psi);
 	kfree(xhci->port_caps);
+	kfree(xhci->interrupters);
 	xhci->num_port_caps = 0;
 
 	xhci->usb2_rhub.ports = NULL;
@@ -1934,6 +1964,7 @@ void xhci_mem_cleanup(struct xhci_hcd *xhci)
 	xhci->rh_bw = NULL;
 	xhci->ext_caps = NULL;
 	xhci->port_caps = NULL;
+	xhci->interrupters = NULL;
 
 	xhci->page_size = 0;
 	xhci->page_shift = 0;
@@ -2286,6 +2317,13 @@ xhci_add_interrupter(struct xhci_hcd *xhci, struct xhci_interrupter *ir,
 		return -EINVAL;
 	}
 
+	if (xhci->interrupters[intr_num]) {
+		xhci_warn(xhci, "Interrupter %d\n already set up", intr_num);
+		return -EINVAL;
+	}
+
+	xhci->interrupters[intr_num] = ir;
+	ir->intr_num = intr_num;
 	ir->ir_set = &xhci->run_regs->ir_set[intr_num];
 
 	/* set ERST count with the number of entries in the segment table */
@@ -2305,10 +2343,52 @@ xhci_add_interrupter(struct xhci_hcd *xhci, struct xhci_interrupter *ir,
 	return 0;
 }
 
+struct xhci_interrupter *
+xhci_create_secondary_interrupter(struct usb_hcd *hcd)
+{
+	struct xhci_hcd *xhci = hcd_to_xhci(hcd);
+	struct xhci_interrupter *ir;
+	unsigned int i;
+	int err = -ENOSPC;
+
+	if (!xhci->interrupters)
+		return NULL;
+
+	ir = xhci_alloc_interrupter(xhci, GFP_KERNEL);
+	if (!ir)
+		return NULL;
+
+	spin_lock_irq(&xhci->lock);
+
+	/* Find available secondary interrupter, interrupter 0 is reserved for primary */
+	for (i = 1; i < xhci->max_interrupters; i++) {
+		if (xhci->interrupters[i] == NULL) {
+			err = xhci_add_interrupter(xhci, ir, i);
+			break;
+		}
+	}
+
+	spin_unlock_irq(&xhci->lock);
+
+	if (err) {
+		xhci_warn(xhci, "Failed to add secondary interrupter, max interrupters %d\n",
+			  xhci->max_interrupters);
+		xhci_free_interrupter(xhci, ir);
+		return NULL;
+	}
+
+	xhci_dbg(xhci, "Add secondary interrupter %d, max interrupters %d\n",
+		 i, xhci->max_interrupters);
+
+	return ir;
+}
+EXPORT_SYMBOL_GPL(xhci_create_secondary_interrupter);
+
 int xhci_mem_init(struct xhci_hcd *xhci, gfp_t flags)
 {
-	dma_addr_t	dma;
+	struct xhci_interrupter *ir;
 	struct device	*dev = xhci_to_hcd(xhci)->self.sysdev;
+	dma_addr_t	dma;
 	unsigned int	val, val2;
 	u64		val_64;
 	u32		page_size, temp;
@@ -2432,11 +2512,14 @@ int xhci_mem_init(struct xhci_hcd *xhci, gfp_t flags)
 	/* Allocate and set up primary interrupter 0 with an event ring. */
 	xhci_dbg_trace(xhci, trace_xhci_dbg_init,
 		       "Allocating primary event ring");
-	xhci->interrupter = xhci_alloc_interrupter(xhci, flags);
-	if (!xhci->interrupter)
+	xhci->interrupters = kcalloc_node(xhci->max_interrupters, sizeof(*xhci->interrupters),
+					  flags, dev_to_node(dev));
+
+	ir = xhci_alloc_interrupter(xhci, flags);
+	if (!ir)
 		goto fail;
 
-	if (xhci_add_interrupter(xhci, xhci->interrupter, 0))
+	if (xhci_add_interrupter(xhci, ir, 0))
 		goto fail;
 
 	xhci->isoc_bei_interval = AVOID_BEI_INTERVAL_MAX;
diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 1dde53f6eb31..93233cf5ff21 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -3074,7 +3074,7 @@ irqreturn_t xhci_irq(struct usb_hcd *hcd)
 	writel(status, &xhci->op_regs->status);
 
 	/* This is the handler of the primary interrupter */
-	ir = xhci->interrupter;
+	ir = xhci->interrupters[0];
 	if (!hcd->msi_enabled) {
 		u32 irq_pending;
 		irq_pending = readl(&ir->ir_set->irq_pending);
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index e1b1b64a0723..2c7b888d44fc 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -456,7 +456,7 @@ static int xhci_init(struct usb_hcd *hcd)
 
 static int xhci_run_finished(struct xhci_hcd *xhci)
 {
-	struct xhci_interrupter *ir = xhci->interrupter;
+	struct xhci_interrupter *ir = xhci->interrupters[0];
 	unsigned long	flags;
 	u32		temp;
 
@@ -508,7 +508,7 @@ int xhci_run(struct usb_hcd *hcd)
 	u64 temp_64;
 	int ret;
 	struct xhci_hcd *xhci = hcd_to_xhci(hcd);
-	struct xhci_interrupter *ir = xhci->interrupter;
+	struct xhci_interrupter *ir = xhci->interrupters[0];
 	/* Start the xHCI host controller running only after the USB 2.0 roothub
 	 * is setup.
 	 */
@@ -572,7 +572,7 @@ void xhci_stop(struct usb_hcd *hcd)
 {
 	u32 temp;
 	struct xhci_hcd *xhci = hcd_to_xhci(hcd);
-	struct xhci_interrupter *ir = xhci->interrupter;
+	struct xhci_interrupter *ir = xhci->interrupters[0];
 
 	mutex_lock(&xhci->mutex);
 
@@ -668,36 +668,51 @@ EXPORT_SYMBOL_GPL(xhci_shutdown);
 #ifdef CONFIG_PM
 static void xhci_save_registers(struct xhci_hcd *xhci)
 {
-	struct xhci_interrupter *ir = xhci->interrupter;
+	struct xhci_interrupter *ir;
+	unsigned int i;
 
 	xhci->s3.command = readl(&xhci->op_regs->command);
 	xhci->s3.dev_nt = readl(&xhci->op_regs->dev_notification);
 	xhci->s3.dcbaa_ptr = xhci_read_64(xhci, &xhci->op_regs->dcbaa_ptr);
 	xhci->s3.config_reg = readl(&xhci->op_regs->config_reg);
 
-	if (!ir)
-		return;
+	/* save both primary and all secondary interrupters */
+	/* fixme, shold we lock  to prevent race with remove secondary interrupter? */
+	for (i = 0; i < xhci->max_interrupters; i++) {
+		ir = xhci->interrupters[i];
+		if (!ir)
+			continue;
 
-	ir->s3_erst_size = readl(&ir->ir_set->erst_size);
-	ir->s3_erst_base = xhci_read_64(xhci, &ir->ir_set->erst_base);
-	ir->s3_erst_dequeue = xhci_read_64(xhci, &ir->ir_set->erst_dequeue);
-	ir->s3_irq_pending = readl(&ir->ir_set->irq_pending);
-	ir->s3_irq_control = readl(&ir->ir_set->irq_control);
+		ir->s3_erst_size = readl(&ir->ir_set->erst_size);
+		ir->s3_erst_base = xhci_read_64(xhci, &ir->ir_set->erst_base);
+		ir->s3_erst_dequeue = xhci_read_64(xhci, &ir->ir_set->erst_dequeue);
+		ir->s3_irq_pending = readl(&ir->ir_set->irq_pending);
+		ir->s3_irq_control = readl(&ir->ir_set->irq_control);
+	}
 }
 
 static void xhci_restore_registers(struct xhci_hcd *xhci)
 {
-	struct xhci_interrupter *ir = xhci->interrupter;
+	struct xhci_interrupter *ir;
+	unsigned int i;
 
 	writel(xhci->s3.command, &xhci->op_regs->command);
 	writel(xhci->s3.dev_nt, &xhci->op_regs->dev_notification);
 	xhci_write_64(xhci, xhci->s3.dcbaa_ptr, &xhci->op_regs->dcbaa_ptr);
 	writel(xhci->s3.config_reg, &xhci->op_regs->config_reg);
-	writel(ir->s3_erst_size, &ir->ir_set->erst_size);
-	xhci_write_64(xhci, ir->s3_erst_base, &ir->ir_set->erst_base);
-	xhci_write_64(xhci, ir->s3_erst_dequeue, &ir->ir_set->erst_dequeue);
-	writel(ir->s3_irq_pending, &ir->ir_set->irq_pending);
-	writel(ir->s3_irq_control, &ir->ir_set->irq_control);
+
+	/* FIXME should we lock to protect against freeing of interrupters */
+	for (i = 0; i < xhci->max_interrupters; i++) {
+		ir = xhci->interrupters[i];
+		if (!ir)
+			continue;
+
+		writel(ir->s3_erst_size, &ir->ir_set->erst_size);
+		xhci_write_64(xhci, ir->s3_erst_base, &ir->ir_set->erst_base);
+		xhci_write_64(xhci, ir->s3_erst_dequeue, &ir->ir_set->erst_dequeue);
+		writel(ir->s3_irq_pending, &ir->ir_set->irq_pending);
+		writel(ir->s3_irq_control, &ir->ir_set->irq_control);
+	}
 }
 
 static void xhci_set_cmd_ring_deq(struct xhci_hcd *xhci)
@@ -1059,7 +1074,7 @@ int xhci_resume(struct xhci_hcd *xhci, pm_message_t msg)
 		xhci_dbg(xhci, "// Disabling event ring interrupts\n");
 		temp = readl(&xhci->op_regs->status);
 		writel((temp & ~0x1fff) | STS_EINT, &xhci->op_regs->status);
-		xhci_disable_interrupter(xhci->interrupter);
+		xhci_disable_interrupter(xhci->interrupters[0]);
 
 		xhci_dbg(xhci, "cleaning up memory\n");
 		xhci_mem_cleanup(xhci);
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index 77016338bee1..3bbb9f018529 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -1772,7 +1772,7 @@ struct xhci_hcd {
 	struct reset_control *reset;
 	/* data structures */
 	struct xhci_device_context_array *dcbaa;
-	struct xhci_interrupter *interrupter;
+	struct xhci_interrupter **interrupters;
 	struct xhci_ring	*cmd_ring;
 	unsigned int            cmd_ring_state;
 #define CMD_RING_STATE_RUNNING         (1 << 0)
@@ -2088,6 +2088,9 @@ struct xhci_container_ctx *xhci_alloc_container_ctx(struct xhci_hcd *xhci,
 		int type, gfp_t flags);
 void xhci_free_container_ctx(struct xhci_hcd *xhci,
 		struct xhci_container_ctx *ctx);
+struct xhci_interrupter *xhci_create_secondary_interrupter(struct usb_hcd *hcd);
+void xhci_remove_secondary_interrupter(struct usb_hcd
+				       *hcd, struct xhci_interrupter *ir);
 
 /* xHCI host controller glue */
 typedef void (*xhci_get_quirks_t)(struct device *, struct xhci_hcd *);

