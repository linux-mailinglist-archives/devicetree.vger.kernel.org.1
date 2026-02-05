Return-Path: <devicetree+bounces-262830-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wM8KECEChGk+wwMAu9opvQ
	(envelope-from <devicetree+bounces-262830-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 03:36:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C67EE012
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 03:36:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5ABD8300B132
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 02:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75F342BE7AB;
	Thu,  5 Feb 2026 02:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BsWrZvZF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433792BDC02
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 02:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770258974; cv=pass; b=IczrtL0fdXussAq9dT2GAVs0edOVAWC7p+YaUxrjNsCSijMQ1bLl3EkXR80/c6nMXz/xFb+23N/ytAkMQ9muD7ZfQQvyN0vXzCp3G1sa7ORvTTfmNDTgB2/EaRfrQv1Dsex6X26pXSvkY349zU3GKyAnmwPZozz9wTNY7WkHlQA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770258974; c=relaxed/simple;
	bh=NQVV8HUc0psH2m9YHAJXRggnCctk9iGZTyOGajgLGcM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qZjQGuU3b+OdOp35NlKLbleQG0ymj31l/fhXtrf+lZg1mKFwXtsn8nRCo+bu4yyriKR/hYbusev471XLM5iEPB8wzOVYuIh+t/4nOAABkqeZVFdG65thUi2OLS0WbtQ3Z5VEQ43Bhplqi06z6kCsHvJdTaILHvOPbuWrO0LgHXc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BsWrZvZF; arc=pass smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-352f00d0e83so174429a91.2
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 18:36:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770258974; cv=none;
        d=google.com; s=arc-20240605;
        b=lYVW3TLPfEgp0VLHRUUjl/bMz2gZzX6xfLetWKl3D3r6F9yfHAZ2cwJ1VIIZ5hEE4p
         REbqQDdB5Lg+7E0paNN9yBybMLHlq+C3bD/nVMWX+EvkEFR83e4dBYt2uvDyrl7ZdfxE
         tb29EN/q+ygB3nNxGeBv0CmT6jG1Y3yRnniN0nUqqxe+BFIZeCoaBwgemES9rRP6V+7u
         xmU+u8RUsZACznzxOis0trwchriuBpTL9OSLjMU/nl4WLnhNfUw1Nhzaoh+07dM9iZQy
         qQh47BeyJtYGuiNb6K6liSkmw2+5ZCDNmkXS7OA1nK3gOKK4/RV/NCAZqfZucI0eyUZ8
         FXjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HjF1oe/j6F+p4WP4e0eq4iSGoPJ70DW7/iIuXSYvlGc=;
        fh=3Nl3CHhT4HcpnfeYDT7Vw7ctdKJ559szk90CRrWGAXY=;
        b=HbgToM393yaKRd8TvC1MEyVMHO7HXWIba1FiCnztdfxTez23P9jbSpa8L3TRiGEF4B
         l1FI7+11C32l4W3Aul1EuL94x58RYkAICEuGIQdidYIyNFkqfe5whS43NRzsjS4QjdVe
         Nh7qmMSMlcC7sJIeKj1oUtt9PCA2GoPjtB8msD8r1Hpp7ISjQvmLvb9969M/xeZ+hMoY
         ZDJm3NYN/n9rTM9nsChZdr4YmqWWJfI3oHYkJc7hTcuXwODyl24tvLtcp0K+qdaiBPeV
         uXFpWlRcB9v11Zr7Y6lNgBK1wA8n5F49P48h1G9ykg+nBWry//EQdX7m/l05Ak0VcN0b
         QQgg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770258974; x=1770863774; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HjF1oe/j6F+p4WP4e0eq4iSGoPJ70DW7/iIuXSYvlGc=;
        b=BsWrZvZFLwi2RbxIb1Ad/Vxm1WKifPErkP0QYZmfGsVu7cDjHShHddHYQcVO22uwcy
         RYCdczgw4mfRAIf4O6du2lV7Uvur3zznqY9yrcdPBzims8BghQIs8/PwbvZHa+7meU6T
         cjXbgbkVU+YdjftZJ6B6W5ir1l1SSKVDmdOs99H7RjKo0Yn3Nyi51TgkEFi0et1ZsfxA
         7wHNrWD4VU6ZvKtYpKO+opDDZNn5YAlnHvFrX+CUQYGIJoO6bjjkxftTs9f2PgQQ1bFy
         zyJfr9Jt3bkMRNPc8SfC88N0jvXIoaZDsKXGHdfL0/uT2PYG8PnyuqTVv2u41Fe5FF5x
         ePIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770258974; x=1770863774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HjF1oe/j6F+p4WP4e0eq4iSGoPJ70DW7/iIuXSYvlGc=;
        b=c517fJUajnhYR7pm6Wn2AXkmeCkbjiSRXCiPv1QNoLVRAWutzcBhxuB3YY/j1spYqp
         VMg5cXnVMBhplmzi6RHKhVc72eEUtYU3aFpIvngt2sL12tB9nEIb5aXu17XiqBB67Hcy
         2tCFamsROEIfG5tkuyHLjoWzkVWXR7CaOkRWKg7Cwc0ak7pwytok2aYXx8aPz8EtNfZS
         2HN8MsPDxE5TqzTSrpKORkHEAKDTwLyrN9ZbcWVE9iEo3Q2FsPLVD3mStjv51vRwY08j
         fhZtI+O6SJV3dXbErmcEMn3Ea8pzKffV4PgHH/uCS6CQzDGqIp/M8DPvXEdswbdm2mTl
         saDw==
X-Forwarded-Encrypted: i=1; AJvYcCVw5hi7tlv8quRdyNVrn0SOFw1luxnTqlbEfnr3R492IEfRc+lZkqc4t/TA0nE8zBYrwyhOfynz2iHx@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn9J9Ld3rv4sUdi82mpvHaLoh6CHpZxGX83O3FfHwUCNhFFTD1
	bNFu9xlVl9sFMN4dhzOmF/LO0uRhmxtQoj75cOo3H9Qu3y3affW8LpyoVjjB/nYbeLS0WU/t1OK
	6AToX9d2CfLJ6V4kcULw7FABP7FhCTq0=
X-Gm-Gg: AZuq6aKPItXv8lulCcggC59p0/30gbNwn3xiKW65xDoJinaGnzfHmL98O8R5zaGhwE2
	LPu/BxGoX5SQYQGtYo0BmN3vZdMtTKU5lp7PTl7vm53C5M7trY5XdkaWBdVlx49MXYimnal+uL9
	/IRfsWunS8oCpqfDrB9ID6w+A9HQk944Wrb56pKg6e8RBj8nVTTthxCwHXTdZbhwlU/ML6frlDv
	aSLHWULSPhMeDZiM+h+TPD42SDPVm92SaRSvex2ziM0uW6VBFzI+vhK3edi/t5neItDck5T8ocR
	vS1fkg==
X-Received: by 2002:a17:90b:3884:b0:340:4abf:391d with SMTP id
 98e67ed59e1d1-35487125d82mr4318915a91.16.1770258973498; Wed, 04 Feb 2026
 18:36:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203031345.3850533-1-shengjiu.wang@nxp.com>
 <20260203031345.3850533-3-shengjiu.wang@nxp.com> <aYI2KZE8/MGQ633A@lizhi-Precision-Tower-5810>
 <CAA+D8APXwucOLhhnZF7ASPufWyQs4tbxtR46UFdpm=4wRyHOyA@mail.gmail.com> <aYN0CQbRwyYJDlJn@lizhi-Precision-Tower-5810>
In-Reply-To: <aYN0CQbRwyYJDlJn@lizhi-Precision-Tower-5810>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Thu, 5 Feb 2026 10:36:01 +0800
X-Gm-Features: AZwV_QgTCuKmUaXOlpjmbiCTEgTaxxVjxr1vFqJ32-N2ro_Vxt5AFFdiFJtKCnI
Message-ID: <CAA+D8AN_xej-DWHbWKMCwgZVVcW9N2mHrK=4GUyoRiGLXBAoTw@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262830-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,nxp.com:email]
X-Rspamd-Queue-Id: B2C67EE012
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 12:30=E2=80=AFAM Frank Li <Frank.li@nxp.com> wrote:
>
> On Wed, Feb 04, 2026 at 09:41:55AM +0800, Shengjiu Wang wrote:
> > On Wed, Feb 4, 2026 at 1:53=E2=80=AFAM Frank Li <Frank.li@nxp.com> wrot=
e:
> > >
> > > On Tue, Feb 03, 2026 at 11:13:43AM +0800, Shengjiu Wang wrote:
> > > > There is a limitation on i.MX952 that dma request is not cleared at=
 the
