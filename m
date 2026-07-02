Return-Path: <devicetree+bounces-319110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D3n2GocYRmpEJwsAu9opvQ
	(envelope-from <devicetree+bounces-319110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:51:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC876F464F
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:51:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eNyyo4P3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319110-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319110-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 99B3230004E4
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 07:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E44053C8C74;
	Thu,  2 Jul 2026 07:51:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F023CC334
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 07:51:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782978691; cv=none; b=hop9gn5ZT5iwD/wLVTA9YyRCwx8jVkuhJlPx2GdtDeHvaIKIqR+yt2SmSOsNbfWOKnZ31pKuxNu7FVxr1VHCtcO6DS4PK769aMeByn7oqoQRtfOQ8B7lGtCpOC0jKkZ1hKh3+uIENwo+hI8XTdNYK54qY0O3BI2ZFELvDrj4bAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782978691; c=relaxed/simple;
	bh=cZ8bKTGVuCYPNKsrS5vvspH3cyObOF4olFs3CWYfGZs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ma6yoZq4gDk39RF8bEmEzbS5gNSygCvQM/zu/NslE0e04M5D5cEBSINOpAZ4oUpYOUr5DQ8Xh02sPDrdSHzHl4JRkXiZFlJewZvTMlkZxfmtIQ2PhSatvU7t1U4Yk1BZt7AZxifnRI/QoTcyv4xolH1BnMzVFKIyVHeil1FA/NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNyyo4P3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C1A41F000E9;
	Thu,  2 Jul 2026 07:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782978682;
	bh=cZ8bKTGVuCYPNKsrS5vvspH3cyObOF4olFs3CWYfGZs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eNyyo4P3cP0kEQieVIOoRWrjCSw3xhHZsvHnvnu8NVAaboZs61w+YKEP0uF20qcoo
	 BUbf7TzDGXF0rpnTqSSNgt4GVchWgI4vJtNUzYmMAaW58saVLAbDfQHHtSCDirVGmK
	 SVrH7qywWa0V/j7//QrtEYjb83jkcQLFFluxoHjN0STK+3Ze2wU4z7l9hdRJGTAonK
	 CjQwIjaIMe+FThagC4E93Vr6qn7qWk6p0OX6JHK43yh/s29FTm2W5/eutwiDFgj1XN
	 jNGv79Dvb9My6OT80sphWpdrliumBc4csPC2lf6Xtkk1vrzomZACwQzG9qPaT0/4RU
	 tqbuwl8U0w5Rg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 11/12] media: mediatek: jpeg: add jpeg compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kyrie Wu" <kyrie.wu@mediatek.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260702072614.10373-12-kyrie.wu@mediatek.com>
References: <20260702072614.10373-1-kyrie.wu@mediatek.com>
 <20260702072614.10373-12-kyrie.wu@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 07:51:21 +0000
Message-Id: <20260702075122.6C1A41F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319110-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kyrie.wu@mediatek.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,mediatek.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0DC876F464F

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [Low] The `mtk8196_jpegenc_drvdata` structure is missing the `const` qual=
ifier.

Pre-existing issues:
- [High] Out-of-bounds array access when probing hardware child nodes.
- [High] The upper 32 bits of the DMA stall address are incorrectly compute=
d by adding the buffer size to the already-prepared extension bits.
--

Note: Due to recitation restrictions, the standard inline quoting format has
been altered. The following is a free-form summary of the findings rather t=
han
an inline diff review.

commit a7e691d664fe928a3d65542a99e26554abd4f138
Author: Kyrie Wu <kyrie.wu@mediatek.com>
media: mediatek: jpeg: add jpeg compatible

This commit adds jpeg dec and enc compatible for mt8196.

[Severity: Low]
Looking at the new mtk8196_jpegenc_drvdata structure in
drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c, is it possible to
declare this as const?

The mtk8196_jpegdec_drvdata structure includes the const qualifier, but it
appears to be missing from the encoder variant. Adding it would ensure the
driver data is placed in the read-only .rodata section.

[Severity: High]
This is a pre-existing issue, but does the hardware probe logic overflow
the device arrays if a device tree specifies too many cores?

In drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c during
mtk_jpegdec_hw_probe(), the code increments master_dev->hw_index and uses it
to index master_dev->dec_hw_dev and master_dev->reg_decbase without a bounds
check. The same pattern occurs in mtk_jpegenc_hw_probe() for the encoder.
Could a malformed device tree cause this unbounded index to write past the
end of these fixed-size arrays?

[Severity: High]
This is a pre-existing issue, but does enabling 34-bit support in this
patch expose a bug in the DMA stall address calculation?

In drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c, the new
mtk8196_jpegenc_drvdata structure sets support_34bit to true.

Looking at mtk_jpeg_set_enc_dst() in
drivers/media/platform/mediatek/jpeg/mtk_jpeg_enc_hw.c, the stall extension
address is calculated as:

addr_ext =3D FIELD_PREP(MTK_JPEG_ADDR_MASK, upper_32_bits(dma_addr));
writel(addr_ext, base + JPEG_ENC_DEST_ADDR0_EXT);
writel(addr_ext + size, base + JPEG_ENC_STALL_ADDR0_EXT);

Is it mathematically valid to add the buffer size directly to the shifted
upper 32 bits? If the buffer crosses a 4GB boundary, wouldn't the large
byte size overflow the extension bits and pass incorrect upper address bits
to the hardware?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702072614.1037=
3-1-kyrie.wu@mediatek.com?part=3D11

