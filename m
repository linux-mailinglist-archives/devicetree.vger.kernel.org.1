Return-Path: <devicetree+bounces-262454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yK5sMDKkgmlpXAMAu9opvQ
	(envelope-from <devicetree+bounces-262454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:43:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33995E0815
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:43:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 08F903050A24
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 01:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92869285CA9;
	Wed,  4 Feb 2026 01:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B1weG6Fs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE58283C9D
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 01:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770169332; cv=pass; b=D4rfznoxkTvqN/zAYiAzH9pBGaCQOXvFar3odQmnBLQNmB6MExDPxlIaaYMKNlpfEcHZETmNeZ9FFpJ5KsylBzz3sanTO8fYGTicFCHJwXXFaguB/JFrAQhAjJA9mH1ysP4dB2X0xb1hugAl434NwkDHLKPm4p59eLE+OhFIwno=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770169332; c=relaxed/simple;
	bh=E5VDEgqNSgpJbV9pmpdh6TWiOcyXHDjI54IDXUhzEqo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ld/9jqiYhoZMbTZT2vbagSyFphHhTW4ed1HtwcZdqodiOipAf0lfdTGL1bZ9k9KE4fSUlb1dRJiz6Vi0/GEb82tFTkDACy90/n5hhF2Fd26oiBkQya4M8Pl5LGwUOneRDzXihN0aN/nsHa59yOVv6v/DXk9t+rkXCEzVJKjujrI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B1weG6Fs; arc=pass smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-3530715386cso4667230a91.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 17:42:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770169330; cv=none;
        d=google.com; s=arc-20240605;
        b=PSvIPwzAlMD9kqutvPy0QdW97Frf6rdaK6vt7DjFvVGTYgjOUrnLtULXAjyzFevfZB
         TpjcXBsSjCvtgmrgaB9oU7s+JZwBYW0ZLk1AyBdmV+7uP7UicJG2q08cnWx4xXTvy31R
         EEk7Ipl+HGWZtVo5Eaq7xP1FfOn6idsMyaNEg+avU0s9YGFw5/PDWstlSAP1y/wg21dL
         26yNciqwehtbGWjN7d3MCNSYR2wqT/lLjVQLznJKzS3kMmPNouI7aMKjzNTX1wdzhSIu
         T9BbhDIwb6PZ4sayRKnsGy/L237LGIeg0L5ewcSoGwGyRoVSM2GaC9EoWJpXz1jsRHpZ
         YpNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=otKMp5rfnNzFq7n/nTMXUM2adMPBqwrYoSOvEkMyM3M=;
        fh=DuFCmYwxFz69Vl3vRwEv2Kfa+kNnDBvRo+XO6b0QJKo=;
        b=ezvZu7d8ZSpexIOsQpBktB9yrEYDhmKaBgNSqeqegXH1pIOY5lJ5xQ7pDXbVHpmoMP
         VaUADCJNQ1WN4dEMyV/OKxzQfjYWAJQBpakurkRE0PjJtaReyBdB/nfxEKQh+YF8ANSN
         0FuClgJ26jmuuSBdAFjv/nn98Y74y87/8uY1s9yeMe1jWPDwwnfO/MBwgyQTTbf/42Mb
         79GmyWNERApz9aOhXaQpphbTo52gO8MQ78rv52m0X7YbWO4mEalefFIf6OuecfEPO0hW
         WzcxK7f9BJloYBd5B7vnWqJvg5YSECqvhXJD15FOssb3YabZj6ZWghwrvFEpRQvgpKZn
         rXNg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770169330; x=1770774130; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=otKMp5rfnNzFq7n/nTMXUM2adMPBqwrYoSOvEkMyM3M=;
        b=B1weG6Fs+/hhW2M2gYodl1cBpFZ1EJvd0hgSn+rKmD6weg5LEVHaPiFr9Ul+pCm1sJ
         S9GiZhGtO0G3WlXgSPJtdnbOGwiOiO9c0mK1A4RGX1yTXnZrZs9SVsDRsSWwFEIRnNJc
         flYzoQyzaNfRvdKGUR8MnNTjrzsfGqAmVopISjg84L3T2hjzD9fSXRPSNnD7NSh4zXT4
         +uOPA2o6bLYsWyLaw3mgVQe+eLZdTnYx0/TRJSLZom1pM2KChr7Z3QXphAZNDJqQslgA
         qnjAL/4M8kJUdb01BeC9uKHvt82/XAu0lsKdQo10yjwdvv2C7I5lRaOr5gcMlus86hMi
         FdmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770169330; x=1770774130;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=otKMp5rfnNzFq7n/nTMXUM2adMPBqwrYoSOvEkMyM3M=;
        b=jib9cJdvsh6nU3UASyhIVT4DbChsXkfSAB05C71X94PAIkM+zLhgp+RkaxEfYYU8rH
         4fiMEfRuPSgrIbGww/4CfO9j0popVWBieY6dMZ8xBL3y0R8HGNhUb3pyU8cNBuaNAwKp
         K5bvg/DsW3eN+MgvNwNCNBrdCu3x5VFpTB5NRQlVsERlYBo7TeaFvYJ43JB5Ph91dksM
         LgLshvsq6n/49wJk0KyWu3c9CG8QnvE51weKe7LETdLHKsM2L/E0rP5BwH1e+W0OSFcL
         TM9Pq0sg67EO1KjpiiHE2b7gaQne64SeT204bb2lp7Tlxf6sB0zhdR5PIJSA2rtNJ1d7
         aOKw==
X-Forwarded-Encrypted: i=1; AJvYcCU+oHpu1mFS6geNxfBkhbJSD9jSB1BAjgKfltkbxL+r2a+7x0CYqqu5OZO7Wvdc7377Z7cAkqjiBnEM@vger.kernel.org
X-Gm-Message-State: AOJu0YxyWDKKHnmC/oxeikGvbOI6GkrqGGmKHPKrb0ThAkMJO4DbRnzR
	ZhN0jWvouP2oTPOV1EMu0J2NxLytm615OFLjJpBTzMJVvo4GxFR++OdDCOUJUJqMtGyWTMAfzTf
	fcPzAj6ivI/7W0wTLUsYipUTJzLgYFfM=
X-Gm-Gg: AZuq6aJYNOpPANTTkeK023FWgI7wRgcXHc40eB+h6FVTMfNZu2HinXV7l/Eg7xvvb4y
	dNPzuiujLxSByViUyRwzLclNQbw19U28ac0tQaULWKdFYALcZQ8Ll/5+tUBRuAEAcqc8k4iZncv
	EQJqZsMACiSA22DxxkIXIPd1I3RIlG3INAyvZbXX5uR3GsAc8dJnORMnZDvNEtWwzc3GflGj1HL
	3ub/5l4EpxyJlZBXPqak7zx+12oaaeEjuNGbZZ7u6FN07R6+hd3shW+9ELh71ap+QwyzJk=
X-Received: by 2002:a17:90b:4b8c:b0:352:d168:fc4 with SMTP id
 98e67ed59e1d1-35487207d86mr997612a91.32.1770169330154; Tue, 03 Feb 2026
 17:42:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203031345.3850533-1-shengjiu.wang@nxp.com>
 <20260203031345.3850533-3-shengjiu.wang@nxp.com> <aYI2KZE8/MGQ633A@lizhi-Precision-Tower-5810>
In-Reply-To: <aYI2KZE8/MGQ633A@lizhi-Precision-Tower-5810>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Wed, 4 Feb 2026 09:41:55 +0800
X-Gm-Features: AZwV_QiSHr0nHk0_0QYvmlQjWNW7hjgw-cP6U7VY4GcjLXalrmxQByJgfsR4Ri0
Message-ID: <CAA+D8APXwucOLhhnZF7ASPufWyQs4tbxtR46UFdpm=4wRyHOyA@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] ASoC: fsl_asrc_m2m: Add option to start ASRC
 before DMA device for M2M
