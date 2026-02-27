Return-Path: <devicetree+bounces-269399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BHzL1HgoWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:20:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D751BBEB3
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:20:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5EBB53062224
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FB3336EA82;
	Fri, 27 Feb 2026 18:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="CinSFcgl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-24416.protonmail.ch (mail-24416.protonmail.ch [109.224.244.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E5A36E47A
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 18:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772216174; cv=none; b=cYCRPNZOfd9AfKc+1Q5MvK0LEjQWTauqcPxo4spYbCT9ScN2BUfaf5tfQ96o5Ruh9ynIkL0NVPfctDo0RP36j0lIbloCQ+7Ucghu9VwsHEsQCXu8Rg3G7jo5kqVjfp+ICM2xMAAp+pwhPZKvG9HyTW/Ls1Qf1jsot7zNECr5bVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772216174; c=relaxed/simple;
	bh=cz34H5f/3nIS4cZAaLwMAgTYn1RioAwZNPXp7ymY1Sw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UurDl/4ldGDz7Yp6URxXKlR5bem16EDMcykkWO+dNOGOe8SgwMoGxd6Mu6j9ygiK9OvZ/3mFdP43eC30wiIv5R9KAqKlBV377ZFbckVNIOSbdXYcHvWBU+YzzJO/lP9F0NpsmqknQwvj/h+72DJ+3UMJe8TsEyp69fyQHoCTJU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=CinSFcgl; arc=none smtp.client-ip=109.224.244.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1772216162; x=1772475362;
	bh=KT8q0oWYh7AAT+B1rR0Z03IGDGzEfiFTCLxE4tZSwFs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=CinSFcglL52lw5XXwWNnIE2Lq18A2m0RH+j8Frc7vwgqlDFbczDBQWJDw0IuRpzjs
	 5W3i3FM6gD3lZPAGhGRq9D3DPenbLhc7xLGSzYlh6Cj/x8OpgrcyuBNMQQookg76x4
	 JclqGeSTF4Zn/8QlLOdEnqgitwcjHwzkKyAEHQ89baSVCHFC3sMH5F1pp43NtVKQQ1
	 M9kCzhb+PeSHodH9zQcgUKAPAdnTDWdy1DITVHcu8/46YYvXBbo+gzX7us4z59/nQO
	 DvKjebFWRSBiK7w51HuUEggJNwIIQQCO1bU+KU9sXZwCPq8vjMI5f8wrKJSLYj+ggB
	 JcmGDbORZngdg==
