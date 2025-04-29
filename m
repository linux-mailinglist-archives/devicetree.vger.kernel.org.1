Return-Path: <devicetree+bounces-172110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 445A5AA3AA7
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 23:57:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C9269C0FA7
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 21:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6213F26E17A;
	Tue, 29 Apr 2025 21:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="H3ZM0fX6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A4E238D49
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 21:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745963851; cv=none; b=ubvh7cDTYCEK5LqrEzS/+6XY2VRNXELmF2topRmzC//qiOmRUPOBoXiqrDIXJKDdABMFeQTS1oubTth8/ZPs6RJ78F3NsVmPuQH6SgUOupxDU5WyltKd0bZhA6vNh8IGCifjH9XYsJVe+yKudunH/rsmKjTu+x4mC/iLBNNUWzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745963851; c=relaxed/simple;
	bh=1P+KqJCl+BT8ecP/xdKBgPfjI1+DmDlsxbMLuEAGIAo=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r4gzpH/f3IPrFM8Uxc2Kel7cX4h7iMAHDp23wt4uby2a6MD1cHNvKrVe/atwpEmcUtXL8IcaioJ21YLvoH8o1gIdCGrz9QDV5FVwebqqXg7FpL3KziFKAXEfs7Ac1n8ZzlffcufAKYFlRirUyHVGjPVW8Ah1FWmqmheDopX/WEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=H3ZM0fX6; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6e8f6970326so74399936d6.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 14:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745963848; x=1746568648; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gq+kwZN/MyVZc1uW7z6nPFptfAEWXYUqK/icC7+T8p0=;
        b=H3ZM0fX6BmGMH8HxSWv7t/Wlxi6HwN5zXR1ZntTqdyAQWd0TIjTM+IVN65+Xc9YBP0
         YUXLt8QR9SSLGzAZ9sNKN5FGZ/ppOUDalZTe60/P4mpJpqLUIaaNpIlmSTu04kJvumN0
         OTHaK+b2s9U1eu6e7o0PvP1WsDFO7veeWskoA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745963848; x=1746568648;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gq+kwZN/MyVZc1uW7z6nPFptfAEWXYUqK/icC7+T8p0=;
        b=JkD4M7787uTLARGJvf/3DP8FztUwCpHsTwrPDijewUtC5tmoYj9Hr3drg7qck+/Ovs
         V7mjuqCq30fagggJS+PLgBYKXZLdRGm15vNTg8ZGm4bJDgl54DjL9V7n5vEwDnN1xarl
         SaGY2J3V8OqNLoCcku0WJYIMoZmc9W4pXHDCCgu2/EFuqFfVuoSAUXs0+3pwykkD1n98
         sGpp9XnssiCkNEGArxqEqSmj51fy+5FuKtwDWIbN83Ug6xT4sY9GaJn+PkrOpMdQGVSs
         NzgDhXG9ZkBcDy70U5MYxLEsEMZJoreox7yC0BHDEAv7llZZN2jCE1vcRwrfMk2VoJ4+
         1RVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHsenLRkHWIx+OhhNg6U9aAui1P1iCn8DhXrW4QgP9kLcXrs3cBBaaILL3TiypLBFiHFobDxJYKupl@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0y3etuDih8UX2fRWnc1AHOvkOgpvbb0udyVekS96f2JpFq2Nr
	iXXP7sQNgLXDZz/PMzIVyUE6o3YfRqGL8QgOfqSHAcrt3XvBIwyKwa+DKhhFYwPmQnEtlJsTAGx
	gR6AXU+5XM/bp5YlDgWaRkyTYLo9KWr7x/j7X
X-Gm-Gg: ASbGncuhl7zjNIaZaiCItwaAZDqtyqGAQfHzXrf2CrRUmtS1rarWqgYq73iTyauljR0
	CkY1teXbxHzw69lbsrOCiPj0DpFjRaR+wzcbbQb2ZRw7vIlY4isODEJx9wSJ1tjHOFH+EE6tDsH
	P1Y5/PeupvA7awvukP25D74+a4HqZ9adWAsUgRD0d1KpJuQ4UE5A==
X-Google-Smtp-Source: AGHT+IGFRFcmj203HgxtSiaafsTGGAnI40IQFnCG9K6ptPppPzLUX6brI2DPTkwS2p0VSLmxrTrYIiPhDp6xRk6AwAw=
X-Received: by 2002:a05:6214:e8e:b0:6f2:d25e:8d17 with SMTP id
 6a1803df08f44-6f4fced985cmr17148876d6.21.1745963848451; Tue, 29 Apr 2025
 14:57:28 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 29 Apr 2025 14:57:27 -0700
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 29 Apr 2025 14:57:27 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <npnpujjfonvzhf5c4upgajhx6hu5uqmerewmbqprvl7a3xrqgm@datubwgyucby>
References: <20250416000208.3568635-1-swboyd@chromium.org> <20250416000208.3568635-7-swboyd@chromium.org>
 <npnpujjfonvzhf5c4upgajhx6hu5uqmerewmbqprvl7a3xrqgm@datubwgyucby>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.12.dev8+g17a99a841c4b
