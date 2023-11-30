Return-Path: <devicetree+bounces-20275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 299867FEAB0
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 09:32:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3DF2283C61
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 08:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E5BE20B1E;
	Thu, 30 Nov 2023 08:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49E2C199E;
	Thu, 30 Nov 2023 00:32:00 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 9590824E207;
	Thu, 30 Nov 2023 16:31:58 +0800 (CST)
Received: from EXMBX172.cuchost.com (172.16.6.92) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 30 Nov
 2023 16:31:58 +0800
Received: from localhost.localdomain (202.188.176.82) by EXMBX172.cuchost.com
 (172.16.6.92) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 30 Nov
 2023 16:31:53 +0800
From: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
To: <jonathan.cameron@huawei.com>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	<jisheng.teoh@starfivetech.com>, <krzysztof.kozlowski+dt@linaro.org>,
	<leyfoon.tan@starfivetech.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <mark.rutland@arm.com>,
	<peterz@infradead.org>, <robh+dt@kernel.org>, <tglx@linutronix.de>,
	<will@kernel.org>
Subject: Re: [PATCH v4 1/2] perf: starfive: Add StarLink PMU support
Date: Thu, 30 Nov 2023 16:31:42 +0800
Message-ID: <20231130083142.3013022-1-jisheng.teoh@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231129110238.000060f7@Huawei.com>
References: <20231129110238.000060f7@Huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX172.cuchost.com
 (172.16.6.92)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

On Wed, 29 Nov 2023 11:02:38 +0000
Jonathan Cameron <Jonathan.Cameron@Huawei.com> wrote:

> On Fri, 17 Nov 2023 00:23:29 +0800
> Ji Sheng Teoh <jisheng.teoh@starfivetech.com> wrote:
>=20
> > This patch adds support for StarFive's StarLink PMU (Performance
> > Monitor Unit). StarLink PMU integrates one or more CPU cores with
> > a shared L3 memory system. The PMU supports overflow interrupt,
> > up to 16 programmable 64bit event counters, and an independent
> > 64bit cycle counter. StarLink PMU is accessed via MMIO.
> >=20
> > Example Perf stat output:
> > [root@user]# perf stat -a -e /starfive_starlink_pmu/cycles/ \
> > 	-e /starfive_starlink_pmu/read_miss/ \
> > 	-e /starfive_starlink_pmu/read_hit/ \
> > 	-e /starfive_starlink_pmu/release_request/  \
> > 	-e /starfive_starlink_pmu/write_hit/ \
> > 	-e /starfive_starlink_pmu/write_miss/ \
> > 	-e /starfive_starlink_pmu/write_request/ \
> > 	-e /starfive_starlink_pmu/writeback/ \
> > 	-e /starfive_starlink_pmu/read_request/ \
> > 	-- openssl speed rsa2048
> > Doing 2048 bits private rsa's for 10s: 5 2048 bits private RSA's in
> > 2.84s
> > Doing 2048 bits public rsa's for 10s: 169 2048 bits public RSA's in
> > 2.42s
> > version: 3.0.11
> > built on: Tue Sep 19 13:02:31 2023 UTC
> > options: bn(64,64)
> > CPUINFO: N/A
> >                   sign    verify    sign/s verify/s
> > rsa 2048 bits 0.568000s 0.014320s      1.8     69.8
> > /////////
> >  Performance counter stats for 'system wide':
> >=20
> >          649991998      starfive_starlink_pmu/cycles/
> >            1009690      starfive_starlink_pmu/read_miss/
> >            1079750      starfive_starlink_pmu/read_hit/
> >            2089405      starfive_starlink_pmu/release_request/
> >                129      starfive_starlink_pmu/write_hit/
> >                 70      starfive_starlink_pmu/write_miss/
> >                194      starfive_starlink_pmu/write_request/
> >             150080      starfive_starlink_pmu/writeback/
> >            2089423      starfive_starlink_pmu/read_request/
> >=20
> >       27.062755678 seconds time elapsed
> >=20
> > Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com> =20
> Hi. Some drive by comments inline.
>=20
> Mostly concern being consistent with error handling.
>=20
> Documentation needed.
> Documentation/admin-guide/perf

