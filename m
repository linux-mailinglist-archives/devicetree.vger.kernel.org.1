Return-Path: <devicetree+bounces-318157-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0ugkDdy6RGrWzgoAu9opvQ
	(envelope-from <devicetree+bounces-318157-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 08:59:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 831F36EA657
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 08:59:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=A1JNo4hk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318157-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318157-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 405783024C87
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 06:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF6053B27EA;
	Wed,  1 Jul 2026 06:54:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944093B1EFC
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 06:54:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782888854; cv=none; b=Dny5rxpk0JtM4Gni/GhdebFGkIrPAl/goBmb/T2NxNK1ZgG2XvYLKXI6JAgu7sxupz7rp96hxGaDtRf1bvII+VXngJ+EM++avfkipFGF8r7gKo8TRhxGyT0Sp9TyUn/bQI+i3PPLedzK9/reXa+APQLN4nfh/+03TK/oAYVAQSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782888854; c=relaxed/simple;
	bh=ey3iD2hDQnIVx6XcRM4JASx9gKvL0gxZxA//0acD52A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TPHIiIFBmCjeovL/gA0yTM5saIv0YzuCcDwPsf7NXARjY7RxMB+tCA7FtDlz3RJYw/Kx7SFQWRnQLf9aQN6Za3IUNHhKFGJsjyN6L6yMvz/n6/xfbxw59txNWhrZQacHnImDdNhpf7MQ8rmR634t2X2J9cQQgFARK55Hx8kJPqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1JNo4hk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED8831F000E9;
	Wed,  1 Jul 2026 06:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782888853;
	bh=fp2+Pov3yvtKAo7h6Wtwf0xpQWkVW96f5qJYXvFNwTw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=A1JNo4hk1zocbZamiW0dGT2ZIXWRK7I8pIadFv8e186dS+NYgmgTVrGpGA0cFPFTz
	 9VfPY4+RUfjFOTCVpXwBFvn76cIZPSye+QgezuY+IfvzvE/1/9r81hC7V5bKGn/21b
	 vfz1JH8zMOLBron18IxFPOdrwMmfLNcKqpqC4akV4oRUD/mDMUqJ5cwO2z7vmhFZx0
	 sb1kQckm6x+1IjtjRiE7DnT51pbVDolljreifxU9n1A5kpXnXLJyyuBulmwnO9bTXN
	 nRzuiNlyzLNrLHIpswqfxiLdGl8OWaemt0dRrupjbHA9BuGHvvHO87EmIZG55j+4Y7
	 uS65Bb/JRPlIw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 6/7] qcom-tgu: Add timer/counter functionality for
 TGU
Reply-To: sashiko-reviews@lists.linux.dev
To: "Songwei Chai" <songwei.chai@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701055529.445819-7-songwei.chai@oss.qualcomm.com>
References: <20260701055529.445819-1-songwei.chai@oss.qualcomm.com>
 <20260701055529.445819-7-songwei.chai@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 06:54:12 +0000
Message-Id: <20260701065412.ED8831F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318157-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:songwei.chai@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 831F36EA657

Thank you for your contribution! Sashiko AI review found 6 potential issue(=
s) to consider:

New issues:
- [Medium] Incorrect bitmask definition for TGU_DEVID2_TIMER1 skips bit 12.
- [Low] Empty sysfs directories for timers and counters are created when th=
e hardware does not support them.

Pre-existing issues:
- [High] Sysfs attributes are exposed to userspace before their underlying =
data structures are fully allocated, leading to a possible NULL pointer der=
eference.
- [High] Probe error paths leak sysfs groups and leave dangling pointers, c=
ausing a Use-After-Free if accessed.
- [High] Unsynchronized PM runtime operations in enable_tgu_store() cause P=
M usage counter leaks.
- [High] Driver unbind leaks a PM runtime reference if the TGU device was l=
eft enabled.
--

commit 358a24e20604be5f3d933b0c130bc3468d07b832
Author: Songwei Chai <songwei.chai@oss.qualcomm.com>

qcom-tgu: Add timer/counter functionality for TGU
   =20
This commit adds counter and timer nodes for each TGU step. It provides sys=
fs
interfaces to program these components for use in trigger events or sequenc=
es.

> diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
> index fefe932059cbb..6d5bf2621cb05 100644
> --- a/drivers/hwtracing/qcom/tgu.c
> +++ b/drivers/hwtracing/qcom/tgu.c
[ ... ]
> @@ -163,6 +181,18 @@ static umode_t tgu_node_visible(struct kobject *kobj=
ect,
>  		if (tgu_attr->reg_num < drvdata->num_condition_select)
>  			return attr->mode;
>  		break;
> +	case TGU_COUNTER:
> +		if (!drvdata->num_counter)
> +			break;

[Severity: Low]
When drvdata->num_counter is 0, this breaks out and returns 0 instead of
SYSFS_GROUP_INVISIBLE. Could this leave empty sysfs directories behind when
the hardware doesn't support counters? Returning SYSFS_GROUP_INVISIBLE would
properly suppress the creation of the named group directory.

> +		if (tgu_attr->reg_num < drvdata->num_counter)
> +			return attr->mode;
> +		break;
> +	case TGU_TIMER:
> +		if (!drvdata->num_timer)
> +			break;

[Severity: Low]
Similarly, should this return SYSFS_GROUP_INVISIBLE when drvdata->num_timer
is 0 to prevent creating empty directories?

> +		if (tgu_attr->reg_num < drvdata->num_timer)
> +			return attr->mode;
> +		break;
>  	default:
>  		break;
>  	}
[ ... ]
> @@ -412,8 +503,8 @@ static int tgu_probe(struct amba_device *adev, const =
struct amba_id *id)
>  {
>  	struct device *dev =3D &adev->dev;
>  	struct tgu_drvdata *drvdata;
> -	unsigned int *priority, *condition, *select;
> -	size_t priority_size, condition_size, select_size;
> +	unsigned int *priority, *condition, *select, *timer, *counter;
> +	size_t priority_size, condition_size, select_size, timer_size, counter_=
size;
>  	int ret;
> =20
>  	drvdata =3D devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> @@ -432,6 +523,7 @@ static int tgu_probe(struct amba_device *adev, const =
struct amba_id *id)
>  	tgu_set_reg_number(drvdata);
>  	tgu_set_steps(drvdata);
>  	tgu_set_conditions(drvdata);
> +	tgu_set_timer_counter(drvdata);
> =20
>  	ret =3D sysfs_create_groups(&dev->kobj, tgu_attr_groups);
>  	if (ret) {
> @@ -474,6 +566,26 @@ static int tgu_probe(struct amba_device *adev, const=
 struct amba_id *id)

[Severity: High]
This is a pre-existing issue, but sysfs_create_groups() is called before the
value_table and its arrays are allocated. If a concurrent userspace process
reads a sysfs file, could tgu_dataset_show() dereference an unallocated
drvdata->value_table, resulting in a NULL pointer dereference?

> =20
>  	drvdata->value_table->condition_select =3D select;
> =20
> +	timer_size =3D drvdata->num_step * drvdata->num_timer;
> +
> +	timer =3D devm_kcalloc(dev, timer_size,
> +			    sizeof(*(drvdata->value_table->timer)),
> +			    GFP_KERNEL);
> +	if (!timer)
> +		return -ENOMEM;

[Severity: High]
This isn't a bug introduced by this patch, but if devm_kcalloc() fails here,
we return -ENOMEM without cleaning up the sysfs groups created earlier.=20

The driver core will free devres-managed memory, but the active sysfs files
will remain. If userspace reads these files afterward, could it trigger a
use-after-free or NULL pointer dereference when accessing drvdata?

> +
> +	drvdata->value_table->timer =3D timer;
> +
> +	counter_size =3D drvdata->num_step * drvdata->num_counter;
> +
> +	counter =3D devm_kcalloc(dev, counter_size,
> +			      sizeof(*(drvdata->value_table->counter)),
> +			      GFP_KERNEL);
> +	if (!counter)
> +		return -ENOMEM;
> +
> +	drvdata->value_table->counter =3D counter;
> +
>  	drvdata->enabled =3D false;
> =20
>  	pm_runtime_put(&adev->dev);
> diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
> index c61aa8dc51b0d..1bcbc99169def 100644
> --- a/drivers/hwtracing/qcom/tgu.h
> +++ b/drivers/hwtracing/qcom/tgu.h
[ ... ]
> @@ -18,6 +19,16 @@
>  	((int)FIELD_GET(GENMASK(6, 3), devid_val))
>  #define TGU_DEVID_CONDITIONS(devid_val) \
>  	((int)FIELD_GET(GENMASK(2, 0), devid_val))
> +#define TGU_DEVID2_TIMER0(devid_val)	\
> +	((int)FIELD_GET(GENMASK(23, 18), devid_val))
> +#define TGU_DEVID2_TIMER1(devid_val)	\
> +	((int)FIELD_GET(GENMASK(17, 13), devid_val))

[Severity: Medium]
Does GENMASK(17, 13) correctly represent the TIMER1 mask? TIMER0, COUNTER0,
and COUNTER1 are all defined as 6 bits wide, but GENMASK(17, 13) is only 5
bits wide, skipping bit 12. Should this be GENMASK(17, 12) instead?

> +#define TGU_DEVID2_COUNTER0(devid_val)	\
> +	((int)FIELD_GET(GENMASK(11, 6), devid_val))
> +#define TGU_DEVID2_COUNTER1(devid_val)	\
> +	((int)FIELD_GET(GENMASK(5, 0), devid_val))
> +
> +

I also noticed a couple of pre-existing issues in other parts of the driver
unrelated to this specific patch:

[Severity: High]
This is a pre-existing issue, but in enable_tgu_store():

scoped_guard(spinlock, &drvdata->lock) {
	if (drvdata->enabled)
		return -EBUSY;
}

ret =3D pm_runtime_resume_and_get(dev);

The lock is dropped before the PM runtime reference is acquired. Could two
concurrent writers both bypass the !drvdata->enabled check, allowing both
to acquire PM references, but only one to be released during disable, leaki=
ng
the PM usage counter?

[Severity: High]
This is a pre-existing issue, but in tgu_remove():

sysfs_remove_groups(&dev->kobj, tgu_attr_groups);

tgu_disable(dev);

The tgu_disable() function disables the hardware but doesn't call
pm_runtime_put(). If the device was left enabled via sysfs, does this leak
the PM runtime reference upon driver unbind?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701055529.4458=
19-1-songwei.chai@oss.qualcomm.com?part=3D6

