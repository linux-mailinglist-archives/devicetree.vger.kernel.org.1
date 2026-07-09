Return-Path: <devicetree+bounces-323838-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iUScDo6uT2q/mgIAu9opvQ
	(envelope-from <devicetree+bounces-323838-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 16:22:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DFD732286
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 16:22:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QPaUvSVx;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323838-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323838-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2024631C94FC
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 13:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC3AF42DA51;
	Thu,  9 Jul 2026 13:50:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA2842DA2D
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 13:50:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783605057; cv=none; b=iA4Ks2/+KNoXNqbwxktrRMzft1kLp7Cc+XikUiMYwCYcBQCeUjbbWWETUtrAEAzvbDSeXk7sJOAtfYPB2PLMyDnbv6Z0xHJhnlmU7Hk189Dn5UVGLtMORn7eZVrxsmQxv1dumO/03QHw5obHNQpaiUoLGJx8gEFjxrtGHwbXzBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783605057; c=relaxed/simple;
	bh=aq8PO62CMuiF7fylK+s8LzzHO7jouOVybWPaLUBvnY8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gDNKwuNKPHtdsyVytNmOJMW9gzQhm+rOY1uDqmmuc43aQPCnS4FrmLRQS/Qk40/oEMn6/nHjf+wQQq5gzGPpLmfn1Xd65+Yk2ktxfSnCFHXnnN5tUJMeAHEDOFBe/I0do/jnr0kue8RA9liUjIR+D33wM3zPyMTV091f+USNsVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPaUvSVx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF0B81F000E9;
	Thu,  9 Jul 2026 13:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783605056;
	bh=SzzA00ZhyJ70OgeIPcMngk6WCC/HjdnKoELctiUVMPw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QPaUvSVx3ZV9rkP0jsu2S2qk859/HDGGy+pmfHeei0JqoTw9sSXgk9ZOyWWwec9kb
	 juGPFwk01W3J/CAXdOACWUlen240ntb6IJRY50WhBNxkDwpOVFEHZwTIECHITbW8KR
	 WK894FHYSbN3hvfasOMqjXsdnnE2VHytQcWRRnmJxp5KHQ0U71Xa8+7GIyDAA9ajom
	 ntarEwp5je+OzRCEm3Vuz9KKW7BF7BC2xzRontSFeqjaH1qPUKPe0J1102YiolLFRJ
	 X6B6K4clURR3aXewqHs9/3SFGDoZAjVv3kE9yfS4SgCu2OwA9P6NbYfpzOU2BdA/H/
	 TE5271kJMrI8Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 02/11] spi: dw: update NDF while using enhanced spi
 mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Changhuang Liang" <changhuang.liang@starfivetech.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709055204.138168-3-changhuang.liang@starfivetech.com>
References: <20260709055204.138168-1-changhuang.liang@starfivetech.com>
 <20260709055204.138168-3-changhuang.liang@starfivetech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 13:50:54 +0000
Message-Id: <20260709135055.EF0B81F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323838-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:changhuang.liang@starfivetech.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,sifive.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 76DFD732286

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] For Transmit Only (`TMOD_TO`) transfers, `cfg.ndf` is never popula=
ted and defaults to 0, causing the hardware to be incorrectly programmed wi=
th 0 data frames.
- [Medium] Missing clamp of `op->data.nbytes` for `SPI_MEM_DATA_OUT` leads =
to `DW_SPI_CTRLR1` register overflow for large transmit-only operations.
- [Low] The macro `DW_SPI_CAP_EMODE` is used but never defined anywhere in =
the kernel tree, resulting in a compilation error.
--

--- Patch [2]: [PATCH v1 02/11] spi: dw: update NDF while using enhanced sp=
i mode ---
commit b0d60b5fc76ca13c62d210b00ff881436c76397e
Author: Sudip Mukherjee <sudip.mukherjee@sifive.com>

spi: dw: update NDF while using enhanced spi mode

If the transfer of Transmit only mode is using dual/quad/octal SPI then
NDF needs to be updated with the number of data frames. If the Transmit FIFO
goes empty in-between, DWC_ssi masks the serial clock and wait for rest of
the data until the programmed amount of frames are transferred successfully.

> diff --git a/drivers/spi/spi-dw-core.c b/drivers/spi/spi-dw-core.c
> index 2c52209c90955..8d4ad4035d7c9 100644
> --- a/drivers/spi/spi-dw-core.c
> +++ b/drivers/spi/spi-dw-core.c
> @@ -348,6 +348,9 @@ void dw_spi_update_config(struct dw_spi *dws, struct =
spi_device *spi,
>  	if (cfg->tmode =3D=3D DW_SPI_CTRLR0_TMOD_EPROMREAD ||
>  	    cfg->tmode =3D=3D DW_SPI_CTRLR0_TMOD_RO)
>  		dw_writel(dws, DW_SPI_CTRLR1, cfg->ndf ? cfg->ndf - 1 : 0);
> +	else if (cfg->tmode =3D=3D DW_SPI_CTRLR0_TMOD_TO &&
> +		 dws->caps & DW_SPI_CAP_EMODE)

[Severity: Low]
Is DW_SPI_CAP_EMODE defined anywhere in the kernel tree?  It does not appear
to be declared, which results in a compilation error when building this fil=
e.

> +		dw_writel(dws, DW_SPI_CTRLR1, cfg->ndf);

[Severity: High]
Does this correctly program the NDF register for outbound transfers?  Since
cfg.ndf is now used here for TMOD_TO, it seems it might inadvertently be ze=
ro.

In dw_spi_exec_mem_op(), cfg is zero-initialized and cfg.ndf is only popula=
ted
for SPI_MEM_DATA_IN:

drivers/spi/spi-dw-core.c:dw_spi_exec_mem_op() {
    ...
	if (op->data.dir =3D=3D SPI_MEM_DATA_IN) {
		cfg.tmode =3D DW_SPI_CTRLR0_TMOD_EPROMREAD;
		cfg.ndf =3D op->data.nbytes;
	} else {
		cfg.tmode =3D DW_SPI_CTRLR0_TMOD_TO;
	}
    ...
	dw_spi_update_config(dws, mem->spi, &cfg);
    ...
}

Could this result in dw_writel() writing 0 data frames to DW_SPI_CTRLR1,
breaking the Enhanced SPI write functionality?

[Severity: Medium]
Since NDF is now used to bound write transfers in enhanced mode, should the
size be clamped for SPI_MEM_DATA_OUT to prevent register overflow?

Looking at dw_spi_adjust_mem_op_size(), the size is only clamped for reads:

drivers/spi/spi-dw-core.c:dw_spi_adjust_mem_op_size() {
	if (op->data.dir =3D=3D SPI_MEM_DATA_IN)
		op->data.nbytes =3D clamp_val(op->data.nbytes, 0, DW_SPI_NDF_MASK + 1);

	return 0;
}

Could a large transmit operation pass through and overflow the 16-bit NDF
register when it is written to DW_SPI_CTRLR1 here?

> =20
>  	/* Note DW APB SSI clock divider doesn't support odd numbers */
>  	clk_div =3D (DIV_ROUND_UP(dws->max_freq, cfg->freq) + 1) & 0xfffe;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709055204.1381=
68-1-changhuang.liang@starfivetech.com?part=3D2

