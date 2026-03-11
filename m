Return-Path: <devicetree+bounces-273964-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKpQHhkzsWm0rwIAu9opvQ
	(envelope-from <devicetree+bounces-273964-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:17:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0BF26024A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:17:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2A559301F681
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61F6D3C7DEA;
	Wed, 11 Mar 2026 09:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHgSGr/g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19563C5DD7;
	Wed, 11 Mar 2026 09:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773220184; cv=none; b=mGmcgbxK1kCCkPdNuM8VI8jP8DxcGrWyZNR7I7jTCRllCfmv9CWqh3K4uf1EtdTjQJabPZp6kwh4ckvVPIS37Kbn/O29FbzoKjGZWDZazoQs3s+DsQ+k65EVSqg+zg1nXX/mQIX9BjW7VEeUknpnvgLwKalIY+Va96sas8yt/Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773220184; c=relaxed/simple;
	bh=z54dQcyh6RQQ2entvvGCkeeoJxwhB+c230BoLQ4+ql4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=B4n7NQFXQe5uMJJrHlI8+YPAkAr0tViMqY6zwdv2g4Rx7RfjydtaUB6VOW1kliwLjoz3aGdGqTDk7P8aMNbwiAPS3nRpRzCVGlvoPmdjkaezJd8t3qBdTqIv69IbJ47SkMdcwG2L4l6mOODr/YeL1Y4ftY8xYfoIcFhbJNZFwEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHgSGr/g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2700C4CEF7;
	Wed, 11 Mar 2026 09:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773220183;
	bh=z54dQcyh6RQQ2entvvGCkeeoJxwhB+c230BoLQ4+ql4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=nHgSGr/gXZ0kkkLWBeSEAhlrt2X2JCkA++zBDles9Q6/GIW/igNVeU8lYwa5R0Bzx
	 jhFk89/1myL8fFCAC32HaKKmtok16MFW4blm9UhJR95LVrVDWTD32XjFb2rhKL2oKJ
	 /n5KvIiEHm8jRvnFV2qFU49faZ7anKmwn0lojBh0H6g6HS7otgpSe8q6B/oCjGvs2a
	 eI3je8fupj/Hhtyn2nCYxkvTRVvR0ilzNKK2wGwgRu4N/UvYCKWUO299Nls6spnwGY
	 7Rc7efXqoTINAHXQZ4xce6tdy+ZqzeXFLE++j4r3aZw/lLiI2+baTaM7RSf6pIeVCF
	 jjFoywWStCkKA==
From: Thomas Gleixner <tglx@kernel.org>
To: Ciprian Costea <ciprianmarian.costea@oss.nxp.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Shawn Guo
 <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, NXP S32 Linux
 Team <s32@nxp.com>, Christophe Lizzi <clizzi@redhat.com>, Alberto Ruiz
 <aruizrui@redhat.com>, Enric Balletbo <eballetb@redhat.com>, Eric Chanudet
 <echanude@redhat.com>, Ciprian Marian Costea
 <ciprianmarian.costea@oss.nxp.com>, Larisa Grigore
 <larisa.grigore@nxp.com>
Subject: Re: [PATCH v6 3/5] irqchip/imx-irqsteer: add NXP S32N79 support
In-Reply-To: <20260311081154.381881-4-ciprianmarian.costea@oss.nxp.com>
References: <20260311081154.381881-1-ciprianmarian.costea@oss.nxp.com>
 <20260311081154.381881-4-ciprianmarian.costea@oss.nxp.com>
Date: Wed, 11 Mar 2026 10:09:37 +0100
Message-ID: <87h5qmraum.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Queue-Id: 7B0BF26024A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273964-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,body];
	FREEMAIL_TO(0.00)[oss.nxp.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[i.mx:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Wed, Mar 11 2026 at 09:11, Ciprian Costea wrote:
> From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
>
> Add support for the interrupt steering controller found in NXP S32N79
> series automotive SoCs.
>
> The S32N79 IRQ_STEER variant differs from the i.MX version by not
> implementing the CHANCTRL register. To handle this hardware difference,
> introduce a device type data structure with quirks field. The
> IRQSTEER_QUIRK_NO_CHANCTRL quirk skips CHANCTRL register access for S32N79
> variants.
>
> The interrupt routing functionality and register layout are otherwise
> identical between the two variants.
>
> Co-developed-by: Larisa Grigore <larisa.grigore@nxp.com>
> Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
> Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>

I've picked up this one. Can the ARM64 folks please pick up the DT muck
as that really has close to zero relevance to irqchips.

Thanks,

        tglx

