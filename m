Return-Path: <devicetree+bounces-267232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHrrJI7rm2km9gMAu9opvQ
	(envelope-from <devicetree+bounces-267232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:54:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AEB171FB6
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7670830185E5
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F32983451BB;
	Mon, 23 Feb 2026 05:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iLpDuXdq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2F6344D91
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.175
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771825967; cv=pass; b=i+wHcHSYdR3sODJgKajswS0QgXu6d+WiXHW/5YW20aDoBChdKJaIXQbRO0lmoWYQWWnKJgjXtXxEvEsK7g1fnoX8DJ9PvPlDNnsqjaZ6bB0Pmll2veHzWBZREJ+XZdY7nEj1G0SQp0P18qVAxPzqoRwF7oo+bqHS451OrH+nNNs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771825967; c=relaxed/simple;
	bh=yTTX1UMdS50NfFHC+ViA0dvfEDtwzhBZJ6/sWVTOiro=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HeuqBt+5JnF521xXlT2+TnP0NuECiOj8k6HbSuH0QGwRhWYP3PpHDooGtkqFVSmD/odGo0K4M5I0mMBZ762acSpoGFXEN8fOlN4j6QYA/eiumQ4Z8vE/44mlpOORrIX4bzsF82He5K1lQt57gbiILvbneEkRrdnU+mqMgyHFB/E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iLpDuXdq; arc=pass smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a95de4b5cbso36590805ad.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:52:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771825965; cv=none;
        d=google.com; s=arc-20240605;
        b=YgiywZoVcDzfVY6C+5ItHthOSCa9HZJYs9bYss6t8wt8brfPFghOZnaJMn1qis1IeG
         +goftmDLduBJMD8qupaLL5jqe1O5Zo2DsOUKyB8l+fxSTq3jBdmh6hrqsxDHDOuFZ9TA
         7KJuO93AY3NgOQ9l82lbVBxjx/QLcWw8dq4foBjuh0Fw4IOAErtb/aIz91+GH8v8Of9J
         HyIK8G5OcpPcy371021AFch391QUcH6wpUkXvyr8RjB71GCQ/pFO9rnZfQAjQ8iHU3Og
         VUE+spc45+XOl6lXQwsKZqlOwkKx2RzihYYUYUa4TZnsDbs5VfsUzd7hvNDlea3nMgE+
         Koqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xSGeqRFklk/MvK7e1hN4iXhpzOGomKRb6H/+7BRNAV0=;
        fh=kzdqp3I2SgpIPU+JinrWzQwqfBx7XBV8fbjOQf86KjE=;
        b=X9olMuEaYar98zVG+S5bgY/ovZqYIg/7oY02fhVURqHSekkz6lfFgRyA4qc/80cPLY
         bMSOmy6d8LBRXZEFEWSXeMthkBSh3BNWN4Mxzst3P6vF8A3G08a3WsdMp9B/6rmgJzaS
         OpCu2TqYb1S2TxjRSo1uOp2Vb1Wxs/w6JkYKBL7ui9quO7u1tVmT1a36OrS6OtSy9DiW
         oiu4mesU+8fuhn0qG60zXwsZK5ELhhqxYnIox6NU+jGU1/O9AXMUMjeGugAsm2ZLIFr4
         RlA3s+4UVJ3P2dbCaKQt0Mxn7fiB38ZJYbq0t+1VuWlReYvGsf61cLuA8fi7N1ozXxT3
         xxEw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771825965; x=1772430765; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xSGeqRFklk/MvK7e1hN4iXhpzOGomKRb6H/+7BRNAV0=;
        b=iLpDuXdqKX0/yoLrrEejtwquy8s+mNnrrdagpyjmzVnzUnoOyB0PDe0Qwh3u2PjZUr
         QJd8z3rHZIMzp0rTBQTRaKiPzcPeojmBoa/+1HMztdqI9qABLFoeyEygf6vuAvYDIocI
         gX+KYEgwGKrFNwrmeiCtvjrDHWHpRf/QDVMXpGgl9eLrcolCCi+BQCZG6X6coBvBjcBc
         Iva2a++Y8WAZHqF/HwAq9qdSD8Ndk9x/a6WKoeDciy52/Z970VEuXVdkQrSHjG1PNIZz
         Ow/Ffl8t19D/COypfCsibs7ZPCj2XQxbLmejZqpFMNzSnWJcxsgEqXRobErIr6ysBJ59
         tq4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771825965; x=1772430765;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xSGeqRFklk/MvK7e1hN4iXhpzOGomKRb6H/+7BRNAV0=;
        b=dc1HcrNKrqWwczgoD+WlhVYQxmA5VmX/DI9RQhr015km22JJOQxxvCmojDq9F646DP
         oPf/fKrQCq/pfce5hApxHCsRSOcPWPvAJb8P3+xIwfI+F2SpbD7BBcL2mDc6/OUQTtSx
         WxTkQEMx/5I/zS4dSa6yA3ZndMqlXGGODemmqxXYmOZ9eHinPxz4am2mxCBZrlTLLySN
         HjEo/2VRU59Ra6zMViI0Fc7g87xSzFeDvHPM61/6RbpIfbre+88ncGtxo70FhobpPdfM
         EPWkOwxuFJAPRFUGnE29uIcuxFtW8/umToXgIuPo6TEhuN0K9l9PGAGTQNdYZlSZcsMP
         bfzw==
X-Forwarded-Encrypted: i=1; AJvYcCXulVt/SP9Z5mum2ldwG8LkyGCzWsUdYxcCZ/3wK4SxaFQn1m+891s7p2HjmaKdtOcp1zpGq+DgogQD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5BW969pPeMAGNBsBnt4lt7ty3guNmQsP4pxRpmd+6lFZkt9gs
	tycEbMwfkFJfxynAGQpeCkx0k5CnGZmJBhU60paBCYhMoh8SzzlJ/rgjilcEbckgvLJo85lyEAh
	ShHlIjv87JH7HGgTrohqVZWAfx/ro3fo=
X-Gm-Gg: ATEYQzwYksFQRAJBzZp6tpT7j8eDLw8pcTxOLOwFLx/phHiEeBdCZpBOFg0KmtmauKn
	hoB9PMaKCuXVf5l14078jox0fBTRWIgXQbya35R9SWe19aR87IR5JIc7nnAQCC2KmveSdlVwArc
	9xpgLs3/Jtti/+u4sIW1rP0goZLAG4qHo8Hxp5sbNIMGvPloyBSamQIkmA2FWtnWeackdQ1kPok
	3QoR1tlzPtaW53DCzVlCLbLTE/f4s+cGIJWLqoxBWfkwNwiDxIE267L3nNNov+IMPltwmE2S07+
	B3P2CnA=
X-Received: by 2002:a17:903:41cb:b0:2aa:f989:dc7a with SMTP id
 d9443c01a7336-2ad744e0ad2mr67836265ad.33.1771825965373; Sun, 22 Feb 2026
 21:52:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211100553.907585-1-linchengming884@gmail.com>
 <20260211100553.907585-4-linchengming884@gmail.com> <87ldgyxmc0.fsf@bootlin.com>
In-Reply-To: <87ldgyxmc0.fsf@bootlin.com>
From: Cheng Ming Lin <linchengming884@gmail.com>
Date: Mon, 23 Feb 2026 13:50:52 +0800
X-Gm-Features: AaiRm50ulwUFVMf2L8O97KHc-TX8lwE2t_SY0KHEc9Bc59iLoXmY9A-s5dhON0U
Message-ID: <CAAyq3SbpnJZ2LEi4MY=ZOs+aEVBoSCivO3O3yKa9DN=KgqrbwA@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] mtd: spi-nand: macronix: Enable randomizer support
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>, 
	Pablo Martin-Gomez <pmartin-gomez@freebox.fr>, Tianling Shen <cnsztl@gmail.com>, 
	Pratyush Yadav <pratyush@kernel.org>, linux-mtd@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	alvinzhou@mxic.com.tw, Cheng Ming Lin <chengminglin@mxic.com.tw>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267232-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[nod.at,ti.com,kernel.org,linaro.org,iopsys.eu,freebox.fr,gmail.com,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 87AEB171FB6
X-Rspamd-Action: no action

Hi Miquel,

Miquel Raynal <miquel.raynal@bootlin.com> =E6=96=BC 2026=E5=B9=B42=E6=9C=88=
12=E6=97=A5=E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=886:55=E5=AF=AB=E9=81=93=EF=
=BC=9A
>
> On 11/02/2026 at 18:05:53 +08, Cheng Ming Lin <linchengming884@gmail.com>=
 wrote:
>
> > From: Cheng Ming Lin <chengminglin@mxic.com.tw>
> >
> > Implement the 'set_randomizer' callback for Macronix SPI NAND chips.
> > The randomizer is enabled by setting bit 1 of the Configuration Registe=
r
> > (address 0x10).
> >
> > This patch adds support for the following chips:
> >   - MX35LFxG24AD series
> >   - MX35UFxG24AD series
> >
> > When the randomizer is enabled, data is scrambled internally during
> > program operations and automatically descrambled during read operations=
.
> > This helps reduce bit errors caused by program disturbance.
> >
> > Signed-off-by: Cheng Ming Lin <chengminglin@mxic.com.tw>
> > ---
> >  drivers/mtd/nand/spi/macronix.c | 46 +++++++++++++++++++++++++--------
> >  1 file changed, 35 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/mtd/nand/spi/macronix.c b/drivers/mtd/nand/spi/mac=
ronix.c
> > index edf63b9996cf..3a9ab146426b 100644
> > --- a/drivers/mtd/nand/spi/macronix.c
> > +++ b/drivers/mtd/nand/spi/macronix.c
> > @@ -14,6 +14,8 @@
> >  #define MACRONIX_ECCSR_BF_LAST_PAGE(eccsr) FIELD_GET(GENMASK(3, 0), ec=
csr)
> >  #define MACRONIX_ECCSR_BF_ACCUMULATED_PAGES(eccsr) FIELD_GET(GENMASK(7=
, 4), eccsr)
> >  #define MACRONIX_CFG_CONT_READ         BIT(2)
> > +#define MACRONIX_CFG_RANDOMIZER_EN     BIT(1)
> > +#define MACRONIX_FEATURE_ADDR_RANDOMIZER 0x10
> >  #define MACRONIX_FEATURE_ADDR_READ_RETRY 0x70
> >  #define MACRONIX_NUM_READ_RETRY_MODES 5
> >
> > @@ -146,7 +148,7 @@ static int macronix_set_cont_read(struct spinand_de=
vice *spinand, bool enable)
> >   * Return: 0 on success, a negative error code otherwise.
> >   */
> >  static int macronix_set_read_retry(struct spinand_device *spinand,
> > -                                          unsigned int retry_mode)
> > +                                unsigned int retry_mode)
>
> This is unrelated, it should be in an other commit.
>
> >  {
> >       struct spi_mem_op op =3D SPINAND_SET_FEATURE_1S_1S_1S_OP(MACRONIX=
_FEATURE_ADDR_READ_RETRY,
> >                                                              spinand->s=
cratchbuf);
> > @@ -155,6 +157,18 @@ static int macronix_set_read_retry(struct spinand_=
device *spinand,
> >       return spi_mem_exec_op(spinand->spimem, &op);
> >  }
> >
> > +static int macronix_set_randomizer(struct spinand_device *spinand, boo=
l enable)
> > +{
> > +     int ret;
> > +
> > +     ret =3D spinand_write_reg_op(spinand, MACRONIX_FEATURE_ADDR_RANDO=
MIZER,
> > +                                enable ? MACRONIX_CFG_RANDOMIZER_EN :
> > 0);
>
> You can directly return. Same in the core BTW.

Sure, I will fix it and send v6.

>
> Otherwise with this and the binding document fixed, looks ok.
>
> Thanks,
> Miqu=C3=A8l

Thanks,
Cheng Ming Lin

