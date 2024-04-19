Return-Path: <devicetree+bounces-61004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE7D8AB37C
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 18:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3D941C20402
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 16:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04C33130A73;
	Fri, 19 Apr 2024 16:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="EeJMUj+S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DDF7E783
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 16:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713544806; cv=none; b=uP81vEih4RFbR+DIfLSPAlHhpBshVe06WG91vvITDgbh1XHbjs0cE1xnY5RuQyCdSxHVKMp53E1CMCqGZdfzBEdFmgQbC335QNmANlmT+QSZ+cUpIXBZsgTdY6C0fIIv0EBBk9qK7DUHwJ7vnK4WC1QBuHRoPV7RUjLHtKFDdWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713544806; c=relaxed/simple;
	bh=o5GIs4IUCd1x3QO2b5YrIhF5EOX9DK9oPJRPns4ntt8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gF8lL43SnAiAYLh7bTwq2WyYc18vh1OUdTssrFgBO7Yj0skn6ijicHZKIhNPZM/XS0CcmpuCY6bcqWXyrgxDcFNRR8UUM3hhvgc8EEvtu8+bojkL2IHlWPO2DvNnhT6DYL27LN2hT1h5ayWTDmpaxZF9qhtoT6okzz9zokukL3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=EeJMUj+S; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-61b4387ae4fso2516257b3.2
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 09:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713544804; x=1714149604; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BHuuiI/AP3O3oKJTbl0AoPiEMvYpTd1A7t0Ev/LsBaw=;
        b=EeJMUj+SfRdDJLyu8sj/Tn/OZiuOuUIIeESK/uA2VELbK9LiI4JJQNzayLK4PpBi4b
         L/NhD8+sfANMViYEQpMdoPKK+WPknb0S1j1TGPf5eB2GKaiRJeKTmhC0vSDupoPtD8ut
         GlrdZ8s2qhugJUdiKWtp+PJD4LRKLxJqwmy4Yle45lflZqopB0v7kFRQnblWlDuhsw+3
         RsuW4QyT93TszuXFnadFzTaUwJ0P1ZeYkDXSGvwTuTYqvo8IF/+Lth5cq4g6TpNN7Q9h
         mjGlyYSgR2Z2Iqy/f785jGGPBNznSwxheleyIDj3LnqnmpQpzA7H0dfkcSRio8wkzyZ+
         ePNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713544804; x=1714149604;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BHuuiI/AP3O3oKJTbl0AoPiEMvYpTd1A7t0Ev/LsBaw=;
        b=eH9xJVBXrq+IOXb2GjMhyFEg9V8I6bnw5l5wylU20T7Ttt5jk/Qa7rgb2pq5CYXQaR
         uAJgTcZ3xHeAxVx17A/lOC9QlQtrJJaGv1g9LvM3UdlgIshs/G+Lgut+T6an5fmk/khx
         eLBV1kcSQvAKgv2Z6cTh/yVUzv9bh+lMQrq0Jxan5Gu/6e4X8TXSpHfccDRk+ON3vCZj
         IUPKwr4vfkveNfWkpdUMiNMqBoDkLZYz+/lgoxNQ8r8wCKzQa+mN1zIRocca8b+kc4Pu
         kLEmxnnYAXKe5FeGUmkl7rm7WXpFf91HR8xemiq3AnT8ashTqWwg2TiLmp/EzdZzpP3m
         h86g==
X-Forwarded-Encrypted: i=1; AJvYcCXZpoTcQ5bDaqM+Yaq9unp7ZUoGdWoiqdClb/rPGcDinKL8k/9V5Rm7tgntTBcKYZmyiN6omCIpZLyGT8GL34JsmL19xqXJ2fVT6A==
X-Gm-Message-State: AOJu0YxOKETYSSzKVMdKnXrr/AD6ol2yBSWbA3qwSjwg0cfUCgI2G0tg
	0SzqIpOs/E9rAXJhc15cStUI5zRq8H9qOM1NfjEX4k9G0SDS1M6VR71hOkrL4USou2s2YpA6R5w
	J
X-Google-Smtp-Source: AGHT+IEJrpMfE8+b8zjBescqx1tYiC6d+c3dCk765qSjsA8szvE9daL5UaT7V3lS6jT5vGJhUb2IBA==
X-Received: by 2002:a05:690c:450c:b0:618:8b8a:b4de with SMTP id gt12-20020a05690c450c00b006188b8ab4demr2683625ywb.27.1713544803866;
        Fri, 19 Apr 2024 09:40:03 -0700 (PDT)
