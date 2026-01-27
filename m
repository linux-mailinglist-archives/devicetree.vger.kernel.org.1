Return-Path: <devicetree+bounces-259814-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDwyMpCOeGmqqwEAu9opvQ
	(envelope-from <devicetree+bounces-259814-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:08:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3B792731
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:08:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 168C630143E1
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A3A82E7F11;
	Tue, 27 Jan 2026 10:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NZ4LNQxM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5972E7621
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769508494; cv=pass; b=T76PFcR8spE1DXkUz+20JjggeQmtw5XIQZEUwjvaS322QA7OMSzEgDIh+EIH2BrS9hdWJ60cb3s4F5+OvFvNOVEtL9+P7PsS1WwIKvfxgaJMNtiXZ6qEp8G/M6F0WzNsuhR6ubredGJmh+xuAPnFI3DUn9WbNlE6xIYwMTWWuAE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769508494; c=relaxed/simple;
	bh=MLw86eBiDXAumXM++7EfiGG29Qu1A8IbBkYgIWvUoKk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A4a6EabDBBI/q6RN7PzcGkrFMeObIJb8eLnNPgo5/0myGDcmLrdTXSpGXNjpiF4SOuJiRGCCa3GikSqIH5Yyh/OZ+BcfEBuwyReuDQpDWmwAbRbiCq42HYJXAVu9NV5YeCqHTESKebl9As/cXrHGnZruxQ3wgj5AirKC43yrnMo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NZ4LNQxM; arc=pass smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-65378ba2ff7so8282710a12.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:08:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769508491; cv=none;
        d=google.com; s=arc-20240605;
        b=R5++QUrR49BmCUBJ9k7G96hC7TAu3dkoK0eApBwNvTCvoniIhuCqXqK7WXzbDBRH+k
         eFYzmbp3MTYHh2I/aH8sAzU1SGld9B6+7xB+gzyOgnwh4afxWNOVi38wrY1aL0JdLE9m
         4t5UNNMddYKPSexkf5BOMkmob+9g+3S1LBPjOZRr12/d9ngh3trMc6O6R+3wUwy4EMmA
         lZYHMnx+MJKbInZA75pOsbs3OQjkuNIEXMgTqiLArIl9YCdSLbeicc8zEd8I7sGtTH7m
         bBGLEpkB3PhickikBZItGazKb7kKClc7HzJdq/IRRJG5T1KLVdMkCl7bQyr/soVnt4Js
         QW6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bpxQmfY9VK7T+Y3W6DWNgC6rQuK+Ld0siGTt5w9irRg=;
        fh=StANoJwUrJ7KX5IgdiBCda1YnOy0TwY1l/HIsSj2cZg=;
        b=jyN9OVhSp0kUvxiRhlIVjTAgYjRmJKDhMLt7XQsUMJp9g78b2PI3FkgE6TwooyZyDh
         rwru60XZa1iUjOeASNo03UXv7EfNBd8ANQZcSi8+7LDD8hYnyOaakyR5RR5w+Sf0pRyp
         B7DpzDUtODswydxHE0GtZweEzmn/qAnU6dNKmK5/txS2P7NUEQ+Jnvb7SxZPk9Dc7iOe
         qtFi2HE7hf1VBATAkxywQj5/rPCozPeBsdSzQdp+KRR1gBDTcTg+FEoLwXeIs1I2m6Fu
         u6aQiWK5Ig2a8TaV7bsjZ/o3cH9c7gD4kCzqQuL6k60sPNlVj3HCJuZK3jS2aBSrUbam
         UroQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769508491; x=1770113291; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bpxQmfY9VK7T+Y3W6DWNgC6rQuK+Ld0siGTt5w9irRg=;
        b=NZ4LNQxMyzH8a+73O1L+U3RpEVlcCjiKmi8MQ8VwPQkONMXrkMFCRTwxrmqCHkz6l1
         2EkUZIxGbBgO6Ji7LA/xvWYUklFiXH9MIHvyf+zYHYPBbOz7jlxKijDrNQyPRrVBHJWQ
         LD+DAc/KC/TLCakdfBx46NuXxT+Z2hfjnt/U7eCcYUbG1zyLSr8ZHfi0dlFf9RuAghYi
         CIJQakHNnKXgaIpfw/HMS8FDOSEhbP6p2cuYiEkmu4KKON+ifvEi4Tv+LeOzrtP/fkhB
         fn+8j98lx+ZUPmboBm6TOwRLb5TrJNmB9km7C6KGPm2UAxgYhv6Kry944o6rRElBwhTi
         mm8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769508491; x=1770113291;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpxQmfY9VK7T+Y3W6DWNgC6rQuK+Ld0siGTt5w9irRg=;
        b=cX4H6wwKBUiGBxydyavtLpFAT9VpGCGjQvum49K59uX1x5Ue+unqX/PWitx31WPhkM
         XVminL3OkFuxzDe7Zm0i+FjqDJGXmuo/5ObRJzeZF5h1fhVyD7eXmg4m9s9P3LBTPzyF
         P40ToGk96BTG5j/kYQ6dLjdMYST4MaQVeiWZkivtKbAwwZmVuXMYwn23Sss1V9dedIm8
         PZ8hpNS22LHJt6ccFtUhH1LM9E0KhNy0iJV2wqHqmK6LYeIqxyuRYvBJqniNb5Vo9uWX
         l7hci626g5iOkabKQJ/qbP97WcjXg4f5BoNIyXIamsZWsrfc3IVteRUwmSTt+mQThZvq
         erwg==
X-Forwarded-Encrypted: i=1; AJvYcCUy2igv9xoFOi8/aQNG0uWQ7npSATwX0fjQt5oW72RCfw2WtU90/va/5peLk7/dhrvarBxOJ7+uyXsy@vger.kernel.org
X-Gm-Message-State: AOJu0YwHhHYgqa2GexpkSWzMz2kn4CdxewMTWJJRt34F3v1ddtezFTun
	OLkFbtyDKy0OXGouO9tF6+S1LAOBTAUwqJFcNnScoGOtppAlGsZQ/rZQ0R1dvfLbCmfKIW1eJhr
	E+QelG4Q9c4R6DbeQnaTSi8BLXEZRvF7pYuCZef0N7g==
X-Gm-Gg: AZuq6aLxPq7Pt+68vvyv9uBWAKjqFITV+bFzYNPN5UHSbfpdsaKZoJUgK154+wHH0y6
	eBuCua5/nM2b/CtRdXxgaV8UF+Lu4yTikrzhWpxDaJVZCb365drQEnJClSJ05hDcR2BFtb0Gx5v
	Fy29JT4vcPVJ6KuNLlB53ul9/zqDPe9XnAjY2sVRcePDHHyFTfi3NzkZPslXkW3ejdPy6wfTFwL
	E8Aa5ALXiHcFuziOqYg54e5rVVRKhWpckDo1V8WGMsq3E4CmuWxQaedUCmwjJVczO0ZdsUb5hSb
	0IGm/Ie27MOxXd6QZhB0OSBt
X-Received: by 2002:a05:6402:1d50:b0:64b:6e44:217 with SMTP id
 4fb4d7f45d1cf-658a5f8e7cdmr891417a12.0.1769508490979; Tue, 27 Jan 2026
 02:08:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-3-vincent.guittot@linaro.org> <69592713b7bd419e23df458734ca78070a83e8ac.camel@pengutronix.de>
In-Reply-To: <69592713b7bd419e23df458734ca78070a83e8ac.camel@pengutronix.de>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Tue, 27 Jan 2026 11:07:59 +0100
X-Gm-Features: AZwV_QiOrd8cMHRoDNLhWiUkjdTQ9Am6xMiRSspZlgdv4qBzTDeeYROI1wjEMTk
Message-ID: <CAKfTPtD+EZ+apAnS7tccY5UrQx3EWXb4j33F_5SkHY80akxz-A@mail.gmail.com>
Subject: Re: [PATCH 2/4] phy: s32g: Add serdes subsystem phy
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	bogdan-gabriel.roman@nxp.com, Ionut.Vicovan@nxp.com, 
	alexandru-catalin.ionita@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	Frank.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259814-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,linaro.org:dkim,pengutronix.de:email,nxp.com:email]
