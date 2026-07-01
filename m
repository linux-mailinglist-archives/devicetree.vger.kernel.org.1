Return-Path: <devicetree+bounces-318213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9ZQ3HhjJRGrD0woAu9opvQ
	(envelope-from <devicetree+bounces-318213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 10:00:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C41DB6EAEAF
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 10:00:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HXRbxdPB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318213-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318213-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 584423005AD4
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 07:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3BDD3C09E5;
	Wed,  1 Jul 2026 07:55:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60963C0A1D
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 07:55:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782892543; cv=none; b=ibDzN9fEXQsczCkiyeAo6U07sfIuj9z1lhGusLrGH+ZVtSfDh1Jz/XtEKUKcFQyS0dj9GkWsxyWkIPwTUDR1WbPOZYN7h7UiAoMLfEkThhNvmSBT9JpVbzS4o/bQgZ6ADAfJwULicvZtQB9yV2TTCSqK/FBiVAn7G7a8HtAIJus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782892543; c=relaxed/simple;
	bh=khEueEwgmNv2noBq2rqT2rb4NUT6zdgC4VFR3d5tXdc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AdnkGfxGWVmyRXZY5lRq/Qf20temsIVy1/NmSlLPSLRU+ySG32clBTPXREZ322D4GzUeblCjVST7SwHDmoCKSj0XqghCuJiw1mSO3jsPf+mdOOviSyCAqTvnNDFcnG85mA5OhNp3uZ0MYkwQ/yCmYe8WJSrTJhQjeNRuVKzMFxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXRbxdPB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB1731F00A3A;
	Wed,  1 Jul 2026 07:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782892542;
	bh=ksqi4MatNaDUIyt2kUAOzagWrgkr5YUKOgz7uqddn1w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HXRbxdPBHEBSNayO5TyFN8Z8KSmJs+tHqoFn7r7bj2lSU1ST2LgnxkYza8hYKTtWD
	 rwTK0CkwhcbcmFhUDfxkocMySO7Fhd+dZ6YWy+sHWftVGzSR7wW1VlEEeYrOEyuJnw
	 sv0mQs5QbA4fbg5jGkXFnFu8nFn333QA3ABBHtI0BPJDCDPrfNRCeATDgfbmdraZty
	 HwOF4Ufw33ctwgecUAQeBN/rEIJitqpbDikGd2J/Y/jQzujici6EI2ctvCfv2RmB9t
	 fv4REaIHVjKidjvhRVmSTHTc+iX3yR841O//wsOqHtVjYGXp9gFR04cFuqoMMrpnLa
	 o8u5iPcsQbYUA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v21 3/3] pwm: Add OpenCores PTC PWM driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Hal Feng" <hal.feng@starfivetech.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260701074442.7714-4-hal.feng@starfivetech.com>
References: <20260701074442.7714-1-hal.feng@starfivetech.com>
 <20260701074442.7714-4-hal.feng@starfivetech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 07:55:41 +0000
Message-Id: <20260701075541.AB1731F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[starfivetech.com:server fail,lists.linux.dev:server fail,sashiko.dev:server fail,vger.kernel.org:server fail,smtp.kernel.org:server fail,sea.lore.kernel.org:server fail];
	TAGGED_FROM(0.00)[bounces-318213-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:hal.feng@starfivetech.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,starfivetech.com:email,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C41DB6EAEAF

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Hardware state desynchronization in `.free` causes unclocked regis=
ter accesses.
- [Medium] Incorrect rejection of small valid duty cycles leading to API co=
ntract violation.
--

commit b5c8de1f767ebe7d5f7953c6daf99b312944518f
Author: Hal Feng <hal.feng@starfivetech.com>

pwm: Add OpenCores PTC PWM driver

Add PWM driver for OpenCores PTC IP core.

> diff --git a/drivers/pwm/pwm-ocores.c b/drivers/pwm/pwm-ocores.c
> new file mode 100644
> index 0000000000000..297c24d5805ce
> --- /dev/null
> +++ b/drivers/pwm/pwm-ocores.c
[ ... ]
> +static int ocores_pwm_apply(struct pwm_chip *chip,
> +			    struct pwm_device *pwm,
> +			    const struct pwm_state *state)
> +{
[ ... ]
> +	period_data =3D mul_u64_u32_div(state->period, ddata->clk_rate, NSEC_PE=
R_SEC);
> +	if (period_data > U32_MAX)
> +		period_data =3D U32_MAX;
> +
> +	duty_data =3D mul_u64_u32_div(state->duty_cycle, ddata->clk_rate, NSEC_=
PER_SEC);
> +	if (duty_data > U32_MAX)
> +		duty_data =3D U32_MAX;
> +
> +	if (!period_data || (!duty_data && state->duty_cycle))
> +		return -EINVAL;

[Severity: Medium]
Does this code reject valid, small duty cycles that round down to 0?

The PWM framework requires drivers to satisfy requests by configuring the
closest achievable hardware state, preferring to round down. Returning -EIN=
VAL
here instead of allowing a 0% duty cycle breaks this API contract.

> +
> +	if (!was_enabled) {
> +		ret =3D pm_runtime_resume_and_get(pwmchip_parent(chip));
> +		if (ret < 0)
> +			return ret;
> +	}

[Severity: High]
Can this result in unclocked register accesses causing a bus fault?

If a consumer frees an enabled PWM, ocores_pwm_free() disables the hardware
and drops the pm_runtime reference. However, the PWM core does not update
state.enabled on free.

If the PWM is requested again and pwm_apply() is called with enabled =3D tr=
ue,
was_enabled evaluates to true because of the stale cached state. This skips
pm_runtime_resume_and_get() and writes to registers with the clock disabled.

> +
> +	writel(0, ddata->base + OCPWM_CTRL);
> +	writel(OCPWM_CTRL_RST, ddata->base + OCPWM_CTRL);
> +
> +	writel(period_data, ddata->base + OCPWM_LRC);
> +	writel(duty_data, ddata->base + OCPWM_HRC);
> +	writel(OCPWM_CTRL_OE | OCPWM_CTRL_EN, ddata->base + OCPWM_CTRL);
> +
> +	return 0;
> +}
> +
> +static void ocores_pwm_free(struct pwm_chip *chip, struct pwm_device *pw=
m)
> +{
> +	struct ocores_pwm_device *ddata =3D pwmchip_get_drvdata(chip);
> +
> +	if (pwm_is_enabled(pwm)) {
> +		writel(0, ddata->base + OCPWM_CTRL);
> +		pm_runtime_put_sync(pwmchip_parent(chip));
> +	}
> +}

[Severity: High]
Does disabling the hardware here violate the PWM framework's contract?

Freed PWMs are expected to remain in their current state. Dropping the PM
reference without notifying the PWM core desynchronizes the hardware state
from the framework's cached state, triggering the unclocked access in
ocores_pwm_apply() described above.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701074442.7714=
-1-hal.feng@starfivetech.com?part=3D3

