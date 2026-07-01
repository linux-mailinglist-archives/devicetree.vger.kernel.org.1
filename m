Return-Path: <devicetree+bounces-318323-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AfG8LLHqRGpz3AoAu9opvQ
	(envelope-from <devicetree+bounces-318323-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:23:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E2A6EC1BF
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:23:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ktpD3a0G;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318323-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318323-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0E0D83011A49
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 10:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F1C3F822C;
	Wed,  1 Jul 2026 10:23:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F01B403151
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 10:23:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782901422; cv=none; b=LnVNwlzF/N8RRokdWkqQLkimyjW/TyIYWwtchI2jLgqaxo+Fy4pGriS/kUMIkB03GJi/S/oGlImpMNmMj1A4Ky14AS+1BEQpsSYL7nkas+1kWEurifyB6gJRrfBbg+GgOEGQq/plsu3hrwPJTTUVO8M2kHrwPHLZU3xdIb2f9Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782901422; c=relaxed/simple;
	bh=0xtJi14Zr6Fb2zwnaRm26ImI73MCZPBC9d1hLJbhjRY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jO2oeuxqg9hvU4gGONBJfn1LLeOumOe6x79YnMt8VeHD1Z85/aBnv5K8bpqdCZnkhVxjVKAZimjj/6tBQqZAI0okQhRx5jZJBnoJixxsEIvlFP6lt94OBfIp0CRdJ1obeHN3etZexUB0dv/9fT+8cxcqZM1SmSW0OM6fgdEA9Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktpD3a0G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19B4A1F000E9;
	Wed,  1 Jul 2026 10:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782901419;
	bh=5Rsn7FVbdeQAvhYlmCgY+e9t1aFxrmBfQn6YiiR2jB4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ktpD3a0GzB2y5SIXKELWjEF+chS8CqJeZ0Fnf270GtCgP5LjYDw1tU5/JVIVFQXyR
	 S6HIKHpF3Z+yNKQFR6axFSnysPW/NgmHKUt6LtEtIYbnjuN6VMGZYfx8gwK9DKTm6i
	 VGLkAWbI03iziMxaX5LQP8C9XbNFlkd+/M84zjyRuDSnI/69FWKmV/OLpSLkJ80kTy
	 FCEe+p2y4DQXh3/RUhZSUC/XzAp9Xp8evU6lVxoeqHlGo9GgHpbj5lmKSdKxDj44qd
	 fXthqUqendb2Am7VCs+r2AxEkMPcJxJPmBUDuhmoE0avuKHj3b0w6hUxwqEK0+tS3N
	 5u12BsmpBcpFQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: glymur: Add memory-region for audio
 PD
Reply-To: sashiko-reviews@lists.linux.dev
To: "Vinayak Katoch" <vinayak.katoch@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701-glymur-audio-v1-1-2c3862d95a09@oss.qualcomm.com>
References: <20260701-glymur-audio-v1-1-2c3862d95a09@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 10:23:38 +0000
Message-Id: <20260701102339.19B4A1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-318323-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:vinayak.katoch@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 08E2A6EC1BF

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] The `adsp-rpc-remote-heap` memory region uses `reusable` without r=
etaining HLOS access, leading to fatal hypervisor faults due to speculative=
 execution.

Pre-existing issues:
- [High] The fastrpc driver does not restore memory ownership to HLOS befor=
e freeing the remote_heap, causing a fatal XPU violation on memory reuse.
--

commit 39381f5de37bbf0f0366047bc842de4cb219a1ec
Author: Vinayak Katoch <vinayak.katoch@oss.qualcomm.com>

arm64: dts: qcom: glymur: Add memory-region for audio PD

Reserve memory region for audio PD dynamic loading and remote heap
requirements. Add the required VMID list for memory ownership
transfers.

> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/q=
com/glymur.dtsi
> index 20b49af7298e9..f403f542aa00c 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
[ ... ]
> @@ -663,6 +664,14 @@ smem_mem: smem@ffe00000 {
>  			hwlocks =3D <&tcsr_mutex 3>;
>  			no-map;
>  		};
> +
> +		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
> +			compatible =3D "shared-dma-pool";
> +			alloc-ranges =3D <0x0 0x80000000 0x0 0x80000000>;
> +			reusable;
> +			alignment =3D <0x0 0x400000>;
> +			size =3D <0x0 0x800000>;
> +		};
>  	};
> =20
>  	smp2p-adsp {
[ ... ]
> @@ -3845,6 +3854,9 @@ fastrpc {
>  					compatible =3D "qcom,glymur-fastrpc", "qcom,kaanapali-fastrpc";
>  					qcom,glink-channels =3D "fastrpcglink-apps-dsp";
>  					label =3D "adsp";
> +					memory-region =3D <&adsp_rpc_remote_heap_mem>;
> +					qcom,vmids =3D <QCOM_SCM_VMID_LPASS
> +						      QCOM_SCM_VMID_ADSP_HEAP>;

[Severity: High]
Since this memory region is defined with the reusable property, it is placed
in the CMA pool and the kernel's linear mapping. When the fastrpc driver
allocates this memory and assigns it, it strips QCOM_SCM_VMID_HLOS because =
it
is missing from this qcom,vmids array.

Because the pages remain mapped in the kernel's linear mapping, will any
speculative CPU fetch to these addresses immediately trigger a hypervisor
protection fault?

Should this region use no-map instead, or should QCOM_SCM_VMID_HLOS be
included in the qcom,vmids array?

[Severity: High]
This is a pre-existing issue, but I noticed a related problem in the fastrpc
driver when handling this remote heap memory.

When the driver frees the remote heap during channel teardown or module
removal, it returns the buffer to the CMA pool:

drivers/misc/fastrpc.c:fastrpc_rpmsg_remove() {
        ...
        if (cctx->remote_heap)
                fastrpc_buf_free(cctx->remote_heap);
        ...
}

Does this free the memory without restoring ownership to QCOM_SCM_VMID_HLOS?

If so, could this cause an XPU/SMMU violation when the CMA allocator
subsequently reuses these freed pages for another kernel component?

>  					#address-cells =3D <1>;
>  					#size-cells =3D <0>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-glymur-aud=
io-v1-1-2c3862d95a09@oss.qualcomm.com?part=3D1

