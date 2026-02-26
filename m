Return-Path: <devicetree+bounces-269004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uELgKS27oGnClwQAu9opvQ
	(envelope-from <devicetree+bounces-269004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 22:29:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2B01AFCD7
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 22:29:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B4D830B2C97
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 21:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A1A042E006;
	Thu, 26 Feb 2026 21:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="gAdrP00N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A4A44D00B
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 21:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772141210; cv=pass; b=B8wy2AD8R408IAQLqDiBx/31+grn7kxYw/Q5xIO782BGspKUgcbjxVCFZU4PeQIl7GuaFeVzZMdbhJ8u0pHY6YEufU8PGcXL6oz4r02FwXEcO2Q8Uy73iOOtSj7cAtKxWI375ifTfZixAFjtC/cm/fk/iv76k+MLrFOZSBwW490=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772141210; c=relaxed/simple;
	bh=JxtPAriELNF7I3jQinD0DfyWRL+Y0cdBJhQKDNyPpzA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bLEKi+IItmRsUqUNPrmfFUdbkKSWr4R/71zJBBV5S6tTkO6a5po6z0Hzb3OpzISbKlYzb7Va/h+RC7BU63fF5OFlXxw1ZzI0zIHKqZ1Ztqo2FzbfmPwirOv/DBiTru973Kbk8lm5UcZCTkgHlizTneTQePKQWZsfgFQSM9JOeY8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=gAdrP00N; arc=pass smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2ad9f2ee29aso8292785ad.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:26:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772141203; cv=none;
        d=google.com; s=arc-20240605;
        b=PfH0HKRLfdB4glXexpGkiEo4dH0R2w5xCEQ0i64JWrSUzhj923JK6UN/zMTlonQlgu
         quP/xWYW24icUlrlb/GW+7hUxmrKRkoIPiJF1YxUKIt+YllM++Vpz5Mt6Re4OYjxUksX
         YbW8AaBiIZJdZu8QtQrHHQCVrKb4Bd0ENESTTBGDxlENVoAVEqgQQJBeFzPkiAMVn7vU
         9rhZzACGbJMRoh0OjrtWV7v2zGBGmhv7xwpV0cOPuU9NyakVyo8pMCFwDq/IrW67CMRA
         P+gzJ5R78ekhRShGRaVRf/sJbnmprSIFs02bEUPYVXWYUFnD7r+cLtiexuimChOPfLr8
         iAtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dAcGgVbCS/bj1DBocFVYHa5Tyjmk+gWFmhBNeyBNcQQ=;
        fh=pj7M7XCpzPqNg+zA6rrAhMZp54rSgTUSnoAiBzNZ/xw=;
        b=Drxa5urcqtKhOHfvZOu6jFt0L4DsDrKcpb5VQvhdPeWPR2eYLif3t9jZO00Fe230/L
         BlCl5bVXgocI7gjloAnu7YCgutppnIJ6NBVSrd65aJEcwhUUWb2QlwhTJP9GtFInoyPV
         OAsEeKKvsLEewW1+WAGe8Xj7y2c89+VxIwQEqkhBeRPXo26ngGGoZBx00aaBzX1RhZ05
         JMeKBpZQsQhn4t7AW4vv2ttqW/Arnxjj4Wa+AMUmz5l4jSGNv4gLyCSCX7DFv2+HhDmi
         /Pq5+xMyH1RfKbOAJiYcBDxtpT2C8LJKnr/tf9i9mNXpkBmWfcVBWiYKxnu+wL8oiTwK
         0ZKQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772141203; x=1772746003; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dAcGgVbCS/bj1DBocFVYHa5Tyjmk+gWFmhBNeyBNcQQ=;
        b=gAdrP00NeJXofabHtm4cOy5oWx06wDyc8FLwtx+87bYlz8MNp4wZPHK8J8FPIzFozi
         M92SzutAsr5HAFN4ng8IzSkK1JJ6Y0lEbLUJmAdr1Q7K0IbieyyM9lMrh9jgtlbbFLcV
         dE2zQlfz914qbhSisbhb1LRc0IgOn8pv1IcVq52FBUKQfUmw5Eg9S8g3KyVQqX5MChkW
         D1H+y2cDtAK3mLt5m5Otk7uAZB84kr9Vspc6xLbAT4s/LYS2kUW1fuot6ohlAIU0QaW/
         Zkq7+jrhRLdrHVAcJWW0a51Kwv4QKc6BsjMRpn9K9143dMlsqbR9EiIM4JUgjlGFf8sd
         qC+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772141203; x=1772746003;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dAcGgVbCS/bj1DBocFVYHa5Tyjmk+gWFmhBNeyBNcQQ=;
        b=Tx1uETC9IWxYGQkwOBsYJj6gmZ1yFo/p/v/nu4cxmHqthYYQNYVhPoTmdSePPemSH4
         bqtTJcM7zyBXrqkUPaTjyKvCrsbjDwVl8E7TfulLw6co2Xv9sUq6Ce7nRGuoOrHf8w7G
         rRHsKlv6uST88hykf7O4U/wG2O5x6NBndwloeqgBfHxRlOaeviRByX0dIzCv5UUsiVDF
         CU8YyBFytsghVCO3vZe0L8liUTw6yIzKLA0rzYZ2Yg9uvb7KEJYI0V73PsPnYxjPvhzQ
         vCUKyKPTuNPgk0Q/YzQnhFnbBmAB1zcieiZIWyznUfcY3bdyaEXPnajJ311IuZll2OQp
         PuQw==
X-Forwarded-Encrypted: i=1; AJvYcCU1ycxnBeSwzRadDAZA0xr/6pBqt7LfdASehgyyQBIAA8bEyCKEUjH03BpC7jb0IST4DkRi16p69AO/@vger.kernel.org
X-Gm-Message-State: AOJu0YzYAkyb7K3r/4GCu5hTXgDifnYYqhjxsUi7DrczrVUEI89pG9ZY
	sYQClPhHWBe1VjKQgsMQxXXWGaV3VVKCPRDpGZ53eEhjZ4FdPx1kCAIxprd5SvwoKABB5EVDDdO
	OCIuS0tIN939QmQMJ19jm5E8ojLICsSM=
X-Gm-Gg: ATEYQzwM2BqT+YVfGCt7c/kZEBMv+3c5QvPgMFOqpu1HCGZgmjMffpT9uvcFoqmoDTz
	eX74ax5Mo3iPdgOjJ1kuZ/1gSui8DnzBmlcgmBr5NGkihYkSk92CmXLTVElAxWjdBAX4IxUdtox
	jdTPA7GnKwrG220O26MheH16CK8om0GqQmxaArPNQBIaqy1VQliRrQhtI1e41OfPwHhRDZ+vTit
	HFCDZCH6m0UC18vsaaT+A9Qc0DwL5QwyewVSOIeQIgIFK42hqCqUnyjQ9Vmk4ZxPNPxXV+C9Bo0
	Y1MGfBj4l0EX8GBCfoemOn7zd7whubUoX7E+7oWF
X-Received: by 2002:a17:902:d592:b0:2ab:230d:2d96 with SMTP id
 d9443c01a7336-2ae2e3ce58bmr3604695ad.11.1772141202912; Thu, 26 Feb 2026
 13:26:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123022258.136448-1-nick@khadas.com> <20260123022258.136448-2-nick@khadas.com>
In-Reply-To: <20260123022258.136448-2-nick@khadas.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 26 Feb 2026 22:26:31 +0100
X-Gm-Features: AaiRm510mQz5OMzE6LAMHDV7opdj7qiogaLj9z0r4G-Q4maIhZU0npcoFSphQrM
Message-ID: <CAFBinCBvwhvOwMJYuvVyubCi2KSGaRq3+RdX2fcj=7zLhSX+tQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: amlogic: meson-s4: add UART_A node
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, xieqinick@gmail.com
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
	TAGGED_FROM(0.00)[bounces-269004-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,vger.kernel.org,lists.infradead.org,kernel.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,fe078000:email,khadas.com:email]
X-Rspamd-Queue-Id: 0E2B01AFCD7
X-Rspamd-Action: no action

Hi Nick,

On Fri, Jan 23, 2026 at 3:23=E2=80=AFAM Nick Xie <nick@khadas.com> wrote:
[...]
> +                               a_uart_pins: a_uart {
> +                                       mux {
> +                                               groups =3D "uart_a_tx",
> +                                                      "uart_a_rx",
> +                                                      "uart_a_cts",
> +                                                      "uart_a_rts";
> +                                               function =3D "uart_a";
> +                                       };
> +                               };
Can we please keep the split between rx/tx and rts/cts pins (as we
have it on other SoCs)?
It is likely that many boards follow the same path as Khadas VIM1S
(and Amlogic's reference design). For those boards that aren't it
would be great if they don't have to update meson-s4.dtsi.

>                                 i2c0_pins1: i2c0-pins1 {
>                                         mux {
>                                                 groups =3D "i2c0_sda",
> @@ -814,6 +824,18 @@ mdio0: mdio {
>                         };
>                 };
>
> +               uart_a: serial@fe078000 {
> +                       compatible =3D "amlogic,meson-s4-uart",
> +                                    "amlogic,meson-ao-uart";
> +                       reg =3D <0x0 0xfe078000 0x0 0x18>;
> +                       interrupts =3D <GIC_SPI 168 IRQ_TYPE_EDGE_RISING>=
;
> +                       clocks =3D <&xtal>, <&clkc_periphs CLKID_UART_A>,=
 <&xtal>;
> +                       clock-names =3D "xtal", "pclk", "baud";
> +                       pinctrl-names =3D "default";
> +                       pinctrl-0 =3D <&a_uart_pins>;
For consistency I also prefer if you could move this to
meson-s4-s905y4-khadas-vim1s.dts (patch 2)


Thank you!
Martin

