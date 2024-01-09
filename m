Return-Path: <devicetree+bounces-30737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 07ADB828D97
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 20:39:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 816FB1F25A2D
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 19:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B338E3D99A;
	Tue,  9 Jan 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="Tp3GARDz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD623D56E;
	Tue,  9 Jan 2024 19:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 409IbI9t001477;
	Tue, 9 Jan 2024 19:37:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:date:subject:mime-version:content-type
	:content-transfer-encoding:message-id:references:in-reply-to:to
	:cc; s=qcppdkim1; bh=PVavHXaSOmGFizSDr2TbfnB4vcPUF8zAyUPvn7d4XeM
	=; b=Tp3GARDzwIqil+y9XsjAyyrnArDlj4heQeEoNvOIJiv/Bd0nT9jcGgSNibX
	o0YVEJWNm1d/lk1MY/DF+/ZNA+Tusi8hf70rgWNnsAHac/vZanuQmMqIzhEERtJY
	gLlC74d6ghmc39H+K4XMi9rGdbDCNkkNq6aPwLZZJeCJa7763zZGGDM3EAOq/73s
	5KTk1fbyX5ymFpbSo519S36MQyAzArduWCGMjopb4dh2HySBiXFBQ2lcsa+AcP8f
	7oMMMYAWh2jX+lzuMjAnVoiQHTYNuvNEh/sfIAJ0PWdfPdU8lleujHPOAO5woTdt
	Z/s9xzTJW0yzecJFwooOL1/UCMw==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vh85t0pmr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jan 2024 19:37:55 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 409JbsRr011365
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 9 Jan 2024 19:37:54 GMT
Received: from hu-eberman-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Tue, 9 Jan 2024 11:37:53 -0800
From: Elliot Berman <quic_eberman@quicinc.com>
Date: Tue, 9 Jan 2024 11:37:45 -0800
Subject: [PATCH v16 07/34] gunyah: rsc_mgr: Add resource manager RPC core
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240109-gunyah-v16-7-634904bf4ce9@quicinc.com>
References: <20240109-gunyah-v16-0-634904bf4ce9@quicinc.com>
In-Reply-To: <20240109-gunyah-v16-0-634904bf4ce9@quicinc.com>
To: Alex Elder <elder@linaro.org>,
        Srinivas Kandagatla
	<srinivas.kandagatla@linaro.org>,
        Murali Nalajal <quic_mnalajal@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>,
        Srivatsa Vaddagiri
	<quic_svaddagi@quicinc.com>,
        Carl van Schaik <quic_cvanscha@quicinc.com>,
        Philip Derrin <quic_pderrin@quicinc.com>,
        Prakruthi Deepak Heragu
	<quic_pheragu@quicinc.com>,
        Jonathan Corbet <corbet@lwn.net>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "Fuad
 Tabba" <tabba@google.com>,
        Sean Christopherson <seanjc@google.com>,
        "Andrew
 Morton" <akpm@linux-foundation.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-mm@kvack.org>,
        Elliot Berman
	<quic_eberman@quicinc.com>
X-Mailer: b4 0.13-dev
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: cU8gJwoxE30MYItzgi1xt3CNb7AHA64h
X-Proofpoint-GUID: cU8gJwoxE30MYItzgi1xt3CNb7AHA64h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 mlxlogscore=999 clxscore=1015
 priorityscore=1501 adultscore=0 impostorscore=0 phishscore=0 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2401090158

The resource manager is a special virtual machine which is always
running on a Gunyah system. It provides APIs for creating and destroying
VMs, secure memory management, sharing/lending of memory between VMs,
and setup of inter-VM communication. Calls to the resource manager are
made via message queues.

This patch implements the basic probing and RPC mechanism to make those
API calls. Request/response calls can be made with gh_rm_call.
Drivers can also register to notifications pushed by RM via
gh_rm_register_notifier

Specific API calls that resource manager supports will be implemented in
subsequent patches.

Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
---
 drivers/virt/gunyah/Makefile  |   4 +-
 drivers/virt/gunyah/rsc_mgr.c | 724 ++++++++++++++++++++++++++++++++++++++++++
 drivers/virt/gunyah/rsc_mgr.h |  28 ++
 3 files changed, 755 insertions(+), 1 deletion(-)

