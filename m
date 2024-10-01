Return-Path: <devicetree+bounces-106959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1052798C5F7
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 21:22:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB3F92826DC
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 19:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 677F51CCEC2;
	Tue,  1 Oct 2024 19:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LNQKyAK/"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA861B5820
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 19:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727810552; cv=none; b=rspNDzaCOTC/c8UkUnrvs7H9vMf0U2hvQp7+fnhJj0seXmt/CD8YBLovBFMv8dfpj7N+FvgWGF3sKggiA9T5VRRby0aZGyoXPPrvyGXkWkE/Paf6s7gBzRt0GLnosxPSGybUZ1i0ev64ifdsixzvU3k8yWwCSWd5gs7yNMnFMqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727810552; c=relaxed/simple;
	bh=ygO/N17hku03zHkLD9a3YOJfQxxMRBZZVT5wtQHGzc4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yj4QBj+byHfNmGtUdgc9Z6VE1pxZoUxH1Q/OeVin9aIgMgvzUYTu3XC0KK0k9yISEdova0Rc36oq5fVGGGDp59VLGnlazMePzvLYwihygzA/ppOHo/pp99NK76TfFrW0smlfCkPj/03GVtzcg3+WRt3YimLKGaE16/1C5V7RG+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LNQKyAK/; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1727810549;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XlRPm4OUSoltEzTDQbJSpZiwElY5sIlU1Xg9/yWTEWY=;
	b=LNQKyAK/Pfy0nrcXSQXodPq0eKtWyqDUNPwB55f+yOaiBRwChAxJv4rk3jyVr5CHLDZMSF
	jYnGEpC4yE1KB3IzzNHkFFXMjcts3bq6Y+AuwwbBY0Hu0aalcJPq3H9CMoAB09SOeYeNNg
	5qFG1nv/AjBUCJsI97bxLrKk3HljBFk=
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com
 [209.85.210.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-271-RmK2pE5gNeufFc_Pm6k2VQ-1; Tue, 01 Oct 2024 15:22:28 -0400
X-MC-Unique: RmK2pE5gNeufFc_Pm6k2VQ-1
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-718dedf3615so6710081b3a.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 12:22:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727810547; x=1728415347;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XlRPm4OUSoltEzTDQbJSpZiwElY5sIlU1Xg9/yWTEWY=;
        b=Iv3fZCtAoPutRo0qy6cvVhVi5BIPVkI7CpFqr27B9bke/ViFLbKVo+f8mG+dD20pL+
         RkTeuOfQI7kbH5TyAqYrkTVCKXnlS9jZ0XDca9Lkx01/i3Z2+6HjtUVc1NQDRHjuE+2u
         TuTe6MQElk2upzhA7lPQzwG3h6gymQmAumayFGTV1hPBzT8tb5xgSRrS1AqukdTlXqbq
         YmG53Tidb9fxxDG6Q7qiU2oRMA0sD0yTh61raoRyhs42b3aRkHkLrJncrF2XGpQ8M4WD
         k5wflhO/Q3OmmczNOGyBxwqSnLCJCga6X7OCzeC54gYw3o2jEThSUIM0hyA1qbAiv0QL
         lhEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwBM1dbMMkvUUw36Gch11czCxeBvHA4gWBPv1usEiCzmEqZoDoG0MX2HcMb7AIg+B+edd3lMJYY548@vger.kernel.org
X-Gm-Message-State: AOJu0Yx24+2MSDK8TDTU+w4a/nNJeh1zXRjmqoMt8CQZhLNelIev3vSH
	83HdtC/WcFYjOxxoj/TsAoQTecJQlSc+fXo0D7rkq8vZaxfrzTv7YpVprw2mjsSBv4mvfcsNQjV
	tWUR2cILGrAtWXXHC/ZIMPIdoxZN0PoLR5mTuHPOplPXJ0x2KBe6XbM8T85o=
X-Received: by 2002:a05:6a00:2ea2:b0:710:4d3a:2d92 with SMTP id d2e1a72fcca58-71dc5c48a91mr1128742b3a.4.1727810547515;
        Tue, 01 Oct 2024 12:22:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsZd1BREA/2fKG0znEmZMrSj8OvZ1kqc1zxUu7AL1wc6B/TClo2jbel2dc5gxbp0pqggAuJQ==
X-Received: by 2002:a05:6a00:2ea2:b0:710:4d3a:2d92 with SMTP id d2e1a72fcca58-71dc5c48a91mr1128717b3a.4.1727810547164;
        Tue, 01 Oct 2024 12:22:27 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::40])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b26498b26sm8401971b3a.9.2024.10.01.12.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 12:22:26 -0700 (PDT)
Date: Tue, 1 Oct 2024 14:22:23 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Saravana Kannan <saravanak@google.com>
Cc: Rob Herring <robh@kernel.org>, 
	"Russell King (Oracle)" <linux@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>, 
	Abhishek Chauhan <quic_abchauha@quicinc.com>, Serge Semin <fancer.lancer@gmail.com>, 
	devicetree@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFT] of: property: fw_devlink: Add support for the
 "phy-handle" binding
