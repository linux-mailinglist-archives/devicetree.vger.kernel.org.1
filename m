Return-Path: <devicetree+bounces-321415-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XVf4JIHkS2rtcAEAu9opvQ
	(envelope-from <devicetree+bounces-321415-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 19:23:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 981DB713CFA
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 19:23:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Oxx72mog;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321415-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321415-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4077D306A912
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 17:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46DCE2F3C3E;
	Mon,  6 Jul 2026 17:09:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E542F3600
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 17:09:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783357750; cv=none; b=Ja/5Dc3vR6VYP/QCSebmfpkq8Ya2MxDpD6iQnQP4keXVwqbYmhFAJzMsvWer2hukCWuYZO9tzTcXWX1iQLdthfRh6jkZsVLIJ7Z3Qog7sNZsfF7fl00nADxt8PCTQOZHMVmg+30y/DFBysiTCh37F6UzNvLzl7eovqD64UoQkzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783357750; c=relaxed/simple;
	bh=G31djdIAA6URrmnGa7RmvFd2u2dmwUmzhajEN5sOLIA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GaYivty5+Wf2bPy0EFgYDrfRH/jWwguGNOodjSHKfbOKl5crFZFp4ZeBu8u0ZZsWLQ1petXX9kY2ZbdsoA+BFcKrLshbqX0CdSbcsUZQi8XoVPlJnkLi+720CwLP96M2oTlSerFMRBJh5DvTWUqHfQEd9Z2b3p2ydasBWE0j294=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oxx72mog; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81FC31F000E9;
	Mon,  6 Jul 2026 17:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783357747;
	bh=ropOOXGyC7IpjcyCSUNiDWXLjJMntSLZfEkFt8Vlqzs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Oxx72mogBghHDkEfO1uBh1jiY5GxagySaCrXtGG3vzUzylL6vZOqoYKYyJ2awWHLC
	 k6z1PEy7LoUJK90rt/39tWxvg8MwG0BNsf+ZPjBzF9k3V1EsGxuZZzM/rB8yA89Fl4
	 dQsafrLmb2dD4Xi8JBuLDRURmBkTfCEq8HfRQH59AUB6yjnJCSlv8E2iusZLhtzh8d
	 SLTxnCXKEZW5Haw05ZCQjnfgdySb3MgYpe7yQQgRVAbF5zAxmsqc7MS7fN3xV5bkXs
	 5MB0D0B6WCw/IA+ERJ3wvq6SYPmMGyor30/fjBeA54264Px8mqXLx/l4cJbpUMvqds
	 KGWqtLx8IZ1Nw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/6] iommu/arm-smmu: Add interconnect bandwidth
 voting support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bibek Kumar Patro" <bibek.patro@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260706-smmu_interconnect_addition-v3-2-afdca0125a65@oss.qualcomm.com>
References: <20260706-smmu_interconnect_addition-v3-0-afdca0125a65@oss.qualcomm.com>
 <20260706-smmu_interconnect_addition-v3-2-afdca0125a65@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 17:09:07 +0000
Message-Id: <20260706170907.81FC31F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321415-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:bibek.patro@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 981DB713CFA

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

New issues:
- [High] If `smmu->impl->runtime_suspend()` fails, `arm_smmu_runtime_suspen=
d()` returns the error to the PM core after clocks have already been disabl=
ed, leaving the device logically active but physically unclocked.
- [Medium] Inconsistent power sequencing between probe and runtime PM regar=
ding the enablement of clocks and the interconnect bandwidth vote.

Pre-existing issues:
- [High] The use of `devm_krealloc()` in `qcom_smmu_create()` leaves append=
ed struct fields uninitialized, resulting in random hardware configuration.
- [High] Shared interrupt handlers access SMMU hardware without verifying P=
M runtime state, and runtime suspend lacks `synchronize_irq()`.
--

commit ca13a0dc53feec15c5946623eccfe70dcf798821
Author: Bibek Kumar Patro <bibek.patro@oss.qualcomm.com>