Date: Tue, 29 Apr 2025 14:57:27 -0700
X-Gm-Features: ATxdqUHSfTHDCNbiMAyib_Rr1yPvdu5LV1ChItCTDCW7J5DkmOrjGVP9y9dJHm0
Message-ID: <CAE-0n51eQns8ifUzc36FNSSQJ7WFd_8hZ3JnNcFvgrTrvqRhow@mail.gmail.com>
Subject: Re: [PATCH 6/7] platform/chrome: cros_ec_typec: Add support for DP
 altmode via drm_bridge
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Benson Leung <bleung@chromium.org>, chrome-platform@lists.linux.dev, 
	Pin-yen Lin <treapking@chromium.org>, 
	Abhishek Pandit-Subedi <abhishekpandit@chromium.org>, =?UTF-8?Q?=C5=81ukasz_Bartosik?= <ukaszb@chromium.org>, 
	Jameson Thies <jthies@google.com>, Andrei Kuchynski <akuchynski@chromium.org>
Content-Type: text/plain; charset="UTF-8"

Quoting Dmitry Baryshkov (2025-04-24 03:51:17)
> > diff --git a/drivers/platform/chrome/cros_ec_typec.c b/drivers/platform/chrome/cros_ec_typec.c
> > index 2cbe29f08064..27324cf0c0c6 100644
> > --- a/drivers/platform/chrome/cros_ec_typec.c
> > +++ b/drivers/platform/chrome/cros_ec_typec.c
> > @@ -337,6 +340,9 @@ static int cros_typec_init_ports(struct cros_typec_data *typec)
> >       u32 port_num = 0;
> >
> >       nports = device_get_child_node_count(dev);
> > +     /* Don't count any 'ports' child node */
> > +     if (of_graph_is_present(dev->of_node))
> > +             nports--;
>
> Should this be a separate commit?
>
> >       if (nports == 0) {
> >               dev_err(dev, "No port entries found.\n");
> >               return -ENODEV;
> > @@ -350,6 +356,10 @@ static int cros_typec_init_ports(struct cros_typec_data *typec)
> >       /* DT uses "reg" to specify port number. */
> >       port_prop = dev->of_node ? "reg" : "port-number";
> >       device_for_each_child_node(dev, fwnode) {
> > +             /* An OF graph isn't a connector */
> > +             if (fwnode_name_eq(fwnode, "ports"))
> > +                     continue;
> > +
>
> ... together with this chunk.

I check for the of_graph being present below. It's all sorta related.

>
> >               if (fwnode_property_read_u32(fwnode, port_prop, &port_num)) {
> >                       ret = -EINVAL;
> >                       dev_err(dev, "No port-number for port, aborting.\n");
> > @@ -417,6 +427,42 @@ static int cros_typec_init_ports(struct cros_typec_data *typec)
> >       return ret;
> >  }
> >
> > +static int cros_typec_dp_bridge_attach(struct drm_bridge *bridge,
> > +                                    enum drm_bridge_attach_flags flags)
> > +{
> > +     return flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR ? 0 : -EINVAL;
> > +}
> > +
> > +static const struct drm_bridge_funcs cros_typec_dp_bridge_funcs = {
> > +     .attach = cros_typec_dp_bridge_attach,
> > +};
> > +
> > +static int cros_typec_init_dp_bridge(struct cros_typec_data *typec)
> > +{
> > +     struct device *dev = typec->dev;
> > +     struct cros_typec_dp_bridge *dp_bridge;
> > +     struct drm_bridge *bridge;
> > +     struct device_node *np = dev->of_node;
> > +
> > +     /* Not capable of DP altmode switching. Ignore. */
> > +     if (!of_graph_is_present(np))
> > +             return 0;
> > +
> > +     dp_bridge = devm_kzalloc(dev, sizeof(*dp_bridge), GFP_KERNEL);
> > +     if (!dp_bridge)
> > +             return -ENOMEM;
> > +     typec->dp_bridge = dp_bridge;
> > +
> > +     bridge = &dp_bridge->bridge;
> > +     bridge->funcs = &cros_typec_dp_bridge_funcs;
> > +     bridge->of_node = np;
> > +     bridge->type = DRM_MODE_CONNECTOR_DisplayPort;
> > +     if (!device_property_read_bool(dev, "no-hpd"))
> > +             bridge->ops |= DRM_BRIDGE_OP_HPD;
> > +
> > +     return devm_drm_bridge_add(dev, bridge);
>
> Could you please use aux-hpd-bridge instead?

I can extend that to call some function when hpd changes. If I make a
device node for the mux and the TCPCs then it may be possible to push
everything into aux-hpd-bridge and use it for all three of them.

>
> BTW: what is the usecase for the no-hpd handling here?
>

Looks like you figured it out. I want to capture the HPD state so I can
then go read the EC mux to figure out which way the mux is pointing. On
trogdor the EC doesn't tell us which typec port has HPD asserted so we
snoop the HPD state from the drm_bridge, read the mux when HPD changes,
and pick the right typec port while also injecting HPD into the state of
the port. The no-hpd property is used on Trogdor to indicate that the
bridge in the EC doesn't signal HPD properly, ensuring the previous
bridge handles the HPD detection.

