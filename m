Return-Path: <devicetree+bounces-271196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eImsGl5yqGl6ugAAu9opvQ
	(envelope-from <devicetree+bounces-271196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:56:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B47B2057F9
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:56:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E9C4B3006229
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 17:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3CCE34D4EB;
	Wed,  4 Mar 2026 17:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BJ+a1P/S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DBA3CF685
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 17:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772646999; cv=pass; b=d60XWuERt4W/I7UfNZJqDMh/1mTQOi+u9oy23716jpCKVWZmttM9kaLJhXlZP1awZeOwn3dneeTxonoAWEmPv4bQZ4QanIGXKf/RLXlBj5S3XGLcslt/BdBIuVfZQtSfP0exc5JCS3fM6Pt+KnDc4jUq3grGCbgsUfWnPNig0YU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772646999; c=relaxed/simple;
	bh=NFu1nHF7vlB0PzKBhS/pZNZjpq04QwYTJkcx29eod7E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i7ELnrXFUTosgHD4CsA4Mnu1qJW8wIuQWnIkyv4FkvdANSoHyEw6O4yYspGD1xHRVP3Hd58m4e6hUMS6J5qA4EI0kT2voHOwR46lJDyuswd028ocdpDGIEn1dutu8eXbRDo8zGw5ZKrdI9MXyPEq/bXBW4GzyAsI/4n8614OhTE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BJ+a1P/S; arc=pass smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-38a3066b68bso13129131fa.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 09:56:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772646996; cv=none;
        d=google.com; s=arc-20240605;
        b=JNP6ZqEKwnGIDg4jtHp5Jb9rcsr2YVPq9XU/Yijx1IGynAYqKPK+g/MApPsr/R778x
         WBPVpAebZsh2YJ0EEVlfp6FS2kXotD9AOnoaP+IFYLxHKbUJuJHbGp+pMjJYeqPCsPPe
         Gvy/s33b31zG1mQC9nvFeGW6HApDu/DEtJde+U+8C3BLRLRuYF5QAPhGOlwMWVeBmHji
         J3LEB04ypORl+jKlJJJUXbpwbdxHjsm4Tfg6DC3K0sBOZQKfSukRNjdQAfq2HfzU8s85
         4pGlShJNtLww+Wi7krRZfQptRSQbJe6LyOHYPcbuBqPqb4LE5rweK7dTDEjYDMZttP+T
         9gFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+ZQ03CfiCaXKd5772pu8fN/18x8WZSaiPx+JJp6vfUA=;
        fh=0x/3eapHlTaNgLHfIfBc0vrCettDNjRHb/5nUD5r9pE=;
        b=DXBZlLBKHpGrwdmIxSRAAzRsF0PDIeArfMl7qrH6E/cH7AEcEGbirc95PmedvoTC6C
         J2Pdg9t41FeQI2zJ6SBPYInTKYIXrgX2YlNaUKPeXX6cgFA/kIt1BCZn4ilU8dsMwNta
         IEM6BfcS8EZhEz16d1IzdN/5/+Y+O7qYPR2iUV3mnAGn4Db4R+JeseXJo6/vGSPVlsZ/
         OdLSdCne0uhwt/gAvY4WgNllgfljqpvKVAMtNBg8M2Up+0tHU6gL32UvgXz55I+f6BbR
         g+Gk2CxbtOoqUPxen35EnmLe+oYKfZ+/DcIZ0oesLRsYVzFTVV/jdUWzcWEUNjXoPBeC
         u16A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772646996; x=1773251796; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ZQ03CfiCaXKd5772pu8fN/18x8WZSaiPx+JJp6vfUA=;
        b=BJ+a1P/S8xqOYC09A1YOasFXrMOpToNuT9tvLqZQ0JQJC+aq96qR8zJExtTHE9JFaP
         KTIbnuUccxfFOVJRs/yp2rLyzqsknHlporhYb/QpQKyvD7Cl0zcIkf/W21U+5yA6WwE8
         WqX1GxCr7X/6e0E9p2OzDGkBARxYI7No2Cs8vZMLyOkP+9Pi/ZEZHi89bIkw6Wukrtoc
         h2zSbOnxBxtf91WqJsbEyd56rJcyrJi8EAYQTV9kxf9fqger5DRa8XEV43vxPEDwUVFb
         lYm7QtIaBUVHGvNAUj+HgiZZHKQm8IbV4SSALOhHY924qseTgOR20+jIK5DG5ZIH5IZT
         RkRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772646996; x=1773251796;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+ZQ03CfiCaXKd5772pu8fN/18x8WZSaiPx+JJp6vfUA=;
        b=J1pZwgfLov2gsdxS1RgSR12DUXqsgwJtPatLz3M3nUVWXASiCfTXbTB1NYGSkHVxeI
         fWiKLLG3aELmF2uF4j1fgD8Cl5v2risMfQShIxnC1Mv4OKy06mWMgyQMoVPwYz1NlA7P
         AHrD7biCik1FNBLFkInZSfWId8vAzUPXOyAg600TJkGMUAuAc1FG4TEHW6oZRhkWeXgi
         M7rooUYhG+H88mrVfh9Fgz79ZM24rgeKoiCVFvPvdz+pZf8uhhiEgX3wXcp1KBMQgYrX
         YQLND2QEgFWD5owLp+x+Adg26QxSEKzglaH2j84xokKX0AQQbXViNwoDS2L62eWndSL5
         Md/A==
X-Forwarded-Encrypted: i=1; AJvYcCXh/RfX7+365AY3HYeyoGNQ59Cs4Cof6weqwm5hNLkWnCh7i7OTu1lLqXFBKc1lT+7NyHrWMtCpHVya@vger.kernel.org
X-Gm-Message-State: AOJu0YwNvy7NqeUMfcj/ETjJUQij8eQamb/Aw9DSN541P+7+04b9q/53
	8ufiL971a164UjC65rnGjZksHnI36Rzo0PyjuzqrgKG00STyJl0kE7gVqLRU1iQi2F3ngGtn3Q9
	DhVmgfdKHyLv5iqCtDVouavslV1eNE5k=
X-Gm-Gg: ATEYQzwy72B/lCqdayPn9dVozflPqqQL32yyk2Q+LMXiTAMju6WLKXd20HpFezw71ED
	fdNLJJ5WLsiiasQioCmwADY2VrCnA9S0JfgsTwtuvq8dbSOZInWGW0//xGzMHLpQGh1S4E4oPM1
	0Nlxtbk8fNUh6VQcg4gD0NHdn5ZfirAqTuBEBqsJdyxzzf87xBDD3XNEYIrYgnGNcANQ1qi0/pM
	u4pjXk6/fEwrxG4TUM0US5s5ySN7lARFmlB9p7xLKAXVD77l8BmhHayvOvX6dmy9u9P/+UMnYPN
	3Cq0jHPEbspMqJ+Z5nOPhQRdcphYV0QtgbrQGHxBFRFZw7IlzpvwfHy3GC7TwZKTu4Xi
X-Received: by 2002:a05:651c:2359:10b0:389:fc6b:9454 with SMTP id
 38308e7fff4ca-38a2c583467mr22109951fa.13.1772646995873; Wed, 04 Mar 2026
 09:56:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260222-ch13726a-v1-0-e501d78e105a@gmail.com>
 <20260222-ch13726a-v1-1-e501d78e105a@gmail.com> <933fd2e0-46ff-4ab8-b98a-554ac46982c5@linaro.org>
In-Reply-To: <933fd2e0-46ff-4ab8-b98a-554ac46982c5@linaro.org>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Wed, 4 Mar 2026 11:56:24 -0600
X-Gm-Features: AaiRm503dwPO8RgKvk7vgqamLzghT_hAE_djuV6DTVOJQl-B8hBdPQJ9jubqRSA
Message-ID: <CALHNRZ_TdVDy93uvM=p7ht50v0Y2W4Ji4ZsFwPFAgR8FZh=myw@mail.gmail.com>
Subject: Re: [PATCH RFC 1/2] dt-bindings: display: panel: Add ChipWealth
 CH13726A AMOLED driver bindings
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 6B47B2057F9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271196-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,sobir.in];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Wed, Mar 4, 2026 at 10:32=E2=80=AFAM Neil Armstrong
<neil.armstrong@linaro.org> wrote:
>
> On 2/22/26 23:26, Aaron Kling via B4 Relay wrote:
> > From: Aaron Kling <webgeek1234@gmail.com>
> >
> > The Chip Wealth Technology CH13726A display driver is a single chip
> > solution for AMOLED using MIPI-DSI. This is used for the AYN Thor botto=
m
> > panel.
> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> >   .../display/panel/chipwealth,ch13726a.yaml         | 66 +++++++++++++=
+++++++++
> >   1 file changed, 66 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/chipwealth=
,ch13726a.yaml b/Documentation/devicetree/bindings/display/panel/chipwealth=
,ch13726a.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..890984b00c3412850661769=
95e6a973c5607cbde
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/chipwealth,ch1372=
6a.yaml
> > @@ -0,0 +1,66 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/chipwealth,ch13726a.y=
aml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Chip Wealth Technology CH13726A display driver
> > +
> > +maintainers:
> > +  - Place Holder <place@holder.com>
>
> ??

