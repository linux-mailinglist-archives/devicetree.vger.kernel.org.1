Return-Path: <devicetree+bounces-166753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8EAA88566
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 16:42:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24D033BF461
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 14:33:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D90D82522A7;
	Mon, 14 Apr 2025 14:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=couthit.com header.i=@couthit.com header.b="qq3f/dhR"
X-Original-To: devicetree@vger.kernel.org
Received: from server.wki.vra.mybluehostin.me (server.wki.vra.mybluehostin.me [162.240.238.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84D919BBC;
	Mon, 14 Apr 2025 14:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.240.238.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744639772; cv=none; b=Yrl6dyMMxklwzi/D+FiSQMg/fgA6iqyIbVavK4RGDmYfKvYhTsfpdJigiESYW1KkiUGwzlG6I57IrfGViPVWHruCfWJf6+HY0tfFihS9V+2nHYTes2sM9F5qLJBOqc8CVvvaBqx3c47pRjE+MdbmigFl+HmN2k0+7SVa+zKAhgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744639772; c=relaxed/simple;
	bh=J9CBTXQEtL+7OUENS3eVbM6Sls02wB4DZyGzF4UJZyM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aCEkrHZu0602hXAqxre/oXQdIf0jU1jU6Z5lb3ip0YHsJKGmNLEKVDEZr9S/RAVWooaMfo9lyDh8Eldq4lnavFnkxY7PxllzRB2OLkiZYbLLk8G2qM/7XUAT9C/l1QTitONhbE6OELfGQ/+MEAJckne8Y0052CNJQmjEv4xI8aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=couthit.com; spf=pass smtp.mailfrom=couthit.com; dkim=pass (2048-bit key) header.d=couthit.com header.i=@couthit.com header.b=qq3f/dhR; arc=none smtp.client-ip=162.240.238.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=couthit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=couthit.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=couthit.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=rb3jpYcr1aAKgglyM97oOu4+KuEmV0wKwC1KNpWZoYY=; b=qq3f/dhRnoDYujoqNP86sDB7RO
	0jURVDg3h3f+ogGDR+tkiee1dXlOikdLS3/hXeFPDpeE31bg9+zfFZKgg3N8tJZkT+IQLJoarYdmj
	D2D/BXf+dZ0tW9jeU9H2urXAZiatDDsSOVvJH6PJy1Bz3D49xH4JCW9JNVPf6hv+37wpQjmN5PGol
	ELOlK86juJJs6Pc8x8AniQ5mwS5A1mBgKVs/Qn+qZviXt/eJel0o4YiKCPPOoMn8UeOblDXHR5lHU
	WubBsccC9FOQ26oNAmOYysNhz2KClI1aC68r4xTnHbiX75hX5CfKQbSFEP4h2Xn4cL45hwnZBtfFj
	8Js9ASWg==;
Received: from [122.175.9.182] (port=16565 helo=cypher.couthit.local)
	by server.wki.vra.mybluehostin.me with esmtpa (Exim 4.98.1)
	(envelope-from <parvathi@couthit.com>)
	id 1u4KV3-00000000395-021m;
	Mon, 14 Apr 2025 19:39:25 +0530
From: Parvathi Pudi <parvathi@couthit.com>
To: danishanwar@ti.com,
	rogerq@kernel.org,
	andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nm@ti.com,
	ssantosh@kernel.org,
	tony@atomide.com,
	richardcochran@gmail.com,
	glaroque@baylibre.com,
	schnelle@linux.ibm.com,
	m-karicheri2@ti.com,
	s.hauer@pengutronix.de,
	rdunlap@infradead.org,
	diogo.ivo@siemens.com,
	basharath@couthit.com,
	parvathi@couthit.com,
	horms@kernel.org,
	jacob.e.keller@intel.com,
	m-malladi@ti.com,
	javier.carrasco.cruz@gmail.com,
	afd@ti.com,
	s-anna@ti.com
Cc: linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	pratheesh@ti.com,
	prajith@ti.com,
	vigneshr@ti.com,
	praneeth@ti.com,
	srk@ti.com,
	rogerq@ti.com,
	krishna@couthit.com,
	pmohan@couthit.com,
	mohan@couthit.com
Subject: [PATCH net-next v5 11/11] net: ti: prueth: Adds PTP OC Support for AM335x and AM437x
Date: Mon, 14 Apr 2025 19:37:51 +0530
Message-Id: <20250414140751.1916719-12-parvathi@couthit.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250414113458.1913823-1-parvathi@couthit.com>
References: <20250414113458.1913823-1-parvathi@couthit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.wki.vra.mybluehostin.me
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - couthit.com
X-Get-Message-Sender-Via: server.wki.vra.mybluehostin.me: authenticated_id: parvathi@couthit.com
X-Authenticated-Sender: server.wki.vra.mybluehostin.me: parvathi@couthit.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

From: Roger Quadros <rogerq@ti.com>

PRU-ICSS IEP module, which is capable of timestamping RX and
TX packets at HW level, is used for time synchronization by PTP4L.

This change includes interaction between firmware/driver and user
application (ptp4l) with required packet timestamps.

RX SOF timestamp comes along with packet and firmware will rise
interrupt with TX SOF timestamp after pushing the packet on to the wire.

IEP driver available in upstream linux as part of ICSSG assumes 64-bit
timestamp value from firmware.

Enhanced the IEP driver to support the legacy 32-bit timestamp
conversion to 64-bit timestamp by using 2 fields as below:
- 32-bit HW timestamp from SOF event in ns
- Seconds value maintained in driver.

Currently ordinary clock (OC) configuration has been validated with
Linux ptp4l.

Signed-off-by: Roger Quadros <rogerq@ti.com>
Signed-off-by: Andrew F. Davis <afd@ti.com>
Signed-off-by: Basharath Hussain Khaja <basharath@couthit.com>
Signed-off-by: Parvathi Pudi <parvathi@couthit.com>
---
 drivers/net/ethernet/ti/icssg/icss_iep.c     | 155 ++++++++++++++++++-
 drivers/net/ethernet/ti/icssg/icss_iep.h     |  11 ++
 drivers/net/ethernet/ti/icssm/icssm_prueth.c |  58 ++++++-
 drivers/net/ethernet/ti/icssm/icssm_prueth.h |  10 ++
 4 files changed, 229 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/ti/icssg/icss_iep.c b/drivers/net/ethernet/ti/icssg/icss_iep.c
index 8522901ec721..32d9f50163b3 100644
--- a/drivers/net/ethernet/ti/icssg/icss_iep.c
+++ b/drivers/net/ethernet/ti/icssg/icss_iep.c
@@ -14,12 +14,15 @@
 #include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
+#include <linux/timecounter.h>
+#include <linux/clocksource.h>
 #include <linux/timekeeping.h>
 #include <linux/interrupt.h>
 #include <linux/of_irq.h>
 #include <linux/workqueue.h>
 
 #include "icss_iep.h"
+#include "../icssm/icssm_prueth_ptp.h"
 
 #define IEP_MAX_DEF_INC		0xf
 #define IEP_MAX_COMPEN_INC		0xfff
@@ -53,6 +56,14 @@
 #define IEP_CAP_CFG_CAPNR_1ST_EVENT_EN(n)	BIT(LATCH_INDEX(n))
 #define IEP_CAP_CFG_CAP_ASYNC_EN(n)		BIT(LATCH_INDEX(n) + 10)
 
+#define IEP_TC_DEFAULT_SHIFT         28
+#define IEP_TC_INCR5_MULT            BIT(28)
+
+/* Polling period - how often iep_overflow_check() is called */
+#define IEP_OVERFLOW_CHECK_PERIOD_MS   50
+
+#define TIMESYNC_SECONDS_COUNT_SIZE    6
+
 /**
  * icss_iep_get_count_hi() - Get the upper 32 bit IEP counter
  * @iep: Pointer to structure representing IEP.
@@ -87,6 +98,28 @@ int icss_iep_get_count_low(struct icss_iep *iep)
 }
 EXPORT_SYMBOL_GPL(icss_iep_get_count_low);
 
+static inline u64 icss_iep_get_count32(struct icss_iep *iep)
+{
+	void __iomem *sram = iep->sram;
+	u64 v_sec = 0;
+	u32 v_ns = 0;
+	u64 v = 0;
+
+	v_ns = icss_iep_get_count_low(iep);
+	memcpy_fromio(&v_sec, sram + TIMESYNC_SECONDS_COUNT_OFFSET,
+		      TIMESYNC_SECONDS_COUNT_SIZE);
+	v = (v_sec * NSEC_PER_SEC) + v_ns;
+
+	return v;
+}
+
+static u64 icss_iep_cc_read(const struct cyclecounter *cc)
+{
+	struct icss_iep *iep = container_of(cc, struct icss_iep, cc);
+
+	return icss_iep_get_count32(iep);
+}
+
 /**
  * icss_iep_get_ptp_clock_idx() - Get PTP clock index using IEP driver
  * @iep: Pointer to structure representing IEP.
@@ -280,6 +313,78 @@ static void icss_iep_set_slow_compensation_count(struct icss_iep *iep,
 	regmap_write(iep->map, ICSS_IEP_SLOW_COMPEN_REG, compen_count);
 }
 
+/* PTP PHC operations */
+static int icss_iep_ptp_adjfine_v1(struct ptp_clock_info *ptp, long scaled_ppm)
+{
+	struct icss_iep *iep = container_of(ptp, struct icss_iep, ptp_info);
+	s32 ppb = scaled_ppm_to_ppb(scaled_ppm);
+	struct timespec64 ts;
+	int neg_adj = 0;
+	u32 diff, mult;
+	u64 adj;
+
+	mutex_lock(&iep->ptp_clk_mutex);
+
+	if (ppb < 0) {
+		neg_adj = 1;
+		ppb = -ppb;
+	}
+	mult = iep->cc_mult;
+	adj = mult;
+	adj *= ppb;
+	diff = div_u64(adj, 1000000000ULL);
+
+	ts = ns_to_timespec64(timecounter_read(&iep->tc));
+	pr_debug("iep ptp adjfine check at %lld.%09lu\n", ts.tv_sec,
+		 ts.tv_nsec);
+
+	iep->cc.mult = neg_adj ? mult - diff : mult + diff;
+
+	mutex_unlock(&iep->ptp_clk_mutex);
+
+	return 0;
+}
+
+static int icss_iep_ptp_adjtime_v1(struct ptp_clock_info *ptp, s64 delta)
+{
+	struct icss_iep *iep = container_of(ptp, struct icss_iep, ptp_info);
+
+	mutex_lock(&iep->ptp_clk_mutex);
+	timecounter_adjtime(&iep->tc, delta);
+	mutex_unlock(&iep->ptp_clk_mutex);
+
+	return 0;
+}
+
+static int icss_iep_ptp_gettimeex_v1(struct ptp_clock_info *ptp,
+				     struct timespec64 *ts,
+				     struct ptp_system_timestamp *sts)
+{
+	struct icss_iep *iep = container_of(ptp, struct icss_iep, ptp_info);
+	u64 ns;
+
+	mutex_lock(&iep->ptp_clk_mutex);
+	ns = timecounter_read(&iep->tc);
+	*ts = ns_to_timespec64(ns);
+	mutex_unlock(&iep->ptp_clk_mutex);
+
+	return 0;
+}
+
+static int icss_iep_ptp_settime_v1(struct ptp_clock_info *ptp,
+				   const struct timespec64 *ts)
+{
+	struct icss_iep *iep = container_of(ptp, struct icss_iep, ptp_info);
+	u64 ns;
+
+	mutex_lock(&iep->ptp_clk_mutex);
+	ns = timespec64_to_ns(ts);
+	timecounter_init(&iep->tc, &iep->cc, ns);
+	mutex_unlock(&iep->ptp_clk_mutex);
+
+	return 0;
+}
+
 /* PTP PHC operations */
 static int icss_iep_ptp_adjfine(struct ptp_clock_info *ptp, long scaled_ppm)
 {
@@ -674,6 +779,17 @@ static int icss_iep_ptp_enable(struct ptp_clock_info *ptp,
 	return -EOPNOTSUPP;
 }
 
+static long icss_iep_overflow_check(struct ptp_clock_info *ptp)
+{
+	struct icss_iep *iep = container_of(ptp, struct icss_iep, ptp_info);
+	unsigned long delay = iep->ovfl_check_period;
+	struct timespec64 ts;
+
+	ts = ns_to_timespec64(timecounter_read(&iep->tc));
+
+	pr_debug("iep overflow check at %lld.%09lu\n", ts.tv_sec, ts.tv_nsec);
+	return (long)delay;
+}
 static struct ptp_clock_info icss_iep_ptp_info = {
 	.owner		= THIS_MODULE,
 	.name		= "ICSS IEP timer",
@@ -685,6 +801,18 @@ static struct ptp_clock_info icss_iep_ptp_info = {
 	.enable		= icss_iep_ptp_enable,
 };
 
+static struct ptp_clock_info icss_iep_ptp_info_v1 = {
+	.owner		= THIS_MODULE,
+	.name		= "ICSS IEP timer",
+	.max_adj	= 10000000,
+	.adjfine	= icss_iep_ptp_adjfine_v1,
+	.adjtime	= icss_iep_ptp_adjtime_v1,
+	.gettimex64	= icss_iep_ptp_gettimeex_v1,
+	.settime64	= icss_iep_ptp_settime_v1,
+	.enable		= icss_iep_ptp_enable,
+	.do_aux_work	= icss_iep_overflow_check,
+};
+
 struct icss_iep *icss_iep_get_idx(struct device_node *np, int idx)
 {
 	struct platform_device *pdev;
@@ -706,6 +834,18 @@ struct icss_iep *icss_iep_get_idx(struct device_node *np, int idx)
 	if (!iep)
 		return ERR_PTR(-EPROBE_DEFER);
 
+	if (iep->plat_data->iep_rev == IEP_REV_V1_0) {
+		iep->cc.shift = IEP_TC_DEFAULT_SHIFT;
+		iep->cc.mult = IEP_TC_INCR5_MULT;
+
+		iep->cc.read = icss_iep_cc_read;
+		iep->cc.mask = CLOCKSOURCE_MASK(64);
+
+		iep->ovfl_check_period =
+			msecs_to_jiffies(IEP_OVERFLOW_CHECK_PERIOD_MS);
+		iep->cc_mult = iep->cc.mult;
+	}
+
 	device_lock(iep->dev);
 	if (iep->client_np) {
 		device_unlock(iep->dev);
@@ -800,6 +940,10 @@ int icss_iep_init(struct icss_iep *iep, const struct icss_iep_clockops *clkops,
 		icss_iep_enable(iep);
 	icss_iep_settime(iep, ktime_get_real_ns());
 
+	if (iep->plat_data->iep_rev == IEP_REV_V1_0)
+		timecounter_init(&iep->tc, &iep->cc,
+				 ktime_to_ns(ktime_get_real()));
+
 	iep->ptp_clock = ptp_clock_register(&iep->ptp_info, iep->dev);
 	if (IS_ERR(iep->ptp_clock)) {
 		ret = PTR_ERR(iep->ptp_clock);
@@ -807,6 +951,9 @@ int icss_iep_init(struct icss_iep *iep, const struct icss_iep_clockops *clkops,
 		dev_err(iep->dev, "Failed to register ptp clk %d\n", ret);
 	}
 
+	if (iep->plat_data->iep_rev == IEP_REV_V1_0)
+		ptp_schedule_worker(iep->ptp_clock, iep->ovfl_check_period);
+
 	return ret;
 }
 EXPORT_SYMBOL_GPL(icss_iep_init);
@@ -884,7 +1031,11 @@ static int icss_iep_probe(struct platform_device *pdev)
 		return PTR_ERR(iep->map);
 	}
 
-	iep->ptp_info = icss_iep_ptp_info;
+	if (iep->plat_data->iep_rev == IEP_REV_V1_0)
+		iep->ptp_info = icss_iep_ptp_info_v1;
+	else
+		iep->ptp_info = icss_iep_ptp_info;
+
 	mutex_init(&iep->ptp_clk_mutex);
 	dev_set_drvdata(dev, iep);
 	icss_iep_disable(iep);
@@ -1009,6 +1160,7 @@ static const struct icss_iep_plat_data am57xx_icss_iep_plat_data = {
 		[ICSS_IEP_SYNC_START_REG] = 0x19c,
 	},
 	.config = &am654_icss_iep_regmap_config,
+	.iep_rev = IEP_REV_V2_1,
 };
 
 static bool am335x_icss_iep_valid_reg(struct device *dev, unsigned int reg)
@@ -1062,6 +1214,7 @@ static const struct icss_iep_plat_data am335x_icss_iep_plat_data = {
 		[ICSS_IEP_SYNC_START_REG] = 0x11C,
 	},
 	.config = &am335x_icss_iep_regmap_config,
+	.iep_rev = IEP_REV_V1_0,
 };
 
 static const struct of_device_id icss_iep_of_match[] = {
diff --git a/drivers/net/ethernet/ti/icssg/icss_iep.h b/drivers/net/ethernet/ti/icssg/icss_iep.h
index 0bdca0155abd..437153350197 100644
--- a/drivers/net/ethernet/ti/icssg/icss_iep.h
+++ b/drivers/net/ethernet/ti/icssg/icss_iep.h
@@ -47,6 +47,11 @@ enum {
 	ICSS_IEP_MAX_REGS,
 };
 
+enum iep_revision {
+	IEP_REV_V1_0 = 0,
+	IEP_REV_V2_1
+};
+
 /**
  * struct icss_iep_plat_data - Plat data to handle SoC variants
  * @config: Regmap configuration data
@@ -57,11 +62,13 @@ struct icss_iep_plat_data {
 	const struct regmap_config *config;
 	u32 reg_offs[ICSS_IEP_MAX_REGS];
 	u32 flags;
+	enum iep_revision iep_rev;
 };
 
 struct icss_iep {
 	struct device *dev;
 	void __iomem *base;
+	void __iomem *sram;
 	const struct icss_iep_plat_data *plat_data;
 	struct regmap *map;
 	struct device_node *client_np;
@@ -70,6 +77,10 @@ struct icss_iep {
 	struct ptp_clock_info ptp_info;
 	struct ptp_clock *ptp_clock;
 	struct mutex ptp_clk_mutex;	/* PHC access serializer */
+	u32 cc_mult; /* for the nominal frequency */
+	struct cyclecounter cc;
+	struct timecounter tc;
+	unsigned long ovfl_check_period;
 	u32 def_inc;
 	s16 slow_cmp_inc;
 	u32 slow_cmp_count;
diff --git a/drivers/net/ethernet/ti/icssm/icssm_prueth.c b/drivers/net/ethernet/ti/icssm/icssm_prueth.c
index 87b366030aa1..87df29308fbf 100644
--- a/drivers/net/ethernet/ti/icssm/icssm_prueth.c
+++ b/drivers/net/ethernet/ti/icssm/icssm_prueth.c
@@ -39,6 +39,8 @@
 #define TX_START_DELAY		0x40
 #define TX_CLK_DELAY_100M	0x6
 
+#define TIMESYNC_SECONDS_BIT_MASK   0x0000ffffffffffff
+
 static struct prueth_fw_offsets fw_offsets_v2_1;
 
 static void icssm_prueth_set_fw_offsets(struct prueth *prueth)
@@ -637,13 +639,49 @@ irqreturn_t icssm_prueth_ptp_tx_irq_handle(int irq, void *dev)
 	return IRQ_HANDLED;
 }
 
+/**
+ * icssm_iep_get_timestamp_cycles - IEP get timestamp
+ * @iep: icss_iep structure
+ * @mem: io memory address
+ *
+ * To convert the 10 byte timestamp from firmware
+ * i.e., nanoseconds part from 32-bit IEP counter(4 bytes)
+ * seconds part updated by firmware(rev FW_REV1_0) in SRAM
+ * (6 bytes) into 64-bit timestamp in ns
+ *
+ * Return: 64-bit converted timestamp
+ */
+u64 icssm_iep_get_timestamp_cycles(struct icss_iep *iep,
+				   void __iomem *mem)
+{
+	u64 cycles, cycles_sec = 0;
+	u32 cycles_ns;
+
+	memcpy_fromio(&cycles_ns, mem, sizeof(cycles_ns));
+	memcpy_fromio(&cycles_sec, mem + 4, sizeof(cycles_sec));
+
+	/*To get the 6 bytes seconds part*/
+	cycles_sec = (cycles_sec & TIMESYNC_SECONDS_BIT_MASK);
+	cycles = cycles_ns + (cycles_sec * NSEC_PER_SEC);
+	cycles = timecounter_cyc2time(&iep->tc, cycles);
+
+	return cycles;
+}
+
 static u64 icssm_prueth_ptp_ts_get(struct prueth_emac *emac, u32 ts_offs)
 {
 	void __iomem *sram = emac->prueth->mem[PRUETH_MEM_SHARED_RAM].va;
 	u64 cycles;
 
-	memcpy_fromio(&cycles, sram + ts_offs, sizeof(cycles));
-	memset_io(sram + ts_offs, 0, sizeof(cycles));
+	if (emac->prueth->fw_data->fw_rev == FW_REV_V1_0) {
+		cycles = icssm_iep_get_timestamp_cycles(emac->prueth->iep,
+							sram + ts_offs);
+		/* 4 bytes of timestamp + 6 bytes of seconds counter */
+		memset_io(sram + ts_offs, 0, 10);
+	} else {
+		memcpy_fromio(&cycles, sram + ts_offs, sizeof(cycles));
+		memset_io(sram + ts_offs, 0, sizeof(cycles));
+	}
 
 	return cycles;
 }
@@ -952,8 +990,14 @@ int icssm_emac_rx_packet(struct prueth_emac *emac, u16 *bd_rd_ptr,
 	if (pkt_info->timestamp) {
 		src_addr = (void *)PTR_ALIGN((uintptr_t)src_addr,
 					   ICSS_BLOCK_SIZE);
-		dst_addr = &ts;
-		memcpy(dst_addr, src_addr, sizeof(ts));
+		if (emac->prueth->fw_data->fw_rev == FW_REV_V1_0) {
+			ts = icssm_iep_get_timestamp_cycles
+				(emac->prueth->iep,
+				 (void __iomem *)src_addr);
+		} else {
+			dst_addr = &ts;
+			memcpy(dst_addr, src_addr, sizeof(ts));
+		}
 	}
 
 	if (!pkt_info->sv_frame) {
@@ -2173,6 +2217,9 @@ static int icssm_prueth_probe(struct platform_device *pdev)
 		goto netdev_exit;
 	}
 
+	if (prueth->fw_data->fw_rev == FW_REV_V1_0)
+		prueth->iep->sram = prueth->mem[PRUETH_MEM_SHARED_RAM].va;
+
 	/* Make rx interrupt pacing optional so that users can use ECAP for
 	 * other use cases if needed
 	 */
@@ -2380,6 +2427,7 @@ static struct prueth_private_data am335x_prueth_pdata = {
 		.fw_name[PRUSS_ETHTYPE_EMAC] =
 			"ti-pruss/am335x-pru1-prueth-fw.elf",
 	},
+	.fw_rev = FW_REV_V1_0,
 };
 
 /* AM437x SoC-specific firmware data */
@@ -2393,6 +2441,7 @@ static struct prueth_private_data am437x_prueth_pdata = {
 		.fw_name[PRUSS_ETHTYPE_EMAC] =
 			"ti-pruss/am437x-pru1-prueth-fw.elf",
 	},
+	.fw_rev = FW_REV_V1_0,
 };
 
 /* AM57xx SoC-specific firmware data */
@@ -2406,6 +2455,7 @@ static struct prueth_private_data am57xx_prueth_pdata = {
 		.fw_name[PRUSS_ETHTYPE_EMAC] =
 			"ti-pruss/am57xx-pru1-prueth-fw.elf",
 	},
+	.fw_rev = FW_REV_V2_1,
 };
 
 static const struct of_device_id prueth_dt_match[] = {
diff --git a/drivers/net/ethernet/ti/icssm/icssm_prueth.h b/drivers/net/ethernet/ti/icssm/icssm_prueth.h
index dc6284441f6d..a883b2db08fe 100644
--- a/drivers/net/ethernet/ti/icssm/icssm_prueth.h
+++ b/drivers/net/ethernet/ti/icssm/icssm_prueth.h
@@ -297,6 +297,12 @@ enum prueth_mem {
 	PRUETH_MEM_MAX,
 };
 
+/* PRU firmware revision*/
+enum fw_revision {
+	FW_REV_V1_0 = 0,
+	FW_REV_V2_1
+};
+
 /* Firmware offsets/size information */
 struct prueth_fw_offsets {
 	u32 index_array_offset;
@@ -337,6 +343,7 @@ enum pruss_device {
 struct prueth_private_data {
 	enum pruss_device driver_data;
 	const struct prueth_firmware fw_pru[PRUSS_NUM_PRUS];
+	enum fw_revision fw_rev;
 	bool support_lre;
 	bool support_switch;
 };
@@ -426,6 +433,9 @@ int icssm_emac_add_del_vid(struct prueth_emac *emac,
 irqreturn_t icssm_prueth_ptp_tx_irq_handle(int irq, void *dev);
 irqreturn_t icssm_prueth_ptp_tx_irq_work(int irq, void *dev);
 
+u64 icssm_iep_get_timestamp_cycles(struct icss_iep *iep,
+				   void __iomem *mem);
+
 void icssm_emac_mc_filter_bin_allow(struct prueth_emac *emac, u8 hash);
 void icssm_emac_mc_filter_bin_disallow(struct prueth_emac *emac, u8 hash);
 u8 icssm_emac_get_mc_hash(u8 *mac, u8 *mask);
-- 
2.34.1


