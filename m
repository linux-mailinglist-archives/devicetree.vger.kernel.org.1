Return-Path: <devicetree+bounces-318851-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nymMDMhaRWp/+woAu9opvQ
	(envelope-from <devicetree+bounces-318851-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 20:22:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFA26F08F6
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 20:21:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fiGhmemA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318851-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318851-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B73963058D8F
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 18:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD4F24C77C9;
	Wed,  1 Jul 2026 18:21:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D4E4C77C5
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 18:21:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782930114; cv=none; b=SbZGjN2HbypmOG2yP1JzVefAvY/TT4DB3VdxTng0ti6mbWiU/GVyznOVCrRjPg+yOb5+cmRhc4xuSfVEddGJT6YOFTYEPWaKwT9Kqn/dDhwnUXdSG5hZ+1xJcRa1vbNQyByz4Pg6+DoarGvhqH3VU+C+nKUhMiTRWglRw4gmzMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782930114; c=relaxed/simple;
	bh=PLDgEc0Do2H22VGlCYrVwfUGPhkJd01zB9Iyt0tGQss=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MafV89B5+aG8Q8KTz43sCsvxamLMu6w0R9603j9oTWuIQ7DoMM+dh78Wus6Ed+wVW0FpAhAL6dOkaaoqHpfdMObO4nr70yXqnkHwO0lP+uzwh7fTN2MdcbcpKE8xmNeetXGi1wFI0Aozo4ej6j60zdQvyoknfn728WbRzv195yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiGhmemA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F5B61F000E9;
	Wed,  1 Jul 2026 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782930113;
	bh=lwAYNdGRQJvdl/y+QcVpExOkwxdxmvigdC1NE6Ejr6k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fiGhmemA7WK7yzzjmiBtoIQkAXnMLHqSvb/JU+6uvFvf9KRyoAhjCn4JT/Yt8UVW3
	 deIWO87+5YwD/i3U57sB4BtEBadSdS6N8sCtT1oBlfHa4eYNOuGAPEFShBjASzkzjd
	 2mOeidO/mVmkzyKvmjChpxZrQu6AElEAZPJoGAMC2s9f6OrKuHRdqiWxtXZKyqf/Ot
	 eiE5rH9ZBKTtjcgTjidKj0S6QIigunOOlz3z5M7uGm2N7jrlQomPgpcGAwPivPotj2
	 PEGfWvhDWUF2I8Umy2U7UjhDi8CfVb23CR5tLSjti9CeCpTa5wsY9FyTta/qZwPP4d
	 FQNDfBgoDm+9w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] ARM: dts: am33xx: avoid invalid OCP device-link for
 timer1 and timer2
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wagner Popov dos Santos" <wpopov@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260701175647.8694-1-wpopov@gmail.com>
References: <20260701175647.8694-1-wpopov@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 18:21:52 +0000
Message-Id: <20260701182153.0F5B61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318851-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wpopov@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BAFA26F08F6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Using the undocumented, Linux-internal `post-init-providers` pro=
perty to silence an OS warning.
--

commit be227235cebc7285a11a56bcbf6975ef2b78f927
Author: Wagner Popov dos Santos <wpopov@gmail.com>
ARM: dts: am33xx: avoid invalid OCP device-link for timer1 and timer2

This patch updates dependency handling for timer1 and timer2 on AM335x/UCC3.
It adds post-init-providers to the device nodes to avoid boot-time
fw_devlink errors caused by invalid link-creation attempts.

> diff --git a/arch/arm/boot/dts/ti/omap/am33xx.dtsi b/arch/arm/boot/dts/ti=
/omap/am33xx.dtsi
> index ca3e7f5d7d0dc..760598d5ae1c9 100644
> --- a/arch/arm/boot/dts/ti/omap/am33xx.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/am33xx.dtsi
> @@ -708,6 +708,7 @@ &timer1_target {
>  	timer@0 {
>  		assigned-clocks =3D <&timer1_fck>;
>  		assigned-clock-parents =3D <&sys_clkin_ck>;
> +		post-init-providers =3D <&ocp>;

[Severity: Medium]
Does this introduce a regression by using an undocumented Linux-specific
property in the Device Tree to silence an OS warning here in timer1_target?

Since Device Tree is intended to be an OS-agnostic hardware description,
adding this internal Linux fw_devlink mechanism pollutes the DT with an
OS-specific probing workaround.

Would it be better to fix this regression in the driver core instead?

Perhaps patching fw_devlink_create_devlink() to gracefully skip link creati=
on
when the resolved supplier is an ancestor of the consumer would address the
root cause without adding OS-specific properties to the DT.

>  	};
>  };
> =20
> @@ -721,5 +722,6 @@ &timer2_target {
>  	timer@0 {
>  		assigned-clocks =3D <&timer2_fck>;
>  		assigned-clock-parents =3D <&sys_clkin_ck>;
> +		post-init-providers =3D <&ocp>;

[Severity: Medium]
Does this node for timer2_target introduce the same regression mentioned
above?

>  	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701175647.8694=
-1-wpopov@gmail.com?part=3D1