Date: Fri, 27 Feb 2026 18:15:57 +0000
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>
From: Harry Austen <hpausten@protonmail.com>
Cc: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Harry Austen <hpausten@protonmail.com>
Subject: [PATCH v5 2/2] clk: clocking-wizard: add user clock monitor support
Message-ID: <20260227181507.19890-3-hpausten@protonmail.com>
In-Reply-To: <20260227181507.19890-1-hpausten@protonmail.com>
References: <20260227181507.19890-1-hpausten@protonmail.com>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: d86f7603c42fa73ab5332658cb0b44be36c54010
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269399-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[protonmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[protonmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hpausten@protonmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[amd.com,vger.kernel.org,lists.infradead.org,protonmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[work.work:url,protonmail.com:mid,protonmail.com:dkim,protonmail.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 62D751BBEB3
X-Rspamd-Action: no action

Xilinx clocking wizard IP core supports monitoring of up to four
optional user clock inputs, with a corresponding interrupt for
notification in change of clock state (stop, underrun, overrun or
glitch). Give userspace access to this monitor logic through use of the
devcoredump framework.

Use presence of the user monitor interrupt description in devicetree to
indicate whether or not this functionality should be enabled. Also, this
functionality is only supported from v6.0 onwards, so add indication of
support to the device match data, in order to be tied to the utilised
compatible string.

All 16 user clock monitor trigger sources are enabled in the IER. When
triggered, the values of the first 5 registers are recorded through
devcoredump.

Signed-off-by: Harry Austen <hpausten@protonmail.com>
---
v4 -> v5: Fix bug by moving dev_coredumpv() after iowrite32()
v3 -> v4: Rework from auxiliary bus and UIO to devcoredump
v2 -> v3: No change
v1 -> v2:
- Remove direct UIO dependency by utilising auxiliary device
- Move some logic from probe into clk_wzrd_setup_monitor for tidiness
 drivers/clk/xilinx/Kconfig                 |  1 +
 drivers/clk/xilinx/clk-xlnx-clock-wizard.c | 69 ++++++++++++++++++++--
 2 files changed, 66 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/xilinx/Kconfig b/drivers/clk/xilinx/Kconfig
index 051756953558b..37758ac9ab552 100644
--- a/drivers/clk/xilinx/Kconfig
+++ b/drivers/clk/xilinx/Kconfig
@@ -21,6 +21,7 @@ config COMMON_CLK_XLNX_CLKWZRD
 =09tristate "Xilinx Clocking Wizard"
 =09depends on OF
 =09depends on HAS_IOMEM
+=09select WANT_DEV_COREDUMP
 =09help
 =09  Support for the Xilinx Clocking Wizard IP core clock generator.
 =09  Adds support for clocking wizard and compatible.
diff --git a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c b/drivers/clk/xilin=
x/clk-xlnx-clock-wizard.c
index 4a0136349f71a..4bbe4d93e208d 100644
--- a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
@@ -12,6 +12,7 @@
 #include <linux/platform_device.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
+#include <linux/devcoredump.h>
 #include <linux/slab.h>
 #include <linux/io.h>
 #include <linux/of.h>
@@ -19,11 +20,15 @@
 #include <linux/module.h>
 #include <linux/overflow.h>
 #include <linux/err.h>
+#include <linux/interrupt.h>
 #include <linux/iopoll.h>
=20
 #define WZRD_NUM_OUTPUTS=097
 #define WZRD_ACLK_MAX_FREQ=09250000000UL
+#define WZRD_NUM_DUMP_REGS=095
=20
+#define WZRD_INTR_STATUS=090x0C
+#define WZRD_INTR_ENABLE=090x10
 #define WZRD_CLK_CFG_REG(v, n)=09(0x200 + 0x130 * (v) + 4 * (n))
=20
 #define WZRD_CLKOUT0_FRAC_EN=09BIT(18)
@@ -124,6 +129,7 @@ enum clk_wzrd_int_clks {
 /**
  * struct clk_wzrd - Clock wizard private data structure
  *
+ * @pdev:=09=09Platform device
  * @nb:=09=09=09Notifier block
  * @base:=09=09Memory base
  * @clk_in1:=09=09Handle to input clock 'clk_in1'
@@ -131,9 +137,11 @@ enum clk_wzrd_int_clks {
  * @clks_internal:=09Internal clocks
  * @speed_grade:=09Speed grade of the device
  * @suspended:=09=09Flag indicating power state of the device
+ * @work:=09=09Delayed work for devcoredump
  * @clk_data:=09=09Output clock data
  */
 struct clk_wzrd {
+=09struct platform_device *pdev;
 =09struct notifier_block nb;
 =09void __iomem *base;
 =09struct clk *clk_in1;
@@ -141,6 +149,7 @@ struct clk_wzrd {
 =09struct clk_hw *clks_internal[wzrd_clk_int_max];
 =09unsigned int speed_grade;
 =09bool suspended;
+=09struct delayed_work work;
 =09struct clk_hw_onecell_data clk_data;
 };
=20
@@ -177,8 +186,9 @@ struct clk_wzrd_divider {
 =09spinlock_t *lock;  /* divider lock */
 };
=20
-struct versal_clk_data {
+struct clk_wzrd_data {
 =09bool is_versal;
+=09bool has_monitor;
 };
=20
 #define to_clk_wzrd(_nb) container_of(_nb, struct clk_wzrd, nb)
@@ -984,8 +994,13 @@ static int __maybe_unused clk_wzrd_resume(struct devic=
e *dev)
 static SIMPLE_DEV_PM_OPS(clk_wzrd_dev_pm_ops, clk_wzrd_suspend,
 =09=09=09 clk_wzrd_resume);
=20
-static const struct versal_clk_data versal_data =3D {
+static const struct clk_wzrd_data version_6_0_data =3D {
+=09.is_versal=09=3D false,
+=09.has_monitor=09=3D true,
+};
+static const struct clk_wzrd_data versal_data =3D {
 =09.is_versal=09=3D true,
+=09.has_monitor=09=3D true,
 };
=20
 static int clk_wzrd_register_output_clocks(struct device *dev, int nr_outp=
uts)
@@ -993,7 +1008,7 @@ static int clk_wzrd_register_output_clocks(struct devi=
ce *dev, int nr_outputs)
 =09const char *clkout_name, *clk_name, *clk_mul_name;
 =09struct clk_wzrd *clk_wzrd =3D dev_get_drvdata(dev);
 =09u32 regl, regh, edge, regld, reghd, edged, div;
-=09const struct versal_clk_data *data;
+=09const struct clk_wzrd_data *data;
 =09unsigned long flags =3D 0;
 =09bool is_versal =3D false;
 =09void __iomem *ctrl_reg;
@@ -1150,14 +1165,45 @@ static int clk_wzrd_register_output_clocks(struct d=
evice *dev, int nr_outputs)
 =09return 0;
 }
=20
+static irqreturn_t clk_wzrd_user_mon_intr_handler(int irq, void *data)
+{
+=09struct clk_wzrd *clk_wzrd =3D platform_get_drvdata(data);
+
+=09schedule_delayed_work(&clk_wzrd->work, msecs_to_jiffies(10));
+=09return IRQ_HANDLED;
+}
+
+static void clk_wzrd_user_mon_work(struct work_struct *work)
+{
+=09struct clk_wzrd *clk_wzrd =3D container_of(work, struct clk_wzrd, work.=
work);
+=09u32 *dump =3D vmalloc(WZRD_NUM_DUMP_REGS * sizeof(*dump));
+
+=09ioread32_rep(clk_wzrd->base, dump, WZRD_NUM_DUMP_REGS);
+=09iowrite32(dump[WZRD_INTR_STATUS / sizeof(*dump)], clk_wzrd->base + WZRD=
_INTR_STATUS);
+=09dev_coredumpv(&clk_wzrd->pdev->dev, dump, WZRD_NUM_DUMP_REGS * sizeof(*=
dump), GFP_KERNEL);
+}
+
+static void clk_wzrd_cancel_delayed_work(void *data)
+{
+=09struct delayed_work *work =3D data;
+
+=09cancel_delayed_work_sync(work);
+}
+
 static int clk_wzrd_probe(struct platform_device *pdev)
 {
+=09const struct clk_wzrd_data *data =3D device_get_match_data(&pdev->dev);
 =09struct device_node *np =3D pdev->dev.of_node;
 =09struct clk_wzrd *clk_wzrd;
 =09unsigned long rate;
 =09int nr_outputs;
+=09int irq;
 =09int ret;
=20
+=09irq =3D platform_get_irq_optional(pdev, 0);
+=09if (irq < 0 && irq !=3D -ENXIO)
+=09=09return dev_err_probe(&pdev->dev, irq, "failed to get irq\n");
+
 =09ret =3D of_property_read_u32(np, "xlnx,nr-outputs", &nr_outputs);
 =09if (ret || nr_outputs > WZRD_NUM_OUTPUTS)
 =09=09return -EINVAL;
@@ -1226,6 +1272,21 @@ static int clk_wzrd_probe(struct platform_device *pd=
ev)
 =09=09}
 =09}
=20
+=09if (data && data->has_monitor && irq > 0) {
+=09=09ret =3D devm_request_irq(&pdev->dev, irq, clk_wzrd_user_mon_intr_han=
dler, IRQF_SHARED,
+=09=09=09=09       "user_mon", clk_wzrd);
+=09=09if (ret)
+=09=09=09return dev_err_probe(&pdev->dev, ret, "failed to request irq\n");
+
+=09=09INIT_DELAYED_WORK(&clk_wzrd->work, clk_wzrd_user_mon_work);
+=09=09ret =3D devm_add_action_or_reset(&pdev->dev, clk_wzrd_cancel_delayed=
_work,
+=09=09=09=09=09       &clk_wzrd->work);
+=09=09if (ret)
+=09=09=09return ret;
+
+=09=09writel(GENMASK(15, 0), clk_wzrd->base + WZRD_INTR_ENABLE);
+=09}
+
 =09return 0;
 }
=20
@@ -1233,7 +1294,7 @@ static const struct of_device_id clk_wzrd_ids[] =3D {
 =09{ .compatible =3D "xlnx,versal-clk-wizard", .data =3D &versal_data },
 =09{ .compatible =3D "xlnx,clocking-wizard"   },
 =09{ .compatible =3D "xlnx,clocking-wizard-v5.2"   },
-=09{ .compatible =3D "xlnx,clocking-wizard-v6.0"  },
+=09{ .compatible =3D "xlnx,clocking-wizard-v6.0", .data =3D &version_6_0_d=
ata },
 =09{ },
 };
 MODULE_DEVICE_TABLE(of, clk_wzrd_ids);
--=20
2.53.0