Sure, will include it.
>=20
> Note I've not looked at perf state machine as would need to remind
> myself how that stuff works.  So this is all generic driver handling
> stuff rather than perf specific.
>=20
> Thanks,
>=20
> Jonathan
>=20
> > ---
> > diff --git a/drivers/perf/starfive_starlink_pmu.c
> > b/drivers/perf/starfive_starlink_pmu.c new file mode 100644
> > index 000000000000..272896ab1ade
> > --- /dev/null
> > +++ b/drivers/perf/starfive_starlink_pmu.c
> > @@ -0,0 +1,654 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * StarFive's StarLink PMU driver
> > + *
> > + * Copyright (C) 2023 StarFive Technology Co., Ltd.
> > + *
> > + * Author: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> > + *
> > + */
> > +
> > +#define STARLINK_PMU_PDEV_NAME	"starfive_starlink_pmu"
> > +#define pr_fmt(fmt)	STARLINK_PMU_PDEV_NAME ": " fmt
> > +
> > +#include <linux/bitmap.h>
> > +#include <linux/cpu_pm.h>
> > +#include <linux/io.h>
> > +#include <linux/irq.h>
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/of_device.h> =20
>=20
> Why?  Probably want mod_devicetable.h

Ok, that is a better option. Thanks
>=20
> > +#include <linux/perf_event.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/sysfs.h>
> > +
> > +#define STARLINK_PMU_MAX_COUNTERS			64
> > +#define STARLINK_PMU_NUM_COUNTERS			16
> > +#define STARLINK_PMU_IDX_CYCLE_COUNTER			63
> > +
> > +#define STARLINK_PMU_EVENT_SELECT			0x060
> > +#define STARLINK_PMU_EVENT_COUNTER			0x160
> > +#define STARLINK_PMU_COUNTER_MASK
> > GENMASK_ULL(63, 0) +#define STARLINK_PMU_CYCLE_COUNTER
> > 		0x058 +
> > +#define STARLINK_PMU_CONTROL				0x040
> > +#define STARLINK_PMU_GLOBAL_ENABLE			BIT(0)
> > +
> > +#define STARLINK_PMU_INTERRUPT_ENABLE			0x050
> > +#define STARLINK_PMU_COUNTER_OVERFLOW_STATUS		0x048
> > +#define STARLINK_PMU_CYCLE_OVERFLOW_MASK		BIT(63)
> > +
> > +#define CYCLES					0x058 =20
>=20
> Prefix these.  Highly likely to have namespace clashes.
> 	STARLINK_CYCLES etc

Ok, that makes sense. Will make the change.
>=20
> > +#define CACHE_READ_REQUEST			0x04000701
> > +#define CACHE_WRITE_REQUEST			0x03000001
> > +#define CACHE_RELEASE_REQUEST			0x0003e001
> > +#define CACHE_READ_HIT				0x00901202
> > +#define CACHE_READ_MISS				0x04008002
> > +#define CACHE_WRITE_HIT				0x006c0002
> > +#define CACHE_WRITE_MISS			0x03000002
> > +#define CACHE_WRITEBACK				0x00000403
> > +
> > +#define to_starlink_pmu(p) (container_of(p, struct starlink_pmu,
> > pmu)) +
> > +#define STARLINK_FORMAT_ATTR(_name, _config)
> > 		      \
> > +	(&((struct dev_ext_attribute[]) {
> > 	      \
> > +		{ .attr =3D __ATTR(_name, 0444,
> > starlink_pmu_sysfs_format_show, NULL), \
> > +		  .var =3D (void *)_config, }
> > 	      \
> > +	})[0].attr.attr)
> > +
> > +#define STARLINK_EVENT_ATTR(_name, _id)
> > 		     \
> > +	PMU_EVENT_ATTR_ID(_name, starlink_pmu_sysfs_event_show,
> > _id) +
> > +#define BIT_IS_SET(nr, bit) (((nr) >> (bit)) & 0x1) =20
>=20
> Not sure this macro is worth having.  Mostly used as boolean, so
> nr & BIT(bit) inline would do the job.
>=20
Ok, will revise it based on your suggestion.

