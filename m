Return-Path: <devicetree+bounces-15271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA3F7E9634
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 05:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2061DB20A9D
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 04:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 187A011700;
	Mon, 13 Nov 2023 04:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A523F9FB
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 04:29:27 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 042B31BC0;
	Sun, 12 Nov 2023 20:29:24 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id AFF3E24DDB2;
	Mon, 13 Nov 2023 12:29:17 +0800 (CST)
Received: from EXMBX172.cuchost.com (172.16.6.92) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 13 Nov
 2023 12:29:17 +0800
Received: from localhost.localdomain (202.188.176.82) by EXMBX172.cuchost.com
 (172.16.6.92) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 13 Nov
 2023 12:29:06 +0800
From: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Rob
 Herring" <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>
CC: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>, Ley Foon Tan
	<leyfoon.tan@starfivetech.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] perf: starfive: Add StarLink PMU support
Date: Mon, 13 Nov 2023 12:22:30 +0800
Message-ID: <20231113042231.457882-2-jisheng.teoh@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231113042231.457882-1-jisheng.teoh@starfivetech.com>
References: <20231113042231.457882-1-jisheng.teoh@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [202.188.176.82]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX172.cuchost.com
 (172.16.6.92)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

This patch adds support for StarFive's StarLink PMU (Performance
Monitor Unit). StarLink PMU integrates one or more CPU cores with
a shared L3 memory system. The PMU supports overflow interrupt,
up to 16 programmable 64bit event counters, and an independent
64bit cycle counter. StarLink PMU is accessed via MMIO.

Example Perf stat output:
[root@user]# perf stat -a -e /starfive_starlink_pmu/cycles/ \
	-e /starfive_starlink_pmu/read_miss/ \
	-e /starfive_starlink_pmu/read_hit/ \
	-e /starfive_starlink_pmu/release_request/  \
	-e /starfive_starlink_pmu/write_hit/ \
	-e /starfive_starlink_pmu/write_miss/ \
	-e /starfive_starlink_pmu/write_request/ \
	-e /starfive_starlink_pmu/writeback/ \
	-e /starfive_starlink_pmu/read_request/ \
	-- openssl speed rsa2048
Doing 2048 bits private rsa's for 10s: 5 2048 bits private RSA's in
2.84s
Doing 2048 bits public rsa's for 10s: 169 2048 bits public RSA's in
2.42s
version: 3.0.11
built on: Tue Sep 19 13:02:31 2023 UTC
options: bn(64,64)
CPUINFO: N/A
                  sign    verify    sign/s verify/s
rsa 2048 bits 0.568000s 0.014320s      1.8     69.8
/////////
 Performance counter stats for 'system wide':

         649991998      starfive_starlink_pmu/cycles/
           1009690      starfive_starlink_pmu/read_miss/
           1079750      starfive_starlink_pmu/read_hit/
           2089405      starfive_starlink_pmu/release_request/
               129      starfive_starlink_pmu/write_hit/
                70      starfive_starlink_pmu/write_miss/
               194      starfive_starlink_pmu/write_request/
            150080      starfive_starlink_pmu/writeback/
           2089423      starfive_starlink_pmu/read_request/

      27.062755678 seconds time elapsed

Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
---
 drivers/perf/Kconfig                 |   9 +
 drivers/perf/Makefile                |   1 +
 drivers/perf/starfive_starlink_pmu.c | 654 +++++++++++++++++++++++++++
 include/linux/cpuhotplug.h           |   1 +
 4 files changed, 665 insertions(+)
 create mode 100644 drivers/perf/starfive_starlink_pmu.c

diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
index 273d67ecf6d2..93cb44ea2d8b 100644
--- a/drivers/perf/Kconfig
+++ b/drivers/perf/Kconfig
@@ -86,6 +86,15 @@ config RISCV_PMU_SBI
 	  full perf feature support i.e. counter overflow, privilege mode
 	  filtering, counter configuration.
