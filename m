Return-Path: <devicetree+bounces-305010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BDXJ/dOHWrDYgkAu9opvQ
	(envelope-from <devicetree+bounces-305010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:20:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0059E61C4B7
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 06861302E915
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 09:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51FDF3161A3;
	Mon,  1 Jun 2026 09:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isC5Gomo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AD6312825
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 09:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780305226; cv=none; b=t/Un0CeV9WFQhQYI7JwgpFKbHYajiz++6oAKYC4Dywg+9w8G4fSv2F5hEPvD1SJOAEEuPE1GxvqgeCaHB+U9mXYnMJfr/1OqYhMam6SCksNmb7RuJgf3dZ7Ooynlya0zCTPX4vUKQk/oGgGrpCgn2V+jK+IaVXStlsWyO7KWqIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780305226; c=relaxed/simple;
	bh=pWn2vZo0o/ChC4g28gQVvwz9kAoTXZ2WELlqjTVdf54=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=R9QZe61pLPA9MMZ4spfMZzEgX5tSACEDxXoio6eqw0fqLeNLBjdD3C0Gmgxt9TgMso36IACWIO36KJ/x9eI8UqfSq7IQgiZSpG2xucm4RYIz0w1S/I6pDF+m4OBraPmZAM8bNdjOhUyD7mzzAC44uK40gB/Pn2IMVGVJZwSYGeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isC5Gomo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEE871F00898;
	Mon,  1 Jun 2026 09:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780305224;
	bh=jiir70r1W1quZYGHKlzGdL0pEP9FP25ZK9BR/zWikyQ=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=isC5GomolJf7CJdwEeczRkJY6XKCmoIYhX/QWbxE+K6uRExtw1PRRF1u6HEtvrM88
	 8ZXKSuT3vpY2ZzKiecd9Vpb2+AslhfiBfd3JmYZCFdgUHITFGG1c79VAxHLBbEqF5E
	 uux0dl06RYa1auLFEdZavVwljLUoUsg6GQovgeKqbb/lZ4trIOxTLYlYZjIW8YmVoU
	 PumwKqCR0UZT2LvzjAEHb9KCtenVZteWaVfFsZLePjNnXUaLVdZ2rsGN7H6d4j/2qd
	 RvD3QScM++OJzZurGjPoylOlYsCx7WpP5E5NAiBqAOVSgYMC+Ug+A89wjcCSxnkOb2
	 9++bdyNiZaSIA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/5] arm64: dts: ti: k3-am62a-ti-ipc-firmware: Split
 r5f memory region
Reply-To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260601-topic-am62a-ioddr-dt-v6-19-v5-3-3856a023aff2@baylibre.com>
References: <20260601-topic-am62a-ioddr-dt-v6-19-v5-3-3856a023aff2@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 09:13:44 +0000
Message-Id: <20260601091344.AEE871F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.84 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	MISSING_TO(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305010-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 0059E61C4B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Splitting the contiguous R5F firmware memory region into multiple =
smaller adjacent memory regions breaks backward compatibility with existing=
 remoteproc ELF firmwares if any PT_LOAD segment spans across the newly int=
roduced boundaries.
--

commit ae8536421e8ee2b18a7727698091d0c0fa7b60cb
Author: Markus Schneider-Pargmann (TI) <msp@baylibre.com>

arm64: dts: ti: k3-am62a-ti-ipc-firmware: Split r5f memory region

This commit splits the firmware memory region into multiple more specific
parts to better describe where to find information, specifically the LPM
metadata region needed by bootloader software.

> diff --git a/arch/arm64/boot/dts/ti/k3-am62a-ti-ipc-firmware.dtsi b/arch/=
arm64/boot/dts/ti/k3-am62a-ti-ipc-firmware.dtsi
> --- a/arch/arm64/boot/dts/ti/k3-am62a-ti-ipc-firmware.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62a-ti-ipc-firmware.dtsi

[ ... ]

> @@ -78,8 +102,14 @@ &wkup_r5fss0 {
>  &wkup_r5fss0_core0 {
>  	mboxes =3D <&mailbox0_cluster0>, <&mbox_r5_0>;
>  	memory-region =3D <&wkup_r5fss0_core0_dma_memory_region>,
> -			<&wkup_r5fss0_core0_memory_region>;
> -	memory-region-names =3D "dma", "firmware";
> +			<&wkup_r5fss0_core0_ipc_region>,
> +			<&wkup_r5fss0_core0_lpm_fs_stub_region>,
> +			<&wkup_r5fss0_core0_lpm_metadata_region>,
> +			<&wkup_r5fss0_core0_lpm_rest_region>,
> +			<&wkup_r5fss0_core0_dm_region>;
> +	memory-region-names =3D "dma", "ipc", "lpm-stub",
> +			      "lpm-metadata", "lpm-context",
> +			      "dm-firmware";

[Severity: High]
Is it safe to split the contiguous R5F firmware memory region into multiple
smaller adjacent memory regions, or could this break backward compatibility
with existing remoteproc ELF firmwares if a PT_LOAD segment spans across the
new boundaries?

The k3_rproc_da_to_va() function in drivers/remoteproc/ti_k3_common.c
strictly requires each requested ELF PT_LOAD segment to fit entirely within=
 a
single memory-region defined in the device tree. Prior to this patch, a
single contiguous 0xf00000 memory region was provided, allowing firmware wi=
th
monolithic PT_LOAD segments to load successfully.

By splitting this single region into multiple smaller consecutive pieces, a=
ny
existing firmware binary whose ELF segment spans across one of these new
boundaries will fail to translate. The translation function will return NULL
and the firmware load will abort with -EINVAL.

Because the kernel lacks the ability to coalesce adjacent regions during th=
is
translation, does this DTS update prevent existing deployed firmwares from
running correctly?

>  	bootph-pre-ram;
>  	status =3D "okay";
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-topic-am62=
a-ioddr-dt-v6-19-v5-0-3856a023aff2@baylibre.com?part=3D3