> > +
> > +struct starlink_hw_events {
> > +	struct perf_event
> > *events[STARLINK_PMU_MAX_COUNTERS];
> > +	DECLARE_BITMAP(used_mask, STARLINK_PMU_MAX_COUNTERS);
> > +};
> > +
> > +struct starlink_pmu {
> > +	struct pmu					pmu;
> > +	struct starlink_hw_events			__percpu
> > *hw_events;
> > +	struct hlist_node				node;
> > +	struct notifier_block
> > starlink_pmu_pm_nb;
> > +	void __iomem
> > *pmu_base;
> > +	cpumask_t					cpumask;
> > +	int						irq;
> > +};
> > +
> > +/* Formats Attr */
> > +static ssize_t
> > +starlink_pmu_sysfs_format_show(struct device *dev,
> > +			       struct device_attribute *attr,
> > +			       char *buf)
> > +{
> > +	struct dev_ext_attribute *eattr =3D container_of(attr,
> > +						       struct
> > dev_ext_attribute, attr); +
> > +	return sysfs_emit(buf, "%s\n", (char *)eattr->var);
> > +}
> > +
> > +static struct attribute *starlink_pmu_format_attrs[] =3D {
> > +	STARLINK_FORMAT_ATTR(event, "config:0-31"),
> > +	NULL, =20
> As below.
>=20
> > +};
> > +
> > +static const struct attribute_group starlink_pmu_format_attr_group
> > =3D {
> > +	.name =3D "format",
> > +	.attrs =3D starlink_pmu_format_attrs,
> > +};
> > +
> > +/* Events Attr */ =20
>=20
> These comments don't really add much given that's easy to see from
> code. It's rare that 'structure' comments describing where things are
> in code are actually useful in kernel drivers.  They tend to be there
> in example code to indicate what is needed, but don't keep them!
>=20
Ok, will drop them.
>=20
> > +static ssize_t
> > +starlink_pmu_sysfs_event_show(struct device *dev,
> > +			      struct device_attribute *attr,
> > +			      char *buf)
> > +{
> > +	struct perf_pmu_events_attr *eattr =3D container_of(attr,
> > +							  struct
> > perf_pmu_events_attr, attr); +
> > +	return sysfs_emit(buf, "event=3D0x%02llx\n", eattr->id);
> > +}
> > +
> > +static struct attribute *starlink_pmu_event_attrs[] =3D {
> > +	STARLINK_EVENT_ATTR(cycles, CYCLES),
> > +	STARLINK_EVENT_ATTR(read_request, CACHE_READ_REQUEST),
> > +	STARLINK_EVENT_ATTR(write_request, CACHE_WRITE_REQUEST),
> > +	STARLINK_EVENT_ATTR(release_request,
> > CACHE_RELEASE_REQUEST),
> > +	STARLINK_EVENT_ATTR(read_hit, CACHE_READ_HIT),
> > +	STARLINK_EVENT_ATTR(read_miss, CACHE_READ_MISS),
> > +	STARLINK_EVENT_ATTR(write_hit, CACHE_WRITE_HIT),
> > +	STARLINK_EVENT_ATTR(write_miss, CACHE_WRITE_MISS),
> > +	STARLINK_EVENT_ATTR(writeback, CACHE_WRITEBACK),
> > +	NULL, =20
>=20
> As below.
>=20
> > +};
> > +
> > +static const struct attribute_group starlink_pmu_events_attr_group
> > =3D {
> > +	.name =3D "events",
> > +	.attrs =3D starlink_pmu_event_attrs,
> > +};
> > +
> > +/* Cpumask Attr */
> > +static ssize_t
> > +cpumask_show(struct device *dev, struct device_attribute *attr,
> > char *buf) +{
> > +	struct starlink_pmu *starlink_pmu =3D
> > to_starlink_pmu(dev_get_drvdata(dev)); +
> > +	return cpumap_print_to_pagebuf(true, buf,
> > &starlink_pmu->cpumask); +}
> > +
> > +static DEVICE_ATTR_RO(cpumask);
> > +
> > +static struct attribute *starlink_pmu_cpumask_attrs[] =3D {
> > +	&dev_attr_cpumask.attr,
> > +	NULL, =20
>=20
> As below.
>=20
> > +};
> > +
> > +static const struct attribute_group
> > starlink_pmu_cpumask_attr_group =3D {
> > +	.attrs =3D starlink_pmu_cpumask_attrs,
> > +};
> > +
> > +static const struct attribute_group *starlink_pmu_attr_groups[] =3D =
{
> > +	&starlink_pmu_format_attr_group,
> > +	&starlink_pmu_events_attr_group,
> > +	&starlink_pmu_cpumask_attr_group,
> > +	NULL, =20
>=20
> No comma after NULL terminator as we can't add anything there anyway.
>=20
Ok, will drop them.

> > +}; =20
>=20
>=20
> > +
> > +static void starlink_pmu_counter_stop(struct perf_event *event,
> > +				      struct starlink_pmu
> > *starlink_pmu) +{
> > +	struct hw_perf_event *hwc =3D &event->hw;
> > +	int idx =3D event->hw.idx;
> > +	u64 val;
> > +
> > +	/* Stop counter */ =20
>=20
> Pretty obvious that clearing global enable stops the counter.
> Perhaps review comments and remove any that are obvious from the code.
> Such comments add little value and can be a maintenance problem.
>=20
Ok, will review again and drop those comments that are obvious.

> > +	val =3D readq(starlink_pmu->pmu_base + STARLINK_PMU_CONTROL);
> > +	val &=3D ~STARLINK_PMU_GLOBAL_ENABLE;
> > +	writeq(val, starlink_pmu->pmu_base + STARLINK_PMU_CONTROL);
> > +
> > +	/* Disable counter overflow interrupt */
> > +	val =3D readq(starlink_pmu->pmu_base +
> > STARLINK_PMU_INTERRUPT_ENABLE);
> > +	if (hwc->config =3D=3D CYCLES)
> > +		val &=3D ~STARLINK_PMU_CYCLE_OVERFLOW_MASK;
> > +	else
> > +		val &=3D ~(1 << idx);
> > +
> > +	writeq(val, starlink_pmu->pmu_base +
> > STARLINK_PMU_INTERRUPT_ENABLE); +} =20
>=20
>=20
>=20
> > +static bool starlink_pmu_validate_event_group(struct perf_event
> > *event) +{
> > +	struct perf_event *leader =3D event->group_leader;
> > +	struct perf_event *sibling;
> > +	int counter =3D 1;
> > +
> > +	/*
> > +	 * Ensure hardware events in the group are on the same PMU,
> > +	 * software events are acceptable.
> > +	 */
> > +	if (event->group_leader->pmu !=3D event->pmu &&
> > +	    !is_software_event(event->group_leader))
> > +		return false;
> > +
> > +	for_each_sibling_event(sibling, leader) {
> > +		if (sibling->pmu !=3D event->pmu &&
> > !is_software_event(sibling))
> > +			return false;
> > +
> > +		counter +=3D 1; =20
>=20
> counter++;

Ok, will amend.
>=20
> > +	}
> > +	/*
> > +	 * Limit the number of requested counter to
> > +	 * counter available on the HW.
> > +	 */
> > +	return counter <=3D STARLINK_PMU_NUM_COUNTERS;
> > +}
> > + =20
>=20
> ...
>=20
> > +
> > +static irqreturn_t starlink_pmu_handle_irq(int irq_num, void *data)
> > +{
> > +	struct starlink_pmu *starlink_pmu =3D data;
> > +	struct starlink_hw_events *hw_events =3D
> > +
> > this_cpu_ptr(starlink_pmu->hw_events); =20
>=20
> Odd alignment.  I'd put it one tab more than struct.

Ok, will realign them.
>=20
> > +	bool handled =3D false;
> > +	int idx;
> > +	u64 overflow_status;
> > +
> > +	for (idx =3D 0; idx < STARLINK_PMU_MAX_COUNTERS; idx++) {
> > +		struct perf_event *event =3D hw_events->events[idx];
> > +
> > +		overflow_status =3D readq(starlink_pmu->pmu_base +
> > +
> > STARLINK_PMU_COUNTER_OVERFLOW_STATUS);
> > +		if (!BIT_IS_SET(overflow_status, idx))
> > +			continue;
> > +
> > +		/* Clear event counter overflow interrupt */
> > +		writeq(1 << idx, starlink_pmu->pmu_base +
> > +		       STARLINK_PMU_COUNTER_OVERFLOW_STATUS);
> > +
> > +		if (!event)
> > +			continue; =20
> If you get here and !event. Is it a bug, or something valid?
> Maybe a comment if it's valid.  Otherwise an error print might make
> sense.
>=20
They should have appear earlier right before reading the overflow
status, and continue next bit in the case where event is not valid.
Will fix it.

> > +
> > +		starlink_pmu_update(event);
> > +		starlink_pmu_set_event_period(event);
> > +		handled =3D true;
> > +	}
> > +	return IRQ_RETVAL(handled);
> > +}
> > +
> > +static int starlink_setup_irqs(struct starlink_pmu *starlink_pmu,
> > +			       struct platform_device *pdev)
> > +{
> > +	int ret, irq;
> > +
> > +	irq =3D platform_get_irq(pdev, 0);
> > +	if (irq < 0)
> > +		return -EINVAL;
> > +
> > +	ret =3D devm_request_irq(&pdev->dev, irq,
> > starlink_pmu_handle_irq,
> > +			       0, STARLINK_PMU_PDEV_NAME,
> > starlink_pmu);
> > +	if (ret) {
> > +		dev_warn(&pdev->dev, "Failed to request IRQ %d\n",
> > irq);
> > +		return ret; =20
>=20
> 		return dev_err_probe(...)

Will pass this ret back to probe() to handle instead.
>=20
> > +	}
> > +
> > +	starlink_pmu->irq =3D irq;
> > +
> > +	return 0;
> > +}
> > +
> > +#ifdef CONFIG_CPU_PM
> > +static int starlink_pmu_pm_notify(struct notifier_block *b,
> > +				  unsigned long cmd, void *v)
> > +{
> > +	struct starlink_pmu *starlink_pmu =3D container_of(b, struct
> > starlink_pmu,
> > +
> > starlink_pmu_pm_nb); =20
>=20
> Compiler can probably figure out this isn't used. But if not
> if (!IS_ENABLED(CONFIG_CPU_PM))
> 	return 0;
>=20
> will allow the compiler to definitely remove the code.

Good info, thanks for the suggestion. Will use=20
'if (IS_ENABLED(CONFIG_CPU_PM))' in place of '#ifdef CONFIG_CPU_PM'.

>=20
> > +	struct starlink_hw_events *hw_events =3D
> > +
> > this_cpu_ptr(starlink_pmu->hw_events);
> > +	int enabled =3D bitmap_weight(hw_events->used_mask,
> > +				    STARLINK_PMU_MAX_COUNTERS);
> > +	struct perf_event *event;
> > +	int idx;
> > +
> > +	if (!enabled)
> > +		return NOTIFY_OK;
> > +
> > +	for (idx =3D 0; idx < STARLINK_PMU_MAX_COUNTERS; idx++) {
> > +		event =3D hw_events->events[idx];
> > +		if (!event)
> > +			continue;
> > +
> > +		switch (cmd) {
> > +		case CPU_PM_ENTER:
> > +			/* Stop and update the counter */
> > +			starlink_pmu_stop(event, PERF_EF_UPDATE);
> > +			break;
> > +		case CPU_PM_EXIT:
> > +		case CPU_PM_ENTER_FAILED:
> > +			/* Restore and enable the counter */
> > +			starlink_pmu_start(event, PERF_EF_RELOAD);
> > +			break;
> > +		default:
> > +			break;
> > +		}
> > +	}
> > +
> > +	return NOTIFY_OK;
> > +}
> > +
> > +static int starlink_pmu_pm_register(struct starlink_pmu
> > *starlink_pmu) +{
> > +	starlink_pmu->starlink_pmu_pm_nb.notifier_call =3D
> > starlink_pmu_pm_notify;
> > +	return
> > cpu_pm_register_notifier(&starlink_pmu->starlink_pmu_pm_nb); =20
> Stubbed out as below.
>=20
> > +}
> > +
> > +static void starlink_pmu_pm_unregister(struct starlink_pmu
> > *starlink_pmu) +{
> > +
> > cpu_pm_unregister_notifier(&starlink_pmu->starlink_pmu_pm_nb); =20
>=20
> stubbed out in header so no need to protect with ifdef.
> Compiler will probably remove it anyway.
>=20
Ok, will fix.

> > +}
> > +#else
> > +static inline int
> > +starlink_pmu_pm_register(struct starlink_pmu *starlink_pmu) {
> > return 0; } +static inline void
> > +starlink_pmu_pm_unregister(struct starlink_pmu *starlink_pmu) { }
> > +#endif
> > +
> > +static void starlink_pmu_destroy(struct starlink_pmu *starlink_pmu)
> > +{
> > +	starlink_pmu_pm_unregister(starlink_pmu);
> > +
> > cpuhp_state_remove_instance(CPUHP_AP_PERF_RISCV_STARFIVE_STARLINK_ONL=
INE,
> > +				    &starlink_pmu->node);
> > +}
> > +
> > +static int starlink_pmu_probe(struct platform_device *pdev)
> > +{
> > +	struct starlink_pmu *starlink_pmu;
> > +	struct starlink_hw_events *hw_events;
> > +	struct resource *res;
> > +	int cpuid, i, ret;
> > +
> > +	starlink_pmu =3D devm_kzalloc(&pdev->dev,
> > sizeof(*starlink_pmu), GFP_KERNEL);
> > +	if (!starlink_pmu)
> > +		return -ENOMEM;
> > +
> > +	starlink_pmu->pmu_base =3D
> > +
> > devm_platform_get_and_ioremap_resource(pdev, 0, &res);
> > +	if (IS_ERR(starlink_pmu->pmu_base))
> > +		return PTR_ERR(starlink_pmu->pmu_base);
> > +
> > +	ret =3D starlink_setup_irqs(starlink_pmu, pdev); =20
>=20
> Handle ret  You are printing a warning so I'd assume it's a failure
> to probe case, not something ignored.
>=20
Missed that, will fix it.

>=20
> > +
> > +	ret =3D
> > cpuhp_state_add_instance(CPUHP_AP_PERF_RISCV_STARFIVE_STARLINK_ONLINE=
,
> > +				       &starlink_pmu->node);
> > +	if (ret) =20
>=20
> Not dropped in error paths.

Ok, will fix it.
>=20
> > +		return ret;
> > +
> > +	ret =3D starlink_pmu_pm_register(starlink_pmu);
> > +	if (ret)
> > +		starlink_pmu_destroy(starlink_pmu); =20
>=20
> This calls starlink_pmu_pm_unregister()
> That should not be necessary as every function should be designed to
> have no side effects on error return.
>=20
Ok, will fix it.

> > +
> > +	starlink_pmu->hw_events =3D alloc_percpu_gfp(struct
> > starlink_hw_events,
> > +						   GFP_KERNEL);
> > +	if (!starlink_pmu->hw_events) {
> > +		pr_info("Failed to allocate per-cpu PMU data.\n");
> > +		kfree(starlink_pmu); =20
>=20
> Inconsistent error handling.  Before and aftre this you call
> starlink_pmu_destroy() but not here.
>=20
Ok, will rectify it.

> > +		return -ENOMEM;
> > +	}
> > +
> > +	for_each_possible_cpu(cpuid) {
> > +		hw_events =3D per_cpu_ptr(starlink_pmu->hw_events,
> > cpuid);
> > +		for (i =3D 0; i < STARLINK_PMU_MAX_COUNTERS; i++)
> > +			hw_events->events[i] =3D NULL;
> > +	}
> > +
> > +	starlink_pmu->pmu =3D (struct pmu) {
> > +		.task_ctx_nr	=3D perf_invalid_context,
> > +		.event_init	=3D starlink_pmu_event_init,
> > +		.add		=3D starlink_pmu_add,
> > +		.del		=3D starlink_pmu_del,
> > +		.start		=3D starlink_pmu_start,
> > +		.stop		=3D starlink_pmu_stop,
> > +		.read		=3D starlink_pmu_update,
> > +		.attr_groups	=3D starlink_pmu_attr_groups,
> > +	};
> > +
> > +	ret =3D perf_pmu_register(&starlink_pmu->pmu,
> > STARLINK_PMU_PDEV_NAME, -1);
> > +	if (ret)
> > +		starlink_pmu_destroy(starlink_pmu);
> > +
> > +	dev_info(&pdev->dev, "Registered StarFive's StarLink
> > PMU\n"); =20
>=20
> Noise.  Don't print to the log when there are many other ways to find
> this out.
>=20
Ok, will drop it.

> > +
> > +	return ret;
> > +}
> > +
> > +static const struct of_device_id starlink_pmu_of_match[] =3D {
> > +	{ .compatible =3D "starfive,jh8100-starlink-pmu", },
> > +	{}, =20
>=20
> No need for comma after a 'terminator' as nothing can come after it.
>=20
Ok, will drop it.

> > +};
> > +MODULE_DEVICE_TABLE(of, starlink_pmu_of_match); =20
>=20
> > +device_initcall(starlink_pmu_init);
> > diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> > index d305db70674b..6d9eb70c13d4 100644
> > --- a/include/linux/cpuhotplug.h
> > +++ b/include/linux/cpuhotplug.h
> > @@ -219,6 +219,7 @@ enum cpuhp_state {
> >  	CPUHP_AP_PERF_X86_CQM_ONLINE,
> >  	CPUHP_AP_PERF_X86_CSTATE_ONLINE,
> >  	CPUHP_AP_PERF_X86_IDXD_ONLINE,
> > +	CPUHP_AP_PERF_RISCV_STARFIVE_STARLINK_ONLINE, =20
> Can you use CPUHP_AP_ONLINE_DYN?
>=20
> Moves it a bit later in the sequence but it often works for perf
> drivers.
>=20
Yup, that should work as well. Will use CPUHP_AP_ONLINE_DYN instead.

> >  	CPUHP_AP_PERF_S390_CF_ONLINE,
> >  	CPUHP_AP_PERF_S390_SF_ONLINE,
> >  	CPUHP_AP_PERF_ARM_CCI_ONLINE, =20
>=20

Thanks for reviewing Jonathan.

Thanks,

Ji Sheng


