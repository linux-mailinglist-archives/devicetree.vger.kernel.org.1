Return-Path: <devicetree+bounces-318099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JxUVEYZ2RGqtvAoAu9opvQ
	(envelope-from <devicetree+bounces-318099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 04:08:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 407116E92A6
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 04:08:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SathwX6n;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318099-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318099-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 77D043012CD8
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 02:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F88A1A9F97;
	Wed,  1 Jul 2026 02:07:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3E16FC3
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 02:07:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782871679; cv=none; b=IbJY2aRbrUd0NU8kD9JBNrG27krcMrgrxUJIZj8W7aZRWspY55KZ4aIBD7/lc/W1B6obnRAISKJ3pgodJurgMBYaVy32EmWc7Om4zkacqef7mkJp4uaxzNpDDPq1Vai1E5UslpAmYeOAyi6I1gsHRtxyJRoEl6RBC8josztaZ2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782871679; c=relaxed/simple;
	bh=6b8ucR701iCaXpLcY6Q95bvS95gPirJkHKVgkhxcxLM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=POKK/0SNvgqxuyRCxXu8NiW6ATLXFP+8XthwuoVUW6+BINF83KzxmWKTbF3byNU+ntf6wy8QMY0fgQTHKKUtpGC5W9mfeLCL35JeVVXc2MuYA3PjpFMTWFWeBkvmF+OUtwtPNeZqt84DEq0KcGe3hq51ecTYDc7lX3ZRxs8rixw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SathwX6n; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B90331F000E9;
	Wed,  1 Jul 2026 02:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782871678;
	bh=gX/+//H8khSSp6zh8twSxAvMCdAGIjvjJKwMUtaRU5U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SathwX6ng+hwGoiX9nbaoo/pzfALYflQ5gjweRmcFmvYIV1jRFRAxYEbc3nzq4VmZ
	 6OZeX6Ay/06F/ce8rwIqD2flR2tEz59puRM+mjCjvxU2kF7qdoT10NeL10GZ2UnfeN
	 cFoeZl0RyfTeKk6yPHNKrUjd83CeMyU+okoJb2zoQNjd343L9gvEZ4GhbbFHlwO3Kv
	 BDsfsWXG6O7boaakX3aenXR+1qReOPQovAut+FpM2cGh/FnqYF16e4vxGe1kh6jBh1
	 Ht0ladKIsC6tGnCrR54FaIprxOiPYjBnnV1ghWWLHa5ZbNeOjgmi9CCxKLmJU4Eiq5
	 QWuslt8/od+Eg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/5] arm64: dts: qcom: kaanapali: fix traceNoC probe
 issue
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jie Gan" <jie.gan@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260701-fix-tracenoc-probe-issue-v4-3-aefab449a470@oss.qualcomm.com>
References: <20260701-fix-tracenoc-probe-issue-v4-0-aefab449a470@oss.qualcomm.com>
 <20260701-fix-tracenoc-probe-issue-v4-3-aefab449a470@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 02:07:57 +0000
Message-Id: <20260701020757.B90331F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318099-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jie.gan@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,qualcomm.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 407116E92A6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Switching the Trace NOC from an AMBA device to a platform device e=
xposes a double clock disable bug during driver unbind due to mixing devm-m=
anaged clocks with manual PM runtime callbacks.
--

commit dec424aa5c224444a6c7946ea25210a9094f968f
Author: Jie Gan <jie.gan@oss.qualcomm.com>

arm64: dts: qcom: kaanapali: fix traceNoC probe issue

This commit switches the traceNoC node from an AMBA device to a platform
device to fix an issue where the device is stuck in deferred probe due to
missing CID registers.

> diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dt=
s/qcom/kaanapali.dtsi
> --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
[ ... ]
> @@ -5004,7 +5004,7 @@ tpdm_pcie_rscc_out: endpoint {
>  		};
> =20
>  		tn@111b8000 {
> -			compatible =3D "qcom,coresight-tnoc", "arm,primecell";
> +			compatible =3D "qcom,coresight-agtnoc";

[Severity: High]
This isn't a bug introduced by this patch, but does migrating this node to
the platform driver expose a double clock disable issue during unbind?

When the driver binds via the platform device, if a user unbinds the driver
via sysfs while the device is runtime suspended, it seems to trigger an
unbalanced clk_disable_unprepare() call.

Looking at tnoc_platform_remove() in drivers/hwtracing/coresight/coresight-=
tnoc.c:

static void tnoc_platform_remove(struct platform_device *pdev)
{
	struct trace_noc_drvdata *drvdata =3D platform_get_drvdata(pdev);

	coresight_unregister(drvdata->csdev);
	pm_runtime_disable(&pdev->dev);
	if (drvdata->atid > 0)
		coresight_trace_id_put_system_id(drvdata->atid);
}

Since tnoc_platform_remove() calls pm_runtime_disable() without first
waking the device (e.g. via pm_runtime_get_sync()), the device remains
suspended and its clock remains disabled by tnoc_runtime_suspend().=20
   =20
When the driver finishes unbinding, the devres framework executes the
cleanup action for devm_clk_get_optional_enabled(), which calls
clk_disable_unprepare() a second time.

Could this lead to a clock subsystem underflow?

>  			reg =3D <0x0 0x111b8000 0x0 0x4200>;
> =20
>  			clocks =3D <&aoss_qmp>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-fix-tracen=
oc-probe-issue-v4-0-aefab449a470@oss.qualcomm.com?part=3D3

