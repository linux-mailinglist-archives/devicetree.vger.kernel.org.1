Return-Path: <devicetree+bounces-318140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LWFSBI6zRGq1zAoAu9opvQ
	(envelope-from <devicetree+bounces-318140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 08:28:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 778D26EA369
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 08:28:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Qk0fQWOT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318140-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318140-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 76B64306C58F
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 06:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 424283AE196;
	Wed,  1 Jul 2026 06:25:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1356F366557
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 06:25:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782887153; cv=none; b=vCIzv0EHsPdhKqgeavT0eEY0HRRv8N1f/XT+py1OaQaZ9TpGQgvlrjyzE/06wH1E9foHBy4tbhSiqSheJgNQkZrlPvb6u8us8qgqOxESCglcGOL5XCzd5BCUaaHaoVhQg1rCVLh1yTI7cwlnvA8yA4fWBMBQ7lUJYJS/iXHPTKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782887153; c=relaxed/simple;
	bh=A5kNJ+jwiZSHkPJRL5j8L8fZuPTfe6OIOXShnnd1Q/Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oJONFI9+hVSYsVex6VR50LqlOZGX6B3HYpRrIHl9z5bmJmDz3cPtB5a0Rlwh1ZzK2h/S9jzOFpyAywTriQ9aZ3LjAYsL/qyx9KiTsnAb8CfQgMdYMDN3zabXba6oVIs8X7GAhpHZbqs52wWeM59zTIBx80QF1kDek6rLZt4QT34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qk0fQWOT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B25C91F00A3D;
	Wed,  1 Jul 2026 06:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782887152;
	bh=HKOrSb7vFar63hv5Whgsbff7uRvow45js6ZuTAh3jWE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Qk0fQWOT+r49sZnevGTlGODudvsumE7ROo7voU1G7/r1qaQajnjRYFty52brLmmoz
	 DFKJmT+RTzYu8Dy/7tNykNKTc0h+AoIlUxgxtmfQeeBZeX6cNmOjHz8lSr75Nk2gFS
	 NzL9+pbyn7ypOJz8rwQPlHndkMz8GXQe0kwfchXImZbqdHdNBOcJkUW6B8zm5FYsak
	 U9CjItVjunrq76VZMcTffHCfWQnqvPqmYaNdaoQOBmAuNk9OYREmzMbrCKDJXojWqI
	 gh9QkEHg2oeJQAGzb7cE8E6cR8fyrw53WdRNAoXjtIyZqyGH7mofGZ3v6NguX84gZS
	 O5KK3uMqnqDqw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 3/7] qcom-tgu: Add signal priority support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Songwei Chai" <songwei.chai@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701055529.445819-4-songwei.chai@oss.qualcomm.com>
References: <20260701055529.445819-1-songwei.chai@oss.qualcomm.com>
 <20260701055529.445819-4-songwei.chai@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 06:25:51 +0000
Message-Id: <20260701062551.B25C91F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318140-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:songwei.chai@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,qualcomm.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 778D26EA369

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Sysfs files are exposed to userspace before their backing memory i=
s allocated, creating a race condition that leads to a NULL pointer derefer=
ence.
- [High] Missing cleanup of explicitly created sysfs groups on probe error =
paths leads to dangling sysfs nodes and potential Use-After-Free.
- [Low] Missing spinlock acquisition or `READ_ONCE` in `tgu_dataset_show` c=
auses a data race with concurrent sysfs writes.
--

commit bffbcf9cda751c587a916ac6240800447250831c
Author: Songwei Chai <songwei.chai@oss.qualcomm.com>

qcom-tgu: Add signal priority support
   =20
Like circuit of a Logic analyzer, in TGU, the requirement could be
configured in each step and the trigger will be created once the
requirements are met. Add priority functionality here to sort the
signals into different priorities. The signal which is wanted could
be configured in each step's priority node, the larger number means
the higher priority and the signal with higher priority will be sensed
more preferentially.

> diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
> index 49c8f710b9318..7d69986c3e3d2 100644
> --- a/drivers/hwtracing/qcom/tgu.c
> +++ b/drivers/hwtracing/qcom/tgu.c
> @@ -14,14 +14,123 @@
> =20
>  #include "tgu.h"
> =20

[ ... ]

> +static ssize_t tgu_dataset_show(struct device *dev,
> +				struct device_attribute *attr, char *buf)
> +{
> +	struct tgu_drvdata *drvdata =3D dev_get_drvdata(dev);
> +	struct tgu_attribute *tgu_attr =3D
> +			container_of(attr, struct tgu_attribute, attr);
> +	int index;
> +
> +	index =3D calculate_array_location(drvdata, tgu_attr->step_index,
> +					 tgu_attr->operation_index,
> +					 tgu_attr->reg_num);
> +
> +	return sysfs_emit(buf, "0x%x\n",
> +			  drvdata->value_table->priority[index]);

[Severity: Low]
Does this read need to be protected by drvdata->lock or use READ_ONCE()?

tgu_dataset_store() acquires drvdata->lock before writing to this array,
but this read accesses it locklessly, which could cause a data race.

> +}

[ ... ]

> @@ -128,6 +269,8 @@ static int tgu_probe(struct amba_device *adev, const =
struct amba_id *id)
>  {
>  	struct device *dev =3D &adev->dev;
>  	struct tgu_drvdata *drvdata;
> +	unsigned int *priority;
> +	size_t priority_size;
>  	int ret;
> =20
>  	drvdata =3D devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> @@ -143,12 +286,30 @@ static int tgu_probe(struct amba_device *adev, cons=
t struct amba_id *id)
> =20
>  	spin_lock_init(&drvdata->lock);
> =20
> +	tgu_set_reg_number(drvdata);
> +	tgu_set_steps(drvdata);
> +
>  	ret =3D sysfs_create_groups(&dev->kobj, tgu_attr_groups);
>  	if (ret) {
>  		dev_err(dev, "failed to create sysfs groups: %d\n", ret);
>  		return ret;
>  	}
> =20
> +	drvdata->value_table =3D
> +		devm_kzalloc(dev, sizeof(*drvdata->value_table), GFP_KERNEL);

[Severity: High]
Does this expose sysfs files to userspace before their backing memory is
allocated?

If userspace reads a sysfs file immediately after sysfs_create_groups() ret=
urns,
but before the memory allocations below complete, tgu_dataset_show() will
dereference the uninitialized drvdata->value_table pointer. Should these
allocations happen before the sysfs groups are created?

> +	if (!drvdata->value_table)
> +		return -ENOMEM;

[Severity: High]
Does this error path leak the sysfs groups created earlier?

If this allocation fails, the function returns -ENOMEM without calling
sysfs_remove_groups(). The devres cleanup will eventually clear the drvdata
pointer, leaving dangling sysfs nodes. Any subsequent access to these files
would then trigger a NULL pointer dereference or use-after-free.

> +
> +	priority_size =3D MAX_PRIORITY * drvdata->num_reg * drvdata->num_step;
> +
> +	priority =3D devm_kcalloc(dev, priority_size,
> +				sizeof(*drvdata->value_table->priority),
> +				GFP_KERNEL);
> +	if (!priority)
> +		return -ENOMEM;
> +
> +	drvdata->value_table->priority =3D priority;
> =20
>  	drvdata->enabled =3D false;
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701055529.4458=
19-1-songwei.chai@oss.qualcomm.com?part=3D3

