Return-Path: <devicetree+bounces-78533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D081912897
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 16:55:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 298751F23307
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 14:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 798A23F9EC;
	Fri, 21 Jun 2024 14:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="eosdQW/P"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF98938FA0
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 14:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718981705; cv=none; b=oJtLcslbKxHq0ek6OmPhHQyO0AjOEtJ3/2eoQacDADuhOFNsfxDt3K5GDS/6hsFKNbYO2Ayje+MZxWE2+NrGlDLzOxGk4Cw/f6TbsJ7753Jli8mHBnaKt5aC5ji6gIiwygHTnDYLi69uFHRQb7I0DBi8c5ElLgSmHVg3x2ToQDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718981705; c=relaxed/simple;
	bh=sA2EemPlAa1+90qgqq7ZJOodmKmw2IBbHOSXPvS/iWU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nPR/AJyof0ZlgYWKEDlmB4av2Ls0lApuHUEQfnR8qVW/cydKO1QJJ4Q0APR9ByFONvR5vEpQtKVSWbYz9y/fuRUXC2BY+X06HOxUPjQL/15Y+4PGrov9vQJBgp/oUGS5QASld8fiPzmXJfP4P175wqge10n1bsFIH6eafiD3rw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=eosdQW/P; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1718981702;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CLJWp7apiozZzbnDE4rKsBuGgxng8bCCQ3VO68nlf8k=;
	b=eosdQW/Pkko8vc2e9PF47l9iUQpNt7lGzWu91kkGny2IHJqQFq7leZ78AcBqfWjRRfvq+m
	OcDa/uKbAGWKgFuzoF7FrTZKKMyhwcMeN4FWLu6xvEqVlc2Kq9qbWfgZUCEH/7TNIt9X8k
	Z8sDLU/4E5dqP9xQpU15Fzp4qx/+RKM=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-88-JdzsTXInOlyM095qJsnt3g-1; Fri, 21 Jun 2024 10:54:59 -0400
X-MC-Unique: JdzsTXInOlyM095qJsnt3g-1
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-43fb0603968so26132611cf.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 07:54:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718981699; x=1719586499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CLJWp7apiozZzbnDE4rKsBuGgxng8bCCQ3VO68nlf8k=;
        b=fRqbnhSaxdJVgGkPUA/690aosW6g+jGmgaxxmwTZh9subhHy/aOqVtO3x7GyJi3Gq/
         5YfuukOutwu7uu6naW5ioOF5x0DR+jlaBAkOoSkFobdc/8zeLMMyzzdGqY4RkhA4J6Vo
         YgmN4bXMAVYdyQfMf7WpqE0RjwxhKhFdwOz3Vz8IvVYbsk68/4/BhcoutZ+wfnIA33Qo
         +KB5FiTChQggzXsxn9QenDSsfAsxqZ5+7Z+34kgG9ekBv7MQ11tFDwcf5mBj/hZABYOw
         0Ojs2vzFlOh8LmWK0vdYw88oiY+wwAQNM3ln1girhXTF9pYYUtsxuNbgOcgrSPJYDweR
         3nQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVctt4vwxfsBImUxSN6UZxFyyz+f3OVh/ZRePbGES4VE5XOeCxEVbq4jwochq8TKscnko0SCgXJHwg1tfYqhos9zvAxwliizJ2YoQ==
X-Gm-Message-State: AOJu0YxCkgcjOZTOYqgkhM4hw9OKVtIohOpvgkzPvhK9fRs0X6Pz32sJ
	TN2cjmQVaSIlV8Sa0ajM1hn3i62i83hnOhYJDgc7Fj/rsDKGBQlQunnJMLja4V230rAxZllMtH3
	ZhwTeOCQiuNT/ZSOmnqxc9+EuUp24YaO237nMvGtlBC+4w4Ovgs+5bvMnghA=