=20
+config STARFIVE_STARLINK_PMU
+	depends on SOC_STARFIVE
+	bool "StarFive StarLink PMU"
+	help
+	   Provide support for StarLink Performance Monitor Unit.
+	   StarLink Performance Monitor Unit integrates one or more cores with
+	   an L3 memory system. The L3 cache events are added into perf event
+	   subsystem, allowing monitoring of various L3 cache perf events.
+
 config ARM_PMU_ACPI
 	depends on ARM_PMU && ACPI
 	def_bool y
diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
index 16b3ec4db916..e2153aee1e04 100644
--- a/drivers/perf/Makefile
+++ b/drivers/perf/Makefile
@@ -15,6 +15,7 @@ obj-$(CONFIG_QCOM_L3_PMU) +=3D qcom_l3_pmu.o
 obj-$(CONFIG_RISCV_PMU) +=3D riscv_pmu.o
 obj-$(CONFIG_RISCV_PMU_LEGACY) +=3D riscv_pmu_legacy.o
 obj-$(CONFIG_RISCV_PMU_SBI) +=3D riscv_pmu_sbi.o
+obj-$(CONFIG_STARFIVE_STARLINK_PMU) +=3D starfive_starlink_pmu.o
 obj-$(CONFIG_THUNDERX2_PMU) +=3D thunderx2_pmu.o
 obj-$(CONFIG_XGENE_PMU) +=3D xgene_pmu.o
 obj-$(CONFIG_ARM_SPE_PMU) +=3D arm_spe_pmu.o