Received: from ghost ([50.146.0.2])
        by smtp.gmail.com with ESMTPSA id z186-20020a0df0c3000000b006188902e8c1sm842592ywe.28.2024.04.19.09.40.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 09:40:03 -0700 (PDT)
Date: Fri, 19 Apr 2024 12:40:01 -0400
From: Charlie Jenkins <charlie@rivosinc.com>
To: Conor Dooley <conor@kernel.org>
Cc: Andrew Jones <ajones@ventanamicro.com>, linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	conor.dooley@microchip.com, anup@brainfault.org,
	atishp@atishpatra.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	christoph.muellner@vrull.eu, heiko@sntech.de,
	David.Laight@aculab.com, parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Add Zawrs ISA extension
 description
Message-ID: <ZiKeYRnXxtLUtkkW@ghost>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
 <20240419135321.70781-10-ajones@ventanamicro.com>
 <20240419-chafe-leotard-e5daee19b1c8@spud>
 <20240419-8c6af6a169a7aa0b9aa5cac5@orel>
 <20240419-disdain-litmus-82874cc4872e@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240419-disdain-litmus-82874cc4872e@spud>

On Fri, Apr 19, 2024 at 04:19:52PM +0100, Conor Dooley wrote:
> On Fri, Apr 19, 2024 at 05:16:05PM +0200, Andrew Jones wrote:
> > On Fri, Apr 19, 2024 at 03:45:46PM +0100, Conor Dooley wrote:
> > > On Fri, Apr 19, 2024 at 03:53:24PM +0200, Andrew Jones wrote:
> > > > Add description for the Zawrs (Wait-on-Reservation-Set) ISA extension
> > > > which was ratified in commit 98918c844281 of riscv-isa-manual.
> > > > 
> > > > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > > > ---
> > > >  .../devicetree/bindings/riscv/extensions.yaml        | 12 ++++++++++++
> > > >  1 file changed, 12 insertions(+)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > > index 468c646247aa..584da2f539e5 100644
> > > > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > > @@ -177,6 +177,18 @@ properties:
> > > >              is supported as ratified at commit 5059e0ca641c ("update to
> > > >              ratified") of the riscv-zacas.
> > > >  
> > > > +        - const: zawrs
> > > > +          description: |
> > > > +            The Zawrs extension for entering a low-power state or for trapping
> > > > +            to a hypervisor while waiting on a store to a memory location, as
> > > > +            ratified in commit 98918c844281 ("Merge pull request #1217 from
> > > > +            riscv/zawrs") of riscv-isa-manual.
> > > 
> > > This part is fine...
> > > 
> > > 
> > > > Linux assumes that WRS.NTO will
> > > > +            either always eventually terminate the stall due to the reservation
> > > > +            set becoming invalid, implementation-specific other reasons, or
> > > > +            because a higher privilege level has configured it to cause an
> > > > +            illegal instruction exception after an implementation-specific
> > > > +            bounded time limit.
> > > 
> > > ...but I don't like this bit. The binding should just describe what the
> > > property means for the hardware, not discuss specifics about a
> > > particular OS.
> > > 
> > > And with my dt-bindings hat off and my kernel hat on, I think that if we
> > > want to have more specific requirements than the extension provides we
> > > either need to a) document that zawrs means that it will always
> > > terminate or b) additionally document a "zawrs-always-terminates" that
> > > has that meaning and look for it to enable the behaviour.
> > 
> > IIUC, the text above mostly just needs to remove 'Linux assumes' in order
> > to provide what we want for (a)? I'm not sure about (b). If Zawrs is
> > unusable as is, then we should probably just go back to the specs and get
> > a new standard extension name for a new version which includes the changes
> > we need.
> 
> An (official) new name for the behaviour that you actually want, especially
> if the patchset sent the other day does not have the more stringent
> requirement (I won't even pretend to understand Zawrs well enough to know
> whether it does or not), sounds like the ideal outcome. That way you're
> also sorted on the ACPI side.

What would be the purpose of a vendor implementing WRS.NTO (and putting
it in the DT) that never terminates? The spec says "Then a subsequent
WRS.NTO instruction would cause the hart to temporarily stall execution
in a low- power state until a store occurs to the reservation set or an
interrupt is observed." Why is this wording for WRS.NTO not sufficient
to assume that an implementation of this instruction would eventually
terminate?

- Charlie


