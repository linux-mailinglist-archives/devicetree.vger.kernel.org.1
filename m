Return-Path: <devicetree+bounces-295066-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEJ8NYViAGq4IAEAu9opvQ
	(envelope-from <devicetree+bounces-295066-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 12:48:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8079F503A76
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 12:48:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D6B663003375
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 10:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 069A336E473;
	Sun, 10 May 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwaMscd3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8521355F3A;
	Sun, 10 May 2026 10:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778410113; cv=none; b=Z6uiZaljjIxjjHOrUydXMdlZEUYD3zgAffn8Ss4arJVAXQoxUphiYzR4G1y/PPwR3P8eIcXci0mBEtL6+bJQ2VjNCbb1IvZQRc3vfKLPpj0+3s2ZMWzznLFVE9vX4maLiVjXgzNTRjmViMV/XppVSb2VGhhDJbLd4ES3jCU7nEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778410113; c=relaxed/simple;
	bh=T2ob0QjbxCJ3afi/m82K2yGm4paVgiKCvGbfXVelqYo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NBWll6C3BL/DJ6kiRmRRPLk4KfmqGqROShlhKTOHlYK3XVrgLToY3FzkaVS7pb4g4ZFcaQ6g6zakQospW1DdnFwXHks3VlM8fjg5aljS+aLW1bHqY0vFstx+4vP14ZmuTuvppsAYFT9mKZwymoc7pBNX4XEiTGtC6n8CcQ8vJWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwaMscd3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F0AEC2BCB8;
	Sun, 10 May 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778410113;
	bh=T2ob0QjbxCJ3afi/m82K2yGm4paVgiKCvGbfXVelqYo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=WwaMscd3vCbXFu3xr7jTojuhOn8tilDDeSx54CmMdhvC6KL7CF+TqzPygoP5LewK7
	 QkddErOFml9efnzlgJkm1+YiZ3zpqotARyaqYonfQWijjnrka2rXEayIJSQRz1HWTX
	 6RCfVJ/axlZ3z7oQogWADd97UbIfNJBudw3nPv2ajxDagcTB9+AjAoBnp2oVEBIyMf
	 81FGCCxojLcn7jrlMA2E4B2T74bVX8PBPJXqnGPRgdWDzQuL7NT9exMMqb2btxc0IJ
	 jh8tnXtASH+2xc0VzIUnf4CZpFJg+qRyk/cmnCA686PEikZzqWXHcsT60eVh/ifKDF
	 R+1lj+B/wfHlA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 net-next 06/15] net: enetc: add support for the
 "Update" operation to buffer pool table
Reply-To: sashiko@lists.linux.dev
To: "Wei Fang" <wei.fang@nxp.com>
Cc: Frank.Li@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260509102954.4116624-7-wei.fang@nxp.com>
References: <20260509102954.4116624-7-wei.fang@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 10 May 2026 10:48:32 +0000
Message-Id: <20260510104833.5F0AEC2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 8079F503A76
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295066-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The BPT update command incorrectly sets the `BPT_UA_BPSEU` flag wi=
thout providing the required BPSE payload in the DMA buffer.
--

commit 04028be08f5e1d61341410aae72c568ebdb38953
Author: Wei Fang <wei.fang@nxp.com>

net: enetc: add support for the "Update" operation to buffer pool table

This commit adds the ntmp_bpt_update_entry helper to support updating
the specified entry of the buffer pool table.

> diff --git a/drivers/net/ethernet/freescale/enetc/ntmp_private.h b/driver=
s/net/ethernet/freescale/enetc/ntmp_private.h
> --- a/drivers/net/ethernet/freescale/enetc/ntmp_private.h
> +++ b/drivers/net/ethernet/freescale/enetc/ntmp_private.h

[ ... ]

> @@ -175,4 +175,10 @@ struct vft_req_ua {
>  	struct vft_cfge_data cfge;
>  };
> =20
> +/* Buffer Pool Table Request Data Buffer Format of Update action */
> +struct bpt_req_update {
> +	struct ntmp_req_by_eid rbe;
> +	struct bpt_cfge_data cfge;
> +};
> +

[ ... ]

> diff --git a/drivers/net/ethernet/freescale/enetc/ntmp.c b/drivers/net/et=
hernet/freescale/enetc/ntmp.c
> --- a/drivers/net/ethernet/freescale/enetc/ntmp.c
> +++ b/drivers/net/ethernet/freescale/enetc/ntmp.c

[ ... ]

> @@ -749,5 +755,38 @@ int ntmp_vft_add_entry(struct ntmp_user *user, u16 v=
id,
>  }
>  EXPORT_SYMBOL_GPL(ntmp_vft_add_entry);
> =20
> +int ntmp_bpt_update_entry(struct ntmp_user *user, u32 entry_id,
> +			  const struct bpt_cfge_data *cfge)
> +{
> +	struct bpt_req_update *req;
> +	struct netc_swcbd swcbd;
> +	struct netc_cbdr *cbdr;
> +	union netc_cbd cbd;
> +	int err;
> +
> +	swcbd.size =3D sizeof(*req);
> +	err =3D ntmp_alloc_data_mem(user->dev, &swcbd, (void **)&req);
> +	if (err)
> +		return err;
> +
> +	ntmp_fill_crd_eid(&req->rbe, user->tbl.bpt_ver, 0,
> +			  NTMP_GEN_UA_CFGEU | BPT_UA_BPSEU, entry_id);

Will this command fail due to a missing payload for the Buffer Pool Status
Entry?

The update action is instructed to process both CFGE and BPSE data by setti=
ng
NTMP_GEN_UA_CFGEU | BPT_UA_BPSEU, but the allocated struct bpt_req_update
shown above does not contain a struct bpt_bpse_data field.

Because the provided swcbd.size is only sizeof(*req), does this cause the
hardware to either reject the command with a length mismatch error, or
unintentionally read past the end of the provided buffer?

> +	req->cfge =3D *cfge;
> +	ntmp_fill_request_hdr(&cbd, swcbd.dma, NTMP_LEN(swcbd.size, 0),
> +			      NTMP_BPT_ID, NTMP_CMD_UPDATE, NTMP_AM_ENTRY_ID);
> +
> +	ntmp_select_and_lock_cbdr(user, &cbdr);
> +	err =3D netc_xmit_ntmp_cmd(cbdr, &cbd, &swcbd);
> +	if (err)
> +		dev_err(user->dev,
> +			"Failed to update %s entry 0x%x, err: %pe\n",
> +			ntmp_table_name(NTMP_BPT_ID), entry_id, ERR_PTR(err));
> +
> +	ntmp_unlock_cbdr(cbdr);
> +
> +	return err;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509102954.4116=
624-1-wei.fang@nxp.com?part=3D6

