Return-Path: <devicetree+bounces-237601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5ADC52482
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 13:39:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E6793ABC41
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F8A5334C2F;
	Wed, 12 Nov 2025 12:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SuudwzXb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A23A8334C1C
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 12:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762950786; cv=none; b=cSouA6tsowbUxR7ClIMWLNVPhbVryRSZOb03VBFBPI4Sr1exJMiC6KAggRwEt45OYeNXXSC8L8O3shCIZp1DD39hTQ2OR3ufFyCAr+6rkJnvvC+Mr6zIXWCvGCAtd5uSZo54GFEOa/8BzbhAu/OcvSrfNZqyoSfIm8PQE+arLFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762950786; c=relaxed/simple;
	bh=GoygDqYWw5QnBxpPn+aUvq/6hrUvKX40S6nIeuv1rgs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hnvBKI4Xkd6EysK5C0xa0hdmXawEo6CToAL0D6CV6DZ+chOyoA+a8nGjjK65ZKpeyqSkt7JD8vw6Z68c3ouwxTkAxGUsitZ1i9JIPbaOiSwJDxNHE4GYmUhs1excU4qLm+0YU+HPgVVNIxLgP7vXq7RDmJZbbpIIq7TYahTemPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SuudwzXb; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-298456bb53aso8454265ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 04:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762950783; x=1763555583; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IuUTav2xUOTbkma3ItG1F52J0EZPCIhhyycd80cfuj8=;
        b=SuudwzXbB0v6JSx67ng2dfbXzE+xY+c5cdHloekkTD8ctv3xkCMmMq8Jucanbjkz/8
         mUEKlWwQecKxw9BYXzXwBI44Z4RUeR55NZD4czVOLyLYrE4brI46ReJlN3iqPyNUvWky
         nrxD9H924m7Uu1a+pySD6/IaAOp6RNZJUcV9XmwOt5nPeOZM0//AAq3RLP6gotkJ62n3
         xmlmDV8Y8tPQbY4esp6I8RwkDHyunKHl3G7xcBlzNrDuqPnqwi6t61Mu+G/cgq2cdL/x
         txXVvnUFp+oO0FglpFHoXhaWFjRh0gqvsCsAo+meofQxrszNyszo/bjNNgvAZqsWpsXi
         +RTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762950783; x=1763555583;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IuUTav2xUOTbkma3ItG1F52J0EZPCIhhyycd80cfuj8=;
        b=KXw2+gkRx167W3hwp4Vw90McxwzuGmHzoUNB/dt4bHw0PI6YE2NAeeeWKpmu58Duaw
         cH8GEe7qhtGXIa3Y5WdFr84kWuXoHs7OpyzoFwA/LD8nUHU0VyOmaq0clalTdjG0g5R3
         lfUIX9UXiAhvSTxSqXxl1S8lAcUCIyHuV+7bqCmX9E4t882P4VsAiLp7WB1cCcdgZ2nR
         llM0y3SFzQP6RdFGdXkvDop0gPRI6u+wl0j7hIG2IkTGmITV9AIxKx7/mzewbGxt9X9S
         wMbO5n9S2yCVLRUPu89DyOVKqrekOq+gZwkf7+atv95sXrA/Gc4FC3danU+M4qiXA/2X
         +SVw==
X-Forwarded-Encrypted: i=1; AJvYcCWD0c2FeML7DarNdIHeAjxLr7RhsAMRkq5GjGRYBQ0h4spQa23uSKjtM/bYUK9NMJdZdtw/69kd3ROn@vger.kernel.org
X-Gm-Message-State: AOJu0YxrTfhJWX+5/Q1Cx8SHcWeKZGtYQzRjJuJuQGoZ55Qujt3Ah2Ac
	Gp+dyLSoyOrgX5MN5tQC7BQW/U9vRvQ0PIaqRq7l3G8g2MMwU5DO4rVczap5ESaZ++zwWsgmdLY
	97vV/anlN2w++Cxyk3iROVOeFdnxx76Y=
