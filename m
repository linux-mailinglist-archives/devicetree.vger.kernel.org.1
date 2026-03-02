Return-Path: <devicetree+bounces-270227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODIfOrYFpmkzJAAAu9opvQ
	(envelope-from <devicetree+bounces-270227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 22:48:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 813E21E410D
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 22:48:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 80462309363D
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 21:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB1831A681D;
	Mon,  2 Mar 2026 21:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="bDoDU96Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E171A6821
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 21:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.215.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772485448; cv=pass; b=o82EjfCUyV2ow+29VrvDV4MqPEeKgqQpS4y67dAr35znMqFLUtHYcVajJtu8s2pmgYAqCByTr27uQ8wh2X5qIUGIq5ufERIB54/7cpvEBrHjFh9YX9HJqVYDTEbi5SrnTcFZnowfCrETaT7Y7W9Pu3Ss8ink0/KMJrKhiQjidRo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772485448; c=relaxed/simple;
	bh=CWJKF9SpIjh9pmmYfzTqY7v0sHyXHPNvu82TC+RYFA0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VEW3hkiM3FglVW7x7jnk9iSbCDT+Pr3xGTSc3NlSS6TgRlOLgcr8rJF1QPpuH6h0Bpv2FEIybcrOZKPgIQSGW1FKtPBC5d86nGBu56bDRexplHdNGyrIAV6WY3m48AjIOyeNV3fS5vJOxM88UUnWfvv4r0h0GxYUf39+aoC9Zxc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=bDoDU96Q; arc=pass smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-c6e77ace76aso1854160a12.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 13:04:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772485447; cv=none;
        d=google.com; s=arc-20240605;
        b=gRzQQXjp9kd6y/KgKrTUEovLfi/nGoy4om9Ny0ImeJz3Ppy7lARSYIL2BdiKsgUyWL
         JCGbvoKDfwJyL/7c1b2PXvv0EROb1jt6EeVNuA4adCbN5JrQBT+sbPPrzhc2d3mKw+av
         nOEDiuxuUesBFFwiP9sI8wJHE7U7evyBVMxR6YVGszmKp+AJuS88TPKEdwRw2fxsGJcK
         Asug5T/Rbl/85RKkPlb2TqL+1rsl3ytXqaOfIk/OqOsrhQzSaWdLwHl5LzqWIvX9ajIP
         bxsNlOEkpUMGN84WXq0Yvb0bayzh2y5dDJk0ZJTaaQx1j/2W62Bw3NsnBXfoZTMQzY2K
         Qhrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=S0B/W9oEfTx3Mdx8y1qNKPKD50lO55YEDov361/4WoA=;
        fh=NMUY5pWgh1HV50eweQKXeItgAq4VIILpzzUOoCkt2KQ=;
        b=bwEqDDd8pgbkTk9CY7c7UdKS7XLNwNaxIQsDZQvbbB1gwQN3VKSoqYt3VwNSLw1EGy
         QaSFB72Fb9zKPm4R/ROC6u/eRp2NvQ9RHBBB/+qgU7QQIp5A0ZDRHrdq+1ggrR7i8Z4r
         rZFin68IBysx0ExJwZTvv36bqhtglbikSFV5AsrFwJ9sh/6CdIdKw8n+UZsh+YnSkR/8
         76ds3Zz5Zeegj3Q+c384zNf1eZT8QKtUFMZvMoq8TKgpGxDGsg1AqFKxCrIXqoDHw2it
         agzBcas7Ml22mGCkmtoTa2P/ZiNHP+0ozAKxHbWGVpBVqOAelSfLGVnTKbL45bvUWwRi
         SQAw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772485447; x=1773090247; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0B/W9oEfTx3Mdx8y1qNKPKD50lO55YEDov361/4WoA=;
        b=bDoDU96Qj8MJyBOdnA6aQbCDVdDQyoEAqiI7jUOaTPmVDu50AXsPvM44QnliDfct/F
         PG2WrxT4QoDeUnsqom0DRKYnMj4e65xMxXuayfD2zZ5cNSCT+p/yp2kZdXM7JPFSBoOm
         JG4Jsh7IeAdXw+lhAubeNGo6lXndVwDSha+xCtB1Px9XY1nzpI7f9ltkmq74lmc+bdFr
         ebsIvTW86xfRrYb2264HuVYQ/yq0d1Fmtwtk7Syu6nW6D9u2J2KrB4PEyqiIY76QYX1J
         bMg7WprCJtyncRk03/7UBK3McoHZFDJ1UZYUela9u7l42sqDNcTxVDF5bvIuFxzhLtPm
         i8Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772485447; x=1773090247;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=S0B/W9oEfTx3Mdx8y1qNKPKD50lO55YEDov361/4WoA=;
        b=gbVz6dh0bAQ/ELVaa3w/VSqVa8iqPf5fklpP4a2pcFwXnM+UtnCjt29jEhYZvMFFCo
         IFZRtjG055mfjaoftzss/B5tlRT5VO5wRFP7H6JU5xQiY5Xay50TLGJrmmKoNIY7SOcj
         k1uwphaLoUEkHjxjqiawA7FDIm9957GALxsex3vlG9Abj+w1lKKRV8PsLdl8iGwO4Gi7
         r2rFkHWhT0l5ASOf47aiaE/Ot4P0kUcKpj0zMbHusWQnO44aK3UBK0kqt+gynQQR/BMT
         XVviE1qHBpTMukjpNOF9T/TXkscO8ltBHgvUBWK6lT3zVLx1291VXif5VX6OqEKUeNvD
         7Rbw==
X-Forwarded-Encrypted: i=1; AJvYcCWinOyi4XOCWdbjgG1g8tgTjDZi5HESI82I5EaZd7hzOj0A62cJibJgbkOBLhXcfwKymqsrtLrbWSfb@vger.kernel.org
X-Gm-Message-State: AOJu0YxNFBsT/7ER6xi0KCJ8UiEBBohzYSIN5KcfcBZlbMvtkNsORtRz
	KLX30kbG0RRcxxTEdkGDRa/k9WaRgxiVluupMm5K/psfQ8C+gT4NSSFY4kb6h1ruEJ1KvrTjFRI
	z1kUg+xwNJViEotL0+l6FqFBLHLRpOQU=
X-Gm-Gg: ATEYQzz0BhiBvqPIm6uD6hevGBsFoBxW5vMYnypjnXUW5g4g45Pg4lJNYiPdxQ7OKoQ
	sA8TmgI1rh63Lx9ZTlF4+7v3BD9tcI2r5BvmuEdxoUjLieFanl6ji0hxhT853S6wzhidcI4v5b8
	Jj3WwPqABXsxMIfRsPXAQWKBRPCfm+88wk/DJZVjOY/6lUTXHQtqw3E4yFDFrOC79ZVPKwKS6FH
	RECrPSjRhCfmXBTWVGEics9UZCQFes9c6e96w/2ROPjqD3LjWKR4c4mwKmPTxanZNmb9OnVu/d8
	A4XO6DwloOnsaWk//wnUjZW08jzeRiD0wxBA4Hh3
X-Received: by 2002:a17:902:ccc8:b0:2ae:5628:a170 with SMTP id
 d9443c01a7336-2ae5628afe4mr43796855ad.46.1772485446798; Mon, 02 Mar 2026
 13:04:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228065840.702651-1-nick@khadas.com> <20260228065840.702651-2-nick@khadas.com>
 <20260228-quirky-lemon-reindeer-1045f6@quoll> <CAFBinCAkxO4HoN0Cw0Fc2B3KRLLJqso1p5+qjNN_E0c26VOf2g@mail.gmail.com>
 <49b3a87d-7ea0-4da1-871e-35ddf5d5b454@kernel.org>
In-Reply-To: <49b3a87d-7ea0-4da1-871e-35ddf5d5b454@kernel.org>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 2 Mar 2026 22:03:54 +0100
X-Gm-Features: AaiRm50TpdWh3Y_pvxvTMNOeIVTyBRxIzdF8SrzpLj8ML0Xjz_0wayl9w2nZ3rY
Message-ID: <CAFBinCDyhvzWO3gOL=GtnH56Guh2fkZyhmSjn2k3iJdhtmTdBA@mail.gmail.com>
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
X-Rspamd-Queue-Id: 813E21E410D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270227-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,googlemail.com:dkim]
X-Rspamd-Action: no action

