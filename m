Return-Path: <devicetree+bounces-298462-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OH/6AplPB2rBxgIAu9opvQ
	(envelope-from <devicetree+bounces-298462-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 18:53:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E0D5541F1
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 18:53:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62D8D33D626F
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 16:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 120E43F86F1;
	Fri, 15 May 2026 16:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPDpCrAf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47603E0096
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 16:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778861825; cv=none; b=acajgWFl442q6BpRSXMSr+0Vk/Pub1ruptJpL0zG2VsJSRTHkb8AoLfif5EscIQ6pzeJdW4uOgem5YB+IbiUPT/3CtmOnno4/3Ycp3Zalk879W4qPE8BT58OjFBgiYC62HUruhjEZGVSTSctnmIlih6wDQhCi3VksQ/JD1VEUVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778861825; c=relaxed/simple;
	bh=sCC9CE+bLcdgLaMYe2fdbEi+D/YBtqDRW5T78GkdH7s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PBOr/IDDeZIjaX1Jh29PyY03W/SPCa8iqeIqnShitEQgd/RK/vJ/kI2T+cCX+yIEWMgOajqgrploxVagyQunnJL8fVMuVImkEKIGelIghc42GbXmvouQGzJ2RE7pCG/yTaW5DtVLPR0Ff0bE5a1vxCk/g4GLBuff3DcsDNvfSA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPDpCrAf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5A61C2BCB0;
	Fri, 15 May 2026 16:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778861824;
	bh=sCC9CE+bLcdgLaMYe2fdbEi+D/YBtqDRW5T78GkdH7s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=sPDpCrAfqqwJuaWjCyohhPA/TGW0YADJnULP1SfagMN5AAJjTEJJiWl7MZ+YnG16A
	 DMK3Lgh/DlZHJ2BEiF/GDEnDuPzK9tMAM1clSw+kvG4N35LZpUM0ukyzxo5pjE7Dzr
	 TuCC91tzLazMSgDn5rEvnIilAi3tbztDHu+KkXajMaTYbY+qb59IbTAIGaM7sAe+sm
	 4b6XfQxWUtYrBHJv2st/0AvtGE+UiZSRKgzNYmJDA09SH4H8GoUGI0x47vU8ckr1Qn
	 NLb4fm8/ssODey4Ru08mATUSlgA72l1dTyfYhfAf6S+hROb7O2vWLfAZma1BDnzYbP
	 blSzbL0GIxX/A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 15/28] media: rockchip: rga: align stride to 4 bytes
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3ZlbiBQw7xzY2hlbA==?= <s.pueschel@pengutronix.de>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260515-spu-rga3-v6-15-e547152eb9c9@pengutronix.de>
References: <20260515-spu-rga3-v6-15-e547152eb9c9@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 16:17:03 +0000
Message-Id: <20260515161703.E5A61C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 64E0D5541F1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298462-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,pengutronix.de:email,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Buffer offset mismatch and hardware stride truncation for planar Y=
UV formats with hdiv=3D2.
--

commit bb91296b78fd1bbee406e680e751a44387d9a72a
Author: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

media: rockchip: rga: align stride to 4 bytes

This commit adds a stride_alignment setting to rga_hw and updates the
driver to use v4l2_fill_pixfmt_mp_aligned(). This ensures the stride is
aligned to 4 bytes, avoiding off-by-one errors when the driver divides
the stride by 4 to program the word-based RGA registers.

> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index 9881c14f908d5..dac3cb6aa17d3 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -580,6 +580,7 @@ const struct rga_hw rga2_hw =3D {
>  	.max_width =3D MAX_WIDTH,
>  	.min_height =3D MIN_HEIGHT,
>  	.max_height =3D MAX_HEIGHT,
> +	.stride_alignment =3D 4,

Could this cause buffer offset mismatches and hardware stride truncation
for planar YUV formats with horizontal subsampling?

For planar formats where hdiv=3D2, such as V4L2_PIX_FMT_YUV420, a width of
642 results in a Y stride of 644 when aligned to 4. The U/V stride is
typically half of the Y stride, which would equal 322 bytes.

If the hardware relies on word units (4 bytes), 322 is not divisible by 4.
It might be truncated to 80 words (320 bytes), causing a 2-byte drift per
line for the chrominance channels.

Additionally, v4l2_fill_pixfmt_mp_aligned() calculates sizeimage for
single-planar formats by aligning each plane's stride to the specified
alignment. For a 322-byte U stride, it aligns up to 324 bytes, introducing
padding. If the driver derives the V plane offset natively using the
unaligned bytesperline / 2, the hardware will read from a smaller,
unpadded offset than where the V4L2 user-space placed it.

Does the Y stride alignment need to be 8 bytes when hdiv=3D2 to ensure the
derived U/V strides are multiples of 4?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-spu-rga3-v=
6-0-e547152eb9c9@pengutronix.de?part=3D15

