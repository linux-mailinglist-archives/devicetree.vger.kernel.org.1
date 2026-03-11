Return-Path: <devicetree+bounces-273781-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id C9UiNZfFsGnTmwIAu9opvQ
	(envelope-from <devicetree+bounces-273781-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:29:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2717B25A557
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:29:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A12D1312CB4C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11627355F2B;
	Wed, 11 Mar 2026 01:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b="kKWufxsf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B851B346A0A
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773192597; cv=pass; b=IbtqKJa19yHBflqgssEksjnGGxtVXRWZW7Ec2VFfnQ1PQ7PbHP78ceTuofRPRxn6sKuAqiav0ah4Gv+8guG1orNBaUkQqnD6m3jvbIEKVOZndjkkrEu/++RUCUheeIdiB5wRqAJ5yPCCZ0wwj/tZ2z3DYvoROmCkM3VXqTm2Ym4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773192597; c=relaxed/simple;
	bh=byVQGE2pAgKNSz9GXpzZXvdXH8wBWizwOqGn/SlfPGM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sneDFVmjTbFRP6m4Yd4px4y0N28TrMNnRt4uzqwp1zJgcGzySECv7CiP6WdvraYC7bHh5uKklTpovilgxjUhj3mSs8HX1IJ28s7ydvjq0FgjVrdFazX+DfWLM8Vfv6zYSF3fgYX2SXZPYem9hTrseV9HCgnvwtfWlZlMyhvE2MY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us; spf=pass smtp.mailfrom=gilmore.net.au; dkim=pass (2048-bit key) header.d=ausil.us header.i=@ausil.us header.b=kKWufxsf; arc=pass smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ausil.us
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gilmore.net.au
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-89a61cb72b4so11497176d6.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 18:29:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773192595; cv=none;
        d=google.com; s=arc-20240605;
        b=M35kJj8XgVEwiPWePmnnztFa8jZ6m8+3yGpTC+wKB9J4Ca9xSVzj5qzq/HOQBlIQKP
         P4gv9/ZJvI2XpYkIVstYP0xyT7W2vnqhc/qgiuJRPeIaVo9GxA6vNrGGzCeRvDdZ2MWs
         OD2wC2AzofwO5WWL62nXIQ6vd/PVRZKRHIrAoz156iy43x98zpu2l+AzUMnBsxTtld6a
         tKAq/1sPExKkVvuW3g1sXgit5SabgQWJnH/ZGk21ks+NLEiru1qs97KryDbqs/CC9U2O
         nmeZ5Bq0hondW6FCRVW6Gwxc2VNnYi72McKfLYS4HxlXYtgxPpRYAFUsEOXexRoAPCox
         JDBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=sWZp1dAqVPQSaHrep/yDn/qvo1iogNLvOQo/Z4cwLac=;
        fh=LhJEKFOtKiz3/yLZaakVE7KVFnHLM5VOsVhCURzJn8s=;
        b=gjq0oRhz1KZf8kE5g2ZVmk2T4USa9D3r+/vJnBUi5aP9pBOidZA2+uBsGoOfgIGQVz
         rjmpjST6czXSSB1f7PTjrHDlERb/dYt+mhkmWJAqbwPdHosaNeKlXDHZJMMfHeaUm9sr
         GAl+3Ks6cGTvMFZJESruJK4LKHBvGwoBLdX6y1LW8TDx0QE/zQu0/vXIIRL0qTbuHTNY
         zAo2o/OYNFq3R50GioC7PhZ55EXXCw8EJdqXHl+L2yB9TmOrpV/JEmomFQ50VXcOcW8o
         oLZ17m0sHWv4he4g1bWDdE+fFkBMbBkdE0ooD6ucua05bQApK1DBy/2W8HKZCezBGjIu
         qKuA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1773192595; x=1773797395; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sWZp1dAqVPQSaHrep/yDn/qvo1iogNLvOQo/Z4cwLac=;
        b=kKWufxsfm5iD9pWNrEkJ1TaDFI75Ux7iHkSNh6io4d7OUqiGkb2NceO4VMa0UHzdOK
         4lKD/bWbdBndoUALlKCjYWcYV1nC+P8E1ZuGuzvVViO482Gqg/lEBZumhKekADiEigp7
         giN0p9cX4QCh1E9FT+CqhHcbEl48lEQ5WCfSG4hOK6OCUxeyQMOROX/jFS0rCW+Blkba
         bfq5wcRHxv0MgtNEBOmo8Uom4b8mdz/PAh83OrMc8fj9u9NY+vFQfh5sdUG0iht6gm+x
         TStbUupqihWdozMw90Mirv6Y+wVxTgj2Tpa7EpZADtOJTHXueTFT8MQSC7F2G8KQFukj
         4s+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773192595; x=1773797395;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sWZp1dAqVPQSaHrep/yDn/qvo1iogNLvOQo/Z4cwLac=;
        b=Ue9wlQodyuv82KAoPBnZf0m6SLwLUhM64ZsPvy0VGw90FBpM9EHdPjBaTPW1Z8pAPl
         viXuxSsRlmx/OwRi5UVHwrifhVbcKfIWQpJxXxf4oTXF2ysKjWpY/u9qNZSKQWpc0yn8
         K27w4qTjs9ygH7+fynKX1vbK05u5cohDuRgfQ431yVgJq9xAqVOg0ONBSAvWaELb/qtL
         Ouww1wH5C+J+TG9zcTOd0Oq5Mt8HIOfKK13EHHsmmzDat5+m+kPv59flUUqqWCC9GOs3
         ZN+9TaQlDzE3fn+Hu00FWY0ci7eqq0pG6Xq6IXdEUT+i3EdyD6hWxfvXqV1X7WxoJrlF
         frdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFPTkyw/DQwB8FVF1UeLr5HDyGqjfk5R3VfBILXfkZqNUnhdJDPqzxz/j8mAGVHykX+XkAlhCALi6T@vger.kernel.org
X-Gm-Message-State: AOJu0YyoTYJx+bZM/WHUaW7zy00MnF1iXanPc+iTAKv/XnPoX++fcB3k
	Z4rbtQyV9dJVOBA4PCBhW63IoCrRF+Ol0cQzSpooIMlg6+NjDEvgvYWXooY+XpdfBR26WvkV3yU
	uf3+cj5moR59ryugH7ihM1ChpXJ/P1bDPm020MazSTg==
X-Gm-Gg: ATEYQzw5p0TpgFQ2AAmN1zhMvkFi6abUfa5dCiWbrphyfyDUq0pyALPKuQ6/s6we2Bj
	tmJEK4rtP/9xf6A8hzyeULGCzcMGD0jdI5YtnFDtE/JqzbmqNuWgwT6/kPWSPlKqE2CINKTMiwT
	7Vwmno+FDHvm5KSEGTe9vqhU+PF2PLf4mPcNt6RGZQkL2MvzfR5zezZ7VEX+UmQowr2b5UQPJ9g
	pdvqeEHaQvP8/Mn1DdVoDYHGbU57BV25WKLw4+1zPLVPn4J4Ro7tel507jRgoj0B2x+dIMChyvv
	bytj08kInPjOCWWykMe6xjJeL6gDvK6PE8juzUpjjidE44klJ9W/6rpxi6ZVuVvxXaHHRfdEbdj
	k++ClYw==
X-Received: by 2002:a05:622a:1351:b0:508:faa5:451a with SMTP id
 d75a77b69052e-50939f5295dmr9948661cf.13.1773192594678; Tue, 10 Mar 2026
 18:29:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260310031002.3921234-1-dennis@ausil.us> <20260310031002.3921234-4-dennis@ausil.us>
 <CALWfF7KD1=U-gC4wC9M49kEYD3ijcfr+XSmMeh_-zAvjO2JVoQ@mail.gmail.com>
In-Reply-To: <CALWfF7KD1=U-gC4wC9M49kEYD3ijcfr+XSmMeh_-zAvjO2JVoQ@mail.gmail.com>
From: Dennis Gilmore <dennis@ausil.us>
Date: Tue, 10 Mar 2026 20:29:43 -0500
X-Gm-Features: AaiRm50D0OtMAsh0hit8iP6ZIxcfOA-A_ofh3hQyy_97B35SnBk_C_vdM7fTNJU
Message-ID: <CAABkxwtz7KjVJpSzYhUWGyEym5k4d3NJq65OS_E3NCnrNUBTZw@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Alexey Charkov <alchark@gmail.com>, 
	Peter Robinson <pbrobinson@gmail.com>, Michael Riesch <michael.riesch@collabora.com>, 
	Mykola Kvach <xakep.amatop@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 2717B25A557
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[ausil.us:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_BAD_POLICY(0.00)[ausil.us : Multiple policies defined in DNS];
	TAGGED_FROM(0.00)[bounces-273781-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ausil.us:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis@ausil.us,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,jmu.edu.cn,collabora.com,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[22];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 7:20=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.com> w=
rote:
>
> <snip>
> > +
> > +       vcc5v0_otg: regulator-vcc5v0-otg {
> > +               compatible =3D "regulator-fixed";
> > +               enable-active-high;
> > +               gpios =3D <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
> > +               pinctrl-names =3D "default";
> > +               pinctrl-0 =3D <&vcc5v0_otg_en>;
> > +               regulator-always-on;
> > +               regulator-boot-on;
> regulator-always-on and regulator-boot-on does not seem right.
>
> Why were these added? The vendor did not have them.
> https://github.com/orangepi-xunlong/linux-orangepi/blob/232ed4b97b65da2b7=
b647c4e3c496f8594b9f3f1/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro=
.dts#L216-L226
>
> Was this mistakenly taken from the regulator usb 20 which is powering
> the onboard usb2.0 hub?
> https://github.com/orangepi-xunlong/linux-orangepi/blob/232ed4b97b65da2b7=
b647c4e3c496f8594b9f3f1/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro=
.dts#L111-L119

It may have been a missreading of the schematic, but it was added to
get power to the USB3 port. before I added it devices plugged into the
USB 3 port would not power on

Dennis
> > +               regulator-max-microvolt =3D <5000000>;
> > +               regulator-min-microvolt =3D <5000000>;
> > +               regulator-name =3D "vcc5v0_otg";
> > +               vin-supply =3D <&vcc5v0_sys>;
> > +       };
>
> <snip>
>
>
> Jimmy

