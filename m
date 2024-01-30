Return-Path: <devicetree+bounces-36570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5C7841D99
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 09:23:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E1758B28303
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 08:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4F2457861;
	Tue, 30 Jan 2024 08:18:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu1.qq.com (smtpbgeu1.qq.com [52.59.177.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666BF54BC5;
	Tue, 30 Jan 2024 08:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.59.177.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706602722; cv=none; b=YAtEFrM5/WaFzSqFDfPJQUcLt2/4c2IxekkPpAP34IwYgonYEpdxEwYcoE/YBAZScZFRrtl3Jlu6DIv0GZtkOhd76z9NN4BgGy8U5Ovb2/iu1B6geb6Fya1ZcKMQ4ORmLSaN7rwZyVzXLBleh/lWh7m5r190c+oZPwAYBXFqVCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706602722; c=relaxed/simple;
	bh=KZe/6WD01XXLSazPwZFr2egu3u5H4CfiL5zZA5ed1Eg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=lx6Ez4i54wjK9WLMsg3sngYEHdJAQeAqOac4KcxoZzYerXxq7bLSQsV3ugQrvBQwdYeoxC0pXa9UMnKPAzKn45mb0uZzqpGyIVx86Pf4l5qHypBhmO+R3wgBHYSwxTo4SJ/PAWCdU3SJ3mqZLtkTNS1JdcX1QrPlRQ8V1FcVC1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=shingroup.cn; spf=pass smtp.mailfrom=shingroup.cn; arc=none smtp.client-ip=52.59.177.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=shingroup.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shingroup.cn
X-QQ-mid: bizesmtp79t1706602681twu0inkf
X-QQ-Originating-IP: js9u+Lq45UP5vjPTVjvpHrZx3C851DMEL7IShFCFb4U=
Received: from HX01040022.powercore.com.cn ( [223.112.234.130])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 30 Jan 2024 16:17:58 +0800 (CST)
X-QQ-SSF: 01400000000000B0B000000A0000000
X-QQ-FEAT: W+onFc5Tw4NHxqYXnGfVPfCZ1fVEIOTcxUrby5IMKV5Dp0OJZP2Qtzxlo+Vee
	1h6ztQFAHV4fn5HHrCDXjUEtoiD2zMmFwlYtw38AiIBHduTQ/uPbPGUoSIiZFitdSNNVXp/
	idF9QGE1UUa78oD+VlZXfWIqEr6SaFiNisErU64ZGgvFrcJgxm3TM3qu2YYYtXqsbEfa6dO
	WSnDibTjDSQPztip13dS0vqZ3Q26WDuJT/ljg8SAV4KHIUNu/xOl1eoKIjxU1THqUtFGFI8
	zZ3Z5xD1J3ShfLd7WlobFh6LqPOPPe+lH9lU61kf7Bi0QjCViSzahHTGWgLdiZfsCXxxEJw
	zCyxFzb4BkDfutiPMxVt/gFgxxdmsmAZQmxf1N98rXlJvkQ7efTw+a2w6+46mq+Vad+RCs0
	RL219r4KgrY=
X-QQ-GoodBg: 2
X-BIZMAIL-ID: 10784736145937099413
From: "JiaLong.Yang" <jialong.yang@shingroup.cn>
To: Jialong Yang <jialong.yang@shingroup.cn>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: shenghui.qu@shingroup.cn,
	ke.zhao@shingroup.cn,
	zhijie.ren@shingroup.cn,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] perf/hx_arm_ni: Support uncore ARM NI-700 PMU
Date: Tue, 30 Jan 2024 16:17:43 +0800
Message-Id: <20240130081745.13750-1-jialong.yang@shingroup.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:shingroup.cn:qybglogicsvrgz:qybglogicsvrgz6a-1

This code is based on uncore PMUs arm_smmuv3_pmu and arm-cmn.
One ni-700 can have many clock domains. Each of them has only one PMU.
Here one PMU corresponds to one 'struct ni_pmu' instance.
PMU name will be ni_pmu_N_M, which N means different NI-700s and M means
different PMU in one NI-700. If only one NI-700 found in NI-700, name will
be ni_pmu_N.
Node interface event name will be xxni_N_eventname, such as asni_0_rdreq_any.
There are many kinds of type of nodes in one clock domain. Also means that
there are many kinds of that in one PMU. So we distinguish them by xxni string.
Besides, maybe there are many nodes have same type. So we have number N in
event name.
By ni_pmu_0_0/asni_0_rdreq_any/, we can pinpoint accurate bus traffic.
Example1: perf stat -a -e ni_pmu_0_0/asni_0_rdreq_any/,ni_pmu_0_0/cycles/
EXample2: perf stat -a -e ni_pmu_0_0/asni,id=0,event=0x0/

Signed-off-by: JiaLong.Yang <jialong.yang@shingroup.cn>
---
If I should send Doc*/bindings/perf/*.yaml seperately?

 .../bindings/perf/hx,c2000-arm-ni.yaml        |   58 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    6 +
 drivers/perf/Kconfig                          |   10 +
 drivers/perf/Makefile                         |    1 +
 drivers/perf/hx_arm_ni.c                      | 1308 +++++++++++++++++
 6 files changed, 1385 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/hx,c2000-arm-ni.yaml
 create mode 100644 drivers/perf/hx_arm_ni.c

diff --git a/Documentation/devicetree/bindings/perf/hx,c2000-arm-ni.yaml b/Documentation/devicetree/bindings/perf/hx,c2000-arm-ni.yaml
new file mode 100644
index 000000000000..1b145ecbfa83
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/hx,c2000-arm-ni.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/hx,c2000-arm-ni.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HX-C2000 NI (Network-on_chip Interconnect) Performance Monitors
+
+maintainers:
+  - Jialong Yang <jialong.yang@shingroup.cn>
+
+properties:
+  compatible:
+    enum:
+      - hx,c2000-arm-ni
+
+  reg:
+    items:
+      - description: Physical address of the base (PERIPHBASE) and
+          size of the whole NI configuration address space.
+
+  interrupts:
+    minItems: 1
+    items:
+      - description: Overflow interrupt for clock domain 0
+      - description: Overflow interrupt for clock domain 1
+      - description: Overflow interrupt for clock domain 2
+    description: Generally, one interrupt line for one PMU. But this also
+      support one interrupt line for a NI if merged.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: hx,c2000-arm-ni
+then:
+  required:
+    - pccs-id
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    ni-pmu@23ff0000 {
+            compatible = "hx,c2000-arm-ni";
+	    #address-cells = <1>;
+	    #size-cells = <1>;
+            reg = <0x2b420000 0x10000>;
+            interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+    };
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 1a0dc04f1db4..f6b4103ef436 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -617,6 +617,8 @@ patternProperties:
     description: Shenzhen Hugsun Technology Co. Ltd.
   "^hwacom,.*":
     description: HwaCom Systems Inc.
+  "^hx,.*":
+    description: HEXIN Technologies Co., Ltd.
   "^hxt,.*":
     description: HXT Semiconductor
   "^hycon,.*":
diff --git a/MAINTAINERS b/MAINTAINERS
index 8999497011a2..101974780710 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18866,6 +18866,12 @@ L:	linux-riscv@lists.infradead.org
 S:	Maintained
 F:	arch/riscv/boot/dts/thead/
 
+HX ARM-NI-700 PMU DRIVERS
+M:	Jialong Yang <jialong.yang@shingroup.cn>
+S:	Supported
+F:	Documentation/devicetree/bindings/perf/hx,c2000-arm-ni.yaml
+F:	drivers/perf/hx_arm_ni.c
+
 RNBD BLOCK DRIVERS
 M:	Md. Haris Iqbal <haris.iqbal@ionos.com>
 M:	Jack Wang <jinpu.wang@ionos.com>
diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
index ec6e0d9194a1..e15cae44dba9 100644
--- a/drivers/perf/Kconfig
+++ b/drivers/perf/Kconfig
@@ -241,4 +241,14 @@ config CXL_PMU
 
 	  If unsure say 'm'.
 
+config HX_ARM_NI_PMU
+       tristate "HX ARM NI-700 PMU"
+       depends on PPC_HX_C2000
+       default y
+       help
+	 Support for NI-700 PMUs, which provide monitoring of transactions passing
+	 through between CMN and other periapherals.
+
+source "drivers/perf/hisilicon/Kconfig"
+
 endmenu
diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
index a06338e3401c..ec8b9c08577d 100644
--- a/drivers/perf/Makefile
+++ b/drivers/perf/Makefile
@@ -27,3 +27,4 @@ obj-$(CONFIG_DWC_PCIE_PMU) += dwc_pcie_pmu.o
 obj-$(CONFIG_ARM_CORESIGHT_PMU_ARCH_SYSTEM_PMU) += arm_cspmu/
 obj-$(CONFIG_MESON_DDR_PMU) += amlogic/
 obj-$(CONFIG_CXL_PMU) += cxl_pmu.o
+obj-$(CONFIG_HX_ARM_NI_PMU) += hx_arm_ni.o
diff --git a/drivers/perf/hx_arm_ni.c b/drivers/perf/hx_arm_ni.c
new file mode 100644
index 000000000000..78f1637ef782
--- /dev/null
+++ b/drivers/perf/hx_arm_ni.c
@@ -0,0 +1,1308 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * HX ARM-NI-700 uncore PMU support
+ *
+ * This code is based on uncore PMUs arm_smmuv3_pmu and arm-cmn.
+ *
+ * One ni-700 can have many clock domains. Each of them has only one PMU.
+ * Here one PMU corresponds to one 'struct ni_pmu' instance.
+ *
+ * PMU name will be ni_pmu_N_M, which N means different NI-700s and M means
+ * different PMU in one NI-700. If only one NI-700 found in NI-700, name will
+ * be ni_pmu_N.
+ *
+ * Node interface event name will be xxni_N_eventname, such as asni_0_rdreq_any.
+ * There are many kinds of type of nodes in one clock domain. Also means that
+ * there are many kinds of that in one PMU. So we distinguish them by xxni string.
+ * Besides, maybe there are many nodes have same type. So we have number N in
+ * event name.
+ * By ni_pmu_0_0/asni_0_rdreq_any/, we can pinpoint accurate bus traffic.
+ *
+ * Example1: perf stat -a -e ni_pmu_0_0/asni_0_rdreq_any/,ni_pmu_0_0/cycles/
+ * Example2: perf stat -a -e ni_pmu_0_0/asni,id=0,event=0x0/
+ *
+ * TODO: Secure or non-secure attribute in all event omitted now.
+ *
+ */
+
+#define pr_fmt(fmt) "ni-700 pmu: " fmt
+
+#include <linux/bitfield.h>
+#include <linux/bitops.h>
+#include <linux/cpuhotplug.h>
+#include <linux/cpumask.h>
+#include <linux/device.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
+#include <linux/kernel.h>
+#include <linux/msi.h>
+#include <linux/of.h>
+#include <linux/perf_event.h>
+#include <linux/platform_device.h>
+#include <linux/smp.h>
+#include <linux/sysfs.h>
+#include <linux/types.h>
+#include <linux/build_bug.h>
+
+/* number of counters in one ni pmu */
+#define NI_PMU_COUNTER_NUM 8
+
+/* node type values */
+enum ni_node_type {
+	NI_BASE = 0x0,
+	NI_VD,
+	NI_PD,
+	NI_CD,
+	NI_ASNI = 0x4,
+	NI_AMNI,
+	NI_PMU,
+	NI_HSNI,
+	NI_HMNI,
+	NI_PMNI = 0x9,
+};
+
+/* event format */
+/**
+ * config:
+ * 0-5    31      32-47      48-63
+ * event  cycles  node_type  node_id
+ *
+ */
+#define NI_EVENT_FORMAT_EVENT    GENMASK_ULL(5, 0)
+#define NI_EVENT_FORMAT_CYCLES   (1ULL << 31)
+#define NI_EVENT_FORMAT_NODETYPE GENMASK_ULL(32 + NI_PMNI, 32)
+#define NI_EVENT_FORMAT_ASNI     BIT(32 + NI_ASNI)
+#define NI_EVENT_FORMAT_AMNI     BIT(32 + NI_AMNI)
+#define NI_EVENT_FORMAT_HSNI     BIT(32 + NI_HSNI)
+#define NI_EVENT_FORMAT_HMNI     BIT(32 + NI_HMNI)
+#define NI_EVENT_FORMAT_PMNI     BIT(32 + NI_PMNI)
+#define NI_EVENT_FORMAT_NODEID   GENMASK_ULL(63, 48)
+
+#define NI_EVENT_FORMAT_NODE_TYPE GENMASK_ULL(63, 32)
+
+#define ni_event_config_eventid(_config)   FIELD_GET(NI_EVENT_FORMAT_EVENT,       _config)
+#define ni_event_config_cc(_config)        FIELD_GET(NI_EVENT_FORMAT_CYCLES,      _config)
+#define _ni_event_config_nodetype(_config) FIELD_GET(NI_EVENT_FORMAT_NODETYPE,    _config)
+#define ni_event_config_nodeid(_config)    FIELD_GET(NI_EVENT_FORMAT_NODEID,      _config)
+
+#define NI_NODE_TYPE_MASK GENMASK(15, 0)
+#define NI_NODE_ID_MASK   GENMASK(31, 16)
+
+#define NI_PMU_PMCR_RST_CYC_CNTR BIT(2)
+#define NI_PMU_PMCR_RST_EV_CNTR  BIT(1)
+#define NI_PMU_PMCR_ENABLE       BIT(0)
+
+static const char *const ni_node_name[] = {
+	[NI_ASNI] = "asni",
+	[NI_AMNI] = "amni",
+	[NI_PMU]  = "pmu",
+	[NI_HSNI] = "hsni",
+	[NI_HMNI] = "hmni",
+	[NI_PMNI] = "pmni",
+};
+
+/* one instance for one node */
+struct ni_node {
+	void __iomem *base;
+	union {
+		struct {
+			u32 type:16;
+			u32 id:16;
+		};
+		u32 node_type;
+	};
+};
+
+/* xxx_reg_map only used to provide offset by using offsetof(). */
+struct ni_node_reg_map {
+	union {
+		struct {
+			u32 type:16;
+			u32 id:16;
+		};
+		u32 node_type;
+	};
+
+	union {
+		u32 child_num;
+		u32 node_info;
+	};
+
+	union {
+		struct {
+			u32 secr_acc;
+			u32 pmusela;
+			u32 pmuselb;
+		};
+		DECLARE_FLEX_ARRAY(u32, child_offset);
+	};
+};
+
+#define ni_node_offsetof(member)			\
+	offsetof(struct ni_node_reg_map, member)
+
+#define ni_node_pmuevsel(node, config)					\
+	do {								\
+		writel(config,       node->base + ni_node_offsetof(pmusela)); \
+		writel(config >> 32, node->base + ni_node_offsetof(pmuselb)); \
+	} while (0)
+
+#define ni_node_read(base, member, readx)			\
+	readx((void __iomem *)base + ni_node_offsetof(member))
+
+#define ni_node_type(base)						\
+	FIELD_GET(NI_NODE_TYPE_MASK, ni_node_read(base, node_type, readl_relaxed))
+
+#define ni_node_id(base)						\
+	FIELD_GET(NI_NODE_ID_MASK, ni_node_read(base, node_type, readl_relaxed))
+
+#define ni_node_node_type(base)				\
+	ni_node_read(base, node_type, readl_relaxed)
+
+#define ni_child_number(base)						\
+	(ni_node_type(base) < NI_ASNI ? ni_node_read(base, child_num, readl_relaxed) : 0)
+
+#define ni_child_pointer(periphbase, base, idx)				\
+	((void __iomem *)periphbase + ni_node_read(base, child_offset[idx], readl_relaxed))
+
+struct ni_pmu;
+struct ni_pmu_reg_map {
+	u32 node_type;                   /* offset: 0x000 */
+	u32 secr_acc;                    /* offset: 0x004 */
+	struct {
+		u32 counter;
+		u32 reserved;
+	} pmevcntr[8];                    /* offset: 0x008 */
+	u8  reserved_1[0xF8 - 0x48];     /* offset: 0x048 */
+	u32 pmccntr_lower;               /* offset: 0x0F8 */
+	u32 pmccntr_upper;               /* offset: 0x0FC */
+	u8  reserved_2[0x400 - 0x100];   /* offset: 0x100 */
+	u32 pmevtyper[8];                /* offset: 0x400 */
+	u8  reserved_3[0x610 - 0x420];   /* offset: 0x420 */
+	u32 pmssr;                       /* offset: 0x610 */
+	u32 pmovssr;                     /* offset: 0x614 */
+	u32 pmccntsr_lower;              /* offset: 0x618 */
+	u32 pmccntsr_upper;              /* offset: 0x61C */
+	u32 pmevcntsr[8];                /* offset: 0x620 */
+	u8  reserved_4[0x6F0 - 0x640];   /* offset: 0x640 */
+	u32 pmsscr;                      /* offset: 0x6F0 */
+	u8  reserved_5[0xC00 - 0x6F4];   /* offset: 0x6F4 */
+	u32 pmcntenset;                  /* offset: 0xC00 */
+	u8  reserved_6[0xC20 - 0xC04];   /* offset: 0xC04 */
+	u32 pmcntenclr;                  /* offset: 0xC20 */
+	u8  reserved_7[0xC40 - 0xC24];   /* offset: 0xC24 */
+	u32 pmintenset;                  /* offset: 0xC40 */
+	u8  reserved_8[0xC60 - 0xC44];   /* offset: 0xC44 */
+	u32 pmintenclr;                  /* offset: 0xC60 */
+	u8  reserved_9[0xC80 - 0xC64];   /* offset: 0xC64 */
+	u32 pmovsclr;                    /* offset: 0xC80 */
+	u8  reserved_10[0xCC0 - 0xC84];  /* offset: 0xC84 */
+	u32 pmovsset;                    /* offset: 0xCC0 */
+	u8  reserved_11[0xD80 - 0xCC4];  /* offset: 0xCC4 */
+	u32 pmcccgr;                     /* offset: 0xD80 */
+	u8  reserved_12[0xE00 - 0xD84];  /* offset: 0xD84 */
+	u32 pmcfgr;                      /* offset: 0xE00 */
+	u32 pmcr;                        /* offset: 0xE04 */
+};
+
+/* Not read or write registers directly. */
+#define ni_pmu_offset(ni_pmu, member)					\
+	((void __iomem *)ni_pmu->pmu_node.base + offsetof(struct ni_pmu_reg_map, member))
+
+#define ni_pmu_interrupt_enable(ni_pmu, en_bit_mask)		\
+	writel(en_bit_mask, ni_pmu_offset(ni_pmu, pmintenset))
+
+#define ni_pmu_interrupt_disable(ni_pmu, en_bit_mask)		\
+	writel(en_bit_mask, ni_pmu_offset(ni_pmu, pmintenclr))
+
+#define ni_pmu_counter_enable(ni_pmu, en_bit_mask)		\
+	writel(en_bit_mask, ni_pmu_offset(ni_pmu, pmcntenset))
+
+#define ni_pmu_counter_disable(ni_pmu, en_bit_mask)		\
+	writel(en_bit_mask, ni_pmu_offset(ni_pmu, pmcntenclr))
+
+#define ni_pmu_pmevtyper_sel_node(ni_pmu, ev_typer, cnt_idx)		\
+	writel(ev_typer, ni_pmu_offset(ni_pmu, pmevtyper[cnt_idx]))
+
+struct global_ni {
+	void __iomem *base;
+	struct hlist_node node;
+	struct device *dev;
+	union {
+		unsigned int pmu_num;
+		unsigned int cd_num;
+	};
+	unsigned int on_cpu;
+	int irq_num;
+	struct ni_pmu *ni_pmus[];
+};
+
+
+struct ni_pmu {
+	struct ni_node pmu_node;
+	struct perf_event *events[NI_PMU_COUNTER_NUM + 1];
+	struct pmu pmu;
+	struct device *dev;
+	unsigned int irq;
+	struct global_ni *ni;
+	int ev_src_num;
+	struct ni_node ev_src_nodes[];
+};
+
+#define to_ni_pmu(_pmu) container_of(_pmu, struct ni_pmu, pmu)
+
+struct ni_hw_perf_event {
+	/* cycle event */
+	bool is_cc;
+	/* The event corresponds to idxth counter */
+	int idx;
+	/* Enable bit field in pmcntenset */
+#define NI_PMU_CC_EN_BIT 31
+	u32 en_bit_mask;
+	/* value writen in counter */
+	u64 init_val;
+	/* If no cc event, config will be writen in pmusela/b */
+	u64 config;
+	/* The event corresponds to ni_pmu::ev_src_nodes[node_idx] */
+	int node_idx;
+	/* overwrite state in hw_perf_event */
+	int state;
+	/* value writen in pmevtyper */
+#define NI_PMU_PMEVTYPER_NDTP_OFFSET 9
+	union {
+		struct {
+			u32 id: 9;
+			u32 type: 4;
+		} node;
+		u32 ev_typer;
+	};
+};
+
+#define to_ni_hw(event) ((struct ni_hw_perf_event *)&event->hw)
+
+struct ni_event_desc {
+	u64 eventid;
+	const char *name;
+};
+
+struct ni_event_attr {
+	struct device_attribute attr;
+	struct ni_event_desc *ev_desc;
+	struct ni_node *node;
+};
+
+#define to_ni_event_attr(p) \
+	container_of(p, struct ni_event_attr, attr)
+
+/* ATTRs BEGIN */
+/* Events */
+#define NI_EVENT_DESC(_eventid, _name)			\
+	(&((struct ni_event_desc[]) {			\
+			{ .name = __stringify(_name),	\
+			  .eventid = _eventid,}		\
+		})[0])
+
+
+static struct ni_event_desc *ni_asni_event_descs[] = {
+	NI_EVENT_DESC(0x00, rdreq_any),
+	NI_EVENT_DESC(0x01, rdreq_dev_arcache),
+	NI_EVENT_DESC(0x02, rdreq_rns),
+	NI_EVENT_DESC(0x03, rdreq_ro),
+	NI_EVENT_DESC(0x04, req_cache_clr),
+	NI_EVENT_DESC(0x05, rdreq_beat_any),
+	NI_EVENT_DESC(0x06, rdreq_handshake_rlast),
+	NI_EVENT_DESC(0x07, wtreq_any),
+	NI_EVENT_DESC(0x08, wtreq_dev),
+	NI_EVENT_DESC(0x09, wtreq_wns),
+	NI_EVENT_DESC(0x0a, wtreq_wlu),
+	NI_EVENT_DESC(0x0b, wtreq_wu),
+	NI_EVENT_DESC(0x0c, wtreq_atomic),
+	NI_EVENT_DESC(0x0d, wtreq_beat_any),
+	NI_EVENT_DESC(0x0e, rdreq_stall),
+	NI_EVENT_DESC(0x0f, rddata_stall),
+	NI_EVENT_DESC(0x10, wtreq_stall),
+	NI_EVENT_DESC(0x11, wtdata_stall),
+	NI_EVENT_DESC(0x12, wtresp_stall),
+	NI_EVENT_DESC(0x13, wtreq_cst),
+	NI_EVENT_DESC(0x14, wtchann_nopersist),
+	NI_EVENT_DESC(0x15, wtchann_persist),
+	NI_EVENT_DESC(0x16, rdreq_nzero_mem_ops),
+	NI_EVENT_DESC(0x17, wtreq_nzero_mem_ops),
+	NI_EVENT_DESC(0x20, req_stall_cc_ot_limit),
+	NI_EVENT_DESC(0x21, req_stall_cc_tspec_limit),
+	NI_EVENT_DESC(0x22, req_stall_arbit),
+	NI_EVENT_DESC(0x23, req_stall_rd_tracker),
+	NI_EVENT_DESC(0x24, req_stall_wt_tracker),
+	NI_EVENT_DESC(0x25, aw_stall_wdatafifo_full),
+	NI_EVENT_DESC(0x26, ar_stall_reorderbuf_full),
+	NI_EVENT_DESC(0x27, aw_cdas_stall),
+	NI_EVENT_DESC(0x28, ar_cdas_stall),
+	NI_EVENT_DESC(0x29, atomic_rd_stall),
+	NI_EVENT_DESC(0x2a, wtchann_wtreq_stall),
+	NI_EVENT_DESC(0x2b, rdchann_rdreq_stall),
+	NI_EVENT_DESC(0x2c, aw_stall_ot),
+	NI_EVENT_DESC(0x2d, ar_stall_ot),
+	NI_EVENT_DESC(0x2e, aw_stall_tspec),
+	NI_EVENT_DESC(0x2f, ar_stall_tspec),
+	NI_EVENT_DESC(0x30, lwmd_arbit_stall_wchann),
+	NI_EVENT_DESC(0x31, lwmd_arbit_stall_rchann),
+};
+
+static struct ni_event_desc *ni_amni_event_descs[] = {
+	NI_EVENT_DESC(0x00, rdreq_any),
+	NI_EVENT_DESC(0x01, rdreq_dev_arcache),
+	NI_EVENT_DESC(0x02, rdreq_rns),
+	NI_EVENT_DESC(0x03, rdreq_ro),
+	NI_EVENT_DESC(0x04, req_cache_clr),
+	NI_EVENT_DESC(0x05, rdreq_beat_any),
+	NI_EVENT_DESC(0x06, rdreq_handshake_rlast),
+	NI_EVENT_DESC(0x07, wtreq_any),
+	NI_EVENT_DESC(0x08, wtreq_dev),
+	NI_EVENT_DESC(0x09, wtreq_wns),
+	NI_EVENT_DESC(0x0a, wtreq_wlu),
+	NI_EVENT_DESC(0x0b, wtreq_wu),
+	NI_EVENT_DESC(0x0c, wtreq_atomic),
+	NI_EVENT_DESC(0x0d, wtreq_beat_any),
+	NI_EVENT_DESC(0x0e, rdreq_stall),
+	NI_EVENT_DESC(0x0f, rddata_stall),
+	NI_EVENT_DESC(0x10, wtreq_stall),
+	NI_EVENT_DESC(0x11, wtdata_stall),
+	NI_EVENT_DESC(0x12, wtresp_stall),
+	NI_EVENT_DESC(0x13, wtreq_cst),
+	NI_EVENT_DESC(0x14, wtchann_nopersist),
+	NI_EVENT_DESC(0x15, wtchann_persist),
+	NI_EVENT_DESC(0x16, rdreq_nzero_mem_ops),
+	NI_EVENT_DESC(0x17, wtreq_nzero_mem_ops),
+	NI_EVENT_DESC(0x20, req_stall_rd_tracker),
+	NI_EVENT_DESC(0x21, req_stall_wt_tracker),
+	NI_EVENT_DESC(0x22, wtchann_b_resp),
+	NI_EVENT_DESC(0x23, rdchann_rd_resp),
+	NI_EVENT_DESC(0x24, lwmd_arbit_stall_wchann),
+	NI_EVENT_DESC(0x25, lwmd_arbit_stall_rchann),
+};
+
+static struct ni_event_desc *ni_hsni_event_descs[] = {
+	NI_EVENT_DESC(0x00, rdreq_any),
+	NI_EVENT_DESC(0x01, rdreq_dev),
+	NI_EVENT_DESC(0x02, rdreq_noshare),
+	NI_EVENT_DESC(0x03, rdreq_share),
+	NI_EVENT_DESC(0x04, rdreq_share_nonormal),
+	NI_EVENT_DESC(0x05, rdreq_beat_any),
+	NI_EVENT_DESC(0x07, wtreq_any),
+	NI_EVENT_DESC(0x08, wtreq_dev),
+	NI_EVENT_DESC(0x09, wtreq_noshare),
+	NI_EVENT_DESC(0x0a, wtreq_all),
+	NI_EVENT_DESC(0x0b, wtreq_share),
+	NI_EVENT_DESC(0x0c, wtreq_share_nonormal),
+	NI_EVENT_DESC(0x0d, wtreq_beat_any),
+	NI_EVENT_DESC(0x0f, rddata_stall),
+	NI_EVENT_DESC(0x11, wtdata_stall),
+	NI_EVENT_DESC(0x20, req_stall_cc_ot_limit),
+	NI_EVENT_DESC(0x21, req_stall_cc_tspec_limit),
+	NI_EVENT_DESC(0x22, rdreq_stall_cc_ely_wtresp),
+	NI_EVENT_DESC(0x24, req_stall_nzero_wtcnt),
+	NI_EVENT_DESC(0x25, w_stall_wdatafifo_full),
+	NI_EVENT_DESC(0x2a, wtreq_stall_lack_gt),
+	NI_EVENT_DESC(0x2b, rdreq_stall_lack_gt),
+};
+
+static struct ni_event_desc *ni_hmni_event_descs[] = {
+	NI_EVENT_DESC(0x00, rdreq_any),
+	NI_EVENT_DESC(0x01, rdreq_dev),
+	NI_EVENT_DESC(0x02, rdreq_noshare),
+	NI_EVENT_DESC(0x03, rdreq_share),
+	NI_EVENT_DESC(0x04, rdreq_share_nonormal),
+	NI_EVENT_DESC(0x05, rdreq_beat_any),
+	NI_EVENT_DESC(0x07, wtreq_any),
+	NI_EVENT_DESC(0x08, wtreq_dev),
+	NI_EVENT_DESC(0x09, wtreq_noshare),
+	NI_EVENT_DESC(0x0a, wtreq_all),
+	NI_EVENT_DESC(0x0b, wtreq_share),
+	NI_EVENT_DESC(0x0c, wtreq_share_nonormal),
+	NI_EVENT_DESC(0x0d, wtreq_beat_any),
+	NI_EVENT_DESC(0x0e, rd_addr_phase_stall),
+	NI_EVENT_DESC(0x0f, rd_data_phase_stall),
+	NI_EVENT_DESC(0x10, wt_addr_phase_stall),
+	NI_EVENT_DESC(0x11, wt_data_phase_stall),
+	NI_EVENT_DESC(0x22, wtresp_stall_lack_gt),
+	NI_EVENT_DESC(0x23, rdresp_stall_lack_gt),
+};
+
+static struct ni_event_desc *ni_pmni_event_descs[] = {
+	NI_EVENT_DESC(0x00, rdreq_any),
+	NI_EVENT_DESC(0x01, rdreq_dev_arcache),
+	NI_EVENT_DESC(0x02, rdreq_noshared),
+	NI_EVENT_DESC(0x05, rd_prdata_any),
+	NI_EVENT_DESC(0x07, wtreq_any),
+	NI_EVENT_DESC(0x08, wtreq_dev),
+	NI_EVENT_DESC(0x09, wtreq_noshared),
+	NI_EVENT_DESC(0x0d, wtdata_beat_any),
+	NI_EVENT_DESC(0x0e, rdreq_stall),
+	NI_EVENT_DESC(0x0f, rddata_stall),
+	NI_EVENT_DESC(0x10, wtreq_stall),
+	NI_EVENT_DESC(0x11, wtdata_stall),
+	NI_EVENT_DESC(0x22, wtresp_stall_lack_gt),
+	NI_EVENT_DESC(0x23, rdresp_stall_lack_gt),
+};
+
+static int ni_ev_desc_array_size(enum ni_node_type type,
+				 struct ni_event_desc ***descs)
+{
+	switch (type) {
+	case NI_ASNI:
+		if (descs)
+			*descs = ni_asni_event_descs;
+		return ARRAY_SIZE(ni_asni_event_descs);
+	case NI_AMNI:
+		if (descs)
+			*descs = ni_amni_event_descs;
+		return ARRAY_SIZE(ni_amni_event_descs);
+	case NI_HSNI:
+		if (descs)
+			*descs = ni_hsni_event_descs;
+		return ARRAY_SIZE(ni_hsni_event_descs);
+	case NI_HMNI:
+		if (descs)
+			*descs = ni_hmni_event_descs;
+		return ARRAY_SIZE(ni_hmni_event_descs);
+	case NI_PMNI:
+		if (descs)
+			*descs = ni_pmni_event_descs;
+		return ARRAY_SIZE(ni_pmni_event_descs);
+	default:
+		return 0;
+	}
+}
+
+static ssize_t ni_event_show(struct device *dev,
+				   struct device_attribute *attr, char *buf)
+{
+	struct ni_event_attr *eattr;
+
+	eattr = to_ni_event_attr(attr);
+
+	if (eattr->ev_desc)
+		return sysfs_emit(buf,
+				  "%s,id=0x%x,event=0x%llx\n",
+				  ni_node_name[eattr->node->type],
+				  eattr->node->id,
+				  eattr->ev_desc->eventid);
+
+	return sysfs_emit(buf, "cycles\n");
+}
+
+/* Formats */
+struct ni_format_attr {
+	struct device_attribute attr;
+	u64 field;
+};
+
+static ssize_t ni_format_show(struct device *dev,
+				   struct device_attribute *attr, char *buf)
+{
+	struct ni_format_attr *fmt = container_of(attr, struct ni_format_attr, attr);
+	int lo = __ffs(fmt->field), hi = __fls(fmt->field);
+
+	if (lo == hi)
+		return sysfs_emit(buf, "config:%d\n", lo);
+
+	return sysfs_emit(buf, "config:%d-%d\n", lo, hi);
+}
+
+
+#define NI_FORMAT_ATTR(_name, _fld)					\
+	(&((struct ni_format_attr[]) {{					\
+				.attr = __ATTR(_name, 0444, ni_format_show, NULL), \
+				.field = _fld,				\
+			}})[0].attr.attr)
+
+static struct attribute *ni_format_attrs[] = {
+	NI_FORMAT_ATTR(event, NI_EVENT_FORMAT_EVENT),
+	NI_FORMAT_ATTR(cycles, NI_EVENT_FORMAT_CYCLES),
+	NI_FORMAT_ATTR(asni, NI_EVENT_FORMAT_ASNI),
+	NI_FORMAT_ATTR(amni, NI_EVENT_FORMAT_AMNI),
+	NI_FORMAT_ATTR(hsni, NI_EVENT_FORMAT_HSNI),
+	NI_FORMAT_ATTR(hmni, NI_EVENT_FORMAT_HMNI),
+	NI_FORMAT_ATTR(pmni, NI_EVENT_FORMAT_PMNI),
+	NI_FORMAT_ATTR(id, NI_EVENT_FORMAT_NODEID),
+	NULL
+};
+
+static const struct attribute_group ni_format_attrs_group = {
+	.name = "format",
+	.attrs = ni_format_attrs,
+};
+
+/* Cpumask */
+
+static ssize_t ni_cpumask_show(struct device *dev,
+				    struct device_attribute *attr, char *buf)
+{
+	struct ni_pmu *ni_pmu = to_ni_pmu(dev_get_drvdata(dev));
+
+	return cpumap_print_to_pagebuf(true, buf, cpumask_of(ni_pmu->ni->on_cpu));
+}
+
+static struct device_attribute ni_cpumask_attr =
+		__ATTR(cpumask, 0444, ni_cpumask_show, NULL);
+
+static struct attribute *ni_addition_attrs[] = {
+	&ni_cpumask_attr.attr,
+	NULL,
+};
+
+static const struct attribute_group ni_addition_attrs_group = {
+	.attrs = ni_addition_attrs,
+};
+/* ATTRs END */
+
+/* CALLBACK FUNCTION BEGIN */
+static u64 ni_cntr_get_and_init_optionally(struct perf_event *event, bool init)
+{
+	u64 old_val, new_val;
+	struct ni_pmu *ni_pmu = to_ni_pmu(event->pmu);
+	struct ni_hw_perf_event *hwc = to_ni_hw(event);
+
+	if (!hwc->is_cc)
+		old_val = readl(ni_pmu_offset(ni_pmu, pmevcntr[hwc->idx].counter));
+	else
+		old_val = readl(ni_pmu_offset(ni_pmu, pmccntr_lower))
+			| (((u64)readl(ni_pmu_offset(ni_pmu, pmccntr_upper))) << 32);
+
+	if (!init)
+		return old_val;
+
+	new_val = hwc->init_val;
+	if (!hwc->is_cc)
+		writel(new_val, ni_pmu_offset(ni_pmu, pmevcntr[hwc->idx].counter));
+	else {
+		writel(new_val, ni_pmu_offset(ni_pmu, pmccntr_lower));
+		writel(new_val >> 32, ni_pmu_offset(ni_pmu, pmccntr_upper));
+	}
+
+	return old_val;
+}
+
+static void ni_pmu_event_update(struct perf_event *event)
+{
+	struct ni_hw_perf_event *hwc = to_ni_hw(event);
+	u64 delta, prev, now;
+
+	do {
+		prev = local64_read(&event->hw.prev_count);
+		now = ni_cntr_get_and_init_optionally(event, false);
+	} while (local64_cmpxchg(&event->hw.prev_count, prev, now) != prev);
+
+	delta = now - prev;
+
+	if (!hwc->is_cc)
+		delta &= 0xFFFFFFFFULL;
+
+	local64_add(delta, &event->count);
+}
+
+static void ni_pmu_set_period(struct perf_event *event)
+{
+	struct ni_hw_perf_event *hwc = to_ni_hw(event);
+
+	ni_cntr_get_and_init_optionally(event, true);
+
+	local64_set(&event->hw.prev_count, hwc->init_val);
+}
+
+static void ni_pmu_enable(struct pmu *pmu)
+{
+	struct ni_pmu *ni_pmu = to_ni_pmu(pmu);
+
+	writel(NI_PMU_PMCR_ENABLE, ni_pmu_offset(ni_pmu, pmcr));
+}
+
+static inline void ni_pmu_disable(struct pmu *pmu)
+{
+	struct ni_pmu *ni_pmu = to_ni_pmu(pmu);
+
+	writel(0, ni_pmu_offset(ni_pmu, pmcr));
+}
+
+static int ni_pmu_find_ev_src(struct ni_pmu *ni_pmu, u32 node_type)
+{
+	int idx;
+
+	for (idx = 0; idx < ni_pmu->ev_src_num; idx++)
+		if (ni_pmu->ev_src_nodes[idx].node_type == node_type)
+			break;
+
+	return idx;
+}
+
+static bool is_event_supported(u64 eventid, enum ni_node_type type)
+{
+	int num;
+	int idx;
+	struct ni_event_desc **descs;
+
+	num = ni_ev_desc_array_size(type, &descs);
+
+	for (idx = 0; idx < num; idx++)
+		if (eventid == descs[idx]->eventid)
+			break;
+
+	return idx == num ? false : true;
+}
+
+static enum ni_node_type ni_event_config_nodetype(u64 config)
+{
+	u64 nodetype = _ni_event_config_nodetype(config);
+	unsigned long lo = __ffs(nodetype), hi = __fls(nodetype);
+
+	if (!nodetype || lo != hi)
+		return 0;
+
+	return lo;
+
+}
+
+static int ni_pmu_event_init(struct perf_event *event)
+{
+	struct ni_hw_perf_event *hwc = to_ni_hw(event);
+	struct ni_pmu *ni_pmu = to_ni_pmu(event->pmu);
+	u64 config;
+	enum ni_node_type nodetype;
+	u32 node_type;
+
+	memset(hwc, 0, sizeof(*hwc));
+
+	if (event->attr.type != event->pmu->type)
+		return -ENOENT;
+
+	if (is_sampling_event(event))
+		return -EINVAL;
+
+	event->cpu = ni_pmu->ni->on_cpu;
+
+	config = event->attr.config;
+
+	hwc->is_cc = ni_event_config_cc(config);
+
+	if (hwc->is_cc)
+		return 0;
+
+	nodetype = ni_event_config_nodetype(config);
+	if (!nodetype)
+		return -EINVAL;
+
+	hwc->node.id = ni_event_config_nodeid(config);
+	hwc->node.type = nodetype;
+	hwc->config = ni_event_config_eventid(config);
+
+	node_type = hwc->node.id << 16 | nodetype;
+	hwc->node_idx = ni_pmu_find_ev_src(ni_pmu, node_type);
+	if (hwc->node_idx == ni_pmu->ev_src_num)
+		return -EINVAL;
+
+	if (!is_event_supported(hwc->config, nodetype))
+		return -EINVAL;
+
+	return 0;
+}
+
+static void ni_pmu_event_start(struct perf_event *event, int flags)
+{
+	struct ni_pmu *ni_pmu = to_ni_pmu(event->pmu);
+	struct ni_hw_perf_event *hwc = to_ni_hw(event);
+
+	hwc->state = 0;
+
+	ni_pmu_set_period(event);
+
+	if (!hwc->is_cc) {
+		ni_node_pmuevsel((&ni_pmu->ev_src_nodes[hwc->node_idx]), hwc->config);
+		ni_pmu_pmevtyper_sel_node(ni_pmu, hwc->ev_typer, hwc->idx);
+	}
+
+	ni_pmu_counter_enable(ni_pmu, hwc->en_bit_mask);
+}
+
+static void ni_pmu_event_stop(struct perf_event *event, int flags)
+{
+	struct ni_pmu *ni_pmu = to_ni_pmu(event->pmu);
+	struct ni_hw_perf_event *hwc = to_ni_hw(event);
+
+	if (hwc->state & PERF_HES_STOPPED)
+		return;
+
+	ni_pmu_counter_disable(ni_pmu, hwc->en_bit_mask);
+
+	ni_pmu_event_update(event);
+
+	hwc->state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
+}
+
+static void ni_pmu_event_read(struct perf_event *event)
+{
+	ni_pmu_event_update(event);
+}
+
+static int ni_pmu_event_add(struct perf_event *event, int flags)
+{
+	struct ni_hw_perf_event *hwc = to_ni_hw(event);
+	struct ni_pmu *ni_pmu = to_ni_pmu(event->pmu);
+	int idx;
+
+	idx = 0;
+	if (hwc->is_cc && ni_pmu->events[NI_PMU_COUNTER_NUM])
+		return -EAGAIN; /* The cycle counter is in use. */
+
+	idx = 0;
+	if (hwc->is_cc)
+		idx = NI_PMU_COUNTER_NUM;
+	else
+		while ((idx < NI_PMU_COUNTER_NUM) && ni_pmu->events[idx])
+			idx++;
+
+	if (!hwc->is_cc && idx == NI_PMU_COUNTER_NUM)
+		return -EAGAIN; /* All general counter is in use. */
+
+	hwc->idx = idx;
+
+	hwc->en_bit_mask = hwc->is_cc ? BIT(NI_PMU_CC_EN_BIT) : BIT(idx);
+	hwc->init_val = hwc->is_cc ? (0x1ULL << 63) : (0x1ULL << 31);
+	hwc->config = hwc->config << idx * 8; /* including is_cc */
+	hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
+
+	local64_set(&event->hw.prev_count, 0);
+
+	ni_pmu->events[idx] = event;
+
+	ni_pmu_interrupt_enable(ni_pmu, hwc->en_bit_mask);
+
+	if (flags & PERF_EF_START)
+		ni_pmu_event_start(event, flags);
+
+	return 0;
+}
+
+static void ni_pmu_event_del(struct perf_event *event, int flags)
+{
+	struct ni_hw_perf_event *hwc = to_ni_hw(event);
+	struct ni_pmu *ni_pmu = to_ni_pmu(event->pmu);
+
+	ni_pmu_event_stop(event, flags);
+	ni_pmu_interrupt_disable(ni_pmu, hwc->en_bit_mask);
+	ni_pmu->events[hwc->idx] = NULL;
+}
+
+static irqreturn_t _ni_pmu_handle_irq(struct ni_pmu *ni_pmu)
+{
+	u64 ovsr;
+	int idx;
+	struct perf_event *event;
+	struct ni_hw_perf_event *hwc;
+
+	ovsr = readl(ni_pmu_offset(ni_pmu, pmovsclr));
+	if (!ovsr)
+		return IRQ_NONE;
+
+	writel(ovsr, ni_pmu_offset(ni_pmu, pmovsclr));
+
+	for_each_set_bit(idx, (unsigned long *)&ovsr, 32) {
+		if (idx >= NI_PMU_COUNTER_NUM)
+			idx = NI_PMU_COUNTER_NUM;
+
+		event = ni_pmu->events[idx];
+		if (WARN_ON_ONCE(!event))
+			continue;
+
+		hwc = to_ni_hw(event);
+		ni_pmu_event_update(event);
+		ni_pmu_set_period(event);
+		if (idx == NI_PMU_COUNTER_NUM)
+			break;
+	}
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t ni_pmu_handle_irq(int irq_num, void *data)
+{
+	struct ni_pmu *ni_pmu = data;
+	int idx, ret = IRQ_NONE;
+
+	if (ni_pmu->ni->irq_num != 1)
+		return _ni_pmu_handle_irq(ni_pmu);
+
+	for (idx = 0; idx < ni_pmu->ni->pmu_num; idx++)
+		ret |= _ni_pmu_handle_irq(ni_pmu->ni->ni_pmus[idx]);
+
+	return ret;
+}
+/* CALLBACK FUNCTION END */
+
+/* PLATFORM BEGIN */
+static int ni_hp_state;
+static int ni_pmu_offline_cpu(unsigned int cpu, struct hlist_node *node)
+{
+	struct global_ni *ni;
+	unsigned int target;
+	int idx;
+
+
+	ni = hlist_entry_safe(node, struct global_ni, node);
+	if (cpu != ni->on_cpu)
+		return 0;
+
+
+	target = cpumask_any_but(cpu_online_mask, cpu);
+	if (target >= nr_cpu_ids)
+		return 0;
+
+
+	for (idx = 0; idx < ni->pmu_num; idx++) {
+		perf_pmu_migrate_context(&ni->ni_pmus[idx]->pmu, cpu, target);
+#ifndef CONFIG_PPC_HX_C2000
+		WARN_ON(irq_set_affinity(ni->ni_pmus[idx]->irq, cpumask_of(target)));
+#endif
+	}
+
+	ni->on_cpu = target;
+
+	return 0;
+}
+
+static u32 ni_child_number_total(void __iomem *periphbase,
+				 void __iomem *from, enum ni_node_type type)
+{
+	enum ni_node_type node_type;
+	int total, idx;
+	void __iomem *child_base;
+
+	node_type = ni_node_type(from);
+
+	if (node_type == type)
+		return 1;
+
+	if (node_type >= NI_ASNI)
+		return 0;
+
+	total = 0;
+	for (idx = 0; idx < ni_child_number(from); idx++) {
+		child_base = ni_child_pointer(periphbase, from, idx);
+		total += ni_child_number_total(periphbase, child_base, type);
+	}
+
+	return total;
+}
+
+static void ni_pmu_reset(struct ni_pmu *ni_pmu)
+{
+	ni_pmu_disable(&ni_pmu->pmu);
+
+#define clear_reg(name) \
+	writel(readl(ni_pmu_offset(ni_pmu, name)), ni_pmu_offset(ni_pmu, name))
+
+	clear_reg(pmcntenclr);
+	clear_reg(pmintenclr);
+	clear_reg(pmovsclr);
+
+	writel_relaxed(NI_PMU_PMCR_RST_CYC_CNTR & NI_PMU_PMCR_RST_EV_CNTR,
+		       ni_pmu_offset(ni_pmu, pmcr));
+}
+
+static int ni_pmu_irq_setup(struct ni_pmu *ni_pmu, int irq_idx)
+{
+	int err;
+	unsigned long flags = IRQF_NOBALANCING | IRQF_SHARED | IRQF_NO_THREAD;
+
+	pr_info("Begin registering the %dth irq number.", irq_idx);
+
+	ni_pmu->irq = platform_get_irq(to_platform_device(ni_pmu->dev), irq_idx);
+	if (ni_pmu->irq < 0)
+		return ni_pmu->irq;
+
+	err = devm_request_irq(ni_pmu->dev, ni_pmu->irq, ni_pmu_handle_irq,
+			       flags, dev_name(ni_pmu->dev), ni_pmu);
+	if (err)
+		return err;
+
+#ifndef CONFIG_PPC_HX_C2000
+	err = irq_set_affinity(ni_pmu->irq, cpumask_of(ni_pmu->ni->on_cpu));
+	if (err)
+		return err;
+#endif
+
+	pr_info("End registering the %dth irq number.", irq_idx);
+	return 0;
+}
+
+static int ni_event_attr_init(struct device *dev,
+			      struct ni_event_attr *eattr,
+			       struct ni_node *node,
+			       struct ni_event_desc *desc)
+{
+	struct attribute *attr;
+	const char *name;
+
+	attr = &eattr->attr.attr;
+
+	sysfs_attr_init(attr);
+
+	eattr->ev_desc = desc;
+	eattr->node = node;
+
+	if (desc && node)
+		name = devm_kasprintf(dev,
+			      GFP_KERNEL,
+			      "%s_%d_%s",
+			      ni_node_name[node->type],
+			      node->id,
+			      desc->name);
+	else if (!desc && !node)
+		name = "cycles";
+	else {
+		WARN(1, "No such type attr. Discovery Error!");
+		return -EINVAL;
+	}
+
+	if (!name)
+		return -ENOMEM;
+
+	eattr->attr = (struct device_attribute){
+		.attr = {
+			.name = name,
+			.mode = VERIFY_OCTAL_PERMISSIONS(0444)
+		},
+		.show	= ni_event_show,
+		.store	= NULL,
+	};
+
+	return 0;
+}
+
+static int ni_pmu_init_attr_groups(struct ni_pmu *ni_pmu)
+{
+	int idx, ev_idx, ev_num, ret, ev_num_tmp;
+	struct ni_node *node;
+	struct ni_event_desc **descs;
+	struct attribute **eattrs;
+	struct ni_event_attr *ni_eattrs;
+	struct device *dev;
+	struct attribute_group *eattr_group;
+	const struct attribute_group **attr_groups;
+	const struct attribute_group *ni_attr_groups_template[4];
+
+	dev = ni_pmu->dev;
+
+	eattr_group = devm_kzalloc(dev, sizeof(*eattr_group), GFP_KERNEL);
+
+	ev_num = 0;
+	for (idx = 0; idx < ni_pmu->ev_src_num; idx++) {
+		node = &ni_pmu->ev_src_nodes[idx];
+
+		ev_num += ni_ev_desc_array_size(node->type, NULL);
+	}
+
+	ev_num++;
+
+	eattrs = devm_kmalloc(dev, sizeof(eattrs[0]) * (ev_num + 1), GFP_KERNEL);
+	if (!eattrs)
+		return -ENOMEM;
+
+	ni_eattrs = devm_kzalloc(dev, sizeof(ni_eattrs[0]) * ev_num, GFP_KERNEL);
+	if (!ni_eattrs)
+		return -ENOMEM;
+
+	ev_num = 0;
+	ret = ni_event_attr_init(dev, &ni_eattrs[ev_num++], NULL, NULL);
+	if (ret)
+		return ret;
+
+	for (idx = 0; idx < ni_pmu->ev_src_num; idx++) {
+		node = &ni_pmu->ev_src_nodes[idx];
+
+		ev_num_tmp = ni_ev_desc_array_size(node->type, &descs);
+		for (ev_idx = 0; ev_idx < ev_num_tmp; ev_idx++) {
+			struct ni_event_desc *desc;
+
+			desc = descs[ev_idx];
+
+			ret = ni_event_attr_init(dev, &ni_eattrs[ev_num++], node, desc);
+			if (ret)
+				return ret;
+		}
+	}
+
+	for (idx = 0; idx < ev_num; idx++)
+		eattrs[idx] = &ni_eattrs[idx].attr.attr;
+
+	eattrs[idx] = NULL;
+
+	eattr_group->name = "events";
+	eattr_group->attrs = eattrs;
+
+	ni_attr_groups_template[0] = eattr_group;
+	ni_attr_groups_template[1] = &ni_format_attrs_group;
+	ni_attr_groups_template[2] = &ni_addition_attrs_group;
+	ni_attr_groups_template[3] = NULL;
+
+	attr_groups = devm_kmemdup(dev,
+				   ni_attr_groups_template,
+				   sizeof(ni_attr_groups_template),
+				   GFP_KERNEL);
+	if (!attr_groups)
+		return -ENOMEM;
+
+	ni_pmu->pmu.attr_groups = attr_groups;
+
+	return 0;
+}
+
+static int ni_discovery(struct global_ni *ni)
+{
+	u32 vd_idx, pd_idx, cd_idx, nd_idx, num_idx = 0;
+	void __iomem *vd, *pd, *cd, *nd, **cd_arrays;
+	int num;
+	struct ni_pmu *ni_pmu;
+	struct ni_node node;
+	void __iomem *pbase;
+	struct device *dev = ni->dev;
+
+	pr_info("Begin discovering hardware registers.");
+	pbase = ni->base;
+
+	cd_arrays = devm_kmalloc(dev, ni->cd_num * sizeof(typeof(cd)), GFP_KERNEL);
+
+	/* Step1: Get all clock domains. */
+	for (vd_idx = 0; vd_idx < ni_child_number(ni->base); vd_idx++) {
+		vd = ni_child_pointer(pbase, ni->base, vd_idx);
+
+		for (pd_idx = 0; pd_idx < ni_child_number(vd); pd_idx++) {
+			pd = ni_child_pointer(pbase, vd, pd_idx);
+
+			pr_info("The %dth power domain has %d clock domain",
+				pd_idx,
+				ni_child_number(pd));
+
+			for (cd_idx = 0; cd_idx < ni_child_number(pd); cd_idx++) {
+				cd_arrays[num_idx++] =
+					ni_child_pointer(pbase, pd, cd_idx);
+			}
+		}
+	}
+
+	/* Step2: Traverse all clock domains. */
+	for (cd_idx = 0; cd_idx < ni->cd_num; cd_idx++) {
+		cd = cd_arrays[cd_idx];
+
+		num = ni_child_number(cd);
+		pr_info("The %dth clock domain has %d child nodes:", cd_idx, num);
+
+		/* Omit pmu node */
+		ni_pmu = devm_kzalloc(dev, struct_size(ni_pmu, ev_src_nodes, num - 1),
+				      GFP_KERNEL);
+		ni_pmu->ev_src_num = num - 1;
+
+		if (!ni_pmu)
+			return -ENOMEM;
+
+		num_idx = 0;
+		for (nd_idx = 0; nd_idx < num; nd_idx++) {
+			nd = ni_child_pointer(pbase, cd, nd_idx);
+
+			node.base = nd;
+			node.node_type = ni_node_node_type(nd);
+
+			if (unlikely(ni_node_type(nd) == NI_PMU))
+				ni_pmu->pmu_node = node;
+			else
+				ni_pmu->ev_src_nodes[num_idx++] = node;
+			pr_info("  name: %s   id: %d", ni_node_name[node.type], node.id);
+		}
+
+		ni_pmu->dev = dev;
+		ni_pmu->ni = ni;
+		ni->ni_pmus[cd_idx] = ni_pmu;
+	}
+
+	devm_kfree(dev, cd_arrays);
+
+	pr_info("End discovering hardware registers.");
+
+	return 0;
+}
+
+static int ni_pmu_probe(struct platform_device *pdev)
+{
+	int ret, cd_num, idx, irq_num, irq_idx;
+	void __iomem *periphbase;
+	struct global_ni *ni;
+	struct device *dev = &pdev->dev;
+	char *name;
+	static int id;
+	struct ni_pmu *ni_pmu;
+
+	BUILD_BUG_ON(sizeof(long) == 4);
+	BUILD_BUG_ON(sizeof(struct ni_hw_perf_event) >
+		     offsetof(struct hw_perf_event, target));
+#define NI_PMU_REG_MAP_SIZE 0xE08
+	BUILD_BUG_ON(sizeof(struct ni_pmu_reg_map) != NI_PMU_REG_MAP_SIZE);
+
+	pr_info("Begin probing.");
+
+	periphbase = devm_platform_ioremap_resource(pdev, 0);
+
+	if (IS_ERR(periphbase)) {
+		pr_err("%s: ioremap error.", __func__);
+		return PTR_ERR(periphbase);
+	}
+
+	cd_num = ni_child_number_total(periphbase, periphbase, NI_CD);
+	pr_info("%d clock domains found in NI-700.", cd_num);
+
+	/* Each clock domain contains one PMU. So cd_num == pmu_num. */
+	ni = devm_kzalloc(dev,
+			  struct_size(ni, ni_pmus, cd_num),
+			  GFP_KERNEL);
+	if (!ni)
+		return -ENOMEM;
+
+	ni->cd_num = cd_num;
+	ni->base = periphbase;
+	ni->dev = dev;
+	ni->on_cpu = raw_smp_processor_id();
+	platform_set_drvdata(pdev, ni);
+
+	ret = ni_discovery(ni);
+	if (ret) {
+		pr_err("%s: discovery error.", __func__);
+		return ret;
+	}
+
+	irq_num = platform_irq_count(pdev);
+	/* Support that one NI with one irq or one clock domain with one irq. */
+	if (irq_num < 0 || (irq_num != 1 && irq_num != ni->cd_num)) {
+		pr_err("Error in irq number: %d.", irq_num);
+		return -EINVAL;
+	}
+
+	if (irq_num != cd_num) {
+		pr_warn("Only one IRQ found for all PMU.");
+		ret = ni_pmu_irq_setup(ni->ni_pmus[0], 0);
+		if (ret)
+			return ret;
+	}
+
+	ni->irq_num = irq_num;
+
+	for (idx = 0, irq_idx = 0; idx < ni->pmu_num; idx++) {
+		ni_pmu = ni->ni_pmus[idx];
+		ret = ni_pmu_init_attr_groups(ni_pmu);
+		if (ret)
+			return ret;
+
+		if (irq_num == cd_num) {
+			ret = ni_pmu_irq_setup(ni_pmu, irq_idx++);
+			if (ret)
+				return ret;
+		}
+
+		ni_pmu_reset(ni_pmu);
+
+		ni_pmu->pmu = (struct pmu) {
+			.module		= THIS_MODULE,
+			.task_ctx_nr    = perf_invalid_context,
+			.pmu_enable	= ni_pmu_enable,
+			.pmu_disable	= ni_pmu_disable,
+			.event_init	= ni_pmu_event_init,
+			.add		= ni_pmu_event_add,
+			.del		= ni_pmu_event_del,
+			.start		= ni_pmu_event_start,
+			.stop		= ni_pmu_event_stop,
+			.read		= ni_pmu_event_read,
+			.attr_groups    = ni_pmu->pmu.attr_groups,
+			.capabilities	= PERF_PMU_CAP_NO_EXCLUDE | PERF_PMU_CAP_NO_INTERRUPT,
+		};
+
+#ifdef CONFIG_PPC_HX_C2000
+		if (of_property_read_u32(pdev->dev.of_node, "pccs-id", &id))
+			pr_warn("No found pccs_id in dts ni pmu node.");
+#endif
+		if (cd_num > 1)
+			name = devm_kasprintf(dev, GFP_KERNEL, "ni_pmu_%d_%d", id++, idx);
+		else
+			name = devm_kasprintf(dev, GFP_KERNEL, "ni_pmu_%d", id++);
+
+		ret = perf_pmu_register(&ni_pmu->pmu, name, -1);
+		if (ret) {
+			pr_err("Error %d_%d registering PMU", id - 1, idx);
+			return ret;
+		}
+	}
+
+	ret = cpuhp_state_add_instance_nocalls(ni_hp_state,
+					       &ni->node);
+	if (ret)
+		return ret;
+	pr_info("End probing.");
+
+	return 0;
+}
+
+static int ni_pmu_remove(struct platform_device *pdev)
+{
+	struct global_ni *ni = platform_get_drvdata(pdev);
+	int idx;
+
+	for (idx = 0; idx < ni->pmu_num; idx++)
+		perf_pmu_unregister(&ni->ni_pmus[idx]->pmu);
+
+	cpuhp_remove_multi_state(ni_hp_state);
+	return 0;
+}
+
+static const struct of_device_id ni_pmu_of_match[] = {
+	{ .compatible = "hx,c2000-arm-ni" },
+	{},
+};
+
+static struct platform_driver ni_pmu_driver = {
+	.driver = {
+		.name = "ni-pmu",
+		.of_match_table = of_match_ptr(ni_pmu_of_match),
+	},
+	.remove = ni_pmu_remove,
+	.probe = ni_pmu_probe,
+};
+
+static int __init ni_pmu_init(void)
+{
+	int ret;
+
+	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
+				      "perf/arm/ni:online",
+				      NULL,
+				      ni_pmu_offline_cpu);
+	if (ret < 0)
+		return ret;
+
+	ni_hp_state = ret;
+
+	ret = platform_driver_register(&ni_pmu_driver);
+
+	if (ret)
+		cpuhp_remove_multi_state(ni_hp_state);
+
+	return ret;
+}
+
+static void __exit ni_pmu_exit(void)
+{
+	platform_driver_unregister(&ni_pmu_driver);
+}
+
+module_init(ni_pmu_init);
+module_exit(ni_pmu_exit);
+/* PLATFORM END */
+
+MODULE_AUTHOR("Jialong Yang <jialong.yang@shingroup.cn>");
+MODULE_DESCRIPTION("PMU driver for ARM NI-700 Performance Monitors Unit");
+MODULE_LICENSE("GPL");
-- 
2.25.1