diff --git a/drivers/perf/starfive_starlink_pmu.c b/drivers/perf/starfive=
_starlink_pmu.c
new file mode 100644
index 000000000000..660a952bb781
--- /dev/null
+++ b/drivers/perf/starfive_starlink_pmu.c
@@ -0,0 +1,654 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * StarFive's StarLink PMU driver
+ *
+ * Copyright (C) 2023 StarFive Technology Co., Ltd.
+ *
+ * Author: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
+ *
+ */
+
+#define STARLINK_PMU_PDEV_NAME	"starfive_starlink_pmu"
+#define pr_fmt(fmt)	STARLINK_PMU_PDEV_NAME ": " fmt
+
+#include <linux/bitmap.h>
+#include <linux/cpu_pm.h>
+#include <linux/io.h>
+#include <linux/irq.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/perf_event.h>
+#include <linux/platform_device.h>
+#include <linux/sysfs.h>
+
+#define STARLINK_PMU_MAX_COUNTERS			64
+#define STARLINK_PMU_NUM_COUNTERS			16
+#define STARLINK_PMU_IDX_CYCLE_COUNTER			63
+
+#define STARLINK_PMU_EVENT_SELECT			0x060
+#define STARLINK_PMU_EVENT_COUNTER			0x160
+#define STARLINK_PMU_COUNTER_MASK			GENMASK_ULL(63, 0)
+#define STARLINK_PMU_CYCLE_COUNTER			0x058
+
+#define STARLINK_PMU_CONTROL				0x040
+#define STARLINK_PMU_GLOBAL_ENABLE			BIT(0)
+
+#define STARLINK_PMU_INTERRUPT_ENABLE			0x050
+#define STARLINK_PMU_COUNTER_OVERFLOW_STATUS		0x048
+#define STARLINK_PMU_CYCLE_OVERFLOW_MASK		BIT(63)
+
+#define CYCLES					0x058
+#define CACHE_READ_REQUEST			0x04000701
+#define CACHE_WRITE_REQUEST			0x03000001
+#define CACHE_RELEASE_REQUEST			0x0003e001
+#define CACHE_READ_HIT				0x00901202
+#define CACHE_READ_MISS				0x04008002
+#define CACHE_WRITE_HIT				0x006c0002
+#define CACHE_WRITE_MISS			0x03000002
+#define CACHE_WRITEBACK				0x00000403
+
+#define to_starlink_pmu(p) (container_of(p, struct starlink_pmu, pmu))
+
+#define STARLINK_FORMAT_ATTR(_name, _config)				      \
+	(&((struct dev_ext_attribute[]) {				      \
+		{ .attr =3D __ATTR(_name, 0444, starlink_pmu_sysfs_format_show, NULL),=
 \
+		  .var =3D (void *)_config, }				      \
+	})[0].attr.attr)
+
+#define STARLINK_EVENT_ATTR(_name, _id)					     \
+	PMU_EVENT_ATTR_ID(_name, starlink_pmu_sysfs_event_show, _id)
+
+#define BIT_IS_SET(nr, bit) (((nr) >> (bit)) & 0x1)
+
+struct starlink_hw_events {
+	struct perf_event	*events[STARLINK_PMU_MAX_COUNTERS];
+	DECLARE_BITMAP(used_mask, STARLINK_PMU_MAX_COUNTERS);
+};
+
+struct starlink_pmu {
+	struct pmu					pmu;
+	struct starlink_hw_events			__percpu *hw_events;
+	struct hlist_node				node;
+	struct notifier_block				starlink_pmu_pm_nb;
+	void __iomem					*pmu_base;
+	cpumask_t					cpumask;
+	int						irq;
+};
+
+/* Formats Attr */
+static ssize_t
+starlink_pmu_sysfs_format_show(struct device *dev,
+			       struct device_attribute *attr,
+			       char *buf)
+{
+	struct dev_ext_attribute *eattr =3D container_of(attr,
+						       struct dev_ext_attribute, attr);
+
+	return sysfs_emit(buf, "%s\n", (char *)eattr->var);
+}
+
+static struct attribute *starlink_pmu_format_attrs[] =3D {
+	STARLINK_FORMAT_ATTR(event, "config:0-31"),
+	NULL,
+};
+
+static const struct attribute_group starlink_pmu_format_attr_group =3D {
+	.name =3D "format",
+	.attrs =3D starlink_pmu_format_attrs,
+};
+
+/* Events Attr */
+static ssize_t
+starlink_pmu_sysfs_event_show(struct device *dev,
+			      struct device_attribute *attr,
+			      char *buf)
+{
+	struct perf_pmu_events_attr *eattr =3D container_of(attr,
+							  struct perf_pmu_events_attr, attr);
+
+	return sysfs_emit(buf, "event=3D0x%02llx\n", eattr->id);
+}
+
+static struct attribute *starlink_pmu_event_attrs[] =3D {
+	STARLINK_EVENT_ATTR(cycles, CYCLES),
+	STARLINK_EVENT_ATTR(read_request, CACHE_READ_REQUEST),
+	STARLINK_EVENT_ATTR(write_request, CACHE_WRITE_REQUEST),
+	STARLINK_EVENT_ATTR(release_request, CACHE_RELEASE_REQUEST),
+	STARLINK_EVENT_ATTR(read_hit, CACHE_READ_HIT),
+	STARLINK_EVENT_ATTR(read_miss, CACHE_READ_MISS),
+	STARLINK_EVENT_ATTR(write_hit, CACHE_WRITE_HIT),
+	STARLINK_EVENT_ATTR(write_miss, CACHE_WRITE_MISS),
+	STARLINK_EVENT_ATTR(writeback, CACHE_WRITEBACK),
+	NULL,
+};
+
+static const struct attribute_group starlink_pmu_events_attr_group =3D {
+	.name =3D "events",
+	.attrs =3D starlink_pmu_event_attrs,
+};
+
+/* Cpumask Attr */
+static ssize_t
+cpumask_show(struct device *dev, struct device_attribute *attr, char *bu=
f)
+{
+	struct starlink_pmu *starlink_pmu =3D to_starlink_pmu(dev_get_drvdata(d=
ev));
+
+	return cpumap_print_to_pagebuf(true, buf, &starlink_pmu->cpumask);
+}
+
+static DEVICE_ATTR_RO(cpumask);
+
+static struct attribute *starlink_pmu_cpumask_attrs[] =3D {
+	&dev_attr_cpumask.attr,
+	NULL,
+};
+
+static const struct attribute_group starlink_pmu_cpumask_attr_group =3D =
{
+	.attrs =3D starlink_pmu_cpumask_attrs,
+};
+
+static const struct attribute_group *starlink_pmu_attr_groups[] =3D {
+	&starlink_pmu_format_attr_group,
+	&starlink_pmu_events_attr_group,
+	&starlink_pmu_cpumask_attr_group,
+	NULL,
+};
+
+void starlink_pmu_set_event_period(struct perf_event *event)
+{
+	struct starlink_pmu *starlink_pmu =3D to_starlink_pmu(event->pmu);
+	struct hw_perf_event *hwc =3D &event->hw;
+	int idx =3D event->hw.idx;
+
+	/*
+	 * Program counter to half of it's max count to handle
+	 * cases of extreme interrupt latency.
+	 */
+	u64 val =3D STARLINK_PMU_COUNTER_MASK >> 1;
+
+	local64_set(&hwc->prev_count, val);
+	if (hwc->config =3D=3D CYCLES)
+		writeq(val, starlink_pmu->pmu_base + STARLINK_PMU_CYCLE_COUNTER);
+	else
+		writeq(val, starlink_pmu->pmu_base + STARLINK_PMU_EVENT_COUNTER +
+		       idx * sizeof(u64));
+}
+
+static void starlink_pmu_counter_start(struct perf_event *event,
+				       struct starlink_pmu *starlink_pmu)
+{
+	struct hw_perf_event *hwc =3D &event->hw;
+	int idx =3D event->hw.idx;
+	u64 val;
+
+	/*
+	 * Enable counter overflow interrupt[63:0],
+	 * which is mapped as follow:
+	 *
+	 * event counter 0	- Bit [0]
+	 * event counter 1	- Bit [1]
+	 * ...
+	 * cycle counter	- Bit [63]
+	 */
+	val =3D readq(starlink_pmu->pmu_base + STARLINK_PMU_INTERRUPT_ENABLE);
+
+	if (hwc->config =3D=3D CYCLES) {
+		/*
+		 * Cycle count has its dedicated register, and it starts
+		 * counting as soon as STARLINK_PMU_GLOBAL_ENABLE is set.
+		 */
+
+		 /* Mask cycle counter overflow interrupt enable bit */
+		val |=3D STARLINK_PMU_CYCLE_OVERFLOW_MASK;
+	} else {
+		/* Enable event to monitor through event select register */
+		writeq(event->hw.config, starlink_pmu->pmu_base +
+		       STARLINK_PMU_EVENT_SELECT + idx * sizeof(u64));
+
+		/* Mask event counter overflow interrupt enable bit */
+		val |=3D (1 << idx);
+	}
+
+	writeq(val, starlink_pmu->pmu_base + STARLINK_PMU_INTERRUPT_ENABLE);
+
+	/* Enable the counter to start counting */
+	writeq(STARLINK_PMU_GLOBAL_ENABLE, starlink_pmu->pmu_base +
+	       STARLINK_PMU_CONTROL);
+}
+
+static void starlink_pmu_counter_stop(struct perf_event *event,
+				      struct starlink_pmu *starlink_pmu)
+{
+	struct hw_perf_event *hwc =3D &event->hw;
+	int idx =3D event->hw.idx;
+	u64 val;
+
+	/* Stop counter */
+	val =3D readq(starlink_pmu->pmu_base + STARLINK_PMU_CONTROL);
+	val &=3D ~STARLINK_PMU_GLOBAL_ENABLE;
+	writeq(val, starlink_pmu->pmu_base + STARLINK_PMU_CONTROL);
+
+	/* Disable counter overflow interrupt */
+	val =3D readq(starlink_pmu->pmu_base + STARLINK_PMU_INTERRUPT_ENABLE);
+	if (hwc->config =3D=3D CYCLES)
+		val &=3D ~STARLINK_PMU_CYCLE_OVERFLOW_MASK;
+	else
+		val &=3D ~(1 << idx);
+
+	writeq(val, starlink_pmu->pmu_base + STARLINK_PMU_INTERRUPT_ENABLE);
+}
+
+static void starlink_pmu_update(struct perf_event *event)
+{
+	struct starlink_pmu *starlink_pmu =3D to_starlink_pmu(event->pmu);
+	struct hw_perf_event *hwc =3D &event->hw;
+	int idx =3D hwc->idx;
+	u64 prev_raw_count, new_raw_count;
+	u64 oldval;
+	u64 delta;
+
+	do {
+		prev_raw_count =3D local64_read(&hwc->prev_count);
+		if (hwc->config =3D=3D CYCLES)
+			new_raw_count =3D readq(starlink_pmu->pmu_base +
+					      STARLINK_PMU_CYCLE_COUNTER);
+		else
+			new_raw_count =3D readq(starlink_pmu->pmu_base +
+					      STARLINK_PMU_EVENT_COUNTER +
+					      idx * sizeof(u64));
+		oldval =3D local64_cmpxchg(&hwc->prev_count, prev_raw_count,
+					 new_raw_count);
+	} while (oldval !=3D prev_raw_count);
+
+	delta =3D (new_raw_count - prev_raw_count) & STARLINK_PMU_COUNTER_MASK;
+	local64_add(delta, &event->count);
+}
+
+static void starlink_pmu_start(struct perf_event *event, int flags)
+{
+	struct starlink_pmu *starlink_pmu =3D to_starlink_pmu(event->pmu);
+	struct hw_perf_event *hwc =3D &event->hw;
+
+	if (WARN_ON_ONCE(!(hwc->state & PERF_HES_STOPPED)))
+		return;
+
+	if (flags & PERF_EF_RELOAD)
+		WARN_ON_ONCE(!(event->hw.state & PERF_HES_UPTODATE));
+
+	hwc->state =3D 0;
+
+	starlink_pmu_set_event_period(event);
+	starlink_pmu_counter_start(event, starlink_pmu);
+
+	perf_event_update_userpage(event);
+}
+
+static void starlink_pmu_stop(struct perf_event *event, int flags)
+{
+	struct starlink_pmu *starlink_pmu =3D to_starlink_pmu(event->pmu);
+	struct hw_perf_event *hwc =3D &event->hw;
+
+	if (hwc->state & PERF_HES_STOPPED)
+		return;
+
+	starlink_pmu_counter_stop(event, starlink_pmu);
+	starlink_pmu_update(event);
+	hwc->state |=3D PERF_HES_STOPPED | PERF_HES_UPTODATE;
+}
+
+static int starlink_pmu_add(struct perf_event *event, int flags)
+{
+	struct starlink_pmu *starlink_pmu =3D to_starlink_pmu(event->pmu);
+	struct starlink_hw_events *hw_events =3D
+					this_cpu_ptr(starlink_pmu->hw_events);
+	struct hw_perf_event *hwc =3D &event->hw;
+	unsigned long *used_mask =3D hw_events->used_mask;
+	u32 n_events =3D STARLINK_PMU_NUM_COUNTERS;
+	int idx;
+
+	/*
+	 * Cycle counter has dedicated register to hold counter value.
+	 * Event other than cycle count has to be enabled through
+	 * event select register, and assigned with independent counter
+	 * as they appear.
+	 */
+
+	if (hwc->config =3D=3D CYCLES) {
+		idx =3D STARLINK_PMU_IDX_CYCLE_COUNTER;
+	} else {
+		idx =3D find_first_zero_bit(used_mask, n_events);
+		/* All counter are in use */
+		if (idx < 0)
+			return idx;
+
+		set_bit(idx, used_mask);
+	}
+	/* Tie counter idx to this event */
+	hwc->idx =3D idx;
+	hw_events->events[idx] =3D event;
+	hwc->state =3D PERF_HES_UPTODATE | PERF_HES_STOPPED;
+
+	if (flags & PERF_EF_START)
+		starlink_pmu_start(event, PERF_EF_RELOAD);
+
+	perf_event_update_userpage(event);
+
+	return 0;
+}
+
+static void starlink_pmu_del(struct perf_event *event, int flags)
+{
+	struct starlink_pmu *starlink_pmu =3D to_starlink_pmu(event->pmu);
+	struct starlink_hw_events *hw_events =3D
+					this_cpu_ptr(starlink_pmu->hw_events);
+	struct hw_perf_event *hwc =3D &event->hw;
+
+	starlink_pmu_stop(event, PERF_EF_UPDATE);
+	hw_events->events[hwc->idx] =3D NULL;
+	clear_bit(hwc->idx, hw_events->used_mask);
+
+	perf_event_update_userpage(event);
+}
+
+static bool starlink_pmu_validate_event_group(struct perf_event *event)
+{
+	struct perf_event *leader =3D event->group_leader;
+	struct perf_event *sibling;
+	int counter =3D 1;
+
+	/*
+	 * Ensure hardware events in the group are on the same PMU,
+	 * software events are acceptable.
+	 */
+	if (event->group_leader->pmu !=3D event->pmu &&
+	    !is_software_event(event->group_leader))
+		return false;
+
+	for_each_sibling_event(sibling, leader) {
+		if (sibling->pmu !=3D event->pmu && !is_software_event(sibling))
+			return false;
+
+		counter +=3D 1;
+	}
+	/*
+	 * Limit the number of requested counter to
+	 * counter available on the HW.
+	 */
+	return counter <=3D STARLINK_PMU_NUM_COUNTERS;
+}
+
+static int starlink_pmu_event_init(struct perf_event *event)
+{
+	struct starlink_pmu *starlink_pmu =3D to_starlink_pmu(event->pmu);
+	struct hw_perf_event *hwc =3D &event->hw;
+
+	/*
+	 * Sampling is not supported, as counters are shared
+	 * by all CPU.
+	 */
+	if (hwc->sample_period)
+		return -EOPNOTSUPP;
+
+	/*
+	 * Per-task and attach to a task are not supported,
+	 * as uncore events are not specific to any CPU.
+	 */
+	if (event->cpu < 0 || event->attach_state & PERF_ATTACH_TASK)
+		return -EOPNOTSUPP;
+
+	/* Validate event group */
+	if (!starlink_pmu_validate_event_group(event))
+		return -EINVAL;
+
+	hwc->idx =3D -1;
+	hwc->config =3D event->attr.config;
+	event->cpu =3D cpumask_first(&starlink_pmu->cpumask);
+
+	return 0;
+}
+
+static irqreturn_t starlink_pmu_handle_irq(int irq_num, void *data)
+{
+	struct starlink_pmu *starlink_pmu =3D data;
+	struct starlink_hw_events *hw_events =3D
+					this_cpu_ptr(starlink_pmu->hw_events);
+	bool handled =3D false;
+	int idx;
+	u64 overflow_status;
+
+	for (idx =3D 0; idx < STARLINK_PMU_MAX_COUNTERS; idx++) {
+		struct perf_event *event =3D hw_events->events[idx];
+
+		overflow_status =3D readq(starlink_pmu->pmu_base +
+					STARLINK_PMU_COUNTER_OVERFLOW_STATUS);
+		if (!BIT_IS_SET(overflow_status, idx))
+			continue;
+
+		/* Clear event counter overflow interrupt */
+		writeq(1 << idx, starlink_pmu->pmu_base +
+		       STARLINK_PMU_COUNTER_OVERFLOW_STATUS);
+
+		if (!event)
+			continue;
+
+		starlink_pmu_update(event);
+		starlink_pmu_set_event_period(event);
+		handled =3D true;
+	}
+	return IRQ_RETVAL(handled);
+}
+
+static int starlink_setup_irqs(struct starlink_pmu *starlink_pmu,
+			       struct platform_device *pdev)
+{
+	int ret, irq;
+
+	irq =3D platform_get_irq(pdev, 0);
+	if (irq < 0)
+		return -EINVAL;
+
+	ret =3D devm_request_irq(&pdev->dev, irq, starlink_pmu_handle_irq,
+			       0, STARLINK_PMU_PDEV_NAME, starlink_pmu);
+	if (ret) {
+		dev_warn(&pdev->dev, "Failed to request IRQ %d\n", irq);
+		return ret;
+	}
+
+	starlink_pmu->irq =3D irq;
+
+	return 0;
+}
+
+#ifdef CONFIG_CPU_PM
+static int starlink_pmu_pm_notify(struct notifier_block *b,
+				  unsigned long cmd, void *v)
+{
+	struct starlink_pmu *starlink_pmu =3D container_of(b, struct starlink_p=
mu,
+							 starlink_pmu_pm_nb);
+	struct starlink_hw_events *hw_events =3D
+					this_cpu_ptr(starlink_pmu->hw_events);
+	int enabled =3D bitmap_weight(hw_events->used_mask,
+				    STARLINK_PMU_MAX_COUNTERS);
+	struct perf_event *event;
+	int idx;
+
+	if (!enabled)
+		return NOTIFY_OK;
+
+	for (idx =3D 0; idx < STARLINK_PMU_MAX_COUNTERS; idx++) {
+		event =3D hw_events->events[idx];
+		if (!event)
+			continue;
+
+		switch (cmd) {
+		case CPU_PM_ENTER:
+			/* Stop and update the counter */
+			starlink_pmu_stop(event, PERF_EF_UPDATE);
+			break;
+		case CPU_PM_EXIT:
+		case CPU_PM_ENTER_FAILED:
+			/* Restore and enable the counter */
+			starlink_pmu_start(event, PERF_EF_RELOAD);
+			break;
+		default:
+			break;
+		}
+	}
+
+	return NOTIFY_OK;
+}
+
+static int starlink_pmu_pm_register(struct starlink_pmu *starlink_pmu)
+{
+	starlink_pmu->starlink_pmu_pm_nb.notifier_call =3D starlink_pmu_pm_noti=
fy;
+	return cpu_pm_register_notifier(&starlink_pmu->starlink_pmu_pm_nb);
+}
+
+static void starlink_pmu_pm_unregister(struct starlink_pmu *starlink_pmu=
)
+{
+	cpu_pm_unregister_notifier(&starlink_pmu->starlink_pmu_pm_nb);
+}
+#else
+static inline int
+starlink_pmu_pm_register(struct starlink_pmu *starlink_pmu) { return 0; =
}
+static inline void
+starlink_pmu_pm_unregister(struct starlink_pmu *starlink_pmu) { }
+#endif
+
+static void starlink_pmu_destroy(struct starlink_pmu *starlink_pmu)
+{
+	starlink_pmu_pm_unregister(starlink_pmu);
+	cpuhp_state_remove_instance(CPUHP_AP_PERF_RISCV_STARFIVE_STARLINK_ONLIN=
E,
+				    &starlink_pmu->node);
+}
+
+static int starlink_pmu_probe(struct platform_device *pdev)
+{
+	struct starlink_pmu *starlink_pmu;
+	struct starlink_hw_events *hw_events;
+	struct resource *res;
+	int cpuid, i, ret;
+
+	starlink_pmu =3D devm_kzalloc(&pdev->dev, sizeof(*starlink_pmu), GFP_KE=
RNEL);
+	if (!starlink_pmu)
+		return -ENOMEM;
+
+	starlink_pmu->pmu_base =3D
+			devm_platform_get_and_ioremap_resource(pdev, 0, &res);
+	if (IS_ERR(starlink_pmu->pmu_base))
+		return PTR_ERR(starlink_pmu->pmu_base);
+
+	ret =3D starlink_setup_irqs(starlink_pmu, pdev);
+
+	ret =3D cpuhp_state_add_instance(CPUHP_AP_PERF_RISCV_STARFIVE_STARLINK_=
ONLINE,
+				       &starlink_pmu->node);
+	if (ret)
+		return ret;
+
+	ret =3D starlink_pmu_pm_register(starlink_pmu);
+	if (ret)
+		starlink_pmu_destroy(starlink_pmu);
+
+	starlink_pmu->hw_events =3D alloc_percpu_gfp(struct starlink_hw_events,
+						   GFP_KERNEL);
+	if (!starlink_pmu->hw_events) {
+		pr_info("Failed to allocate per-cpu PMU data.\n");
+		kfree(starlink_pmu);
+		return -ENOMEM;
+	}
+
+	for_each_possible_cpu(cpuid) {
+		hw_events =3D per_cpu_ptr(starlink_pmu->hw_events, cpuid);
+		for (i =3D 0; i < STARLINK_PMU_MAX_COUNTERS; i++)
+			hw_events->events[i] =3D NULL;
+	}
+
+	starlink_pmu->pmu =3D (struct pmu) {
+		.task_ctx_nr	=3D perf_invalid_context,
+		.event_init	=3D starlink_pmu_event_init,
+		.add		=3D starlink_pmu_add,
+		.del		=3D starlink_pmu_del,
+		.start		=3D starlink_pmu_start,
+		.stop		=3D starlink_pmu_stop,
+		.read		=3D starlink_pmu_update,
+		.attr_groups	=3D starlink_pmu_attr_groups,
+	};
+
+	ret =3D perf_pmu_register(&starlink_pmu->pmu, STARLINK_PMU_PDEV_NAME, -=
1);
+	if (ret)
+		starlink_pmu_destroy(starlink_pmu);
+
+	dev_info(&pdev->dev, "Registered StarFive's StarLink PMU\n");
+
+	return ret;
+}
+
+static const struct of_device_id starlink_pmu_of_match[] =3D {
+	{ .compatible =3D "starfive,starlink-pmu", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, starlink_pmu_of_match);
+
+static struct platform_driver starlink_pmu_driver =3D {
+	.driver =3D {
+		.name	=3D STARLINK_PMU_PDEV_NAME,
+		.of_match_table =3D starlink_pmu_of_match,
+		.suppress_bind_attrs =3D true,
+	},
+	.probe =3D starlink_pmu_probe,
+};
+
+static int
+starlink_pmu_online_cpu(unsigned int cpu, struct hlist_node *node)
+{
+	struct starlink_pmu *starlink_pmu =3D hlist_entry_safe(node,
+							     struct starlink_pmu,
+							     node);
+
+	if (cpumask_empty(&starlink_pmu->cpumask))
+		cpumask_set_cpu(cpu, &starlink_pmu->cpumask);
+
+	WARN_ON(irq_set_affinity(starlink_pmu->irq, cpumask_of(cpu)));
+
+	return 0;
+}
+
+static int
+starlink_pmu_offline_cpu(unsigned int cpu, struct hlist_node *node)
+{
+	struct starlink_pmu *starlink_pmu =3D hlist_entry_safe(node,
+							     struct starlink_pmu,
+							     node);
+	unsigned int target;
+
+	if (!cpumask_test_and_clear_cpu(cpu, &starlink_pmu->cpumask))
+		return 0;
+
+	target =3D cpumask_any_but(cpu_online_mask, cpu);
+	if (target >=3D nr_cpu_ids)
+		return 0;
+
+	perf_pmu_migrate_context(&starlink_pmu->pmu, cpu, target);
+
+	cpumask_set_cpu(target, &starlink_pmu->cpumask);
+	WARN_ON(irq_set_affinity(starlink_pmu->irq, cpumask_of(target)));
+
+	return 0;
+}
+
+static int __init starlink_pmu_init(void)
+{
+	int ret;
+
+	ret =3D cpuhp_setup_state_multi(CPUHP_AP_PERF_RISCV_STARFIVE_STARLINK_O=
NLINE,
+				      "soc/starfive/starlink_pmu:online",
+				      starlink_pmu_online_cpu,
+				      starlink_pmu_offline_cpu);
+	if (ret)
+		return ret;
+
+	return platform_driver_register(&starlink_pmu_driver);
+}
+
+device_initcall(starlink_pmu_init);
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index d305db70674b..6d9eb70c13d4 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -219,6 +219,7 @@ enum cpuhp_state {
 	CPUHP_AP_PERF_X86_CQM_ONLINE,
 	CPUHP_AP_PERF_X86_CSTATE_ONLINE,
 	CPUHP_AP_PERF_X86_IDXD_ONLINE,
+	CPUHP_AP_PERF_RISCV_STARFIVE_STARLINK_ONLINE,
 	CPUHP_AP_PERF_S390_CF_ONLINE,
 	CPUHP_AP_PERF_S390_SF_ONLINE,
 	CPUHP_AP_PERF_ARM_CCI_ONLINE,
--=20
2.25.1


