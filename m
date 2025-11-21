Return-Path: <devicetree+bounces-240952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7679BC77F8D
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:47:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2244034F26A
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 08:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0BD8280CC1;
	Fri, 21 Nov 2025 08:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="WPeS3YxE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC3F23956E
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763714820; cv=none; b=YlhHIRkwoPZ8KK5OVXuOB0OfXjNM0WvNq+XkVH2/46j8W9DwcVEFIn5MoKCFeSOvuiJ/biYFLLYwzgvpugxd21EBWlNT31IO0CSeVBBviN1N6RN+9d7W3M4Vmy5DBFxzvQCtb+39pODtuZcV9vW1GwRrMPiK1ZF6nhaBBzuhavE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763714820; c=relaxed/simple;
	bh=Flir5tljPSjxxK6yY84qRrxreOuDD4ZmYqr0Soj0ZNU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LQoG6htgA4d0QHYMdAocUtKbhQfrzraYKasyb2djyDRYDlUofp8ICYgSGj1avE9Oxf0izdKDHSyDR7dwxlHVNXo/7vNOamh/gg9rhGb0j2pSurEpznxid5ZKD08OZBPDmUsCigpYRJrNAHjz7AZ/tnhRhUZ2xatuUa+eyywbvHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=WPeS3YxE; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7b22ffa2a88so1574271b3a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 00:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1763714818; x=1764319618; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9rw6P3vTkq9/VDf2BdRM52eT1wyytd0Ws0h+4Sg6bhM=;
        b=WPeS3YxEXJ8DCbQxogXI5+2NOSlk3/KaChIUQkOBrCcRqwl80cF/c2Iw8T6qmN4yV1
         p92rpndEv4Tp81wPvy1vSJ2nQR7zkQ7Ie6rHYOqiYzn9K/J08ZKZWmcQRLqBZlyTdt3C
         bDUVIGU3nA4/pezXAOUaRBhQN2VGDPW3LbAuLJyw2SksVgcikqXVhzmnm0SolIYVPBju
         C1NrMM9hLAfHFa54pdEUdCWGBTAIEcfL5Y4QwqT/iCEgIfWpv/jEccMTfhRI1fJGXZwi
         SYaVwmGeIDPzbIH+QbaAPrNr114Zk9ZWPRkxQnRfsPighUVFeTzaId97/6yZRvYqJwi/
         EH8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763714818; x=1764319618;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9rw6P3vTkq9/VDf2BdRM52eT1wyytd0Ws0h+4Sg6bhM=;
        b=l98UpfJGxkY5F+4qPpZ2cO6uyJqT38J8392en64TYxXrvYrqcqC1nzHQ6i1qy60Gb6
         w3fxGsUNn3on/RUvslS/37TakJw2o31mpe86eTMXyJuuRY09ZypYkPaFe31ThvTqmKOg
         E6BVtATuwwfxy2sCnJYRDVlSQMa6ETKWpVuz7skWsrq8IJrrt9c/L9+0NWbj9F+MaWlL
         +jow9KFrgmC/z55zbsO/ULl9JR3yAwvAbQiT9W3WUgehcdfXtN1XWx1BYsyzLcLVcfoL
         ZYDlPc3zYY819A60hwNFloXyi0U0nhuJ3ZmU9C2BPtxzI17XXOFhImLzj2gbT6SEI15x
         CqFA==
X-Forwarded-Encrypted: i=1; AJvYcCXi+iD4UR9Zx5V8A8Jkw1Q/QT0pI3xqWTvvSw8INdMiSU958jYKIe35OuYhz8PK2b5BwPvAVlZLinZP@vger.kernel.org
X-Gm-Message-State: AOJu0YyF4kXHX5rz7Fug9cDXgNFM7eKaWhp6esXNR4PDcGaWZwJtSv1S
	W+hgfpd5VFz0usCCjF9pVK1ywtGbjaor0sc8JBCoI18/039qOMijaMCfKGLW3NpsTb7WjnCgxXo
	f6VssuIHrDJapC34bihQTtEQF9wb+iVrVInxNjvqx
X-Gm-Gg: ASbGnctIfnpw0n09XIWSDAKeanNrAbuqRt/pNRx0aXNnX1WSftSYJM9x0PNrgkSVQ7m
	FVnqMh0mJ1yQtb7VAa2VAlj4a645lXzk859Kryn+nz3ezaMxe1WsOS0/9UQDWB3SyufMLpkWXDA
	+BrDOxADdnnF10xWnSMFy6AISKCQCB5TqgTWO0q/1h8BXNefr19WN33PVkhv68fyNrP9RWsFCMp
	PPnG/gq8WqDR4yK7efa3QLfx8E7xF+LyzQUWxAhbWZZxsf8wSIPn+4+Y7UMvRYFDC4Kdxo=
X-Google-Smtp-Source: AGHT+IEGKK1JVapl4Bfkn+X1caSvW4BJYyhUwjXrKD36ojgbUTuY+cLlAhIn+4hGtsKsgQZA7TevAUxQK94FOcafFjQ=
X-Received: by 2002:a05:7022:ea46:10b0:119:e569:f26c with SMTP id
 a92af1059eb24-11c9d819c4amr549173c88.21.1763714817986; Fri, 21 Nov 2025
 00:46:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251120-phyb4-v6-0-b6694e1f0caf@google.com> <20251120-phyb4-v6-1-b6694e1f0caf@google.com>
 <20251121-attentive-demonic-jacamar-fc4afb@kuoka>
In-Reply-To: <20251121-attentive-demonic-jacamar-fc4afb@kuoka>
From: Roy Luo <royluo@google.com>
Date: Fri, 21 Nov 2025 16:46:21 +0800
X-Gm-Features: AWmQ_bmUVOlmJqcVyT_EtvB6gdvlOG5rtdefUR1SndkOE8ikDuOVfBKFFoK6hGc
Message-ID: <CA+zupgxskC2HMy_sLusDbb_L1t49frjLQW6isBfAKa6BgNvpNQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 21, 2025 at 4:16=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Thu, Nov 20, 2025 at 05:36:41PM +0000, Roy Luo wrote:
>
> I read last discussion and patch is fine, except one issue in example I
> never noticed before (see at the end), which I want to fix. Apologies
> for not bringing it up anytime earlier, I missed it. While at it also
> one more nit.
>
> > +description: |
>
> nit: drop |, do not need '|' unless you need to preserve formatting.
>
> > +  Describes the USB PHY interfaces integrated with the DWC3 USB contro=
ller on
> > +  Google Tensor SoCs, starting with the G5 generation (laguna).
> > +  Two specific PHY IPs from Synopsys are integrated, including eUSB 2.=
0 PHY IP
> > +  and USB3.2/DisplayPort combo PHY IP.
>
> ...
>
> > > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    soc {
> > +        #address-cells =3D <2>;
> > +        #size-cells =3D <2>;
> > +
> > +        usb_phy: usb_phy@c410000 {
>
> node name: usb-phy, because there are no underscors used anywhere in
> upstream. While at it, you can drop the label as well, because it is not
> uised, so just usb-phy@..... {
>
> Please send new version with these two fixed and:
>
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> Best regards,
> Krzysztof
>

Thank you for the review, I appreciate it!
Ack on both points and will send out a new version.

Regards,
Roy Luo

