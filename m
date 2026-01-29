Return-Path: <devicetree+bounces-260895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLKDOFZke2nDEQIAu9opvQ
	(envelope-from <devicetree+bounces-260895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:44:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB51B087E
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:44:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3E3F33004D3C
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3480A30DEC0;
	Thu, 29 Jan 2026 13:44:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D55B2868B2
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769694292; cv=none; b=eDRZKZBQ0l2D26usJoyPWyvP147FQ7cez698lYghInfpQeYcdozzpnEs6EXyPDRgyMdpkyRYy+k756GSgtpBb707C5ROHBotDvNFGmVdBeAyAZxF48p/6vBiF1BdyQ+mw+46b7Q+ft0PsI0jwx0ztUTGytf77H/fpQ2gklc+lc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769694292; c=relaxed/simple;
	bh=OXzBgdseIChVS+vJW71bIGbvoMjbawETEFTQgROB3B0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Lwzml6qbku8jEzhQdYyE+fgwk3jwwSIUkS/lOTmpome+DZBmTSMVByOQH6+QIc4K4UF/bOIiMdFm+a0KbmuQA+T1D4CeQXCNJBsQ/+T43T2fn4hmPGOCEzpf0bJ8k4g9jr5IMeal3BhkNHPq8faE5URz0KELQp8OZdREh8QYXos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-559f4801609so247410e0c.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:44:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769694289; x=1770299089;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Si+kB15qA+G+h2zKRmC1fubtEccV/Y2DT6Bt85BeRM0=;
        b=LyRCr2LVGCO03l3lPOa2OX+43g+30Pi3ZueOTmDJbPnljsBTJNvJuwPx88YlwHvwn4
         jlSQHFJrzc/YBhDYDI2q32NXNPWvrdJDtNcyaa+fuuwvEiGtTEXBeljw2Rp/lL9o2wNL
         HMSSXw3zvvKe4lbsXz0r2wbdK3RtsM5oLQKyk6HI7liWuZeAFr7Eb4aoavNQzvw8AMD1
         dPb6DylrHcuMuQG/LH/3/9J+uS0Zu/6/JNiXkTZBeQUr70Q/ya+M6nkOvyNxXutoHenL
         wk6qjAW2zFK8HpWXsm0iUkYSRjm6yjpohOlur8XiloE150RoG/GrwlfC03TDupa6ky+v
         dBZg==
X-Forwarded-Encrypted: i=1; AJvYcCUtO2wATB4mjOhlmxm/W+8JRGTsEyrEt1HTxiSXozUr/2Eo6ki8bhoNcMhtYmLC/VVi4/H30EfKWw5h@vger.kernel.org
X-Gm-Message-State: AOJu0YyyogvXSfbtSv5v3YzJ5mk0FmZl9qIekXknG6lB41//sgVdHYCC
	qPx28l975D5xUa5IY5fVM9lgDALgH5rV5ID2A3epNRuQ3NhaTWdSCalqIaErsjbH
X-Gm-Gg: AZuq6aLotfEVEnthTR5eQGutIWC77kO0TqF7bvHWRWnId9ZjZL2ixfjqF8xOC9XjizO
	nHwAeZh/tqsnjsP7td4Va0jCia5Lcsi/mgJI3aRmGmqFxeQTCShsMgwvaJqzui58Bo9gBqpcZXp
	MaKkD9dC/mVc062L6XEtst+NjofgFL7JrnQuCewHTg3k+2FgGq32KxleiwGpSwZ+yOOZ4S0xDi9
	nciUh0I/RSx6sF83yxoAnXxU+IBby8IP0wYAnUU2VTrz/ZKKYzGikxZfV3tLr9Vw19IL5zPCnyh
	0eyQbKTYsXnKQP+9H+9ZXOJ+kZ+v6eD9YnTHjke7OHLhDBMIKYGvbZdQ6jxUn7OiNa85cTYd1XR
	RvuHRKstU3VN3wkY5k8IZxr++nFTvAFgwrzQKbwBv3ePllyPQ5wV8kBzLInmPCIhF/RJ9fomWgT
	IlMFOyQ5HM+QB0tpwCNjbZdMXuRBeTcjAEYqp+xnTUzCUyl9hdol/OAFv8Qp3gifU=
X-Received: by 2002:a05:6122:2a44:b0:563:7816:ed17 with SMTP id 71dfb90a1353d-566794c2298mr3167093e0c.1.1769694289189;
        Thu, 29 Jan 2026 05:44:49 -0800 (PST)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com. [209.85.221.172])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56685b0360fsm1175810e0c.1.2026.01.29.05.44.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 05:44:47 -0800 (PST)
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-56376c3e866so693881e0c.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:44:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU4s8Am5z1Yaj7/MqAsybeg3lgQWnC72cdm2LlVXFt3uUiV/Qw3e2NjvaicwgXka2LizW2JzkIdh4km@vger.kernel.org
X-Received: by 2002:a05:6122:4d89:b0:566:2fc9:6c89 with SMTP id
 71dfb90a1353d-5667959f794mr2859782e0c.10.1769694287318; Thu, 29 Jan 2026
 05:44:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122-schneider-6-19-rc1-qspi-v4-0-f9c21419a3e6@bootlin.com> <20260122-schneider-6-19-rc1-qspi-v4-14-f9c21419a3e6@bootlin.com>