To: Frank Li <Frank.li@nxp.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com, broonie@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Xiubo.Lee@gmail.com, nicoleotsuka@gmail.com, perex@perex.cz, tiwai@suse.com, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262454-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,perex.cz,suse.com,lists.ozlabs.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: 33995E0815
X-Rspamd-Action: no action

On Wed, Feb 4, 2026 at 1:53=E2=80=AFAM Frank Li <Frank.li@nxp.com> wrote:
>
> On Tue, Feb 03, 2026 at 11:13:43AM +0800, Shengjiu Wang wrote:
> > There is a limitation on i.MX952 that dma request is not cleared at the
> > end of conversion with dma slave mode. Which causes sample is dropped
> > from the input fifo on the second time if dma is triggered before the
> > client device and EDMA may copy wrong data from output fifo as the outp=
ut
> > fifo is not ready in the beginning.
> >
> > The solution is to trigger asrc before dma on i.MX952, and add delay to
> > wait output data is generated then start the EDMA for output, otherwise
> > the m2m function has noise issues.
> >
> > So add an option to start ASRC first for M2M before ASRC is enabled on
> > i.MX952.
> >
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > ---
> >  sound/soc/fsl/fsl_asrc.c        | 23 +++++++++++++++++++++++
> >  sound/soc/fsl/fsl_asrc.h        |  4 ++++
> >  sound/soc/fsl/fsl_asrc_common.h |  4 ++++
> >  sound/soc/fsl/fsl_asrc_m2m.c    |  8 +++++++-
> >  4 files changed, 38 insertions(+), 1 deletion(-)
> >
> > diff --git a/sound/soc/fsl/fsl_asrc.c b/sound/soc/fsl/fsl_asrc.c
> > index 92fb16f7be45..b6d4f1e09e2e 100644
> > --- a/sound/soc/fsl/fsl_asrc.c
> > +++ b/sound/soc/fsl/fsl_asrc.c
> > @@ -1078,6 +1078,27 @@ static unsigned int fsl_asrc_get_output_fifo_siz=
e(struct fsl_asrc_pair *pair)
> >       return val >> ASRFSTi_OUTPUT_FIFO_SHIFT;
> >  }
> >
> > +static bool fsl_asrc_m2m_output_ready(struct fsl_asrc_pair *pair)
> > +{
> > +     struct fsl_asrc *asrc =3D pair->asrc;
> > +     enum asrc_pair_index index =3D pair->index;
> > +     int retry =3D 1000;
> > +     u32 val;
> > +     int ret;
> > +
> > +     /* Check output fifo status if it exceeds the watermark. */
> > +     ret =3D regmap_read_poll_timeout(asrc->regmap, REG_ASRFST(index),=
 val,
> > +                                    (ASRFSTi_OUTPUT_FIFO_FILL(val) >=
=3D ASRC_M2M_OUTPUTFIFO_WML) ||
> > +                                    (--retry =3D=3D 0), 0, USEC_PER_SE=
C);
>
> are sure need "retry"? there are timeout, which should be equal to 'retry=
'.

Yes, "retry" is what I want, timeout is not what I expected.

Best regards
Shengjiu Wang

>
> Frank
> > +
> > +     if (ret || !retry) {
> > +             pair_warn("output is not ready\n");
> > +             return false;
> > +     }
> > +
> > +     return true;
> > +}
> > +
> >  static int fsl_asrc_m2m_prepare(struct fsl_asrc_pair *pair)
> >  {
> >       struct fsl_asrc_pair_priv *pair_priv =3D pair->private;
> > @@ -1275,6 +1296,7 @@ static int fsl_asrc_probe(struct platform_device =
*pdev)
> >
> >       asrc_priv->soc =3D of_device_get_match_data(&pdev->dev);
> >       asrc->use_edma =3D asrc_priv->soc->use_edma;
> > +     asrc->start_before_dma =3D asrc_priv->soc->start_before_dma;
> >       asrc->get_dma_channel =3D fsl_asrc_get_dma_channel;
> >       asrc->request_pair =3D fsl_asrc_request_pair;
> >       asrc->release_pair =3D fsl_asrc_release_pair;
> > @@ -1289,6 +1311,7 @@ static int fsl_asrc_probe(struct platform_device =
*pdev)
> >       asrc->m2m_get_maxburst =3D fsl_asrc_m2m_get_maxburst;
> >       asrc->m2m_pair_resume =3D fsl_asrc_m2m_pair_resume;
> >       asrc->m2m_get_cap =3D fsl_asrc_m2m_get_cap;
> > +     asrc->m2m_output_ready =3D fsl_asrc_m2m_output_ready;
> >
> >       if (of_device_is_compatible(np, "fsl,imx35-asrc")) {
> >               asrc_priv->clk_map[IN] =3D input_clk_map_imx35;
> > diff --git a/sound/soc/fsl/fsl_asrc.h b/sound/soc/fsl/fsl_asrc.h
> > index 1c492eb237f5..60b6865ca952 100644
> > --- a/sound/soc/fsl/fsl_asrc.h
> > +++ b/sound/soc/fsl/fsl_asrc.h
> > @@ -257,6 +257,8 @@
> >  #define ASRFSTi_OUTPUT_FIFO_WIDTH    7
> >  #define ASRFSTi_OUTPUT_FIFO_SHIFT    12
> >  #define ASRFSTi_OUTPUT_FIFO_MASK     (((1 << ASRFSTi_OUTPUT_FIFO_WIDTH=
) - 1) << ASRFSTi_OUTPUT_FIFO_SHIFT)
> > +#define ASRFSTi_OUTPUT_FIFO_FILL(v)  \
> > +     (((v) & ASRFSTi_OUTPUT_FIFO_MASK) >> ASRFSTi_OUTPUT_FIFO_SHIFT)
> >  #define ASRFSTi_IAEi_SHIFT           11
> >  #define ASRFSTi_IAEi_MASK            (1 << ASRFSTi_IAEi_SHIFT)
> >  #define ASRFSTi_IAEi                 (1 << ASRFSTi_IAEi_SHIFT)
> > @@ -432,10 +434,12 @@ struct dma_block {
> >   *
> >   * @use_edma: using edma as dma device or not
> >   * @channel_bits: width of ASRCNCR register for each pair
> > + * @start_before_dma: start asrc before dma
> >   */
> >  struct fsl_asrc_soc_data {
> >       bool use_edma;
> >       unsigned int channel_bits;
> > +     bool start_before_dma;
> >  };
> >
> >  /**
> > diff --git a/sound/soc/fsl/fsl_asrc_common.h b/sound/soc/fsl/fsl_asrc_c=
ommon.h
> > index 0cd595b0f629..c8a1a2b5915d 100644
> > --- a/sound/soc/fsl/fsl_asrc_common.h
> > +++ b/sound/soc/fsl/fsl_asrc_common.h
> > @@ -107,6 +107,7 @@ struct fsl_asrc_pair {
> >   * @asrc_rate: default sample rate for ASoC Back-Ends
> >   * @asrc_format: default sample format for ASoC Back-Ends
> >   * @use_edma: edma is used
> > + * @start_before_dma: start asrc before dma
> >   * @get_dma_channel: function pointer
> >   * @request_pair: function pointer
> >   * @release_pair: function pointer
> > @@ -116,6 +117,7 @@ struct fsl_asrc_pair {
> >   * @m2m_start: function pointer
> >   * @m2m_unprepare: function pointer
> >   * @m2m_stop: function pointer
> > + * @m2m_output_ready: function pointer, check output fifo ready or not
> >   * @m2m_calc_out_len: function pointer
> >   * @m2m_get_maxburst: function pointer
> >   * @m2m_pair_suspend: function pointer
> > @@ -143,6 +145,7 @@ struct fsl_asrc {
> >       int asrc_rate;
> >       snd_pcm_format_t asrc_format;
> >       bool use_edma;
> > +     bool start_before_dma;
> >
> >       struct dma_chan *(*get_dma_channel)(struct fsl_asrc_pair *pair, b=
ool dir);
> >       int (*request_pair)(int channels, struct fsl_asrc_pair *pair);
> > @@ -154,6 +157,7 @@ struct fsl_asrc {
> >       int (*m2m_start)(struct fsl_asrc_pair *pair);
> >       int (*m2m_unprepare)(struct fsl_asrc_pair *pair);
> >       int (*m2m_stop)(struct fsl_asrc_pair *pair);
> > +     bool (*m2m_output_ready)(struct fsl_asrc_pair *pair);
> >
> >       int (*m2m_calc_out_len)(struct fsl_asrc_pair *pair, int input_buf=
fer_length);
> >       int (*m2m_get_maxburst)(u8 dir, struct fsl_asrc_pair *pair);
> > diff --git a/sound/soc/fsl/fsl_asrc_m2m.c b/sound/soc/fsl/fsl_asrc_m2m.=
c
> > index f46881f71e43..77999526dd9e 100644
> > --- a/sound/soc/fsl/fsl_asrc_m2m.c
> > +++ b/sound/soc/fsl/fsl_asrc_m2m.c
> > @@ -253,15 +253,21 @@ static int asrc_m2m_device_run(struct fsl_asrc_pa=
ir *pair, struct snd_compr_task
> >       reinit_completion(&pair->complete[IN]);
> >       reinit_completion(&pair->complete[OUT]);
> >
> > +     if (asrc->start_before_dma)
> > +             asrc->m2m_start(pair);
> > +
> >       /* Submit DMA request */
> >       dmaengine_submit(pair->desc[IN]);
> >       dma_async_issue_pending(pair->desc[IN]->chan);
> >       if (out_dma_len > 0) {
> > +             if (asrc->start_before_dma && asrc->m2m_output_ready)
> > +                     asrc->m2m_output_ready(pair);
> >               dmaengine_submit(pair->desc[OUT]);
> >               dma_async_issue_pending(pair->desc[OUT]->chan);
> >       }
> >
> > -     asrc->m2m_start(pair);
> > +     if (!asrc->start_before_dma)
> > +             asrc->m2m_start(pair);
> >
> >       if (!wait_for_completion_interruptible_timeout(&pair->complete[IN=
], 10 * HZ)) {
> >               dev_err(dev, "out DMA task timeout\n");
> > --
> > 2.34.1
> >