iommu/arm-smmu: Add interconnect bandwidth voting support
   =20
On some SoCs the SMMU registers require an active interconnect
bandwidth vote to be accessible. While other clients typically
satisfy this requirement implicitly, certain corner cases (e.g.
during sleep/wakeup transitions) can leave the SMMU without a
vote, causing intermittent register access failures.

> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/a=
rm/arm-smmu/arm-smmu-qcom.c
> index e2c914fccd6fc..5133d3ab023a2 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c

[ ... ]

> @@ -691,6 +738,12 @@ static struct arm_smmu_device *qcom_smmu_create(stru=
ct arm_smmu_device *smmu,
>  	qsmmu->smmu.impl =3D impl;
>  	qsmmu->data =3D data;
> =20
> +	if (is_adreno_smmu) {
> +		ret =3D qcom_adreno_smmu_icc_init(&qsmmu->smmu);
> +		if (ret)
> +			return ERR_PTR(ret);
> +	}
> +
>  	return &qsmmu->smmu;
>  }

[Severity: High]
This is a pre-existing issue, but I noticed devm_krealloc() is used in
qcom_smmu_create() without passing __GFP_ZERO. Does this leave newly
appended fields in the struct (like qsmmu->stall_enabled) uninitialized?

When qcom_adreno_smmu_write_sctlr() later checks
if (qsmmu->stall_enabled & BIT(idx)), could it read uninitialized memory
and unpredictably enable stall-on-fault behavior?

> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu.c b/drivers/iommu/arm/ar=
m-smmu/arm-smmu.c
> index 0bd21d206eb3e..a27804e15738c 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu.c

[ ... ]

> @@ -2189,6 +2189,14 @@ static int arm_smmu_device_probe(struct platform_d=
evice *pdev)
>  	if (err)
>  		return err;
> =20
> +	if (smmu->impl && smmu->impl->runtime_resume) {
> +		err =3D smmu->impl->runtime_resume(smmu);
> +		if (err) {
> +			clk_bulk_disable_unprepare(smmu->num_clks, smmu->clks);
> +			return err;
> +		}
> +	}
> +
>  	err =3D arm_smmu_device_cfg_probe(smmu);

[Severity: Medium]
In arm_smmu_runtime_resume(), the interconnect bandwidth vote is
established before the clocks are enabled. However, in this probe
sequence, clk_bulk_prepare_enable() runs just before this runtime_resume
callback.

Could this sequence inversion cause hardware instability during probe if
clocks are enabled without the required active bandwidth vote?

[ ... ]

> @@ -2309,6 +2329,9 @@ static int __maybe_unused arm_smmu_runtime_suspend(=
struct device *dev)
> =20
>  	clk_bulk_disable(smmu->num_clks, smmu->clks);
> =20
> +	if (smmu->impl && smmu->impl->runtime_suspend)
> +		return smmu->impl->runtime_suspend(smmu);
> +
>  	return 0;
>  }

[Severity: High]
If smmu->impl->runtime_suspend() fails here (for example, if icc_set_bw
returns an error), the error is propagated to the PM core. The PM core
reacts to a failed suspend by leaving the device in the RPM_ACTIVE state.

Since the clocks were already disabled by clk_bulk_disable() right above
this, does this leave the device logically active but physically
unclocked? Could subsequent hardware accesses then trigger a synchronous
external abort?

[Severity: High]
This isn't a bug introduced by this patch, but since the driver requests
IRQF_SHARED for its fault interrupts, shouldn't synchronize_irq() be
called here during runtime suspend to wait for any in-flight shared IRQs?

Since the interrupt handlers (like arm_smmu_context_fault()) do not use
pm_runtime_get_if_active() to verify the device is powered before reading
hardware registers, could a shared interrupt firing while the SMMU is
fully suspended cause a crash when it accesses unclocked hardware?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-smmu_inter=
connect_addition-v3-0-afdca0125a65@oss.qualcomm.com?part=3D2