X-Rspamd-Queue-Id: 1F3B792731
X-Rspamd-Action: no action

On Mon, 26 Jan 2026 at 14:11, Philipp Zabel <p.zabel@pengutronix.de> wrote:
>
> On Mo, 2026-01-26 at 10:21 +0100, Vincent Guittot wrote:
> > s32g SoC family includes 2 serdes subsystems which are made of one PCIe
> > controller, 2 XPCS and one Phy. The Phy got 2 lanes that can be configure
> > to output PCIe lanes and/or SGMII.
> >
> > Implement PCIe phy support
> >
> > Co-developed-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> > Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> > Co-developed-by: Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com>
> > Signed-off-by: Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com>
> > Co-developed-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> > Signed-off-by: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> > Co-developed-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > Co-developed-by: Bogdan Roman <bogdan-gabriel.roman@nxp.com>
> > Signed-off-by: Bogdan Roman <bogdan-gabriel.roman@nxp.com>
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > ---
> >  drivers/phy/freescale/Kconfig               |   9 +
> >  drivers/phy/freescale/Makefile              |   1 +
> >  drivers/phy/freescale/phy-nxp-s32g-serdes.c | 569 ++++++++++++++++++++
> >  3 files changed, 579 insertions(+)
> >  create mode 100644 drivers/phy/freescale/phy-nxp-s32g-serdes.c
> >
> [...]
> > diff --git a/drivers/phy/freescale/phy-nxp-s32g-serdes.c b/drivers/phy/freescale/phy-nxp-s32g-serdes.c
> > new file mode 100644
> > index 000000000000..8336c868c8dc
> > --- /dev/null
> > +++ b/drivers/phy/freescale/phy-nxp-s32g-serdes.c
> > @@ -0,0 +1,569 @@
> [...]
> > +static int s32g_serdes_get_ctrl_resources(struct platform_device *pdev, struct s32g_serdes *serdes)
> > +{
> [...]
> > +     ctrl->rst = devm_reset_control_get(dev, "serdes");
>
> Please use devm_reset_control_get_exclusive() directly.

Okay

>
> [...]
> > +static int s32g_serdes_get_pcie_resources(struct platform_device *pdev, struct s32g_serdes *serdes)
> > +{
> [...]
> > +     pcie->rst = devm_reset_control_get(dev, "pcie");
>
> Same here.
>
> regards
> Philipp