Hi Krzysztof,

On Mon, Mar 2, 2026 at 2:59=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 02/03/2026 12:58, Martin Blumenstingl wrote:
> > Hi Krzysztof,
> >
> > On Sat, Feb 28, 2026 at 12:18=E2=80=AFPM Krzysztof Kozlowski <krzk@kern=
el.org> wrote:
> >>
> >> On Sat, Feb 28, 2026 at 02:58:37PM +0800, Nick Xie wrote:
> >>> Add the compatible string for the SARADC (Successive Approximation
> >>> Register ADC) IP block found in the Amlogic Meson S4 SoC.
> >>
> >> ... which is fully compatible with g12a?
> >>
> >> Write proper explanations.
> > Would you be fine with:
> > "There are no known differences between the SARADC on S4 and the one
> > on G12A. In the past differences between SARADC on the different SoCs
> > generations have been uncovered late, meaning that a dedicated
> > compatible string has proven to be useful."
>
> No, last sentence is redundant. You do not need to explain in the commit
> msg rules of bindings, because they are obvious/known. You need to
> explain the hardware, e.g. in this case the compatibility between devices=
.
Understood, thanks.

> >
> > Do you also require Nick to add amlogic,meson-g12a-saradc as fallback
> > compatible string for amlogic,meson-s4-saradc?
> >
> >>>
> >>> Signed-off-by: Nick Xie <nick@khadas.com>
> >>> ---
> >>>  .../devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml        | 1=
 +