In-Reply-To: <20260122-schneider-6-19-rc1-qspi-v4-14-f9c21419a3e6@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 29 Jan 2026 14:44:36 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU1QV6Ww--D8kycUmL_sFen_Qf+SXHAZJnF31J0NRtsAA@mail.gmail.com>
X-Gm-Features: AZwV_QhJgRHOyRufUmk7eheHuZ8kMGAesh49iuPJzs_rWC6vXd0jVMaBYCvLTBM
Message-ID: <CAMuHMdU1QV6Ww--D8kycUmL_sFen_Qf+SXHAZJnF31J0NRtsAA@mail.gmail.com>
Subject: Re: [PATCH v4 14/15] spi: cadence-qspi: Add support for the Renesas
 RZ/N1 controller
To: "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Vaishnav Achath <vaishnav.a@ti.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	=?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Santhosh Kumar K <s-k6@ti.com>, Pratyush Yadav <pratyush@kernel.org>, 
	Pascal Eberhard <pascal.eberhard@se.com>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,glider.be,gmail.com,ti.com,bootlin.com,sang-engineering.com,se.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-260895-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sang-engineering.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linux-m68k.org:email]
X-Rspamd-Queue-Id: CFB51B087E
X-Rspamd-Action: no action

Hi Miqu=C3=A8l,

Thanks for your patch!

On Thu, 22 Jan 2026 at 16:14, Miquel Raynal (Schneider Electric)
<miquel.raynal@bootlin.com> wrote:
> Renesas RZ/N1 QSPI controllers embed a modified version of the Cadence
> IP with the following settings:
> - a limited bus clock range
> - no DTR support
> - no DMA
> - no useful interrupt flag
> - only direct accesses (no INDAC mode)
> - write protection
>
> The controller has been tested by running the SPI NOR check list with a
> custom RZ/N1D400 based board mounted with a Spansion s25fl128s1 quad

"RZN1D-DB"?

> SPI.
>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.=
com>

> --- a/drivers/spi/spi-cadence-quadspi.c
> +++ b/drivers/spi/spi-cadence-quadspi.c
> @@ -110,6 +110,7 @@ struct cqspi_st {
>         bool                    apb_ahb_hazard;
>
>         bool                    is_jh7110; /* Flag for StarFive JH7110 So=
C */
> +       bool                    is_rzn1; /* Flag for Renesas RZN1 SoC */

RZ/N1


>         bool                    disable_stig_mode;
>         refcount_t              refcount;
>         refcount_t              inflight_ops;

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

