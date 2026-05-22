Return-Path: <devicetree+bounces-302041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Pn/IiG7EGomdAYAu9opvQ
	(envelope-from <devicetree+bounces-302041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 22:22:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDA55B9F84
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 22:22:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 181DA3013695
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 20:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10A4C382385;
	Fri, 22 May 2026 20:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olbLS6T+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D826437F002
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 20:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779481308; cv=none; b=Cs0tUPPGX28nWTgKYDK9YzaftR10RoMQ1RMyPy4HLlMMASynjtGKFC9kRG4R1ICjOJXbMLZETC1vGIM6pVkhEZFl9RVMnC135yIlicGub2y6XDN6E3Bs1tpLNPT/dpIEZxxwPwryX9bKpMht6Ntn2Vkoan5rVANyhX05sDUpQjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779481308; c=relaxed/simple;
	bh=JtFxg0luN6mjdQTnX98U3OThoWZgBWgttJUAu38+eLs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KZF0mT/P9RKBu/iV5tHKgXiqzWzVSNe2ckDux65wMznSG4YZ5EgUh5dEYoEF3Dk3B/dw81MiO2+wfZNu60dAyKVZHoIUdwXW5YdZ0WTUsI8jww472iZ+ytk3ZJhOE7GlmwVhWSynmd9d7XSjJM0zGn8/gdDuO1kvAAhn0plmXpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olbLS6T+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AC631F000E9;
	Fri, 22 May 2026 20:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779481306;
	bh=/b5srpzW3h/rzmmSyL4h6qLoFec6yq1ETI3u9zcG+YE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=olbLS6T+/YC0woAb5IXTlY9D8U0hTN7EycuMUN6YjCiFpyUnE0LjAn5vAKjYs7yvh
	 3MuHvXBzJMdn1duI8Aw9VIt3J64IMEzJ5F8X4hEKrPWUS81Nj7RWTCREshd+yv+piM
	 59CMOcV6+DjK0u5sRqi7gJmdb8/I5RP6sF2Oq/RUv+42qVbgeUnj7vky03ltF431L7
	 Xp0Pvy2+1r/3/V4DAvDd9Zk2mEmt+rUWrNOCRzdxVJOjF/WSD+Zp42hyLHNCszkAiD
	 NroG6S0Ny2vt3GARlJtdaGvZWNCdsMDYIx4mgEi2vJHBTsRCRBRr7cF4YagiCPe0o/
	 qBVYS5Gy1M7Zw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 04/18] firmware: qcom: scm: Add minidump SRAM support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260522195009.2961022-5-mukesh.ojha@oss.qualcomm.com>
References: <20260522195009.2961022-5-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 May 2026 20:21:45 +0000
Message-Id: <20260522202145.9AC631F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302041-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: ECDA55B9F84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing smp_load_acquire() when reading the global __scm pointer i=
n set_download_mode() risks a race condition and stale reads.
--

commit de197846d8ecb70e3382c65171f1e37949d3d114
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

firmware: qcom: scm: Add minidump SRAM support

On most Qualcomm SoCs where minidump is supported, a word in always-on
SRAM is shared between the kernel and boot firmware. This commit adds
minidump SRAM support and exposes a minidump_dest module parameter so
the user can select the destination.

> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qco=
m_scm.c
> --- a/drivers/firmware/qcom/qcom_scm.c
> +++ b/drivers/firmware/qcom/qcom_scm.c
[ ... ]
> @@ -568,6 +583,14 @@ static void qcom_scm_set_download_mode(u32 dload_mod=
e)
> =20
>  	if (ret)
>  		dev_err(__scm->dev, "failed to set download mode: %d\n", ret);
> +
> +	/*
> +	 * Write the destination into the always-on SRAM so boot firmware
> +	 * can read it before DDR is initialised on the next warm reset.
> +	 * Only written when minidump is active;
> +	 */
> +	if (__scm->minidump_sram && (dload_mode & QCOM_DLOAD_MINIDUMP))
> +		writel_relaxed(minidump_dest, __scm->minidump_sram);
>  }

[Severity: High]
This is a pre-existing issue, but is it safe to read the global __scm
pointer here without using smp_load_acquire()?

The driver publishes the global __scm pointer at the end of qcom_scm_probe()
using smp_store_release(&__scm, scm). Module parameters are exposed via
sysfs before probe completes, allowing userspace to concurrently trigger the
set_download_mode() callback.

This callback reads __scm using a plain, lockless memory access. Without a
matching smp_load_acquire(), the CPU can observe a non-NULL __scm pointer
while still seeing stale or uninitialized values for its members, including
the newly added __scm->minidump_sram.

Could this lead to an unaligned access or page fault if writel_relaxed()
is passed an uninitialized pointer?=20

Note that the newly added set_minidump_dest() correctly uses
smp_load_acquire() to prevent this exact issue, but
qcom_scm_set_download_mode() remains unprotected.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260522195009.2961=
022-1-mukesh.ojha@oss.qualcomm.com?part=3D4