X-Gm-Gg: ASbGncv6UhTNZ69qp0BFCdODP25HiC/CHO8d15POHG2hDznVAbm4WtbiCokTu+6yVH8
	s9IgDRcfMwG+sk2j79Y7W8/Eq0zBtFY7Gd0E1P3dQynIewdb7Qk/qLGl/klU6MP4wSQQ7g7fxZY
	m/oMCQ+KIlpJdAS1SQGNp9WVInI8VtBpHHr8WtwMwMkM3EWvTkFulbY7FE/5VQ3ofava/9tPZb4
	DWKMaGr/lmXUo7ZX/rC/YfCth20w1iK2hF6IK5NnCI7yBrb1OezV8/HXg==
X-Google-Smtp-Source: AGHT+IFabhPWRSsuZsSo5sbgc0lLZtsJguRmqpiSDLmiPKtI899emQH3LjICEzz3+Agz/sH6qEDUHd1ILnm2Zjkbos0=
X-Received: by 2002:a17:902:ccd1:b0:258:9d26:1860 with SMTP id
 d9443c01a7336-2984eddd8e8mr38233045ad.40.1762950783418; Wed, 12 Nov 2025
 04:33:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251109214515.121742-1-rpimentel.silva@gmail.com>
 <20251109214515.121742-2-rpimentel.silva@gmail.com> <9d48a54c-0585-4524-b9d5-30696f5ecc8b@kernel.org>
 <CAEnQRZCvpXzGt=7NGv7-s+y0gvOg7Jx4OqbfbW3uv8jDp-jroQ@mail.gmail.com>
 <CAOMZO5CU09fcBB8oUOO=qC=Du3Q9gnJOQacK=6v+pnSQViex3g@mail.gmail.com>
 <CAEnQRZCHKemw2YVT=WVJvUMr9CCWoZ3MORt_mU1V-62C53n-3w@mail.gmail.com>
 <CAEnQRZBBJ4PGDOk7hBP_qsk7bBiec8pHb0DYKs2mhOAahNyKww@mail.gmail.com>
 <baafb460-fb65-4cd2-9911-89d828199d9b@kernel.org> <2e160fe1-bcb2-41cf-817e-ac2a36959b16@kernel.org>
 <CAEnQRZDg0yAjR-a-4J2ZKAjh3mm8NeQCA=o2kyNJtXMAFCMLAA@mail.gmail.com> <56530f64-6ddf-4d2a-a079-0578db260449@kernel.org>
In-Reply-To: <56530f64-6ddf-4d2a-a079-0578db260449@kernel.org>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 12 Nov 2025 14:35:26 +0200
X-Gm-Features: AWmQ_bl_E_pJAreACwvdhcI2KJRqNKpXEYmnMwMcnpAuTrSvxvSsy1R2nTa94KY
Message-ID: <CAEnQRZD=h5qOC445U3_+HPh7aCE8TohSpZmg9hgkRE7mg5HUpA@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: add support for NXP i.MX8MP FRDM board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>, Rogerio Pimentel <rpimentel.silva@gmail.com>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, 
	alexander.stein@ew.tq-group.com, dario.binacchi@amarulasolutions.com, 
	marex@denx.de, Markus.Niebel@tq-group.com, y.moog@phytec.de, 
	joao.goncalves@toradex.com, frieder.schrempf@kontron.de, josua@solid-run.com, 
	francesco.dolcini@toradex.com, primoz.fiser@norik.com, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Xiaofeng Wei <xiaofeng.wei@nxp.com>, 
	Daniel Baluta <daniel.baluta@nxp.com>, Joseph Guo <qijian.guo@nxp.com>
Content-Type: text/plain; charset="UTF-8"

<snip>

> > We (NXP) immensely  appreciate individual contributions from everyone.
> >
> > We need to be fair, the v1 of this patchset was taken from NXP
> > downstream without
> > respecting the Developer Certificate of Origin.
>
> No, it wasn't. Please read carefully DCO. The chain here was not
> correct, but that's the only thing.
>

Indeed carefully reading the DCO Clause b) you are right.

> >
> > E.g there were commits pulled in from our internal tree without
> > keeping the S-o-B tags.
>
> Read DCO, please. It is not mandatory to keep 3rd party SoB. It is
> perfectly fine to skip it, if needed according to (b) of DCO certifying.
>

True. In my understanding though if one bases their work on others work
they should at least keep the S-o-b tag as a common courtesy.

Commit messages explicitly says that the work is based on NXP internal
tree patches.

At this point I leave to Rogerio's appreciation on which S-o-B flags
to pull and how much
of his work is based on NXP tree.

Thanks a lot Rogerio and Krzysztof for helping move this forward.