diff --git a/drivers/virt/gunyah/Makefile b/drivers/virt/gunyah/Makefile
index 34f32110faf9..c2308389f551 100644
--- a/drivers/virt/gunyah/Makefile
+++ b/drivers/virt/gunyah/Makefile
@@ -1,3 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-$(CONFIG_GUNYAH) += gunyah.o
+gunyah_rsc_mgr-y += rsc_mgr.o
+
+obj-$(CONFIG_GUNYAH) += gunyah.o gunyah_rsc_mgr.o
diff --git a/drivers/virt/gunyah/rsc_mgr.c b/drivers/virt/gunyah/rsc_mgr.c
new file mode 100644
index 000000000000..a3578a0c10b4
--- /dev/null
+++ b/drivers/virt/gunyah/rsc_mgr.c
@@ -0,0 +1,724 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <linux/completion.h>
+#include <linux/gunyah.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/notifier.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+
+#include "rsc_mgr.h"
+
+/* clang-format off */
+#define RM_RPC_API_VERSION_MASK		GENMASK(3, 0)
+#define RM_RPC_HEADER_WORDS_MASK	GENMASK(7, 4)
+#define RM_RPC_API_VERSION		FIELD_PREP(RM_RPC_API_VERSION_MASK, 1)
+#define RM_RPC_HEADER_WORDS		FIELD_PREP(RM_RPC_HEADER_WORDS_MASK, \
+						(sizeof(struct gunyah_rm_rpc_hdr) / sizeof(u32)))
+#define RM_RPC_API			(RM_RPC_API_VERSION | RM_RPC_HEADER_WORDS)
+
+#define RM_RPC_TYPE_CONTINUATION	0x0
+#define RM_RPC_TYPE_REQUEST		0x1
+#define RM_RPC_TYPE_REPLY		0x2
+#define RM_RPC_TYPE_NOTIF		0x3
+#define RM_RPC_TYPE_MASK		GENMASK(1, 0)
+
+#define GUNYAH_RM_MAX_NUM_FRAGMENTS		62
+#define RM_RPC_FRAGMENTS_MASK		GENMASK(7, 2)
+/* clang-format on */
+
+struct gunyah_rm_rpc_hdr {
+	u8 api;
+	u8 type;
+	__le16 seq;
+	__le32 msg_id;
+} __packed;
+
+struct gunyah_rm_rpc_reply_hdr {
+	struct gunyah_rm_rpc_hdr hdr;
+	__le32 err_code; /* GUNYAH_RM_ERROR_* */
+} __packed;
+
+#define GUNYAH_RM_MSGQ_MSG_SIZE 240
+#define GUNYAH_RM_PAYLOAD_SIZE \
+	(GUNYAH_RM_MSGQ_MSG_SIZE - sizeof(struct gunyah_rm_rpc_hdr))
+
+/* RM Error codes */
+enum gunyah_rm_error {
+	/* clang-format off */
+	GUNYAH_RM_ERROR_OK			= 0x0,
+	GUNYAH_RM_ERROR_UNIMPLEMENTED		= 0xFFFFFFFF,
+	GUNYAH_RM_ERROR_NOMEM			= 0x1,
+	GUNYAH_RM_ERROR_NORESOURCE		= 0x2,
+	GUNYAH_RM_ERROR_DENIED			= 0x3,
+	GUNYAH_RM_ERROR_INVALID			= 0x4,
+	GUNYAH_RM_ERROR_BUSY			= 0x5,
+	GUNYAH_RM_ERROR_ARGUMENT_INVALID	= 0x6,
+	GUNYAH_RM_ERROR_HANDLE_INVALID		= 0x7,
+	GUNYAH_RM_ERROR_VALIDATE_FAILED		= 0x8,
+	GUNYAH_RM_ERROR_MAP_FAILED		= 0x9,
+	GUNYAH_RM_ERROR_MEM_INVALID		= 0xA,
+	GUNYAH_RM_ERROR_MEM_INUSE		= 0xB,
+	GUNYAH_RM_ERROR_MEM_RELEASED		= 0xC,
+	GUNYAH_RM_ERROR_VMID_INVALID		= 0xD,
+	GUNYAH_RM_ERROR_LOOKUP_FAILED		= 0xE,
+	GUNYAH_RM_ERROR_IRQ_INVALID		= 0xF,
+	GUNYAH_RM_ERROR_IRQ_INUSE		= 0x10,
+	GUNYAH_RM_ERROR_IRQ_RELEASED		= 0x11,
+	/* clang-format on */
+};
+
+/**
+ * struct gunyah_rm_message - Represents a complete message from resource manager
+ * @payload: Combined payload of all the fragments (msg headers stripped off).
+ * @size: Size of the payload received so far.
+ * @msg_id: Message ID from the header.
+ * @type: RM_RPC_TYPE_REPLY or RM_RPC_TYPE_NOTIF.
+ * @num_fragments: total number of fragments expected to be received.
+ * @fragments_received: fragments received so far.
+ * @reply: Fields used for request/reply sequences
+ */
+struct gunyah_rm_message {
+	void *payload;
+	size_t size;
+	u32 msg_id;
+	u8 type;
+
+	u8 num_fragments;
+	u8 fragments_received;
+
+	/**
+	 * @ret: Linux return code, there was an error processing message
+	 * @seq: Sequence ID for the main message.
+	 * @rm_error: For request/reply sequences with standard replies
+	 * @seq_done: Signals caller that the RM reply has been received
+	 */
+	struct {
+		int ret;
+		u16 seq;
+		enum gunyah_rm_error rm_error;
+		struct completion seq_done;
+	} reply;
+};
+
+/**
+ * struct gunyah_rm - private data for communicating w/Gunyah resource manager
+ * @dev: pointer to RM platform device
+ * @tx_ghrsc: message queue resource to TX to RM
+ * @rx_ghrsc: message queue resource to RX from RM
+ * @active_rx_message: ongoing gunyah_rm_message for which we're receiving fragments
+ * @call_xarray: xarray to allocate & lookup sequence IDs for Request/Response flows
+ * @next_seq: next ID to allocate (for xa_alloc_cyclic)
+ * @recv_msg: cached allocation for Rx messages
+ * @send_msg: cached allocation for Tx messages. Must hold @send_lock to manipulate.
+ * @send_lock: synchronization to allow only one request to be sent at a time
+ * @send_ready: completed when we know Tx message queue can take more messages
+ * @nh: notifier chain for clients interested in RM notification messages
+ */
+struct gunyah_rm {
+	struct device *dev;
+	struct gunyah_resource tx_ghrsc;
+	struct gunyah_resource rx_ghrsc;
+	struct gunyah_rm_message *active_rx_message;
+
+	struct xarray call_xarray;
+	u32 next_seq;
+
+	unsigned char recv_msg[GUNYAH_RM_MSGQ_MSG_SIZE];
+	unsigned char send_msg[GUNYAH_RM_MSGQ_MSG_SIZE];
+	struct mutex send_lock;
+	struct completion send_ready;
+	struct blocking_notifier_head nh;
+};
+
+/**
+ * gunyah_rm_error_remap() - Remap Gunyah resource manager errors into a Linux error code
+ * @rm_error: "Standard" return value from Gunyah resource manager
+ */
+static inline int gunyah_rm_error_remap(enum gunyah_rm_error rm_error)
+{
+	switch (rm_error) {
+	case GUNYAH_RM_ERROR_OK:
+		return 0;
+	case GUNYAH_RM_ERROR_UNIMPLEMENTED:
+		return -EOPNOTSUPP;
+	case GUNYAH_RM_ERROR_NOMEM:
+		return -ENOMEM;
+	case GUNYAH_RM_ERROR_NORESOURCE:
+		return -ENODEV;
+	case GUNYAH_RM_ERROR_DENIED:
+		return -EPERM;
+	case GUNYAH_RM_ERROR_BUSY:
+		return -EBUSY;
+	case GUNYAH_RM_ERROR_INVALID:
+	case GUNYAH_RM_ERROR_ARGUMENT_INVALID:
+	case GUNYAH_RM_ERROR_HANDLE_INVALID:
+	case GUNYAH_RM_ERROR_VALIDATE_FAILED:
+	case GUNYAH_RM_ERROR_MAP_FAILED:
+	case GUNYAH_RM_ERROR_MEM_INVALID:
+	case GUNYAH_RM_ERROR_MEM_INUSE:
+	case GUNYAH_RM_ERROR_MEM_RELEASED:
+	case GUNYAH_RM_ERROR_VMID_INVALID:
+	case GUNYAH_RM_ERROR_LOOKUP_FAILED:
+	case GUNYAH_RM_ERROR_IRQ_INVALID:
+	case GUNYAH_RM_ERROR_IRQ_INUSE:
+	case GUNYAH_RM_ERROR_IRQ_RELEASED:
+		return -EINVAL;
+	default:
+		return -EBADMSG;
+	}
+}
+
+static int gunyah_rm_init_message_payload(struct gunyah_rm_message *message,
+					  const void *msg, size_t hdr_size,
+					  size_t msg_size)
+{
+	const struct gunyah_rm_rpc_hdr *hdr = msg;
+	size_t max_buf_size, payload_size;
+
+	if (msg_size < hdr_size)
+		return -EINVAL;
+
+	payload_size = msg_size - hdr_size;
+
+	message->num_fragments = FIELD_GET(RM_RPC_FRAGMENTS_MASK, hdr->type);
+	message->fragments_received = 0;
+
+	/* There's not going to be any payload, no need to allocate buffer. */
+	if (!payload_size && !message->num_fragments)
+		return 0;
+
+	if (message->num_fragments > GUNYAH_RM_MAX_NUM_FRAGMENTS)
+		return -EINVAL;
+
+	max_buf_size = payload_size +
+		       (message->num_fragments * GUNYAH_RM_PAYLOAD_SIZE);
+
+	message->payload = kzalloc(max_buf_size, GFP_KERNEL);
+	if (!message->payload)
+		return -ENOMEM;
+
+	memcpy(message->payload, msg + hdr_size, payload_size);
+	message->size = payload_size;
+	return 0;
+}
+
+static void gunyah_rm_abort_message(struct gunyah_rm *rm)
+{
+	switch (rm->active_rx_message->type) {
+	case RM_RPC_TYPE_REPLY:
+		rm->active_rx_message->reply.ret = -EIO;
+		complete(&rm->active_rx_message->reply.seq_done);
+		break;
+	case RM_RPC_TYPE_NOTIF:
+		fallthrough;
+	default:
+		kfree(rm->active_rx_message->payload);
+		kfree(rm->active_rx_message);
+	}
+
+	rm->active_rx_message = NULL;
+}
+
+static inline void gunyah_rm_try_complete_message(struct gunyah_rm *rm)
+{
+	struct gunyah_rm_message *message = rm->active_rx_message;
+
+	if (!message || message->fragments_received != message->num_fragments)
+		return;
+
+	switch (message->type) {
+	case RM_RPC_TYPE_REPLY:
+		complete(&message->reply.seq_done);
+		break;
+	case RM_RPC_TYPE_NOTIF:
+		blocking_notifier_call_chain(&rm->nh, message->msg_id,
+					     message->payload);
+
+		kfree(message->payload);
+		kfree(message);
+		break;
+	default:
+		dev_err_ratelimited(rm->dev,
+				    "Invalid message type (%u) received\n",
+				    message->type);
+		gunyah_rm_abort_message(rm);
+		break;
+	}
+
+	rm->active_rx_message = NULL;
+}
+
+static void gunyah_rm_process_notif(struct gunyah_rm *rm, const void *msg,
+				    size_t msg_size)
+{
+	const struct gunyah_rm_rpc_hdr *hdr = msg;
+	struct gunyah_rm_message *message;
+	int ret;
+
+	if (rm->active_rx_message) {
+		dev_err(rm->dev,
+			"Unexpected new notification, still processing an active message");
+		gunyah_rm_abort_message(rm);
+	}
+
+	message = kzalloc(sizeof(*message), GFP_KERNEL);
+	if (!message)
+		return;
+
+	message->type = RM_RPC_TYPE_NOTIF;
+	message->msg_id = le32_to_cpu(hdr->msg_id);
+
+	ret = gunyah_rm_init_message_payload(message, msg, sizeof(*hdr),
+					     msg_size);
+	if (ret) {
+		dev_err(rm->dev,
+			"Failed to initialize message for notification: %d\n",
+			ret);
+		kfree(message);
+		return;
+	}
+
+	rm->active_rx_message = message;
+
+	gunyah_rm_try_complete_message(rm);
+}
+
+static void gunyah_rm_process_reply(struct gunyah_rm *rm, const void *msg,
+				    size_t msg_size)
+{
+	const struct gunyah_rm_rpc_reply_hdr *reply_hdr = msg;
+	struct gunyah_rm_message *message;
+	u16 seq_id;
+
+	seq_id = le16_to_cpu(reply_hdr->hdr.seq);
+	message = xa_load(&rm->call_xarray, seq_id);
+
+	if (!message || message->msg_id != le32_to_cpu(reply_hdr->hdr.msg_id))
+		return;
+
+	if (rm->active_rx_message) {
+		dev_err(rm->dev,
+			"Unexpected new reply, still processing an active message");
+		gunyah_rm_abort_message(rm);
+	}
+
+	if (gunyah_rm_init_message_payload(message, msg, sizeof(*reply_hdr),
+					   msg_size)) {
+		dev_err(rm->dev,
+			"Failed to alloc message buffer for sequence %d\n",
+			seq_id);
+		/* Send message complete and error the client. */
+		message->reply.ret = -ENOMEM;
+		complete(&message->reply.seq_done);
+		return;
+	}
+
+	message->reply.rm_error = le32_to_cpu(reply_hdr->err_code);
+	rm->active_rx_message = message;
+
+	gunyah_rm_try_complete_message(rm);
+}
+
+static void gunyah_rm_process_cont(struct gunyah_rm *rm,
+				   struct gunyah_rm_message *message,
+				   const void *msg, size_t msg_size)
+{
+	const struct gunyah_rm_rpc_hdr *hdr = msg;
+	size_t payload_size = msg_size - sizeof(*hdr);
+
+	if (!rm->active_rx_message)
+		return;
+
+	/*
+	 * hdr->fragments and hdr->msg_id preserves the value from first reply
+	 * or notif message. To detect mishandling, check it's still intact.
+	 */
+	if (message->msg_id != le32_to_cpu(hdr->msg_id) ||
+	    message->num_fragments !=
+		    FIELD_GET(RM_RPC_FRAGMENTS_MASK, hdr->type)) {
+		gunyah_rm_abort_message(rm);
+		return;
+	}
+
+	memcpy(message->payload + message->size, msg + sizeof(*hdr),
+	       payload_size);
+	message->size += payload_size;
+	message->fragments_received++;
+
+	gunyah_rm_try_complete_message(rm);
+}
+
+static irqreturn_t gunyah_rm_rx(int irq, void *data)
+{
+	enum gunyah_error gunyah_error;
+	struct gunyah_rm_rpc_hdr *hdr;
+	struct gunyah_rm *rm = data;
+	void *msg = &rm->recv_msg[0];
+	size_t len;
+	bool ready;
+
+	do {
+		gunyah_error = gunyah_hypercall_msgq_recv(rm->rx_ghrsc.capid,
+							  msg,
+							  sizeof(rm->recv_msg),
+							  &len, &ready);
+		if (gunyah_error != GUNYAH_ERROR_OK) {
+			if (gunyah_error != GUNYAH_ERROR_MSGQUEUE_EMPTY)
+				dev_warn(rm->dev,
+					 "Failed to receive data: %d\n",
+					 gunyah_error);
+			return IRQ_HANDLED;
+		}
+
+		if (len < sizeof(*hdr)) {
+			dev_err_ratelimited(
+				rm->dev,
+				"Too small message received. size=%ld\n", len);
+			continue;
+		}
+
+		hdr = msg;
+		if (hdr->api != RM_RPC_API) {
+			dev_err(rm->dev, "Unknown RM RPC API version: %x\n",
+				hdr->api);
+			return IRQ_HANDLED;
+		}
+
+		switch (FIELD_GET(RM_RPC_TYPE_MASK, hdr->type)) {
+		case RM_RPC_TYPE_NOTIF:
+			gunyah_rm_process_notif(rm, msg, len);
+			break;
+		case RM_RPC_TYPE_REPLY:
+			gunyah_rm_process_reply(rm, msg, len);
+			break;
+		case RM_RPC_TYPE_CONTINUATION:
+			gunyah_rm_process_cont(rm, rm->active_rx_message, msg,
+					       len);
+			break;
+		default:
+			dev_err(rm->dev,
+				"Invalid message type (%lu) received\n",
+				FIELD_GET(RM_RPC_TYPE_MASK, hdr->type));
+			return IRQ_HANDLED;
+		}
+	} while (ready);
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t gunyah_rm_tx(int irq, void *data)
+{
+	struct gunyah_rm *rm = data;
+
+	complete_all(&rm->send_ready);
+
+	return IRQ_HANDLED;
+}
+
+static int gunyah_rm_msgq_send(struct gunyah_rm *rm, size_t size, bool push)
+	__must_hold(&rm->send_lock)
+{
+	const u64 tx_flags = push ? GUNYAH_HYPERCALL_MSGQ_TX_FLAGS_PUSH : 0;
+	enum gunyah_error gunyah_error;
+	void *data = &rm->send_msg[0];
+	bool ready;
+
+again:
+	wait_for_completion(&rm->send_ready);
+	/* reinit completion before hypercall. As soon as hypercall returns, we could get the
+	 * ready interrupt. This might be before we have time to reinit the completion
+	 */
+	reinit_completion(&rm->send_ready);
+	gunyah_error = gunyah_hypercall_msgq_send(rm->tx_ghrsc.capid, size,
+						  data, tx_flags, &ready);
+
+	/* Should never happen because Linux properly tracks the ready-state of the msgq */
+	if (WARN_ON(gunyah_error == GUNYAH_ERROR_MSGQUEUE_FULL))
+		goto again;
+
+	if (ready)
+		complete_all(&rm->send_ready);
+
+	return gunyah_error_remap(gunyah_error);
+}
+
+static int gunyah_rm_send_request(struct gunyah_rm *rm, u32 message_id,
+				  const void *req_buf, size_t req_buf_size,
+				  struct gunyah_rm_message *message)
+{
+	size_t buf_size_remaining = req_buf_size;
+	const void *req_buf_curr = req_buf;
+	struct gunyah_rm_rpc_hdr *hdr =
+		(struct gunyah_rm_rpc_hdr *)&rm->send_msg[0];
+	struct gunyah_rm_rpc_hdr hdr_template;
+	void *payload = hdr + 1;
+	u32 cont_fragments = 0;
+	size_t payload_size;
+	bool push;
+	int ret;
+
+	if (req_buf_size >
+	    GUNYAH_RM_MAX_NUM_FRAGMENTS * GUNYAH_RM_PAYLOAD_SIZE) {
+		dev_warn(
+			rm->dev,
+			"Limit (%lu bytes) exceeded for the maximum message size: %lu\n",
+			GUNYAH_RM_MAX_NUM_FRAGMENTS * GUNYAH_RM_PAYLOAD_SIZE,
+			req_buf_size);
+		dump_stack();
+		return -E2BIG;
+	}
+
+	if (req_buf_size)
+		cont_fragments = (req_buf_size - 1) / GUNYAH_RM_PAYLOAD_SIZE;
+
+	hdr_template.api = RM_RPC_API;
+	hdr_template.type = FIELD_PREP(RM_RPC_TYPE_MASK, RM_RPC_TYPE_REQUEST) |
+			    FIELD_PREP(RM_RPC_FRAGMENTS_MASK, cont_fragments);
+	hdr_template.seq = cpu_to_le16(message->reply.seq);
+	hdr_template.msg_id = cpu_to_le32(message_id);
+
+	ret = mutex_lock_interruptible(&rm->send_lock);
+	if (ret)
+		return ret;
+
+	do {
+		*hdr = hdr_template;
+
+		/* Copy payload */
+		payload_size = min(buf_size_remaining, GUNYAH_RM_PAYLOAD_SIZE);
+		memcpy(payload, req_buf_curr, payload_size);
+		req_buf_curr += payload_size;
+		buf_size_remaining -= payload_size;
+
+		/* Only the last message should have push flag set */
+		push = !buf_size_remaining;
+		ret = gunyah_rm_msgq_send(rm, sizeof(*hdr) + payload_size,
+					  push);
+		if (ret)
+			break;
+
+		hdr_template.type =
+			FIELD_PREP(RM_RPC_TYPE_MASK, RM_RPC_TYPE_CONTINUATION) |
+			FIELD_PREP(RM_RPC_FRAGMENTS_MASK, cont_fragments);
+	} while (buf_size_remaining);
+
+	mutex_unlock(&rm->send_lock);
+	return ret;
+}
+
+/**
+ * gunyah_rm_call: Achieve request-response type communication with RPC
+ * @rm: Pointer to Gunyah resource manager internal data
+ * @message_id: The RM RPC message-id
+ * @req_buf: Request buffer that contains the payload
+ * @req_buf_size: Total size of the payload
+ * @resp_buf: Pointer to a response buffer
+ * @resp_buf_size: Size of the response buffer
+ *
+ * Make a request to the Resource Manager and wait for reply back. For a successful
+ * response, the function returns the payload. The size of the payload is set in
+ * resp_buf_size. The resp_buf must be freed by the caller when 0 is returned
+ * and resp_buf_size != 0.
+ *
+ * req_buf should be not NULL for req_buf_size >0. If req_buf_size == 0,
+ * req_buf *can* be NULL and no additional payload is sent.
+ *
+ * Context: Process context. Will sleep waiting for reply.
+ * Return: 0 on success. <0 if error.
+ */
+int gunyah_rm_call(struct gunyah_rm *rm, u32 message_id, const void *req_buf,
+		   size_t req_buf_size, void **resp_buf, size_t *resp_buf_size)
+{
+	struct gunyah_rm_message message = { 0 };
+	u32 seq_id;
+	int ret;
+
+	/* message_id 0 is reserved. req_buf_size implies req_buf is not NULL */
+	if (!rm || !message_id || (!req_buf && req_buf_size))
+		return -EINVAL;
+
+	message.type = RM_RPC_TYPE_REPLY;
+	message.msg_id = message_id;
+
+	message.reply.seq_done =
+		COMPLETION_INITIALIZER_ONSTACK(message.reply.seq_done);
+
+	/* Allocate a new seq number for this message */
+	ret = xa_alloc_cyclic(&rm->call_xarray, &seq_id, &message, xa_limit_16b,
+			      &rm->next_seq, GFP_KERNEL);
+	if (ret < 0)
+		return ret;
+	message.reply.seq = lower_16_bits(seq_id);
+
+	/* Send the request to the Resource Manager */
+	ret = gunyah_rm_send_request(rm, message_id, req_buf, req_buf_size,
+				     &message);
+	if (ret < 0) {
+		dev_warn(rm->dev, "Failed to send request. Error: %d\n", ret);
+		goto out;
+	}
+
+	/*
+	 * Wait for response. Uninterruptible because rollback based on what RM did to VM
+	 * requires us to know how RM handled the call.
+	 */
+	wait_for_completion(&message.reply.seq_done);
+
+	/* Check for internal (kernel) error waiting for the response */
+	if (message.reply.ret) {
+		ret = message.reply.ret;
+		if (ret != -ENOMEM)
+			kfree(message.payload);
+		goto out;
+	}
+
+	/* Got a response, did resource manager give us an error? */
+	if (message.reply.rm_error != GUNYAH_RM_ERROR_OK) {
+		dev_warn(rm->dev, "RM rejected message %08x. Error: %d\n",
+			 message_id, message.reply.rm_error);
+		ret = gunyah_rm_error_remap(message.reply.rm_error);
+		kfree(message.payload);
+		goto out;
+	}
+
+	/* Everything looks good, return the payload */
+	if (resp_buf_size)
+		*resp_buf_size = message.size;
+
+	if (message.size && resp_buf) {
+		*resp_buf = message.payload;
+	} else {
+		/* kfree in case RM sent us multiple fragments but never any data in
+		 * those fragments. We would've allocated memory for it, but message.size == 0
+		 */
+		kfree(message.payload);
+	}
+
+out:
+	xa_erase(&rm->call_xarray, message.reply.seq);
+	return ret;
+}
+
+int gunyah_rm_notifier_register(struct gunyah_rm *rm, struct notifier_block *nb)
+{
+	return blocking_notifier_chain_register(&rm->nh, nb);
+}
+EXPORT_SYMBOL_GPL(gunyah_rm_notifier_register);
+
+int gunyah_rm_notifier_unregister(struct gunyah_rm *rm,
+				  struct notifier_block *nb)
+{
+	return blocking_notifier_chain_unregister(&rm->nh, nb);
+}
+EXPORT_SYMBOL_GPL(gunyah_rm_notifier_unregister);
+
+static int gunyah_platform_probe_capability(struct platform_device *pdev,
+					    int idx,
+					    struct gunyah_resource *ghrsc)
+{
+	int ret;
+
+	ghrsc->irq = platform_get_irq(pdev, idx);
+	if (ghrsc->irq < 0) {
+		dev_err(&pdev->dev, "Failed to get %s irq: %d\n",
+			idx ? "rx" : "tx", ghrsc->irq);
+		return ghrsc->irq;
+	}
+
+	ret = of_property_read_u64_index(pdev->dev.of_node, "reg", idx,
+					 &ghrsc->capid);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to get %s capid: %d\n",
+			idx ? "rx" : "tx", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int gunyah_rm_probe_tx_msgq(struct gunyah_rm *rm,
+				   struct platform_device *pdev)
+{
+	int ret;
+
+	rm->tx_ghrsc.type = GUNYAH_RESOURCE_TYPE_MSGQ_TX;
+	ret = gunyah_platform_probe_capability(pdev, 0, &rm->tx_ghrsc);
+	if (ret)
+		return ret;
+
+	enable_irq_wake(rm->tx_ghrsc.irq);
+
+	return devm_request_threaded_irq(rm->dev, rm->tx_ghrsc.irq, NULL,
+					 gunyah_rm_tx, IRQF_ONESHOT,
+					 "gunyah_rm_tx", rm);
+}
+
+static int gunyah_rm_probe_rx_msgq(struct gunyah_rm *rm,
+				   struct platform_device *pdev)
+{
+	int ret;
+
+	rm->rx_ghrsc.type = GUNYAH_RESOURCE_TYPE_MSGQ_RX;
+	ret = gunyah_platform_probe_capability(pdev, 1, &rm->rx_ghrsc);
+	if (ret)
+		return ret;
+
+	enable_irq_wake(rm->rx_ghrsc.irq);
+
+	return devm_request_threaded_irq(rm->dev, rm->rx_ghrsc.irq, NULL,
+					 gunyah_rm_rx, IRQF_ONESHOT,
+					 "gunyah_rm_rx", rm);
+}
+
+static int gunyah_rm_probe(struct platform_device *pdev)
+{
+	struct gunyah_rm *rm;
+	int ret;
+
+	rm = devm_kzalloc(&pdev->dev, sizeof(*rm), GFP_KERNEL);
+	if (!rm)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, rm);
+	rm->dev = &pdev->dev;
+
+	mutex_init(&rm->send_lock);
+	init_completion(&rm->send_ready);
+	BLOCKING_INIT_NOTIFIER_HEAD(&rm->nh);
+	xa_init_flags(&rm->call_xarray, XA_FLAGS_ALLOC);
+
+	ret = gunyah_rm_probe_tx_msgq(rm, pdev);
+	if (ret)
+		return ret;
+	/* assume RM is ready to receive messages from us */
+	complete_all(&rm->send_ready);
+
+	ret = gunyah_rm_probe_rx_msgq(rm, pdev);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static const struct of_device_id gunyah_rm_of_match[] = {
+	{ .compatible = "gunyah-resource-manager" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, gunyah_rm_of_match);
+
+static struct platform_driver gunyah_rm_driver = {
+	.probe = gunyah_rm_probe,
+	.driver = {
+		.name = "gunyah_rsc_mgr",
+		.of_match_table = gunyah_rm_of_match,
+	},
+};
+module_platform_driver(gunyah_rm_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Gunyah Resource Manager Driver");
diff --git a/drivers/virt/gunyah/rsc_mgr.h b/drivers/virt/gunyah/rsc_mgr.h
new file mode 100644
index 000000000000..21318ef25040
--- /dev/null
+++ b/drivers/virt/gunyah/rsc_mgr.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2022-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+#ifndef __GUNYAH_RSC_MGR_PRIV_H
+#define __GUNYAH_RSC_MGR_PRIV_H
+
+#include <linux/gunyah.h>
+#include <linux/notifier.h>
+#include <linux/types.h>
+
+#define GUNYAH_VMID_INVAL U16_MAX
+
+struct gunyah_rm;
+
+int gunyah_rm_notifier_register(struct gunyah_rm *rm,
+				struct notifier_block *nb);
+int gunyah_rm_notifier_unregister(struct gunyah_rm *rm,
+				  struct notifier_block *nb);
+struct device *gunyah_rm_get(struct gunyah_rm *rm);
+void gunyah_rm_put(struct gunyah_rm *rm);
+
+
+int gunyah_rm_call(struct gunyah_rm *rsc_mgr, u32 message_id,
+		   const void *req_buf, size_t req_buf_size, void **resp_buf,
+		   size_t *resp_buf_size);
+
+#endif

-- 
2.34.1


