Return-Path: <devicetree+bounces-269959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDOeBV98pWm6CAYAu9opvQ
	(envelope-from <devicetree+bounces-269959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:02:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 708621D8062
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:02:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 89614305F7F4
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DFC13630A7;
	Mon,  2 Mar 2026 11:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="MmvvjHK9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CA936309A
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772452740; cv=pass; b=kprAcmivXpSqQx817Wt9X9xKokX0fIMq7+QkqRPSN89ZrTPfsDs5zR8stiXgvK0srcMm5c7MwZbiQNPD8A/xvUfTiPAhYJLPta/hJfrtKtMub/Yc9zmoegkz8zm2stAqyFguv4EueRs4utKLmOrmOwqK0JOj/jVXvusgpQtFBYc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772452740; c=relaxed/simple;
	bh=N1GVbONaYBmxbfdzHqPHL1qsRjsCCeoytFn0xLYBEWQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VmtjWe8vd6zFRaUBpve1Y+F3Z3HSov+ZVGqF6SGWktSevggY0wOKND0Haso7cj5f36Inb8zj0EJM3MroEYcS6K1bGWZTNkT8uWHvcbH1tgozVAIikQC2Kul8G133+wRCSS/Ie3ogdVMTHTSXlcVLaD0iwxHle797bXqlJXtvd0U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=MmvvjHK9; arc=pass smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2ab46931cf1so35367795ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:58:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772452738; cv=none;
        d=google.com; s=arc-20240605;
        b=CW7TYAt+OwddK8cRkR5C82FhsvdBODbb9hCCpoF+vOWWZNoge1IqlpAOLt43xdm3FI
         n1xynjSJDij2+KyFiUsRHQ2XMdFfxAEYJTMR3pkw+w5dZsuQbcUSct2r5jLSABplf6Vr
         6uzQqGuSCGk6dip4kbsJ1HMMmK4QkgQjSK7sCumeezzPdSFEZiks/BalnEaxe2gneMDY
         qDOXcl2HwNqvZ7dAuz4rYwPYCnsPM76DL8cIbtf8diKR0VTKnjjjDVx/tzLsl/sn0UGZ
         3Lh02GwdBe+ZprLKD7MJ56MkrOBKy1ZQe69JLL3BhN+7SVLKy/RU8+CO018JUXhx8ZmP
         Eb1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Cn6EW3SsdY/4N0vlnXwNpj8zo6nlR0XbllYn3nMAaMQ=;
        fh=qKA1Aj59gznIqejQdW94OXjipXzsB78b5E3o0Lzr5iE=;
        b=imDOj8+X3EJN7zjMBKLptrgLHPGpIdeQeZDk5mfp/qIm2eW8l5J+zTjHy8/IJmlpPb
         d/FhvnaCavOm5/NFbCnnlxvWQVEQIKluu7W7Xv0KxIWQlrvg232PmybtrV6+kcUNdgBm
         x8zdbRdqRPWHbFtUbtiYHn3/TluULHNxas3bSjbK87EpJSe+xts1nLALM7cMy8yHWuHR
         ollOoBsrmdajqCx8Z1TNJNRhgFh3MhSNeTITIhoDjt5ip9Gg4gNpKzHMauZrdnBghD1w
         XBEoGMlF6/IljIG96IyqH4iEwx4LgUX2WAmnMYLhHPsAAwyDNBGBhkeQBYD+u7nYayp0
         Qajg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772452738; x=1773057538; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cn6EW3SsdY/4N0vlnXwNpj8zo6nlR0XbllYn3nMAaMQ=;
        b=MmvvjHK9tCbIuHaDgL7IBPidPb26fPn5Frll++tLdHODvwQa+70QM2dPU1BNpoljqQ
         4SLnb7phSZwpvdEGFszYnuQ2Uu6X4lOA6uDNbntVcM2km04lnYqbUHbB91mclJKzTxAk
         UY9pL5RaurkdmQ0JDXp7K8OaweBKlKQMTpqtIOBW6N2hBWAS6DWpCstBM0BC6FQaIcax
         pv0gAbOt986N4llBWjB+wwC1LY6+LljGRxEaFiOzULWUzCT/GAsZHcZvvifsrnKMDRyZ
         CugvWfoxC5SuivHljo6Blp5IaqubUNq+M4/VoK28sFme0lQZK+C/LdveKEqQsDjXJw6P
         p/rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772452738; x=1773057538;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Cn6EW3SsdY/4N0vlnXwNpj8zo6nlR0XbllYn3nMAaMQ=;
        b=xAu9JU7RAj0NsYpB3WeMhkxreU88GB+Zm/FWSvTJAojONobhB2MJ7I/NvpeL8TjSUh
         LhmieFioUOXR3niV3mL/UmEqaba1CG+gt9lNpOMmPaWkNrY564IytmgQ5djELBTQ0/Ph
         fagEfQLTMovd8eRkqosgGZTe3T3FSBHyNv5bwSBiPlrLn2XKc8yri7vob87IA1OqO/+v
         9af6btBrT5nOyBrZeouphiY2TocXQbs2tZuZ3NhtT65JbwWCAF6e0Fm7lZz/8G1N1Dav
         q0Jd7GbeV1PYm26/uoXgAXIZYXKrhTRJqbOncDh0edzetMFX4x6Wr15WAyBtCzF0hEy7
         yFaw==
X-Forwarded-Encrypted: i=1; AJvYcCUbstUxXd9UvEmND3f7jY8FY+CHJwz05ob3qZOi5X7fkwUGn60FK0YyRr/BL56JevBKdqHK+YUV/3Qk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+yTW0DqOpc2RUqBNl3rOlo2M3mHnUpNVJuM2mQkjJDlZ23jva
	lIvgHfaJ2kr4BpfzerbQ0qUHAHffhebK+LsKEuDnt+mvo6/ULmDNiHpatYFITFe6keiMHRT4663
	HKAoD6+V5VJu3XAZWXJHPBrAxHas2p+Y=
X-Gm-Gg: ATEYQzzMyxdte53Kqj4+LJuYtd/qaaIE7A3fM1c7tuRnfAZa8797LLRn58GQxRZ/wEI
	/hRBHr0iiK5i5aDFFVo1x7kB5WQwbs5aPEa7DBVssrfdyTbTqA6NYu/YNIt6hcDVUjhHBGXpeN7
	CrcHJFpuJznzBII8BXMzQ3RvVAtNvpCvGArgJ0dK4ZNEXw/KdUnXephBZJW0J4cIwzruIaOXr32
	tKa2jJM6D7YyT5JZ9JlW0iiYqkzKsS43WhWlnBDbY/8h5Sl01LrB52AqNfvi36iM/2bL/UlZQQW
	OqC+iCcUHcej6OINqwSaPPVu+5uWrIn6FJn5GZ0p
X-Received: by 2002:a17:902:e950:b0:2ae:5a44:ea80 with SMTP id
 d9443c01a7336-2ae5a44fdbamr8590715ad.17.1772452738264; Mon, 02 Mar 2026
 03:58:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228065840.702651-1-nick@khadas.com> <20260228065840.702651-2-nick@khadas.com>
 <20260228-quirky-lemon-reindeer-1045f6@quoll>
In-Reply-To: <20260228-quirky-lemon-reindeer-1045f6@quoll>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 2 Mar 2026 12:58:47 +0100
X-Gm-Features: AaiRm50A5ixOEMCu9AMwpKXYw0q-1sXvRrgscdrkIScH0FsjWH2GNDFERRZkqCE
Message-ID: <CAFBinCAkxO4HoN0Cw0Fc2B3KRLLJqso1p5+qjNN_E0c26VOf2g@mail.gmail.com>
Subject: Re: [PATCH v1 1/4] dt-bindings: iio: adc: amlogic,meson-saradc: add
 S4 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Nick Xie <nick@khadas.com>, neil.armstrong@linaro.org, khilman@baylibre.com, 
	jbrunet@baylibre.com, krzk+dt@kernel.org, jic23@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, 
	linux-iio@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, xieqinick@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269959-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[khadas.com,linaro.org,baylibre.com,kernel.org,analog.com,vger.kernel.org,lists.infradead.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,khadas.com:email,googlemail.com:dkim]
X-Rspamd-Queue-Id: 708621D8062
X-Rspamd-Action: no action

Hi Krzysztof,

On Sat, Feb 28, 2026 at 12:18=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On Sat, Feb 28, 2026 at 02:58:37PM +0800, Nick Xie wrote:
> > Add the compatible string for the SARADC (Successive Approximation
> > Register ADC) IP block found in the Amlogic Meson S4 SoC.
>
> ... which is fully compatible with g12a?
>
> Write proper explanations.
Would you be fine with:
"There are no known differences between the SARADC on S4 and the one
on G12A. In the past differences between SARADC on the different SoCs
generations have been uncovered late, meaning that a dedicated
compatible string has proven to be useful."

Do you also require Nick to add amlogic,meson-g12a-saradc as fallback
compatible string for amlogic,meson-s4-saradc?

> >
> > Signed-off-by: Nick Xie <nick@khadas.com>
> > ---
> >  .../devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml        | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/adc/amlogic,meson-sa=
radc.yaml b/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.=
yaml
> > index bb9825e7346dd..5496a0dc714aa 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.ya=
ml
> > +++ b/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.ya=
ml
> > @@ -27,6 +27,7 @@ properties:
> >                - amlogic,meson-gxm-saradc
> >                - amlogic,meson-axg-saradc
> >                - amlogic,meson-g12a-saradc
> > +              - amlogic,meson-s4-saradc
>
> If this is compatible with other device, you need proper fallback.
>
> >            - const: amlogic,meson-saradc
>
> And this one is now kind of fake - how does this device use it?
As you have noticed later, it is currently not used.
Can you please confirm that my understanding of the next steps is correct:
- you're expecting Nick to omit the amlogic,meson-saradc fallback
compatible string for amlogic,meson-s4-saradc
- and you would like to see amlogic,meson-saradc removed (from the
bindings and .dts files that are already upstream) - I will take care
of this once S4 support lands upstream


Best regards,
Martin

