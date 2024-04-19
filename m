Return-Path: <devicetree+bounces-60963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 037388AB183
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 17:16:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEA702817AD
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A7512F386;
	Fri, 19 Apr 2024 15:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="aCRu5TcN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9945A2E405
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 15:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713539770; cv=none; b=J3forAv7XvNgppgqz1RndRyj7//KQUqT1J0BMsT6QftJRU6SRfyj5W3cGt1/YvI4/2/mFmwfh0PGVVDnLNejb7axXqFT80s9cZqxXZNKTuSB1cgQnrxb1UuPxOW9xREJ82bb23mwvyimzLKOZemOnuRwSUkXyIPAwvPQsdQYjgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713539770; c=relaxed/simple;
	bh=MIh1y94rZ+1AqJ2v/xfYtQoYBMVtWKnQdEUPqqb+QlE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WCvsgNrzAqjPz7JdeGINRV/FMlF9zg4QxOVwJbxd0y4zDShqxyOkQZNuo7OBaSNu1WM8ntoRo+PqNSMYBL2a2bSa2qyqCzQKaKMO4UuAqrBJI8BcoMkHILBFMyvlL7JLLr6+80yLVWguxyHK1/xEVlqX0S0sd2wmk9McR1L8tVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=aCRu5TcN; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-571b1434592so2270981a12.0
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 08:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713539767; x=1714144567; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u6YucdO4K8yZi5V+dQEJqXTSFfZz3kMPmJRccLrDNog=;
        b=aCRu5TcNcZx4gDcLdSbEyrL9O2afGk0p0gZC1sargCW6ad/W6m/2wivYIdzd6+KZwK
         oZIevhHVz7smvlJSlg5vaJ4BzrzYPK1KOpkc6pF2a42sL1fefS8f868xrU6F74D9sIvQ
         gvt3xBfvSkGyo53JXElCDm9r0Ft2L8P7+fGm/nJizZ5bjlavQi8lejPHY/3piL1CmLPT
         pMakroV86tuG5+bP12FNQ2E5zuPL53sGl47IZUa6/wtjAsxBKtj8B1vUC9tyC8fDGDyX
         6/dUPmX201fPo2hf19qEJmQ7NTGd0t/BXRxh1bUFhKWTepa1Amok3xtsjGg8LDlP+W8e
         p6LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713539767; x=1714144567;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u6YucdO4K8yZi5V+dQEJqXTSFfZz3kMPmJRccLrDNog=;
        b=crYMV7ejqsKSuVobkrpa1qTor5LemUqBs8j2nt3JElvBXYzaFlLK4aLEZsBjkMZuhR
         ITFDZbU9H9ffvGLTxWk30KrRHJGFGS+b0pdPCEjXVTvrsELbFecq6puORtOeSqeeaA+7
         qzOZh4VJYT3dgwKDOxwrxybD4xrSvk+K/QwVKQ6hZMhF+O6k3u762Bp6YVoeOSpUvLoh
         zgLrG4QNk8VjdPhA/GmzNTj80vAdcVw7CNZ/09m4uWaovymSb9tNPtWt5k9RPxeSQk5U
         SkjlUhVesS8TN1uDbRPiO9LBAWO81VXlLhGKpCCo1n4jHfIo4zW3KnNKt74bJGyw3zko
         MoOg==
X-Forwarded-Encrypted: i=1; AJvYcCX4U2Pss0QBr+jyFMpAgftNfGDkaiS5N3SMCSW3oXjh8UM5Zjigq8YCCpPE7uNEiywBIT2lVDZ3gKzVTbmWEDe6QxVR/BZJGqPuZg==
X-Gm-Message-State: AOJu0YxQIUXp+LCm/ND7Uipot/7GfVA4UCHBC297joTe9avJj5ywjljl
	lkFlvdrehzan3DOBzLelF9CrmXI34RgduiIk9mHzjuS7WsKUNV6IKG5AFI/U0eM=
X-Google-Smtp-Source: AGHT+IHWUy4L5O6lQOo4wGH3aAUFprY7PTwgE+/Ra0Yf532QkMea1q+/O3Qe16MpYhG4dHCa5bUKrA==
X-Received: by 2002:a50:8d0f:0:b0:56e:230c:d686 with SMTP id s15-20020a508d0f000000b0056e230cd686mr1757366eds.36.1713539766857;
        Fri, 19 Apr 2024 08:16:06 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id l10-20020a056402124a00b00571bec923bcsm1948242edw.93.2024.04.19.08.16.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 08:16:06 -0700 (PDT)
Date: Fri, 19 Apr 2024 17:16:05 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, conor.dooley@microchip.com, anup@brainfault.org, 
	atishp@atishpatra.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, christoph.muellner@vrull.eu, heiko@sntech.de, 
	charlie@rivosinc.com, David.Laight@aculab.com, parri.andrea@gmail.com, 
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Add Zawrs ISA extension
 description
Message-ID: <20240419-8c6af6a169a7aa0b9aa5cac5@orel>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
 <20240419135321.70781-10-ajones@ventanamicro.com>
 <20240419-chafe-leotard-e5daee19b1c8@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240419-chafe-leotard-e5daee19b1c8@spud>

On Fri, Apr 19, 2024 at 03:45:46PM +0100, Conor Dooley wrote:
> On Fri, Apr 19, 2024 at 03:53:24PM +0200, Andrew Jones wrote:
> > Add description for the Zawrs (Wait-on-Reservation-Set) ISA extension
> > which was ratified in commit 98918c844281 of riscv-isa-manual.
> > 
> > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > ---
> >  .../devicetree/bindings/riscv/extensions.yaml        | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > index 468c646247aa..584da2f539e5 100644
> > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > @@ -177,6 +177,18 @@ properties:
> >              is supported as ratified at commit 5059e0ca641c ("update to
> >              ratified") of the riscv-zacas.
> >  
> > +        - const: zawrs
> > +          description: |
> > +            The Zawrs extension for entering a low-power state or for trapping
> > +            to a hypervisor while waiting on a store to a memory location, as
> > +            ratified in commit 98918c844281 ("Merge pull request #1217 from
> > +            riscv/zawrs") of riscv-isa-manual.
> 
> This part is fine...
> 
> 
> > Linux assumes that WRS.NTO will
> > +            either always eventually terminate the stall due to the reservation
> > +            set becoming invalid, implementation-specific other reasons, or
> > +            because a higher privilege level has configured it to cause an
> > +            illegal instruction exception after an implementation-specific
> > +            bounded time limit.
> 
> ...but I don't like this bit. The binding should just describe what the
> property means for the hardware, not discuss specifics about a
> particular OS.
> 
> And with my dt-bindings hat off and my kernel hat on, I think that if we
> want to have more specific requirements than the extension provides we
> either need to a) document that zawrs means that it will always
> terminate or b) additionally document a "zawrs-always-terminates" that
> has that meaning and look for it to enable the behaviour.

IIUC, the text above mostly just needs to remove 'Linux assumes' in order
to provide what we want for (a)? I'm not sure about (b). If Zawrs is
unusable as is, then we should probably just go back to the specs and get
a new standard extension name for a new version which includes the changes
we need.

Thanks,
drew