> >>>  1 file changed, 1 insertion(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/iio/adc/amlogic,meson-=
saradc.yaml b/Documentation/devicetree/bindings/iio/adc/amlogic,meson-sarad=
c.yaml
> >>> index bb9825e7346dd..5496a0dc714aa 100644
> >>> --- a/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.=
yaml
> >>> +++ b/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.=
yaml
> >>> @@ -27,6 +27,7 @@ properties:
> >>>                - amlogic,meson-gxm-saradc
> >>>                - amlogic,meson-axg-saradc
> >>>                - amlogic,meson-g12a-saradc
> >>> +              - amlogic,meson-s4-saradc
> >>
> >> If this is compatible with other device, you need proper fallback.
> >>
> >>>            - const: amlogic,meson-saradc
> >>
> >> And this one is now kind of fake - how does this device use it?
> > As you have noticed later, it is currently not used.
> > Can you please confirm that my understanding of the next steps is corre=
ct:
> > - you're expecting Nick to omit the amlogic,meson-saradc fallback
> > compatible string for amlogic,meson-s4-saradc
>
> Not omit but replace with proper fallback to specific compatible.
So in this case we need to end up with:
compatible =3D "amlogic,meson-s4-saradc", "amlogic,meson-g12a-saradc"
Stating that the S4 SARADC IP is compatible with the G12A SARADC IP.
Any S4 specific quirks that we need (in case we ever find something)
can then be managed in the driver.

> > - and you would like to see amlogic,meson-saradc removed (from the
> > bindings and .dts files that are already upstream) - I will take care
> > of this once S4 support lands upstream
>
> This no. It's an ABI, you cannot change it. Not worth it, either.
You suggested adding a comment stating that future bindings must not
use the "amlogic,meson-saradc" compatible string anymore.
Since it's part of ABI we need to keep it. So adding a comment is all I'll =
do.


Best regards,
Martin

