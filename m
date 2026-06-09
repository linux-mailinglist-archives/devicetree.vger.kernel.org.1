Return-Path: <devicetree+bounces-309302-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TnvbEYlqKGpvDwMAu9opvQ
	(envelope-from <devicetree+bounces-309302-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:33:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B48A4663C2C
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:33:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QqcXO+7l;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309302-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309302-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C06EB31D1CF6
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 19:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABF2B40D586;
	Tue,  9 Jun 2026 19:19:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEDA40D58E
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 19:19:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781032796; cv=none; b=Bcugw9rf03kCpnS3YDLfxDLK50NZ9vw88C+Sgc19XCVtiod4fHNd6DQ2xv9p3zoXUq1bycsylKxbBz4d+SJz98a2nb6YWNPqxxn6MgKMLPpQwJWAS6E8oa0320oPKnqaQiDPHEiRIMzrz2d3Y0vGm9i94OgDtajQ4tjk6cyxwHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781032796; c=relaxed/simple;
	bh=Mj8GfzCucc7pj1l9uv4PAI+9I2rF6+qOGsh+yITeMOU=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pTex3THsioQwjGSjWtEBLDTXTbrHGqSuEqi7TFKWQNPET3mFxvMC0t6qHC48niV4Dj9rm/Jfmr66sC2ut9lBzhwccugRkfMcvfUa+MHwlNawr9hBRWxg8WPyGzhiKxazcH+1n4WiumXWmJikPNAlHvt83DqVhuNtwyun2/3J1uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqcXO+7l; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52C9E1F00898;
	Tue,  9 Jun 2026 19:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781032795;
	bh=KymJuyQZFf6gkD7gRGM/PLPK7iKi2M34cisEaGJG7HA=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=QqcXO+7l9M/EDC5m8tuj0uiDCANH+jUzcQCWh0YosurTQtMskKhM3Pwp4uyGPOB7D
	 13HapPZzaaRZAMfna05RRAuTpGjbSvpbb0y+yBuVxL82KESgHtFm/Hmn8x0ihoyiFz
	 5VvgLMozNIMsAx981QFsq3yi9SeHCvb28yfLiSlU/4Zkvs9yDtukyPn1n5La9/g6Yr
	 6YG1uUH7mrRoR5tcJn+gzeM8s5eXWaVRGpLoDaqXNe39v2zvBMKa1yEQ0rmMYE7KjO
	 L2YEDLYyrQ8x2iItfn8poWhwBSNTXggkHldxb2pzbCOs0vJucsV+HUwQ8blnienFMS
	 8CmNPdogByRpg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 10/11] arm64: dts: ti: k3-am62p-ti-ipc-firmware:
 Split r5f memory region
Reply-To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260609-topic-am62a-ioddr-dt-v6-19-v6-10-16afba97fbe0@baylibre.com>
References: <20260609-topic-am62a-ioddr-dt-v6-19-v6-10-16afba97fbe0@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 19:19:54 +0000
Message-Id: <20260609191955.52C9E1F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	MISSING_TO(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309302-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,baylibre.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B48A4663C2C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Splitting the contiguous firmware memory region into multiple smal=
ler regions breaks remoteproc ELF loading for segments that span the new bo=
undaries, breaking backward compatibility with existing monolithic firmware=
 binaries.
--

commit 522e3f4f09d9348a57a19d9294fab533fe5163e5
Author: Markus Schneider-Pargmann (TI) <msp@baylibre.com>

arm64: dts: ti: k3-am62p-ti-ipc-firmware: Split r5f memory region

This commit splits the large firmware memory region into more specific part=
s.
This allows bootloader software like U-Boot to know where specific data,
such as the LPM metadata region, is located.

> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi b/arch/=
arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi
> index f776511095642..8f7409da83392 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi
> @@ -24,9 +24,33 @@ wkup_r5fss0_core0_dma_memory_region: memory@9c800000 {
>  		no-map;
>  	};
> =20
> -	wkup_r5fss0_core0_memory_region: memory@9c900000 {
> +	wkup_r5fss0_core0_ipc_region: memory@9c900000 {
>  		compatible =3D "shared-dma-pool";
> -		reg =3D <0x00 0x9c900000 0x00 0x01d08000>;
> +		reg =3D <0x00 0x9c900000 0x00 0x100000>;
> +		no-map;
> +	};
> +
> +	wkup_r5fss0_core0_lpm_fs_stub_region: memory@9ca00000 {

[Severity: High]
Will splitting this contiguous region break backward compatibility for
existing monolithic firmware binaries?

The TI K3 remoteproc driver appears to strictly verify that each ELF
PT_LOAD segment fits entirely within a single device tree memory region:

drivers/remoteproc/ti_k3_common.c:k3_rproc_da_to_va() {
        ...
        if (da >=3D dev_addr && ((da + len) <=3D (dev_addr + size))) {
                offset =3D da - dev_addr;
                va =3D kproc->rmem[i].cpu_addr + offset;
                return (__force void *)va;
        }
        ...
}

Because the driver maps the newly split regions individually into its rmem
array and does not coalesce contiguous memory blocks, won't any existing
ELF firmware binary containing a segment that physically spans across these
newly introduced boundaries fail this strict bounds check and abort loading?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-topic-am62=
a-ioddr-dt-v6-19-v6-0-16afba97fbe0@baylibre.com?part=3D10

