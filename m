Return-Path: <devicetree+bounces-299023-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBQaKV8QCmojwgQAu9opvQ
	(envelope-from <devicetree+bounces-299023-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 21:00:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE125636BB
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 21:00:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD253300A767
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 19:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86E652F5313;
	Sun, 17 May 2026 19:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+ScC18/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634452F3C19
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 19:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779044442; cv=none; b=PaTfM2tLP/kzExEXcHosnsTr0CFsVFtmtafrWAofQZkzNbNRTNuXv+wRoWPDj2TzYCPRiPFgG4Z74f/fcXOvm/IwwpQZnwINOCr2gQMcm7BPSazPwIFP+nsEGnBU9JXYAIMdRQ5NVuhBjAk1MG5qOflvGqQRD6TTe+4QZe8MKUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779044442; c=relaxed/simple;
	bh=Ihk5SmhV6Vc5iA4aUEqaQiYE9LXBq/9nSpCTqmUN7JM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VpubkXcbWnQBkBSGMir4va2AR5ViwgpyeFSGxgWJXV9mm0HBkSwmmE8RoSiBnOpU7qg5M0unHSjQTcXfkrJZfrcwn68wc8gjVwFRlUxwfqP4ExRzqT75Ry/788cEPIpiyxE6JiyFJwNarX8I81nEzgjCMCyEyTq+n6EEMCyDKVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+ScC18/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 226EEC2BCC6;
	Sun, 17 May 2026 19:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779044442;
	bh=Ihk5SmhV6Vc5iA4aUEqaQiYE9LXBq/9nSpCTqmUN7JM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=u+ScC18/CabMajNB5nUVw5oWn2HH39nj8lbA0pQcLEQDgWhY/gAlgWZJPnqnTJF0i
	 XPgU/PG7yqnLRx30LbzUlJubxS5FGMPHOrx3kv7I8pp8eUXrTl3AG13vAWthwAVeWe
	 YxRHo04vkm1ld9k38+YJOOjIkX4jwHcQElI63fex+8aOVpksBJ6iR4D9/QkhMn0m7s
	 Cv4ejU6ga34AaHTrFK07AWndCWAhzmhp5QB1D8Gn5XlUBilydVc4ry7aYK61ZpTaN4
	 b8aGF3LfUs6kDn2QiAVDbVKe4VAmLdh1Pf3BmRspvzO/wD0pkb6GfN0r7JnJ3Jn0rx
	 pzAuyDEWptBnw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 12/13] Documentation: ABI: testing: add docs for
 ad9910 sysfs entries
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260517-ad9910-iio-driver-v5-12-31599c88314a@analog.com>
References: <20260517-ad9910-iio-driver-v5-12-31599c88314a@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 May 2026 19:00:41 +0000
Message-Id: <20260517190042.226EEC2BCC6@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: ECE125636BB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299023-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The 'KernelVersion' field is left empty for all the newly added sys=
fs ABI entries.
--

commit 2c411cc79344f7afb68aecdfc4b0f78f603e80bf
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

Documentation: ABI: testing: add docs for ad9910 sysfs entries

This commit adds custom ABI documentation for the DDS AD9910 device. It
introduces sysfs entries to control Parallel Port, Digital Ramp Generator,
and OSK parameters.

> diff --git a/Documentation/ABI/testing/sysfs-bus-iio-frequency-ad9910 b/D=
ocumentation/ABI/testing/sysfs-bus-iio-frequency-ad9910
> new file mode 100644
> index 0000000000000..934e6e8f05952
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-bus-iio-frequency-ad9910
> @@ -0,0 +1,76 @@
> +What:		/sys/bus/iio/devices/iio:deviceX/out_altvoltageY_frequency_offset
> +KernelVersion:

This isn't a bug, but the KernelVersion field is left empty here and in the
other entries added in this file. Should this specify the kernel version
where these attributes are introduced to help userspace developers track ABI
timelines?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260517-ad9910-iio=
-driver-v5-0-31599c88314a@analog.com?part=3D12

