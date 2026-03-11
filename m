Return-Path: <devicetree+bounces-274146-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJqgA359sWmACAAAu9opvQ
	(envelope-from <devicetree+bounces-274146-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:34:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F73265788
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:34:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 742EC3019142
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC44836C9FC;
	Wed, 11 Mar 2026 14:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fy+ZJgEb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A74CE360751
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.170
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773239172; cv=pass; b=YSySHyKDXKI3f29ATPboSgk9g0e/scF59SQEFm273l+EFrH5tXMerRxjOWos09PdnggT3CV9Jboz03uSN6G8vYmM56tROhQolLDf2eMot5KgQ29/RQjs5mD1stxLrvMQnqrCYnYHnE7DO4glJXL7nTLf01nJGBAqTnmUys0XGpg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773239172; c=relaxed/simple;
	bh=DLLQojbvd9ZEtTNH/SKrXeA34ZJVAf400ALEzjCZm8A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N20p1D6IayUnJg4t/Qr5IoHLxQIvdW253gEm67+UNXZvM4hpt/M3KxmqbBxu3NaoSK/ePY4foxK0/Dgl6zdDTwn2yicxMEdv9RLydR5iX7UmcctZ1o8tW2weRhAScBVVvIzWz9vu8JJIg6uZoZaZuGvcD9PNsFOPqQj0pYjVATc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fy+ZJgEb; arc=pass smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-506bcb23a78so123011121cf.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:26:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773239170; cv=none;
        d=google.com; s=arc-20240605;
        b=Rs/1kYwD0ftC0Im0b+ERI+K1UugLC67w6YKBEkDN3nJiSABNLihcnfD0FZ4J2JWqQf
         qihCTnmOue3dzdba1Wm3MRQ/veOpe6tHXr1oRGmus+AEyOYwEM0v3vBQInZFen/HHOe+
         I+F1nwqM7ozTY+PDKv+L1jf3b0AR+jdZbiYRo+mM7+L80CkTPV3oHdcRS2GHgdzgH14S
         f+kWt+Vyxj6K/onjA5qk+ELjHNnegYp1CwpABpTaXu5CqW2zzZnFlMt0Nz9bm+YTNksN
         X5rmAF7osw6+QJFHHqW/+AzOVYV/SoQpnnPk/D+HrPcaWtqW5vYKTF0m9ZVPdG6/Gtq3
         AqYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/kw91T1sbd5zqvcmRC0YUZSdSvhwThMs3p0iH62bWwM=;
        fh=CWT08t5M/q23gRFI5JVtoolN5ZZ1J6VUYBj30svRn3I=;
        b=UnmabxCV5rQu81KdrrWL6IRbcB6UKFXWmYDXilv08/8YkIpJa7hFwF7N5o29yqUNb8
         Iff0XG1UEI4uM1tP/D9xnZiheKtQ6vw9tVdDFxiTt6g8zEo5Q9jnWJYWdcloEvRsHp8L
         sqbdIMyvBjwFxjKeEyKFXlNGwhaj/uyKOQt7hoiFEmTpIkcwxkvAze/hIGz+aNap1dIC
         reEFAevCjfEx5tYs4WaiHjG9SBtoAXyUjBXYHJui45oWnAKK/lCIgexP3qGotpz4UjYc
         tweU0Q4WsWnqZ5NWjHTeiwpIslcszyArzdsx2okDZrs1MNkiR+JTOEmFCxlzNgQIwZvW
         leaw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773239170; x=1773843970; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/kw91T1sbd5zqvcmRC0YUZSdSvhwThMs3p0iH62bWwM=;
        b=fy+ZJgEbLrWll+Wr616cKxi78/q3reakp7xsG7vgNGl4yfDFsDZFjve/EASXoDFz0x
         FQvKX2OcQFuijFzRl7n4xz5+7DqEW/PTW8CaI4LUbEcdze82sP58qbtzeh7TreQlo+A6
         0UEpVJER580NAusmIy7G4Gow81cigJXVh+2c+WCxHluckmH5fLiB48bQRgstaPcaEC+x
         KO4C/XU2jk4E4/TyLwkPHe+LrvdlFzQ0xoO6bcNJEfrv0to1PzUmhHDNSy2++D6dBQM/
         b3hjH12WaQGSaDEoy4K52SuhVZ+3fzto2mF3i46uR5jMo0XxRZ/JtWpYVWHgVtHbBgm2
         5uaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773239170; x=1773843970;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/kw91T1sbd5zqvcmRC0YUZSdSvhwThMs3p0iH62bWwM=;
        b=MM3LkIoEbgKTzIFPNhq4ZFBQwSfmwRvGHi1t40gSgfEVr8VUPSdL34EH9P7zO83KH/
         xurVg0boG/BU8iaMc9/VP0F05ygilVp6nCHu3ptobrKJsrtQ3yGwo/U1jj37w3MGYI5y
         FRJxryOUspLindShixREUgpj8Mw6cOg+BEaPyATXksDVPqUIERHCDHS4MSLRL3pJhZFQ
         jpiJCwXzYKiU3Jmvhls2sYgkOk02ereS9BjLU7nHUfE0b6D1lGdXkQ+taFFruMkcsbr+
         aS159QtRy52RY+VGRJ4wms7flDSsO3jt2T+VUemdnLnjoplBJ/bw6ekL2Mq5TY+b6Sw1
         djbg==
X-Forwarded-Encrypted: i=1; AJvYcCWZbmc8XsSQ+SC2JY9PWdufLsM2vBClP72GnpR8Ugm4aWC7LNx9eahsGICN1h+WCjNs24CuEOvow258@vger.kernel.org
X-Gm-Message-State: AOJu0YzjDKBGXPGJwoDfQEfv2WGvbM6P4VdBZCBPm7Jg08zEStnwVI7Y
	Iu3Yh8Y0dzj5eVH/JnvGd9akTToUFJcfdl+RlTQiMpK0GTdzXC25oThE73H7JwCM7qtbTjY1aoz
	y5C7J20XYfgKAjD9ueYPKR0P36xH+e6k=
X-Gm-Gg: ATEYQzyhO8zm3/EmjWITAvuogGkXKsdtumiPUBA7nzUVmdZva90lbFMigxQTuhN/eDJ
	TEYzSAq21SxZgsa+ubPR0qdlgoUGe4jhOPpm/L7daph7z0oYEdk36q+6pCHOI3tGrhsMNmk+bnS
	qPPx0usQhWdjD/1P4TpVWMQ6xkAjfSqbvjjGjoxz2ATK6R2a6raWOuD0Gc0HR9x57N+w6Cmttbe
	ffRw5zZcS/3cLbeuZfcqS0eCrXxqWMdOOTwIOlZDN3O9YTHi8C/kw706L19qqVBXsacfHXmUne+
	QP8qodM=
X-Received: by 2002:a05:622a:1181:b0:509:1cf9:ea15 with SMTP id
 d75a77b69052e-5093a1ce568mr34244731cf.56.1773239170496; Wed, 11 Mar 2026
 07:26:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310031002.3921234-1-dennis@ausil.us> <20260310031002.3921234-4-dennis@ausil.us>
 <CALWfF7KD1=U-gC4wC9M49kEYD3ijcfr+XSmMeh_-zAvjO2JVoQ@mail.gmail.com> <CAABkxwtz7KjVJpSzYhUWGyEym5k4d3NJq65OS_E3NCnrNUBTZw@mail.gmail.com>
In-Reply-To: <CAABkxwtz7KjVJpSzYhUWGyEym5k4d3NJq65OS_E3NCnrNUBTZw@mail.gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 11 Mar 2026 18:25:58 +0400
X-Gm-Features: AaiRm521OUVT7JY43-r19xBDa8sAqMr83aUZi0b84YOkyBHEnTztidYE-1zQZhA
Message-ID: <CABjd4Yz3MKOp-gE8kNc4EOt3-a0mKZsxvbVYCN4KsbqTRDtWgA@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Dennis Gilmore <dennis@ausil.us>
Cc: Jimmy Hon <honyuenkwun@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Hsun Lai <i@chainsx.cn>, 
	Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Peter Robinson <pbrobinson@gmail.com>, 
	Michael Riesch <michael.riesch@collabora.com>, Mykola Kvach <xakep.amatop@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274146-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,sntech.de,radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,rootcommit.com,cherry.de,lunn.ch,jmu.edu.cn,collabora.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ausil.us:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A3F73265788
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 5:29=E2=80=AFAM Dennis Gilmore <dennis@ausil.us> wr=
ote:
>
> On Tue, Mar 10, 2026 at 7:20=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.com>=
 wrote:
> >
> > <snip>
> > > +
> > > +       vcc5v0_otg: regulator-vcc5v0-otg {
> > > +               compatible =3D "regulator-fixed";
> > > +               enable-active-high;
> > > +               gpios =3D <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
> > > +               pinctrl-names =3D "default";
> > > +               pinctrl-0 =3D <&vcc5v0_otg_en>;
> > > +               regulator-always-on;
> > > +               regulator-boot-on;
> > regulator-always-on and regulator-boot-on does not seem right.
> >
> > Why were these added? The vendor did not have them.
> > https://github.com/orangepi-xunlong/linux-orangepi/blob/232ed4b97b65da2=
b7b647c4e3c496f8594b9f3f1/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-p=
ro.dts#L216-L226
> >
> > Was this mistakenly taken from the regulator usb 20 which is powering
> > the onboard usb2.0 hub?
> > https://github.com/orangepi-xunlong/linux-orangepi/blob/232ed4b97b65da2=
b7b647c4e3c496f8594b9f3f1/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-p=
ro.dts#L111-L119
>
> It may have been a missreading of the schematic, but it was added to
> get power to the USB3 port. before I added it devices plugged into the
> USB 3 port would not power on

Hi Dennis,

The schematic says that this regulator supplies the VBUS voltage for
the USB3 part of your Type-A OTG connector. If you make it always-on,
you'll likely lose the possibility to use this port in device mode
(which you would need e.g. for flashing images over a USB cable in
U-boot which also takes device tree sources from Linux via
devicetree-rebasing).

You also link it up as the PHY supply of the USB2 controller, which
doesn't describe the actual hardware.

Please see if you'd rather define a connector node for your Type-A
port, and list this regulator as its VBUS supply explicitly. I've
recently submitted a patch [1] to make the "onboard_usb_dev" driver
take care of enabling VBUS in exactly this type of situations (it's in
usb-testing now and will hopefully hit -next sometime soon). If you
need an example for its use, please refer to [2].

Best regards,
Alexey

[1] https://lore.kernel.org/all/20260217-typea-vbus-v1-1-657b4e55a4c2@flipp=
er.net/
[2] https://github.com/flipperdevices/flipper-linux-kernel/blob/2f814cdf07f=
50e901fc1b1328213e76460864c20/arch/arm64/boot/dts/rockchip/rk3576-flipper-o=
ne-rev-f0b0c1.dts#L303-L328