Please see my reply on the cover [0].

> > +
> > +description:
> > +  Chip Wealth Technology CH13726A is a single-chip solution
> > +  for AMOLED connected using a MIPI-DSI video interface.
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: ayntec,thor-panel-bottom
>
> ??? why not chipwealth,ch13726a ??

Because this is a driver chip that supports multiple panels. The
driver code I based on also supports the retroid pocket 5 panel, which
has a different resolution. Similar naming is used in the rocktech
jh057n00900 binding, which is why I picked this compatible.

> > +
> > +  port: true
> > +  reg:
> > +    maxItems: 1
> > +    description: DSI virtual channel
> > +
> > +  vdd-supply: true
> > +  vddio-supply: true
> > +  vdd1v2-supply: true
> > +  avdd-supply: true
> > +
> > +  reset-gpios: true
> > +
> > +  rotation: true
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - vdd-supply
> > +  - vddio-supply
> > +  - vdd1v2-supply
> > +  - avdd-supply
> > +  - reset-gpios
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    dsi {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +        panel@0 {
> > +            compatible =3D "ayntec,thor-panel-bottom";
> > +            reg =3D <0>;
> > +            vdd1v2-supply =3D <&vreg_l11b_1p2>;
> > +            vddio-supply =3D <&vdd_disp_1v8>;
> > +            vdd-supply =3D <&vreg_l13b_3p0>;
> > +            avdd-supply =3D <&vdd_disp2_2v8>;
> > +            reset-gpios =3D <&tlmm 133 GPIO_ACTIVE_HIGH>;
> > +        };
> > +    };
> > +
> > +...
> >
>

Aaron

[0] https://lore.kernel.org/dri-devel/20260222-ch13726a-v1-0-e501d78e105a@g=
mail.com/

