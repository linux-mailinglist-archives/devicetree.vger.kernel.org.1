Return-Path: <devicetree+bounces-135771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 373BFA021B7
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 10:24:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B70B11882B49
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 09:24:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B27BC1D8A0B;
	Mon,  6 Jan 2025 09:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="C6PgRuat"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9046EEEB2;
	Mon,  6 Jan 2025 09:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736155452; cv=none; b=PcZrhYnzUG60gEtdh8d/PLtkFHUI0uhAhqo+tEvj6gSZTwmCVW8MjR6EzI5JNq5SGIlckL27+dB1yvdJdtrn92DMlvL8ncP0MpYSF/zXkMdX4UHoY8jblI24Wl9kZatJqPNWnlMiICwvlvbNuqFjCbPBYX+r/Z+RurNM8UQeKBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736155452; c=relaxed/simple;
	bh=aDxHH3ASoGMh7C8EHUOvTBlo5wFKqv4+y7MRh0HKO70=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QunmW2NML5KMhRdaW50cZttTd92St6QxXjhs1hMng5kH4MAYLeti2ATM4nXLkp/YI9qcAocgTwo+WrWGBn9o7A5neYYmXvD380lpgtM9G2K38YsAXSqFqR0h77OF3vUHOTdZ8Rp4GjeiqbNaFG7hadLPhRcti6oFyAgFxMGpzAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=C6PgRuat; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VBnkfPPwd/0z0UzRp7pSBtfbNp5mlwbhbYUinjn7t6s=; b=C6PgRuatqaL/JCQeSBgq90fYbR
	cgS9RBnuNFoNmBPp82CGyMEIE98ptU4gncieb/wDBgYHeNrMAgDiOfjWNR4H1pvLRbqz16DhI6ziZ
	lVH+IdsGn+z4Q0WMmKaGPekvYreupbWXQl3ZVKd70kqq+j6yRCSOu0o9zU40Oc/HSOgVMHzTOf0Hn
	j1gcFw88ylpQUZAEAwnUNLm0S5dc4OhH03UcUE97EJ7B0azFCG7qamRBaX/M0HyBrGZS86vcR/5bS
	WSpJP1Vs8zHOkuB3WK1+/UXhMv16JmpmJYBexATgN45dORXy7Yb/Dm1c+t0O7Vj/kmKo1umLIM82a
	MoPAvHJA==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tUjKx-0003r1-RV; Mon, 06 Jan 2025 10:23:51 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: cristian.ciocaltea@collabora.com, krzk+dt@kernel.org, mripard@kernel.org,
 hjc@rock-chips.com, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 1/3] drm/rockchip: dw_hdmi_qp: Add platform ctrl callback
Date: Mon, 06 Jan 2025 10:23:50 +0100
Message-ID: <2263586.72vocr9iq0@diego>
In-Reply-To: <2f23fa41.82d9.1943ac12d62.Coremail.andyshrk@163.com>
References:
 <20241225103741.364597-1-andyshrk@163.com> <2175680.OBFZWjSADL@diego>
 <2f23fa41.82d9.1943ac12d62.Coremail.andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Montag, 6. Januar 2025, 09:35:26 CET schrieb Andy Yan:
>=20
> Hi Heiko,
>=20
> At 2025-01-02 19:51:58, "Heiko St=FCbner" <heiko@sntech.de> wrote:
> >Hi Andy,
> >
> >Am Mittwoch, 25. Dezember 2024, 11:37:29 CET schrieb Andy Yan:
> >> From: Andy Yan <andy.yan@rock-chips.com>
> >>=20
> >> There are some control bits for IO and interrupts status scattered
> >> across different GRF on differt SOC.
> >> Add platform callback for this IO setting and interrupts status
> >> handling.
> >>=20
> >> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> >>=20
> >> ---
> >>=20
> >>  .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 81 ++++++++++++-------
> >>  1 file changed, 54 insertions(+), 27 deletions(-)
> >>=20
> >> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/=
gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> >> index c36fc130b734..b21e868e7c16 100644
> >> --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> >> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> >> @@ -62,6 +62,12 @@ struct rockchip_hdmi_qp {
> >>  	int port_id;
> >>  };
> >> =20
> >> +struct rockchip_hdmi_qp_ctrl_ops {
> >> +	void (*io_init)(struct rockchip_hdmi_qp *hdmi);
> >> +	irqreturn_t (*irq_callback)(int irq, void *dev_id);
> >> +	irqreturn_t (*hardirq_callback)(int irq, void *dev_id);
> >> +};
> >> +
> >>  static struct rockchip_hdmi_qp *to_rockchip_hdmi_qp(struct drm_encode=
r *encoder)
> >>  {
> >>  	struct rockchip_encoder *rkencoder =3D to_rockchip_encoder(encoder);
> >> @@ -226,9 +232,47 @@ static irqreturn_t dw_hdmi_qp_rk3588_irq(int irq,=
 void *dev_id)
> >>  	return IRQ_HANDLED;
> >>  }
> >> =20
> >> +static void dw_hdmi_qp_rk3588_io_init(struct rockchip_hdmi_qp *hdmi)
> >> +{
> >> +	u32 val;
> >> +
> >> +	val =3D HIWORD_UPDATE(RK3588_SCLIN_MASK, RK3588_SCLIN_MASK) |
> >> +	      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
> >> +	      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
> >> +	      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
> >> +
> >
> >nit: below val =3D ... and regmap_write don't have a blank line between =
them
> >which makes sense to show that they belong together. So the blank above
> >can probably also go away.
>=20
> Okay, it will be removed in V2.

just realized that I commented on the "wrong" version :-)

https://lore.kernel.org/r/20241231094425.253398-1-andyshrk@163.com
seems to be the most recent one.

Heiko