X-Received: by 2002:a05:622a:1344:b0:444:a1f7:c76c with SMTP id d75a77b69052e-444a7a4a690mr72023881cf.50.1718981699062;
        Fri, 21 Jun 2024 07:54:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGA/mZMLmC2PMvsA5TPz1W93o/nYaAFsRLxZI7ixuWF5tBXy17kgJF52R2CO4IPg91XdCLzfA==
X-Received: by 2002:a05:622a:1344:b0:444:a1f7:c76c with SMTP id d75a77b69052e-444a7a4a690mr72023681cf.50.1718981698558;
        Fri, 21 Jun 2024 07:54:58 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::13])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-444c2c88de3sm11735691cf.87.2024.06.21.07.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 07:54:58 -0700 (PDT)
Date: Fri, 21 Jun 2024 09:54:56 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sa8775p-ride-r3: add new board file
Message-ID: <t7ztnomeyebome2xylbp4jygwzod35bqn3rwj4gnivt5rjl7b7@cuuqafqzecyf>
References: <20240619183255.34107-1-brgl@bgdev.pl>
 <20240619183255.34107-3-brgl@bgdev.pl>
 <henuash23dwkj5fcmub6sabygwo4kam7fgots2pp2j3eu4asuk@cn3o7a62lo74>
 <CACMJSes7XcXPZt8NgZm9mQ7h2B6A=+mL13gpZEHY6UnTFqXdOA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACMJSes7XcXPZt8NgZm9mQ7h2B6A=+mL13gpZEHY6UnTFqXdOA@mail.gmail.com>

On Fri, Jun 21, 2024 at 03:14:13PM GMT, Bartosz Golaszewski wrote:
> On Thu, 20 Jun 2024 at 18:04, Andrew Halaney <ahalaney@redhat.com> wrote:
> >
> > > +
> > > +&mdio {
> > > +     compatible = "snps,dwmac-mdio";
> > > +     #address-cells = <1>;
> > > +     #size-cells = <0>;
> > > +
> > > +     sgmii_phy0: phy@8 {
> > > +             compatible = "ethernet-phy-id31c3.1c33";
> > > +             reg = <0x8>;
> > > +             device_type = "ethernet-phy";
> > > +             interrupts-extended = <&tlmm 7 IRQ_TYPE_EDGE_FALLING>;
> > > +             reset-gpios = <&pmm8654au_2_gpios 8 GPIO_ACTIVE_LOW>;
> > > +             reset-assert-us = <11000>;
> > > +             reset-deassert-us = <70000>;
> >
> > I need to read your other series still wrt "ocsgmii", but any chance you
> > have access to docs indicating the reset timing? I've never had docs for
> > the specific Marvell phy on the prior board or the Aquantia one on the
> > new board...
> >
> 
> I have but they're not public. :(
> 
> > Boot time is something automotive is always concerned over, so I just
> > want to make sure that this timing isn't any longer than it needs to be.
> > Right now it looks the same as the Marvell phy's in the "v2" boards etc
> > and that made me raise my eyebrows.
> >
> 
> That's a good point but what else can we do? This should typically
> execute in its own thread anyway.

I guess all I'm asking is are these timings accurate? Ethernet is often
considered one of the things that needs to be up early (think about
getting the vehicle reverse status off the network for example), so in this case
I meant to consider it part of the "boot time".

If this is actually the recommended values then we're good, just wanting to
make sure we're not reusing the Marvell values (which may or may not be accurate
as I don't have the doc) since they could be larger than necessary, etc!

Dealing with the phys is a long pole in the time to get ethernet up in
my benchmarks in the past, that's why I made this change etc:

    https://lore.kernel.org/netdev/20231127-net-phy-reset-once-v2-1-448e8658779e@redhat.com/

If these reset numbers are accurate then we're all good here, just
confirming since they match the "r2" version which uses the marvell phy
instead of the aquantia phy, and that seemed like a suspicious
coincidence!

Thanks,
Andrew