> > > > end of conversion with dma slave mode. Which causes sample is dropp=
ed
> > > > from the input fifo on the second time if dma is triggered before t=
he
> > > > client device and EDMA may copy wrong data from output fifo as the =
output
> > > > fifo is not ready in the beginning.
> > > >
> > > > The solution is to trigger asrc before dma on i.MX952, and add dela=
y to
> > > > wait output data is generated then start the EDMA for output, other=
wise
> > > > the m2m function has noise issues.
> > > >
> > > > So add an option to start ASRC first for M2M before ASRC is enabled=
 on
> > > > i.MX952.
> > > >
> > > > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > > > ---
> > > >  sound/soc/fsl/fsl_asrc.c        | 23 +++++++++++++++++++++++
> > > >  sound/soc/fsl/fsl_asrc.h        |  4 ++++
> > > >  sound/soc/fsl/fsl_asrc_common.h |  4 ++++
> > > >  sound/soc/fsl/fsl_asrc_m2m.c    |  8 +++++++-
> > > >  4 files changed, 38 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/sound/soc/fsl/fsl_asrc.c b/sound/soc/fsl/fsl_asrc.c
> > > > index 92fb16f7be45..b6d4f1e09e2e 100644
> > > > --- a/sound/soc/fsl/fsl_asrc.c
> > > > +++ b/sound/soc/fsl/fsl_asrc.c
> > > > @@ -1078,6 +1078,27 @@ static unsigned int fsl_asrc_get_output_fifo=
_size(struct fsl_asrc_pair *pair)
> > > >       return val >> ASRFSTi_OUTPUT_FIFO_SHIFT;
> > > >  }
> > > >
> > > > +static bool fsl_asrc_m2m_output_ready(struct fsl_asrc_pair *pair)
> > > > +{
> > > > +     struct fsl_asrc *asrc =3D pair->asrc;
> > > > +     enum asrc_pair_index index =3D pair->index;
> > > > +     int retry =3D 1000;
> > > > +     u32 val;
> > > > +     int ret;
> > > > +
> > > > +     /* Check output fifo status if it exceeds the watermark. */
> > > > +     ret =3D regmap_read_poll_timeout(asrc->regmap, REG_ASRFST(ind=
ex), val,
> > > > +                                    (ASRFSTi_OUTPUT_FIFO_FILL(val)=
 >=3D ASRC_M2M_OUTPUTFIFO_WML) ||
> > > > +                                    (--retry =3D=3D 0), 0, USEC_PE=
R_SEC);
> > >
> > > are sure need "retry"? there are timeout, which should be equal to 'r=
etry'.
> >
> > Yes, "retry" is what I want, timeout is not what I expected.
>
> Okay, but it will be strange. you polling a register, you suppose it will
> be finished below 1000 IO read, which is certain time in SoC, for example
> 1ms. Compare to timeout us value, 1000 is hard to understand why you choo=
se
> this value.

It can be removed by reducing the timeout time.
will update in the next version.

best regards
Shengjiu Wang

>
> Frank
> >
> > Best regards
> > Shengjiu Wang
> >
> > >
> > > Frank
> > > > +
> > > > +     if (ret || !retry) {
> > > > +             pair_warn("output is not ready\n");
> > > > +             return false;
> > > > +     }
> > > > +
> > > > +     return true;
> > > > +}
> > > > +
> > > >  static int fsl_asrc_m2m_prepare(struct fsl_asrc_pair *pair)
> > > >  {
> > > >       struct fsl_asrc_pair_priv *pair_priv =3D pair->private;
> > > > @@ -1275,6 +1296,7 @@ static int fsl_asrc_probe(struct platform_dev=
ice *pdev)
> > > >
> > > >       asrc_priv->soc =3D of_device_get_match_data(&pdev->dev);
> > > >       asrc->use_edma =3D asrc_priv->soc->use_edma;
> > > > +     asrc->start_before_dma =3D asrc_priv->soc->start_before_dma;
> > > >       asrc->get_dma_channel =3D fsl_asrc_get_dma_channel;
> > > >       asrc->request_pair =3D fsl_asrc_request_pair;
> > > >       asrc->release_pair =3D fsl_asrc_release_pair;
> > > > @@ -1289,6 +1311,7 @@ static int fsl_asrc_probe(struct platform_dev=
ice *pdev)
> > > >       asrc->m2m_get_maxburst =3D fsl_asrc_m2m_get_maxburst;
> > > >       asrc->m2m_pair_resume =3D fsl_asrc_m2m_pair_resume;
> > > >       asrc->m2m_get_cap =3D fsl_asrc_m2m_get_cap;
> > > > +     asrc->m2m_output_ready =3D fsl_asrc_m2m_output_ready;
> > > >
> > > >       if (of_device_is_compatible(np, "fsl,imx35-asrc")) {
> > > >               asrc_priv->clk_map[IN] =3D input_clk_map_imx35;
> > > > diff --git a/sound/soc/fsl/fsl_asrc.h b/sound/soc/fsl/fsl_asrc.h
> > > > index 1c492eb237f5..60b6865ca952 100644
> > > > --- a/sound/soc/fsl/fsl_asrc.h
> > > > +++ b/sound/soc/fsl/fsl_asrc.h
> > > > @@ -257,6 +257,8 @@
> > > >  #define ASRFSTi_OUTPUT_FIFO_WIDTH    7
> > > >  #define ASRFSTi_OUTPUT_FIFO_SHIFT    12
> > > >  #define ASRFSTi_OUTPUT_FIFO_MASK     (((1 << ASRFSTi_OUTPUT_FIFO_W=
IDTH) - 1) << ASRFSTi_OUTPUT_FIFO_SHIFT)
> > > > +#define ASRFSTi_OUTPUT_FIFO_FILL(v)  \
> > > > +     (((v) & ASRFSTi_OUTPUT_FIFO_MASK) >> ASRFSTi_OUTPUT_FIFO_SHIF=
T)
> > > >  #define ASRFSTi_IAEi_SHIFT           11
> > > >  #define ASRFSTi_IAEi_MASK            (1 << ASRFSTi_IAEi_SHIFT)
> > > >  #define ASRFSTi_IAEi                 (1 << ASRFSTi_IAEi_SHIFT)
> > > > @@ -432,10 +434,12 @@ struct dma_block {
> > > >   *
> > > >   * @use_edma: using edma as dma device or not
> > > >   * @channel_bits: width of ASRCNCR register for each pair
> > > > + * @start_before_dma: start asrc before dma
> > > >   */
> > > >  struct fsl_asrc_soc_data {
> > > >       bool use_edma;
> > > >       unsigned int channel_bits;
> > > > +     bool start_before_dma;
> > > >  };
> > > >
> > > >  /**
> > > > diff --git a/sound/soc/fsl/fsl_asrc_common.h b/sound/soc/fsl/fsl_as=
rc_common.h
> > > > index 0cd595b0f629..c8a1a2b5915d 100644
> > > > --- a/sound/soc/fsl/fsl_asrc_common.h
> > > > +++ b/sound/soc/fsl/fsl_asrc_common.h
> > > > @@ -107,6 +107,7 @@ struct fsl_asrc_pair {
> > > >   * @asrc_rate: default sample rate for ASoC Back-Ends
> > > >   * @asrc_format: default sample format for ASoC Back-Ends
> > > >   * @use_edma: edma is used
> > > > + * @start_before_dma: start asrc before dma
> > > >   * @get_dma_channel: function pointer
> > > >   * @request_pair: function pointer
> > > >   * @release_pair: function pointer
> > > > @@ -116,6 +117,7 @@ struct fsl_asrc_pair {
> > > >   * @m2m_start: function pointer
> > > >   * @m2m_unprepare: function pointer
> > > >   * @m2m_stop: function pointer
> > > > + * @m2m_output_ready: function pointer, check output fifo ready or=
 not
> > > >   * @m2m_calc_out_len: function pointer
> > > >   * @m2m_get_maxburst: function pointer
> > > >   * @m2m_pair_suspend: function pointer
> > > > @@ -143,6 +145,7 @@ struct fsl_asrc {
> > > >       int asrc_rate;
> > > >       snd_pcm_format_t asrc_format;
> > > >       bool use_edma;
> > > > +     bool start_before_dma;
> > > >
> > > >       struct dma_chan *(*get_dma_channel)(struct fsl_asrc_pair *pai=
r, bool dir);
> > > >       int (*request_pair)(int channels, struct fsl_asrc_pair *pair)=
;
> > > > @@ -154,6 +157,7 @@ struct fsl_asrc {
> > > >       int (*m2m_start)(struct fsl_asrc_pair *pair);
> > > >       int (*m2m_unprepare)(struct fsl_asrc_pair *pair);
> > > >       int (*m2m_stop)(struct fsl_asrc_pair *pair);
> > > > +     bool (*m2m_output_ready)(struct fsl_asrc_pair *pair);
> > > >
> > > >       int (*m2m_calc_out_len)(struct fsl_asrc_pair *pair, int input=
_buffer_length);
> > > >       int (*m2m_get_maxburst)(u8 dir, struct fsl_asrc_pair *pair);
> > > > diff --git a/sound/soc/fsl/fsl_asrc_m2m.c b/sound/soc/fsl/fsl_asrc_=
m2m.c
> > > > index f46881f71e43..77999526dd9e 100644
> > > > --- a/sound/soc/fsl/fsl_asrc_m2m.c
> > > > +++ b/sound/soc/fsl/fsl_asrc_m2m.c
> > > > @@ -253,15 +253,21 @@ static int asrc_m2m_device_run(struct fsl_asr=
c_pair *pair, struct snd_compr_task
> > > >       reinit_completion(&pair->complete[IN]);
> > > >       reinit_completion(&pair->complete[OUT]);
> > > >
> > > > +     if (asrc->start_before_dma)
> > > > +             asrc->m2m_start(pair);
> > > > +
> > > >       /* Submit DMA request */
> > > >       dmaengine_submit(pair->desc[IN]);
> > > >       dma_async_issue_pending(pair->desc[IN]->chan);
> > > >       if (out_dma_len > 0) {
> > > > +             if (asrc->start_before_dma && asrc->m2m_output_ready)
> > > > +                     asrc->m2m_output_ready(pair);
> > > >               dmaengine_submit(pair->desc[OUT]);
> > > >               dma_async_issue_pending(pair->desc[OUT]->chan);
> > > >       }
> > > >
> > > > -     asrc->m2m_start(pair);
> > > > +     if (!asrc->start_before_dma)
> > > > +             asrc->m2m_start(pair);
> > > >
> > > >       if (!wait_for_completion_interruptible_timeout(&pair->complet=
e[IN], 10 * HZ)) {
> > > >               dev_err(dev, "out DMA task timeout\n");
> > > > --
> > > > 2.34.1
> > > >

