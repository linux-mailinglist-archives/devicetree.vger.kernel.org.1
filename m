Return-Path: <devicetree+bounces-245246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97250CADB3D
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 17:10:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE9DB3050CEC
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 16:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25F1B275AF0;
	Mon,  8 Dec 2025 16:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="avNpNCvH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D7E2609EE
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 16:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765210151; cv=none; b=cQr4tcxHIuiaxdj73XQ9azQjjlG3zRoQk22o9cszudqqKPfh6dvK1n/89K7gQtfTZanX/e28W++G2r2BIN3br1n8oK4DA5iLJFVg06eka7bjTGB1mA9CvOtqkNJP4dLzbxwxYFKdy9kGMb4zyQpUBihw6o/cKfjQhpFLp6Di0Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765210151; c=relaxed/simple;
	bh=RL5vla2iBJ25HcdaV0uhE6Ky6hIMB/opH7o7VaRBVYI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Atk9i8cehulawcLqb1eoJBt7/JmbLrnovRL/lKcdDT4Qee7RxNognm/CLQAiYotqi92Do9ToELfIZGiGekEfX7G6Qq9ECGESX3Mw6TjvvpChPeVMy90GbB223ZS4SY57Im+bqQJhUOBcIjd24S3mf+GFyOdVq7rjEgmag4FQ57Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=avNpNCvH; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42e2e2eccd2so3052705f8f.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 08:09:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765210147; x=1765814947; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zdjba8hBGxOnTGFRvhD4ykuH5Qe1xLO/Pwcd0PhJxyk=;
        b=avNpNCvHqRiV+/Iwnskrm8yUjLgHSA5C339cM7aO/C/+Rv/yr41JqZ+ocj6N6flIX0
         ewLIf+k+eTmsPLJ8MxXI7FS/2V9BSmjyWSGOX/VSj1uFgEpzi6+yHhzvxZSWWBjmKTqw
         sgSmUrSLKpT53ewhfc1BdHea7/dCtL+SAya+ccB3DofQTHu8U3scS+T28drtFgfZywdT
         cf56ji/hN1fEOHelsZ7O6fjD4/fDYcqEtWM3nfEGXC1Pt9X+Va54ovjGoTd5EGSo5mfn
         DIj187i7z9GCyJaNpCdPR6+TNNwMhZRBCeUBVui3E7srqZRj6pL6/t4ofwY/Fmrjcs4D
         jvjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765210147; x=1765814947;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Zdjba8hBGxOnTGFRvhD4ykuH5Qe1xLO/Pwcd0PhJxyk=;
        b=uPFLN9OHnzxETFhPeUrz9TJXeYl6w3iJKXcEr7Gf/4PiXEZEKszgXPtXQ8n8M/JVjB
         c5PdtRr7gg8S3EDyEq8djxcPoMj7cQ7VQIsJeAH0Mb6NcndBxAtQPcSROMYSMfW8mpWQ
         yAritytl+mYDJSEgyjFTeTexwEYwfMqhJCsFREl3C8BBY+EXxbI69D1gIpgFoAkm50Rv
         3k03LArSnW/sg3gJl8soDM3xZk9CMD5AdOLtRTZCODn+RsrQujrosygb899FIQ6pJ6G/
         zrr40FnkB3g55M8ms/9XRSdnUgcVdy5XL+BB943EyNsI/bG3U4j7sEBbZzsHoyJZM3Ts
         Omgw==
X-Forwarded-Encrypted: i=1; AJvYcCUMwXy1jlCl9GMjBbw9lkrJNTwo3xmv5n1wmbTWIdZ+DYpvc7cPOmeqnz5Tp0ddldVFvoLbefXTAMaP@vger.kernel.org
X-Gm-Message-State: AOJu0YzpewH4vLW32wXxFInDenqMv2TTEw22qEl+C4zu8HCoAMl0e8kg
	hB0OJi2+xKnrBgss54XC7rAn41lcCUcyVg7PyWKSbqDs+au00v7+kh84Vxh2wl742iwW6bpB6kc
	nFc/swnNS6+je6GXKDLZSuKVQVYzUuiM=
X-Gm-Gg: ASbGncv1dGhQ8l56HWKqdmKgbUhFp7TkJUvqDEJF4Ns87S0gL6Os8ortq0GJ8+BrJl3
	vK/YgpfhVg9YCzJ/h/vPQi6dyJAolcxA8atBFGU/MBhcZBUEGdWuVlsx+mFDIZkeIbie8jP39R0
	zXSlO/mC7CjGXFavttyKyV2AQNr8KjwP1lpKqfNtaosfDF6r6aX2QoPQG9ztmL//LU4uXbSc4jD
	Zx2NyPyp0YxgDeFuXTDgIp7JvCz277o6IliKU3ynKuay032FBsY/LrpxxLAiB2QdKv3bQuKVTOa
	zekY1+uTmVdSCozSc/KFk8Fr5C0=
X-Google-Smtp-Source: AGHT+IFOBf4kYlCOHQII/gMObV81xnIfGWW6V1LWfsU0I+KfwhAEK2mqEfxsYfyiN0pXHwrxrO9b8QclmlUqc870Mt4=
X-Received: by 2002:a5d:5f95:0:b0:3e9:ee54:af71 with SMTP id
 ffacd0b85a97d-42f89f1703emr8908100f8f.12.1765210147178; Mon, 08 Dec 2025
 08:09:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251208155019.136076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251208155019.136076-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <aTb2MuGSZvp9d0Al@lizhi-Precision-Tower-5810>
In-Reply-To: <aTb2MuGSZvp9d0Al@lizhi-Precision-Tower-5810>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 8 Dec 2025 16:08:41 +0000
X-Gm-Features: AQt7F2r5YSD8A41drLddmPekNoFw0-x2T7kYVaWOfrZad_IV3a03vwBr52GNX_E
Message-ID: <CA+V-a8tuP-C_0=atz0WXtw2mqNfjsaYCkDdsQE3QwyhFWTSSJg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document TI TCAN1046
To: Frank Li <Frank.li@nxp.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aswath Govindraju <a-govindraju@ti.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Frank,

Thank you for the review.

On Mon, Dec 8, 2025 at 4:01=E2=80=AFPM Frank Li <Frank.li@nxp.com> wrote:
>
> On Mon, Dec 08, 2025 at 03:50:18PM +0000, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Document the TI TCAN1046 automotive CAN transceiver. The TCAN1046
> > provides dual high-speed CAN channels and includes STB1/2 control
> > lines.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml=
 b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > index c686d06f5f56..c53c4f703102 100644
> > --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > @@ -23,6 +23,7 @@ properties:
> >        - enum:
> >            - ti,tcan1042
> >            - ti,tcan1043
> > +          - ti,tcan1046
>
> according to patch2, which is the compatible as nxp,tja1048. why not allo=
w
> ti,tcan1046 fallback to nxp,tja1048.
>
> So needn't change driver code.
>
Agreed, I'll do this change and send a v2.

Cheers,
Prabhakar

> Frank
> >            - nxp,tja1048
> >            - nxp,tja1051
> >            - nxp,tja1057
> > @@ -84,7 +85,9 @@ allOf:
> >        properties:
> >          compatible:
> >            contains:
> > -            const: nxp,tja1048
> > +            enum:
> > +              - ti,tcan1046
> > +              - nxp,tja1048
> >      then:
> >        properties:
> >          '#phy-cells':
> > --
> > 2.52.0
> >

