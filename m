Return-Path: <devicetree+bounces-267222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id nrZFOdrqm2km9gMAu9opvQ
	(envelope-from <devicetree+bounces-267222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:51:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 782B2171EC3
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:51:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CDB9E300D361
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64CDE276049;
	Mon, 23 Feb 2026 05:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k6ki1njt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B06BA21
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.174
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771825878; cv=pass; b=kbk5UCtYfYi887QfMHFxPqMW6X20IIhOUNkRiEKlUaFHrKvwhFHUNNXo61Z/7EzYAeXzqU9KxlchmTxB3WOCXqCnEs0lS4trmUDSxkHSwzFuAmnUGKCaMv37VO7Vzk2ZZrguHbrwgzw3zCdu2EWcxOQAW+Ir4DgE1JHZb4vRaxk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771825878; c=relaxed/simple;
	bh=0iSjOKjfnSm9jmrOM8nVftPpGT2fAo8FgGTUjJmNuiY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=vCGblnsBioAljQ1vgjoFLlfNHFe9XStu5oL01RaXdeIX/A4BsVpDIsM6tbVqoZG64JJDV33AwbYYEZfPNlp1BGQcfK0GjLly2Jyhpv+DaTHYQNh1RI1YurBdOzccgSzzwtVW7B7QM2TFVNb2wQUem/BFJGxFaXWt/wWPU3NcoLQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k6ki1njt; arc=pass smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a8a7269547so37792865ad.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:51:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771825877; cv=none;
        d=google.com; s=arc-20240605;
        b=QaNkkE6lKqi4p2ZfLx7eJjRkm3p3aL9n36jDYwYe3c2WO+OQC7sAeHylT+uWpGvRLL
         PzjnGCxHsiaYutCW6FX6UfddYPLZA6dvA0SplWVCzXb8wijdUBXMrfCY8/YTkzhgXBgp
         rrJu5m2VI89vgftHVdLIzcuGzjEPsAl0Au/5jfpKSZRqiu0tFKchSUpbDxf/de7k0XsV
         GZxc0cqldwChWBCpP3GMCc3boHeBszRW3u6GDi2tADRTrhrNVZ7dUMap4+FOY554rjpT
         THa1TbuapTBIOWLCzXdvDrQtYxmOG7Ow08xAaHebKGyy4kKW6/1JrnpyxuIKcW0BJF+K
         vu3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qxPLT6FJUuQxpXNq9IQlk3p36a8mKIJlTKN3Ee1ugFE=;
        fh=Nh7CkiWK4yNxegSL9ZYa0pgRzcG1Xr2+g0wcvCJ1Rcg=;
        b=TXoAX03pn3U4N2uc8Xuy5dVGTOtSZPdkn7lzlYA+UovAeAl3hs3nCZmHrSeqY/dTwW
         Yw3F/ebN9qjZDSpdZv299ybjKf02QSsLP2odTkr4elOw3K6y0VVafQPFyvCzTeNf4u0H
         EVOSt2IVF9jlAnfQRx62bbTZbOyB9ktSi4LM5eZXD8/mz+9ZkqXzfF4WGYtVom8GflKF
         VPL8RxshslbD4z7Vom/merCkk2xfySDbRYATr8S6mvxZQPYSEz8E62LYumwd1eWU6lbg
         /5abZtjgRXNSiZF6BjJ+tI4awvNOejR2fdc3IwnV7hTaB2fjnsCG4lK553gBKpYBvxC3
         JFgQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771825876; x=1772430676; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qxPLT6FJUuQxpXNq9IQlk3p36a8mKIJlTKN3Ee1ugFE=;
        b=k6ki1njtpTzSVVDC4RNM1sKpYvMuEA6GFRw8RuuKljcBmPFS5o89lbVE/LCU/ne5yk
         3e7YgoYuSyE3jewXC6sIb1rc9AIM5l4qCQMp7SkYgRojW4rwF6gWykn9Hp/6YmH/AxIf
         d2ArRi0PV7O7EoRybrqTO5gucKV+2OBO6Bya3CQqGgXd6zNcoOEytr+UcCQ6VcpwOgop
         /XlLf29/cGJR2kJr9KdHXwa2G6lvHL+g7OCMbXWCkMjgbpuLmbXpPaUKnG/1e+ziuDhS
         gT/pEewkshyZN5X4Rw5UHFDUSgrcsiK5bFFfDFXI2I60HnYkscG/7BFAWokCYIKOuUfk
         caeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771825876; x=1772430676;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qxPLT6FJUuQxpXNq9IQlk3p36a8mKIJlTKN3Ee1ugFE=;
        b=LNX9yH/l+zb04V/Q4H0tfoNPbsFGg5kxcf0xRFqlK+aavVJ98X3xIGP7XgM5eKU5QU
         AGJKuY0nvE19eGCG3JrMarIdhiy7XOcXT5bkT6WQzBXk4Tm3xcvJb/hPCCEC208U1t7n
         0BoRkL83O874p07GbCGaxzrcHOFFnnZXWB+qKcgT+ahFr4lUqdLOK1fSS1Cg2Yf0Gryc
         MclqpKVesV31oaSKprrlzp5C5DCMO4pMakEeJdBCgE+8soZs/BLiq1bTFFVLdHYgiYDe
         J/ymc1aSxKidIFrqXBwSlu3E4Jo0HaHQZKB3nM0lMvQhaIDs5kDFFVWI3DATPbga6YQS
         a9TA==
X-Forwarded-Encrypted: i=1; AJvYcCWFIjKmW/rvcM02kty1tYuGsRYkEvhJoEVU0R1q3KEMg6n9vnn8LU9ma8+Ad1Zjucj/C19CRlCHJuKn@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+nG0phggHw/k5W6rqiB8ohLE5DdZYihYqdmD4RZHNLgmQobO1
	Rt3ii47eBEaSd3TqvctZU2h4tDjbz6mnqqPYc2P9jpe3tUacfwqrcVDZG7avvVTgig+bo8jHKhg
	dH++aUZyc+eApMOanMNq6J/V5dYMFWKM=
X-Gm-Gg: ATEYQzzvdXA34kWMMD81qnBJ+i6i9c8xyZPprcy6lVBfBswWIowDiczRVONgM51WO9T
	xHY6OVjPKQ48S2AGhCCmclYGzMsRdAvdp06MUxUhX/nnr1Qr0cXDcx/bnDa+mlfCI9RKdBYZOGW
	KdGku4rYpAtUDNVObjWutJ2oYXQkxI4m5dLRBwrnzuiPvv3OU9vzbU81bJZTsAwskVuLsJhSWne
	aiDty2nqHl0MV7nvyMWMH5HWSF29ahzoAQsDN63cpFVEyc9GMk0uqxgAFe2RM+RCZMGL6uLgcoM
	Tb0rcXg=
X-Received: by 2002:a17:902:cf4c:b0:2a9:5b48:2b50 with SMTP id
 d9443c01a7336-2ad743e281bmr77336595ad.3.1771825876496; Sun, 22 Feb 2026
 21:51:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211100553.907585-1-linchengming884@gmail.com>
 <20260211100553.907585-2-linchengming884@gmail.com> <20260212-white-numbat-of-variation-cde4ae@quoll>
In-Reply-To: <20260212-white-numbat-of-variation-cde4ae@quoll>
From: Cheng Ming Lin <linchengming884@gmail.com>
Date: Mon, 23 Feb 2026 13:49:23 +0800
X-Gm-Features: AaiRm513jeFJBTQ3DT7B0x2d4MCAUMYdvvOiqa_qqFxhHg0EGa152Y0bd04BJsg
Message-ID: <CAAyq3SZGfm+3e2cXTKqKBrgk0eb+f5ytCw_49-k=0ipZbqKHoQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: mtd: spinand: Add randomizer
 enable/disable properties
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267222-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bootlin.com,nod.at,ti.com,kernel.org,linaro.org,iopsys.eu,freebox.fr,gmail.com,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 782B2171EC3
X-Rspamd-Action: no action

Hi Krzysztof,

Krzysztof Kozlowski <krzk@kernel.org> =E6=96=BC 2026=E5=B9=B42=E6=9C=8812=
=E6=97=A5=E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=883:33=E5=AF=AB=E9=81=93=EF=BC=
=9A
>
> On Wed, Feb 11, 2026 at 06:05:51PM +0800, Cheng Ming Lin wrote:
> > diff --git a/Documentation/devicetree/bindings/mtd/nand-chip.yaml b/Doc=
umentation/devicetree/bindings/mtd/nand-chip.yaml
> > index 609d4a4ddd80..2fcbc4b73e95 100644
> > --- a/Documentation/devicetree/bindings/mtd/nand-chip.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/nand-chip.yaml
> > @@ -67,6 +67,14 @@ properties:
> >        the secure regions present.
> >      $ref: /schemas/types.yaml#/definitions/uint64-matrix
> >
> > +  nand-randomizer-enable:
> > +    description: Enable the randomizer feature.
> > +    type: boolean
> > +
> > +  nand-randomizer-disable:
> > +    description: Disable the randomizer feature.
> > +    type: boolean
>
> Read again feedback from Miquel - two EXCLUSIVE properties. You miss
> "not" with "required":
> https://lore.kernel.org/all/20230118163208.GA117919-robh@kernel.org/

Thank you for the review and the reference link.

I understand now. I will add the "not" with "required" constraints to
properly enforce the mutual exclusivity for these two properties.
This will be updated in the upcoming v6.

>
> Best regards,
> Krzysztof
>

Thanks,
Cheng Ming Lin

