Return-Path: <devicetree+bounces-279371-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPZ6EAqhwWmFUAQAu9opvQ
	(envelope-from <devicetree+bounces-279371-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 21:22:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC662FD240
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 21:22:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7B06F303275C
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 20:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1353F3DEACC;
	Mon, 23 Mar 2026 20:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cr9tSUZE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f43.google.com (mail-dl1-f43.google.com [74.125.82.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA6336D9E1
	for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 20:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774297257; cv=pass; b=J/QDGJZws/GnZXOaPBkuHXZzSzx0hdG+avq3y4j3a+pTFRm8aQkgzClGTPnmMr8GfV8akXJgvem1ELoVwbFQgOuBHHA2szkTBvkHY3rEI7F2riTXSneUfn755z2se+4ItRCo24io0oJYtpF84QjMCJWkbpTqa0lgY1KgwHgpk5w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774297257; c=relaxed/simple;
	bh=jtHo4zFglLi9NA2q+v0xNbZU3hxJXWVRVktvnGWVBk4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hqV76pnMZCaEPGMrArCV8H+4uf9LC99500WV/ixRCmLeGTdYV0yyLo6h5kKDcMlGmAZQxQ7TpCfQ0lKD+meYB+lZk2ggET8aqUpSzZwHMbK//DMG5HPUA1EvxQzHmUrXI7zvEfq2nBBayGIa15khUDMTASf7FVNycaCIi1kq5M8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cr9tSUZE; arc=pass smtp.client-ip=74.125.82.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-1273349c56bso4379714c88.0
        for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 13:20:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774297256; cv=none;
        d=google.com; s=arc-20240605;
        b=R6sjQVLEWUEdYJ13NwmjvKC7HRLNCaxbnuyf3pfbfLdpfPfvsb1bn9AWgCgWWTKPdj
         ZADBM+LB1YuWuhcxvCCpDQxad5UI/e6jIdGBL8SLBLE1l1yBVd79eTSTU3ETfKEiAj/d
         GS5LMl9k5YngpZ7SP3GK1FCWixnQtJGbyDCcWPyosACzSav4vDfdTx4IDwASyUU/gvhm
         NjATgoJbFrxvBcdLmM2E+Tmpc7x++zp6xNwkENa/x6DgzGI4HuaZW7n+eDp1mmSaRAIk
         WUSg1OTRwo/yxDcbuDMKVYBz/7RjE353Udt9pAo7HnggVnxya/eHTkp6X7FyHTT3SIW/
         4hgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wIVEHRZaJfFWfmB4lK9YCeE4pyi2N0slcN6uptbPhEo=;
        fh=XXby60Xfdq3WJwN6ngzG88NpQG0NQmfPJYBcKYD5qhE=;
        b=CojhOg6InPby4TJRno4pwvcl+tevP0mpecxlnpfl80/L25xGKrL6Xm8eXcP+dQ6q/t
         czPSMhephmEIpQqKiIsjiIN8WT2yr4ie96cYqjY9Bn0amlHtfRnXdqi8B5njBeZdg4By
         CVaT7QGvtxlsNEHMcSXuT6OHOB1/LSmaMC/YLsLV/puWLwK45DbZwR39yvhL/r7KZ+9a
         lOSAd/uLE79ye58SVd3Yu90fczMCY+hN4jOAtChM7p9qV9YZ/RpVrlZG1ecxmYZl6Y4D
         e7qpX8SNkcemFPbfHPyKRYEJO3A5agk4+F+YA/FYPKIx8OZ6ogWF6LPySDtM/ejeIbWC
         WHHw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774297256; x=1774902056; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wIVEHRZaJfFWfmB4lK9YCeE4pyi2N0slcN6uptbPhEo=;
        b=cr9tSUZE1Q4WN6u8K/G/dyenxLA39MrMLaX5Gb40T+7ajb+rBGoP8cFmBCMdeedlrT
         /WrQkvwT68768WAStPkB+NE4cOAxZtz43YnhGceIWNMkB9gt9tCkxJT35kB+lR/UcwoF
         HB4NrfcPu/WJOKAUhJ7hDQHxfYO4Rt+guloqmhWaJ6BGsUau4Kn+0TfBAp4+qb67wEoA
         lhy6/6J12U0iBa6NV0QCozbvch1MCWxVf7Un2Su2DIiZwwc+feOkXIJv7wze405q2eZO
         AlKqGRgtNy6mQ1Rk16XcGx785jMfhWrZmArIajdTaZQJbs9UPD7u4HIe52xyPgBSxT8i
         2Cgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774297256; x=1774902056;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wIVEHRZaJfFWfmB4lK9YCeE4pyi2N0slcN6uptbPhEo=;
        b=RO6jWQiM9VChQX/zAuTBTIhdYU4uZ0Wq8KHFF8ZgSLYqwfo9Au8cYexvDoOcaoVaQ/
         AekZQkfe3EGcRl7llJVQSh3PUVubzyXq5uzRm9ZKRJbPsmegC+beyGxErvifraWvg/+R
         R5jqtb0QHYrpRyJtj9BPQxluWMrz55h4/0V6opzmrXbsCfs3EJ/m8KIxorhkrB066Wd9
         7c+TAcM/5EWifJJsfUkPZ0FyOTumlhssGF8qcJzdGNI0Hrnk3b3pZ052fxl60GTPWC1Q
         hXQgWs1YR0O4PPooSdg8AkJ9rwxf4s93BY4sEmXtPveOImay/9r3/mrXdrhlXhpQsvCA
         sERQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgj6ut2CP8n9ezb8lJ5Wrog418PqjnkkgO+ks4KJ+vRvJ/4f1tLlP63/HhVoMhD3q3wzYDXX/YkV13@vger.kernel.org
X-Gm-Message-State: AOJu0YzNm2w6BkY9SE11Jzro3hEmDNyTLT/YqRhhxcMhBKEawoo1S2u6
	sUVb1Q2XGvdL5y9HIO8zYnRMbW2/K7cXNh8K0FyzkrLnYl5RUr8+iYYe0RG20mGHhak9Kgx8YMH
	5L6mMVpe+RG7lPtkW20cZclawhIDFn8E=
X-Gm-Gg: ATEYQzyMRZkFlbzGYanHBbkE2gw7dbnue4AsVrmU6s128S27uhmc06Nqd0tFQ6zOMwn
	IQukfbUJjYQ5dyuAniCNDlsDqVFJOguLUUjrMfzMAWZ92cqWmUSPrGLv4zTRPpygmMThC+FGyTx
	xagsQbMn6bRdUNPqLSFUyZEQfPuDzJRRc3J1ut8zVjGMr9CZCTpmz/EM8AhmqWIQE4NC+sXIJHA
	iWEsQi8obZUxbOPhj3oimtIxjdVden7MZjC95YNWskMZvNAYwxBF24iI0T6jqI4249xBYZQwFS1
	kpqKzmVrxcPcQi2pDYmrI7kDCcWuaTa1If8anNJsYzoS5z6yOrc5Upc8Yn7A2quW58K1H/EmnIg
	3nKIObI6TvbM9ivMnmrdiDq+eU1OSbuH0
X-Received: by 2002:a05:7022:6713:b0:128:d1c9:3633 with SMTP id
 a92af1059eb24-12a7265f60dmr5589793c88.13.1774297255634; Mon, 23 Mar 2026
 13:20:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312-imx943-rproc-v1-0-3e66596592a8@nxp.com>
 <20260312-imx943-rproc-v1-1-3e66596592a8@nxp.com> <20260323191529.GA1054724-robh@kernel.org>
In-Reply-To: <20260323191529.GA1054724-robh@kernel.org>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 23 Mar 2026 22:20:42 +0200
X-Gm-Features: AaiRm51XzKk2n6IioMvqGKwYdcIMaisSl_WziBcqMgfR8j04ziwnDez8lFdfqYw
Message-ID: <CAEnQRZCbGPqBBKjQiGB_pRj_8GYMFXXXVmpfsU0_AOjo3J5cPQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: remoteproc: imx-rproc: Introduce fsl,reset-vector-mask
To: Rob Herring <robh@kernel.org>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Bjorn Andersson <andersson@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279371-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[oss.nxp.com,kernel.org,linaro.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: DDC662FD240
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 23, 2026 at 9:16=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Thu, Mar 12, 2026 at 08:36:56PM +0800, Peng Fan (OSS) wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Cortex-M[7,33] processors use a fixed reset vector table format:
> >
> >   0x00  Initial SP value
> >   0x04  Reset vector
> >   0x08  NMI
> >   0x0C  ...
> >   ...
> >   IRQ[n]
> >
> > In ELF images, the corresponding layout is:
> >
> > reset_vectors:  --> hardware reset address
> >         .word __stack_end__
> >         .word Reset_Handler
> >         .word NMI_Handler
> >         .word HardFault_Handler
> >         ...
> >         .word UART_IRQHandler
> >         .word SPI_IRQHandler
> >         ...
> >
> > Reset_Handler:  --> ELF entry point address
> >         ...
> >
> > The hardware fetches the first two words from reset_vectors and populat=
es
> > SP with __stack_end__ and PC with Reset_Handler. Execution proceeds fro=
m
> > Reset_Handler.
> >
> > However, the ELF entry point does not always match the hardware reset
> > address. For example, on i.MX94 CM33S:
> >
> >   ELF entry point:           0x0ffc211d
> >   CM33S hardware reset base: 0x0ffc0000
> >
> > To derive the correct hardware reset address, the unused lower bits mus=
t
> > be masked off. The boot code should apply a SoC=E2=80=91specific mask b=
efore
> > programming the reset address registers, e.g.:
> >
> >   reset_address =3D entry & reset-vector-mask
> >
> > This reset address derivation method is also applicable to i.MX8M
> > Cortex-M7/4 cores.
> >
> > Introduces the optional DT property `fsl,reset-vector-mask` to specify =
the
> > mask used for deriving the hardware reset address from
> > the ELF entry point.
>
> Why can't you fix the ELF image to have the right address?

This is a good suggestion! Or parse the ELF file and figure out the
reset address at runtime.
>
> Or just imply the reset address from the compatible? It's fixed per SoC,
> right?

This won't work because for the same SoC depending on where you want
to boot from (e.g ITCM, DRAM)
the reset address might be different.