Message-ID: <rqn4kaogp2oukghm3hz7sbbvayj6aiflgbtoyk6mhxg4jss7ig@iv24my4iheij>
References: <20240930-phy-handle-fw-devlink-v1-1-4ea46acfcc12@redhat.com>
 <CAGETcx-z+Evd95QzhPePOf3=fZ7QUpWC2spA=q_ASyAfVHJD1A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGETcx-z+Evd95QzhPePOf3=fZ7QUpWC2spA=q_ASyAfVHJD1A@mail.gmail.com>

On Mon, Sep 30, 2024 at 05:12:42PM GMT, Saravana Kannan wrote:
> On Mon, Sep 30, 2024 at 2:28 PM Andrew Halaney <ahalaney@redhat.com> wrote:
> >
> > Add support for parsing the phy-handle binding so that fw_devlink can
> > enforce the dependency. This prevents MACs (that use this binding to
> > claim they're using the corresponding phy) from probing prior to the
> > phy, unless the phy is a child of the MAC (which results in a
> > dependency cycle) or similar.
> >
> > For some motivation, imagine a device topology like so:
> >
> >     &ethernet0 {
> >             phy-mode = "sgmii";
> >             phy-handle = <&sgmii_phy0>;
> >
> >             mdio {
> >                     compatible = "snps,dwmac-mdio";
> >                     sgmii_phy0: phy@8 {
> >                             compatible = "ethernet-phy-id0141.0dd4";
> >                             reg = <0x8>;
> >                             device_type = "ethernet-phy";
> >                     };
> >
> >                     sgmii_phy1: phy@a {
> >                             compatible = "ethernet-phy-id0141.0dd4";
> >                             reg = <0xa>;
> >                             device_type = "ethernet-phy";
> >                     };
> >             };
> >     };
> >
> >     &ethernet1 {
> >             phy-mode = "sgmii";
> >             phy-handle = <&sgmii_phy1>;
> >     };
> >
> > Here ethernet1 depends on sgmii_phy1 to function properly. In the below
> > link an issue is reported where ethernet1 is probed and used prior to
> > sgmii_phy1, resulting in a failure to get things working for ethernet1.
> > With this change in place ethernet1 doesn't probe until sgmii_phy1 is
> > ready, resulting in ethernet1 functioning properly.
> >
> > ethernet0 consumes sgmii_phy0, but this dependency isn't enforced
> > via the device_links backing fw_devlink since ethernet0 is the parent of
> > sgmii_phy0. Here's a log showing that in action:
> >
> >     [    7.000432] qcom-ethqos 23040000.ethernet: Fixed dependency cycle(s) with /soc@0/ethernet@23040000/mdio/phy@8
> >
> > With this change in place ethernet1's dependency is properly described,
> > and it doesn't probe prior to sgmii_phy1 being available.
> >
> > Link: https://lore.kernel.org/netdev/7723d4l2kqgrez3yfauvp2ueu6awbizkrq4otqpsqpytzp45q2@rju2nxmqu4ew/
> > Suggested-by: Serge Semin <fancer.lancer@gmail.com>
> > Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> > ---
> > I've marked this as an RFT because when looking through old mailing
> > list discusssions and kernel tech talks on this subject, I was unable
> > to really understand why in the past phy-handle had been left out. There
> > were some loose references to circular dependencies (which seem more or
> > less handled by fw_devlink to me), and the fact that a lot of behavior
> > happens in ndo_open() (but I couldn't quite grok the concern there).
> >
> > I'd appreciate more testing by others and some feedback from those who
> > know this a bit better to indicate whether fw_devlink is ready to handle
> > this or not.
> >
> > At least in my narrow point of view, it's working well for me.
> 
> I do want this to land and I'm fairly certain it'll break something.
> But it's been so long that I don't remember what it was. I think it
> has to do with the generic phy driver not working well with fw_devlink
> because it doesn't go through the device driver model.

Let me see if I can hack something up on this board (which has a decent
dependency tree for testing this stuff) to use the generic phy driver
instead of the marvell one that it needs and see how that goes. It won't
*actually* work from a phy perspective, but it will at least test out
the driver core bits here I think.

> 
> But like you said, it's been a while and fw_devlink has improved since
> then (I think). So please go ahead and give this a shot. If you can
> help fix any issues this highlights, I'd really appreciate it and I'd
> be happy to guide you through what I think needs to happen. But I
> don't think I have the time to fix it myself.

Sure, I tend to agree. Let me check the generic phy driver path for any
issues and if that test seems to go okay I too am of the opinion that
without any solid reasoning against this we enable it and battle through
(revert and fix after the fact if necessary) any newly identified issues
that prevent phy-handle and fw_devlink have with each other.

> 
> Overly optimistic:
> Acked-by: Saravana Kannan <saravanak@google.com>
> 
> -Saravana
> 


