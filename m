Return-Path: <devicetree+bounces-298539-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDugF7mSB2pU9AIAu9opvQ
	(envelope-from <devicetree+bounces-298539-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 23:40:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DA5558460
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 23:40:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F2A4A307F8A6
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 21:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96A8C3672B3;
	Fri, 15 May 2026 21:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZbEHyFq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740CB30648A
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 21:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778879829; cv=none; b=jRvKtbrXf5rEuWMfYUHXmTFT72vAKs2iCJJT9NdiXX4dPFxl+erTdze5n2iHFKkaIjIiRKeXAro/FUZ23X2WbaGU231YPdJFgs29BZF5UfvSuO+NLMY+9Q08clDh+0ZCQ/Zmad48ItLoN7CyMk88YXIB5jrHxBnHum81w9yjt5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778879829; c=relaxed/simple;
	bh=y+rElgqW2y1ZBqK57KvlGwC00oPxlztxlvwsXn8yRyI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gssqVyhIYeaLzVKVDGM4k63IRzLQqTKOJ4svvOwCYq/D9eWYK2TE4N8iIzkumKx/s0yNO6jOF9wzBg/fQQ8bwoKuhcLrlIvEdM6cIAWARnLuA9BNEl5xuV6oOmksqs4gxaKiqzDYi95T1n5lRn1E93QfG7a4xY5PRz2jchdk2hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZbEHyFq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6797EC2BCB0;
	Fri, 15 May 2026 21:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778879829;
	bh=y+rElgqW2y1ZBqK57KvlGwC00oPxlztxlvwsXn8yRyI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=IZbEHyFqf7MxW47bSiIzqQsSJ++B42Kocx6P+jf6awC0nmMMKTnfSKIfOTCYHmob9
	 1na7PqcG0efAORk3ByzLWYRHsmBqf5XBJXBH/P7SqFaVr0UlPfbWoaISEaSa1fjljM
	 rHe1woetCsPFF+qCGZ6Sgb+aBJTcC/kOGAJSBrNBSN5qqZ+l7tYnTIFq41jBoc4nRg
	 RO0KDgPXNn4euoxkQw7ia/YddSXvsSlVbxTs8Xb/4aJeOFPFI3O42FGGGnPdYyFKCY
	 BVEDn/aXtsI5zsMcbcmA/zvTmZ5tnBUIa6KmmI+1XD8rqxA8mQLjhsPLUyxujSDspw
	 Nwr7ZXndKY/ag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] arm64: tegra: Add iommu and dma properties for
 Tegra194 QSPI
Reply-To: sashiko-reviews@lists.linux.dev
To: "Aaron Kling via B4 Relay" <devnull+webgeek1234.gmail.com@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260515-tegra194-qspi-iommu-v1-3-57dfb63cd3d6@gmail.com>
References: <20260515-tegra194-qspi-iommu-v1-3-57dfb63cd3d6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 21:17:07 +0000
Message-Id: <20260515211708.6797EC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 59DA5558460
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298539-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	URIBL_MULTI_FAIL(0.00)[lists.linux.dev:server fail,smtp.kernel.org:server fail,sashiko.dev:server fail,sin.lore.kernel.org:server fail,0.49.229.112:server fail];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.49.229.112:email];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,webgeek1234.gmail.com,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Hardware misrepresentation: QSPI node falsely claims GPCDMA's SMMU=
 Stream ID to mask a driver bug
--

commit 5a99acb609c512098a594cb6c335a984b6c04380
Author: Aaron Kling <webgeek1234@gmail.com>

arm64: tegra: Add iommu and dma properties for Tegra194 QSPI

This commit adds DMA and IOMMU properties to the QSPI controller nodes for
Tegra194. The commit message indicates these are required to prevent flash
storage transfers from timing out.

> diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/d=
ts/nvidia/tegra194.dtsi
> index 1d659454a6f9f..0e0a20befe9e6 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> @@ -923,6 +923,10 @@ spi@3270000 {
>  				 <&bpmp TEGRA194_CLK_QSPI0_PM>;
>  			clock-names =3D "qspi", "qspi_out";
>  			resets =3D <&bpmp TEGRA194_RESET_QSPI0>;
> +			iommus =3D <&smmu TEGRA194_SID_GPCDMA_0>;

Does assigning the GPCDMA's Stream ID to the QSPI node misrepresent the
hardware topology?

TEGRA194_SID_GPCDMA_0 physically belongs to the external GPCDMA controller,
which is the actual bus master performing the DMA transfers. Device trees
must strictly describe hardware.=20

It appears this configuration might be masking a driver bug in
drivers/spi/spi-tegra210-quad.c, where tegra_qspi_dma_map_xfer() maps buffe=
rs
against the QSPI device rather than the DMA engine's device pointer. Faking
the same Stream ID places both devices in the same SMMU group, which avoids
translation faults but breaks IOMMU isolation.

Should the driver be fixed to map memory using the DMA provider's device
pointer instead of adding the iommus and dma-coherent properties to the QSPI
nodes?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-tegra194-q=
spi-iommu-v1-0-57dfb63cd3d6@gmail.com?part=3D3

