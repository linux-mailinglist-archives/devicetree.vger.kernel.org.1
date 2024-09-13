Return-Path: <devicetree+bounces-102850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF43978849
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 20:57:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E8B4DB2199F
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 18:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 157B312CDBE;
	Fri, 13 Sep 2024 18:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GgLX700B"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773EE13AD03
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 18:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726253852; cv=none; b=Cw9TyigramlGtvAqf3Q/SCLP8VyqVbfQNmuy4v885H14MKV3lWNHBIV4y/JsDoxkQZl69mygnFDkrWhUIzQXJkAXwvQBgOkdb0/BV8UJbgpWjUvE17VKzQWGfCB5faAiYA41j9nrJ4NP6HVFOyLRgrbaoPBOhglqvzT4oDR6sx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726253852; c=relaxed/simple;
	bh=tSlnQ0F5ioJKvWE3fPpk/dLjVumOoGJmBqR2+B7VmyM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p0UBjUW+lAQaE6qz4IGj8PRI8mJflExTGUVFISIyXsBy8lII9iymaU7uwu4IysG07ZcSL8RC8Er065ouLoY/8jhD+zvnCTr7gMG1gyAK0G5RvwNgXw+CkIwAX5EKGecNNcZYEh6QyC7rVbLVX5Up09T/9kA5lZOn+uhetScinEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=GgLX700B; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1726253849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vBOmlPn6J7XlQt2S4vXhT1ao4Tt2/DiQ3amK9nkmaP8=;
	b=GgLX700BM3TH5beZENQ81pa3MPuVSP0OoC3efYQRb9YSI488PfdNg/eNssj/nqV1Hmmqqy
	LGzrK8TejVgSlqaMYvrKeEySSd5DA7ijXSzl83N+s5rMpqwgCf9Rpx/Ezqw8COAHSwoy7b
	YycLAkdWREG32p0QIV9qvfC0I5G8jtQ=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-359-AnQ8qHtLNdunCy42l6kJOg-1; Fri, 13 Sep 2024 14:57:28 -0400
X-MC-Unique: AnQ8qHtLNdunCy42l6kJOg-1
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7a9a6634b08so385173885a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 11:57:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726253848; x=1726858648;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vBOmlPn6J7XlQt2S4vXhT1ao4Tt2/DiQ3amK9nkmaP8=;
        b=Co4Acy/YmBvd3o/jZ+bZCd1MRCiCdvhHBUGNV5Yu7FSr4th0gwSor7ipg4Kgc42ywD
         yMqyFD3pvqdYkPQOdlynpU4pvDc869XyINfj02+ZyH02UNPfnqF+o2zE6ntSP9xGB8/m
         5zqF+/9/gQL84PO5Fyj6q4CrkX/GYod8eqmwPxCNlRVfmIqs6NoQ2kAyXJgcMjcToSIR
         u2Nq38EIYms53UYMLfSGUwZm+X28Z+nTq9g6US6y6b8x2YLmbt7D5ZnOQAfmFS9EExwe
         5vF0kv1z2LAsD+KklOj7RdoFrKswu8R3lRFIagvBVItY4Rn6v8omUC8rnRrn66+TIFA7
         8nPw==
X-Forwarded-Encrypted: i=1; AJvYcCWT6G+MIHrdQAIxMyKDk++/ml9zsk2HnfQLjmejsRL7yXB7f6FbX+yJqkYNTkadGgIA9GgzAGBiuDY6@vger.kernel.org
X-Gm-Message-State: AOJu0YxAQKuoL7VwpeeTKm3z2SlH/23Vr6PSu4K8hK1e1+RLOKzISBRv
	aLtL2JBGuxKW3qE+/R+mn8D/jOQOVfMKNl3gFAoLzBZFKZ0/fS5HK+3I2aUbbPQvfTY2wi6wSzz
	4odzpb6OHm150qVmKp4w6RwXojDcwXzK4D07v/ylMw2pJKAPEOX9B6nsjTbA=
X-Received: by 2002:a05:620a:29c5:b0:7a1:e341:d543 with SMTP id af79cd13be357-7a9bf9cac58mr2578234685a.28.1726253847730;
        Fri, 13 Sep 2024 11:57:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGD07RKZhSt9zPcXCD8OnyfOPn0msr/udZWBZaNQmQDKlgYn7gq7OjIujdXQYCwD8pJJkUdnw==
X-Received: by 2002:a05:620a:29c5:b0:7a1:e341:d543 with SMTP id af79cd13be357-7a9bf9cac58mr2578230885a.28.1726253847300;
        Fri, 13 Sep 2024 11:57:27 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::33])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a9c61eec6asm431545185a.60.2024.09.13.11.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 11:57:26 -0700 (PDT)
Date: Fri, 13 Sep 2024 13:57:24 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Beleswar Prasad Padhi <b-padhi@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Keerthy <j-keerthy@ti.com>, 
	Neha Malcom Francis <n-francis@ti.com>, Eric Chanudet <echanude@redhat.com>, 
	Enric Balletbo <eballetb@redhat.com>, Udit Kumar <u-kumar1@ti.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: ti: k3-j784s4-evm: Mark tps659413
 regulators as bootph-all
Message-ID: <zlgo4e5qwg352tsadvw43oj7vlekefuqe66ckokyo6aba47z6o@2wwbyrfjkstz>
References: <20240911-j784s4-tps6594-bootph-v2-0-a83526264ab1@redhat.com>
 <20240911-j784s4-tps6594-bootph-v2-1-a83526264ab1@redhat.com>
 <c4ace228-ea32-4760-b6af-f7555b68063a@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c4ace228-ea32-4760-b6af-f7555b68063a@ti.com>

On Fri, Sep 13, 2024 at 04:27:47PM GMT, Beleswar Prasad Padhi wrote:
> Hi Andrew,
> 
> On 11/09/24 22:49, Andrew Halaney wrote:
> > In order for the MCU domain to access this PMIC, a regulator
> > needs to be marked appropriately otherwise it is not seen by SPL and
> > therefore not configured.
> > 
> > This is necessary if the MCU domain is to program the TPS6594 MCU ESM
> > state machine, which is required to wire up the watchdog in a manner
> > that will reset the board.
> > 
> > Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> > ---
> >   arch/arm64/boot/dts/ti/k3-j784s4-evm.dts | 8 ++++++++
> >   1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts b/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
> > index 6695ebbcb4d0..6ed628c2884e 100644
> > --- a/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
> > +++ b/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
> > @@ -663,6 +663,7 @@ tps659413: pmic@48 {
> >   		regulators {
> >   			bucka12: buck12 {
> > +				bootph-all;
> >   				regulator-name = "vdd_ddr_1v1";
> >   				regulator-min-microvolt = <1100000>;
> >   				regulator-max-microvolt = <1100000>;
> 
> 
> In my opinion, bootph-all property should come after other standard
> properties like regulator-name etc., as it is least important to Linux. Same
> comment for other nodes wherever applicable. What is your opinion?
> 
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dts-coding-style.rst#n130

I think that does align better with the dts-coding-style doc!

Looking at the tree though, the standard currently in the TI folder
is to put it first. In my opinion if changing the ordering is desired
it should be done in one fell swoop (outside this series). I'd do
it one big patch, but I'm curious if that's decided the way forward what
the TI maintainers would like to see. I can send that patch if desired.

For now I think sticking with the current practice in this series
makes sense until that fell swoop happens.

Please let me know if you feel strongly otherwise.

Thanks,
Andrew


