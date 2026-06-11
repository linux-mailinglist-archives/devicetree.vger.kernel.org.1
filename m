Return-Path: <devicetree+bounces-310232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5MasKtNxKmrDpQMAu9opvQ
	(envelope-from <devicetree+bounces-310232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:29:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2175066FDB8
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:29:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ByTlEPw6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310232-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310232-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8B444300539A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 08:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97182377EAC;
	Thu, 11 Jun 2026 08:28:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C41377544
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 08:28:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781166525; cv=none; b=gU4iYBooRAiiVL3bCdoP2GTMK8tw6netSOkk1SWRVRr2Tp/j01snCFUJv5bXKhbP1Sx0+nfzpjjARHkHMqr6Z6ZtfkQiZdUwyytm3Y5IAYHHNpyP9F0SU/9WI+I9uUns3pMNfg8cunddsCM6ad8/3nJvYDpCnz3+uxXhRE6LdFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781166525; c=relaxed/simple;
	bh=dqfJJcuK+NHrnsdYmQGXSUI2EuRwRPUVRYfPPBsk5yc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fBDQM4XS6Rj1V5sQTjCMydlvrjCmy71n84/Q/DHLP8BFf8RY/IAWG85RDiLmnyAW1kpeEulG/3mosI0jjIO0YuR6D+5odj3TE+um6DzgMhIInegGjTOGN1atWcGwCfmXVjYXRwDrXvvyHMu5qSTarkgwOO+eKnQ5inUnhDVwIdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByTlEPw6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E30CA1F00893;
	Thu, 11 Jun 2026 08:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781166524;
	bh=2m3qKVrl66xnT4PrKYQt9UTffmezHXZURcTEPuSKp3g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ByTlEPw6EU668XSMz7DWtuVUYL1SiLEuuAq4nMQ+Hdp6dSpiZKuWfk04WZI3fYaTP
	 oNz53pnJlA4VNOGLUSYaOP/2bfoH/nRYzzkL7dOAm1ui060XGLC5SdgCbEGHxNAmgQ
	 IZk0VVzbLO1lBD+lXhSlK/xQJwf/po8m9bKmaralqNKbdeuVigbzjZj3jyJgQqDNp5
	 94p9n33ZIu0uYLPzXUP8Miwg9g2MObdjBcqReQ7oVHYFcOANhB1Ra33Bd15kayTIuy
	 zf6KSsCZLS5KbKmkn4k99SOfQJu1QIfRvvNLLkHFERO+IM4vFtvCCIDk7X6iNeUcGi
	 UXIfgV/h5JabQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] usb: dwc3: Update nominal max votes for qcom usb
Reply-To: sashiko-reviews@lists.linux.dev
To: "Akash Kumar" <akash.kumar@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260611081831.2743464-1-akash.kumar@oss.qualcomm.com>
References: <20260611081831.2743464-1-akash.kumar@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 08:28:43 +0000
Message-Id: <20260611082843.E30CA1F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-310232-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:akash.kumar@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,qualcomm.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2175066FDB8

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] APPS_USB_AVG_BW is incorrectly defined without the MBps_to_icc() c=
onversion macro, passing a severely undersized value to the interconnect fr=
amework.

Pre-existing issues:
- [High] If pm_runtime_resume_and_get() fails in dwc3_qcom_remove(), the dr=
iver returns early, skipping core unregistration and causing massive resour=
ce leaks and potential panics.
--

commit 68d35d27d1f598a1e07e782bd412e6f30d3c6fbf
Author: Akash Kumar <akash.kumar@oss.qualcomm.com>

usb: dwc3: Update nominal max votes for qcom usb

This commit increases nominal max bandwidth votes to improve DDR performance
and handle multiple USB audio use cases without glitches. It updates the
peak interconnect bandwidth from 2500 to 5500 and increases the apps USB
average and peak bandwidth allocations.

> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index f43f73ac36ff1..aa43a03f3c7fc 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> @@ -46,9 +46,9 @@
>  #define USB_MEMORY_AVG_HS_BW MBps_to_icc(240)
>  #define USB_MEMORY_PEAK_HS_BW MBps_to_icc(700)
>  #define USB_MEMORY_AVG_SS_BW  MBps_to_icc(1000)
> -#define USB_MEMORY_PEAK_SS_BW MBps_to_icc(2500)
> -#define APPS_USB_AVG_BW 0
> -#define APPS_USB_PEAK_BW MBps_to_icc(40)
> +#define USB_MEMORY_PEAK_SS_BW MBps_to_icc(5500)
> +#define APPS_USB_AVG_BW 40

[Severity: High]
Should this value be wrapped in the MBps_to_icc macro like the other
bandwidth definitions?

Since icc_set_bw expects values in kBps, defining APPS_USB_AVG_BW as
just 40 without the conversion macro appears to vote for 40 kBps instead
of the intended 40 MBps. Does this unintentionally starve the apps-usb
path instead of improving performance?

> +#define APPS_USB_PEAK_BW MBps_to_icc(80)
> =20
>  /* Qualcomm SoCs with multiport support has up to 4 ports */
>  #define DWC3_QCOM_MAX_PORTS	4


This isn't a bug introduced by this patch, but looking at driver unbind
in dwc3_qcom_remove:

drivers/usb/dwc3/dwc3-qcom.c:dwc3_qcom_remove() {
    ...
    if (pm_runtime_resume_and_get(qcom->dev) < 0)
        return;
    ...
}

[Severity: High]
If pm_runtime_resume_and_get fails, does this early return skip
dwc3_core_remove and core unregistration entirely?

Since devres-managed memory for the qcom and dwc structs will still be
freed when the remove callback completes, will leaving debugfs files
active and workqueues (like vbus_draw_work) running result in a
use-after-free if they are accessed later?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611081831.2743=
464-1-akash.kumar@oss.qualcomm.com?part=3D1

