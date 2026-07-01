Return-Path: <devicetree+bounces-318098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4TEMKx92RGqYvAoAu9opvQ
	(envelope-from <devicetree+bounces-318098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 04:06:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 171186E929A
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 04:06:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=STpncTFq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318098-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318098-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EDF1300A104
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 02:06:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C20C135A53;
	Wed,  1 Jul 2026 02:06:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612C36FC3
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 02:06:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782871580; cv=none; b=ez5NYKoE4DtY0d9Hxi7VgSDXgUUunyNOxPR7iTZTmrDDHgxdphP2JWx1JlVohunM48QLXJ3HZz94UDkEoriRbCKL0hexkt+y+oDwquS0lFzL7O02uzZrTo7gA8dsihiA5EFgRcuRkMeHpwqujjCCk51FEV782Gq4BH1fUhSbSbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782871580; c=relaxed/simple;
	bh=h2+gGRWC2J6a6cBBPThsOyCxe2S3qKLFADkydzE1vpQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sKriV4KkF67QQNZ9NcRdntsK3xsrAfQfVq3DyJnyNdY5jdHiC6WMOlTcMTZv8eHeTHVVRAi/saRwETWJ4EwbACD5brszXMRr8An1p9umFTPt+Fftp5edDtlpPp/P2To80hP+mAs2LTUVTP+oAIrBG8Cfq77O6Y59y8+fnjA38NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STpncTFq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8D251F000E9;
	Wed,  1 Jul 2026 02:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782871579;
	bh=KAjSn278Q+YeEOiBpc+aBaXC7UzS0O2DXj3uHRazemA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=STpncTFqAGw1gdVheVVUasiW1y7uCBdLhvt/k0X9SzYJS7L7qKNZVFMBZpHsRaMrv
	 FQYUVCAZdjg+ozvg/yMRSY6x7OKUdhLPT2JrU/9gbBikA18aju6bGl8zk/CY9/is7e
	 UK7Ibrh37qs1VmSd/253vE8GPCwYLo6q+Bg8DiiPLbhDoSlEBEbJ/L5h/43wbu+tXA
	 a7gC7wCYLaRfEBRO2qy8d1448QRkvZGhgVm7sI5mXbqH0dzJ52xRTtylmv6IMyDMB5
	 R7k3PWGjOh40c6XJwlFgO4/9fO91lkRQhMQxuqteav/3nR4RCVGGbSUUGKNsxf6xYf
	 FlPHIZM5jMchA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/5] arm64: dts: qcom: sm8750: fix traceNoC probe
 issue
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jie Gan" <jie.gan@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260701-fix-tracenoc-probe-issue-v4-4-aefab449a470@oss.qualcomm.com>
References: <20260701-fix-tracenoc-probe-issue-v4-0-aefab449a470@oss.qualcomm.com>
 <20260701-fix-tracenoc-probe-issue-v4-4-aefab449a470@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 02:06:16 +0000
Message-Id: <20260701020618.A8D251F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-318098-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jie.gan@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 171186E929A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Switching the traceNoC device from an AMBA binding to a platform b=
inding exposes a pre-existing double-disable bug for the `apb_pclk` clock d=
uring driver unbind if the device is runtime-suspended.
--

commit c18b0cbf674e991c292d9a2d479c037f1c2eafdf
Author: Jie Gan <jie.gan@oss.qualcomm.com>

arm64: dts: qcom: sm8750: fix traceNoC probe issue

This commit changes the traceNoC device binding from an AMBA compatible
string to a standalone platform compatible string. This allows the device
to probe successfully on hardware that does not expose a readable primecell
ID register.

> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/q=
com/sm8750.dtsi
> index fafed417c66fc..d58483f9f93a3 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -4687,7 +4687,7 @@ tpdm_rdpm_cmb2_out: endpoint {
>  		};
> =20
>  		tn@109ab000 {
> -			compatible =3D "qcom,coresight-tnoc", "arm,primecell";
> +			compatible =3D "qcom,coresight-agtnoc";

[Severity: High]
This is a pre-existing issue, but does switching this device to a platform
binding expose a double-disable bug for the apb_pclk clock during driver
unbind if the device is runtime-suspended?

When binding as a non-AMBA device, the clock is acquired and enabled via a
devm-managed API which registers a devres action to disable it on unbind:

drivers/hwtracing/coresight/coresight-core.c:coresight_get_enable_clocks() {
    ...
    *pclk =3D devm_clk_get_optional_enabled(dev, "apb_pclk");
    ...
}

If the device is unbound while idle, the driver core will suspend it before
removal. The runtime PM suspend callback disables the clock:

drivers/hwtracing/coresight/coresight-tnoc.c:tnoc_runtime_suspend() {
    ...
    clk_disable_unprepare(drvdata->pclk);
    ...
}

However, the remove callback doesn't call pm_runtime_get_sync() to resume t=
he
device before disabling runtime PM:

drivers/hwtracing/coresight/coresight-tnoc.c:tnoc_platform_remove() {
    ...
    coresight_unregister(drvdata->csdev);
    pm_runtime_disable(&pdev->dev);
    ...
}

This leaves the clock disabled by runtime PM. When the devres cleanup action
for devm_clk_get_optional_enabled() runs, it unconditionally executes
clk_disable_unprepare() again.

Could this underflow the enable_count and turn off the clock while other
devices sharing the apb_pclk are still using it?

>  			reg =3D <0x0 0x109ab000 0x0 0x4200>;
> =20
>  			clocks =3D <&aoss_qmp>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-fix-tracen=
oc-probe-issue-v4-0-aefab449a470@oss.qualcomm.com?part=3D4

