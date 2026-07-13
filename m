Return-Path: <devicetree+bounces-325420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mUtgCwjDVGpJSQAAu9opvQ
	(envelope-from <devicetree+bounces-325420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:50:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C41CB749FD3
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:50:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dq3+kXSd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325420-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325420-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18FFD302E329
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66D337F014;
	Mon, 13 Jul 2026 10:39:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A960F37EFEE
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 10:39:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783939198; cv=none; b=LrgzvQ4iaNjyupl4wCVvNIFDIlpiC/W8j72Ikp3d+kXtdWu2SB7obRfHn7GxUPwd8bJ4BFpZtqlmCnEPzSZ5uaGE6hRUEyHt4rEn+YgTsdtlyDCKjHHiGfcikagFc0IRIOIwum2Ju0Kar5FcWnIZueHByuCvV+OaqJE27A/p7PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783939198; c=relaxed/simple;
	bh=T83c9AjGOsXdwIkRuDI6xxHnynV85BGDz5exlcZubiQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cV7UcAQSEq6NsSuj+a8OR2g8uUh1nUueg7tPwZ0PIwYxfflMFGigVZqV0dLIqRHodVPs9NBk+RreuSswbyC1LdqFMHzHzoi9Wb0+WnwckjJFJ9Jyjm5CuQJl3MlMkwNKjIrKhLOZakm5469ym9Zx6IO92dj5h5bQMcVTrTNzFBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dq3+kXSd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C0C61F000E9;
	Mon, 13 Jul 2026 10:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783939197;
	bh=x8oXiou74DGyocC5MesdY8P+CtY16UEe9mvEu2VUYTs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dq3+kXSdvSGYySMrQ2kDXlLecn39by9+jxaXp1X6A4xX2qmPirzgdEVcgbvseToii
	 YKk4eV15MysJy974UmLvYP9yHdR5WKSui2oFl3TYWpqzZ+TaygTnz3JCAkGiw4mMTn
	 CGakq97ZQQltT8oUOocuxTIgQ5pfyKCN/fV1abJMdOJGqHIYP2gcIhdi+ECE6B13Sd
	 NcSj9xKyvgwjQT1sI0LwPlA48j6cbQ/BlaIjIwd0MnQALMSumMeGSlAk34T5mv2Lxg
	 HZudwUnm2g7a5WZ6VWUrRN81k2jXTYphJ109WCfpX0Rtk0TKRm0cobs7iHu93DGheU
	 DcSWqmJN+X1PA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 6/7] arm64: dts: qcom: agatti: Do not mark MPM as power
 domain
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sneh Mankad" <sneh.mankad@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260713-b4-shikra_lpm_addition-v1-6-3d858df2cbbf@oss.qualcomm.com>
References: <20260713-b4-shikra_lpm_addition-v1-0-3d858df2cbbf@oss.qualcomm.com>
 <20260713-b4-shikra_lpm_addition-v1-6-3d858df2cbbf@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 10:39:56 +0000
Message-Id: <20260713103957.4C0C61F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325420-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:sneh.mankad@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C41CB749FD3

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Missing check for KTIME_MAX and expired timers causes 64-bit integ=
er overflow, resulting in an unpredictable hardware wakeup time.
- [High] Mailbox notification is sent to the RPM processor before the timer=
 registers are updated, causing a race where RPM reads stale timer values.
--

--- Patch [6]: [PATCH 6/7] arm64: dts: qcom: agatti: Do not mark MPM as pow=
er domain ---
commit 7c3965f0765f0a48723f4b17bac82d687c8614cc
Author: Sneh Mankad <sneh.mankad@oss.qualcomm.com>

arm64: dts: qcom: agatti: Do not mark MPM as power domain
   =20
Do not mark MPM device as power domain since it leads to idle-states init
failure because of probe dependencies. CPU cluster power domain node is kept
disabled and hence CPU cluster will never power collapse. Do not register
MPM under it in this case.

> diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/q=
com/agatti.dtsi
> index f0b6ae9b81528..ddb038b3bbbc4 100644
> --- a/arch/arm64/boot/dts/qcom/agatti.dtsi
> +++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
> @@ -205,7 +205,6 @@ cpu_pd3: power-domain-cpu3 {
> =20
>  		cluster_pd: power-domain-cpu-cluster {
>  			#power-domain-cells =3D <0>;
> -			power-domains =3D <&mpm>;
>  			domain-idle-states =3D <&cluster_sleep>;
>  		};
>  	};

[Severity: High]
Does removing the MPM power domain mapping cause issues with the timer
values?

When no hrtimers are pending, dev_pm_genpd_get_next_hrtimer() returns
KTIME_MAX. Subtracting 'now' leaves a huge positive value, which when
converted to microseconds and multiplied by 0x10C7UL overflows the 64-bit
boundary.

Similarly, if a timer has already expired, the negative difference
becomes a huge positive value when implicitly cast to u64 wakeup_us, leading
to overflow.

Could this happen here in mpm_write_next_wakeup() within
drivers/irqchip/irq-qcom-mpm.c:

	wakeup =3D dev_pm_genpd_get_next_hrtimer(priv->dev);

	/* Find the relative wakeup in kernel time scale */
	now =3D ktime_get();
	wakeup =3D ktime_sub(wakeup, now);
	wakeup_us =3D ktime_to_us(wakeup);

	/* Convert the wakeup to arch timer scale */
	wakeup_cycles =3D USECS_TO_CYCLES(wakeup_us);

and cause random timer values to be programmed into the MPM hardware?

[ ... ]

> @@ -281,7 +280,6 @@ mpm: interrupt-controller {
>  			mboxes =3D <&apcs_glb 1>;
>  			interrupt-controller;
>  			#interrupt-cells =3D <2>;
> -			#power-domain-cells =3D <0>;
>  			interrupt-parent =3D <&intc>;
>  			qcom,mpm-pin-count =3D <96>;
>  			qcom,mpm-pin-map =3D <2 275>,  /* TSENS0 uplow */

[Severity: High]
Does this change expose a race condition with the RPM processor?

The AP signals the RPM processor to configure hardware state from the shared
vMPM SRAM before actually writing the new timer wakeup values to the SRAM.
Since the RPM is an independent processor, it is highly likely to read the
old, stale timer values.

Could this happen here in handle_rpm_notification() within
drivers/irqchip/irq-qcom-mpm.c:

	/* Notify RPM to write vMPM into HW */
	ret =3D mbox_send_message(priv->mbox_chan, NULL);
	if (ret < 0)
		return ret;

	mpm_write_next_wakeup(priv);

and cause the hardware to be programmed with the incorrect wakeup time?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713-b4-shikra_=
lpm_addition-v1-0-3d858df2cbbf@oss.qualcomm.com?part=3D6

