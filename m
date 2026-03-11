Return-Path: <devicetree+bounces-273953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDJAFmItsWkVrwIAu9opvQ
	(envelope-from <devicetree+bounces-273953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:52:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2663325FC17
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:52:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6ADC9313A8C3
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25FED3C13FB;
	Wed, 11 Mar 2026 08:39:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECD11A6815
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773218396; cv=none; b=qvXJN8TgcuGFqI2IpxF23tqSCPXXNy5EE2lJDN0Zk9qmp0pUzDDHJLD9Hz9UxM0G0kExN7ouXioy6ICy3wrXS0nZiaf6vCgWGGTvxHVyeIX4qIkaAaD5OA8Idj3DOmBKwSbN0ZUur75sc/vSB14EZsSn2Gqh9LJEjmpuCRcv2js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773218396; c=relaxed/simple;
	bh=aOoOQpRMMQeHaPC3tRhWLJALfIv8CokuAajCILEgC30=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V/Sex4N0BWgqQZEtYwAG/SciVc0JUaunzLlwWS29ftUgzL9CCZoiY43E6N79hqgwkHhVDb8VEqgko3qbxtYGRMZKEILX+FBtul30xuzx2naPQcaW+07EQA85BPq3Kx4uzefEZGIPfKaGdZB2WhiUBBmt78L5Q8ilt1Hds5kJXKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-56a9076813bso5397644e0c.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:39:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773218392; x=1773823192;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wDnX9qq9fL2tmN/qX2V1EHpQ2py5VIfCTjqZsUNQb9k=;
        b=PCuyVqNPl5u03083xORRUuoY1J1FkKYA23kQzteQjfOZ2ZexK9W5N2etIGRiGt01Px
         vsSMXggOxyY0CNSXM61EO0k/+BLWtz659i1ZRHXOfURt3uZ/N8057fqBW7oR5OsvCxVD
         RNwGAtb4IqktmX6x6JXt4KK3uHig3andTvbYNyADJbZ6qlbrvjGGPqGcs5McWVJE6Asc
         ULUFaBznJkkSTuWb8sy7/CV/QLuo6KMXncHh9hTSqYLJ9BH/yJyLnYJVEGJ3UPMI9xFf
         xTwi7bLXxYbDmQK+jZ2QYMVqV/K1C08IHMbp5k3P8G7KOB7/l+u93wPnBEYyDRiypgEK
         Eutw==
X-Forwarded-Encrypted: i=1; AJvYcCU717jHZ0lbDiPMCj8D0ZKPmE7QkQ3AVZxYHDQl56yBNIM0W+GVdxH0FWgo2l6U/Nko9jioLmh1WWgm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9nUNJnYr26axQ7O4ezqQgx54LgEUET+4t5bMvpzbcf8eC/vjY
	jq4/PkPIUDz/co+tbWcIqX952VNMPVuHkAnLYHTHlMmiubuclXUzCrEuW3MZdew/
X-Gm-Gg: ATEYQzx58uO1Ap0+r0/PRkgU/y+G+4/vVFFrhhlzXkENMUpg9uqO97898+7OI8EbYb8
	KXs8vigDRtXgUv6geiwLKQFFkja6dd6/fT0VYu1WEJzBxf42MHN/2WFPJ3GWKugaMrqgp24pN2h
	RvqSIsGetZAeKH05+2Ch+uiso/GB/9NdmeYXtrCmaDiewtXzC5M31qWu5tfYefosOtxWj62Bssp
	ltK9eugScgiBMw8ofwr+9tyTBkcabT5HTYRQFQuSO2sSJqkAmESlr836t1fmPKuZakCZLWBf3QQ
	zmw4lvqkjynh7qD17eF3aGtbpezflYPwht6UYzShVwtO3jqvo9bh6q9VuAect5dtnXvQ46yCoZf
	nPri9vIw2FJpFLa3HU+TubUewgio1Pz2K/LricQRDaRtYpcYRJfXXcXeF1xS8IiCSC7U3JLo5aa
	NI5c98QtuqwYzsHdIbkjxUJHWnZoR6GA6aKANc4TvP1AgTEHTTUzWHn1QxReHV
X-Received: by 2002:a05:6102:3a10:b0:5f1:b7b2:8929 with SMTP id ada2fe7eead31-601debe55b9mr587330137.15.1773218392131;
        Wed, 11 Mar 2026 01:39:52 -0700 (PDT)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-601dea9fa96sm508760137.9.2026.03.11.01.39.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 01:39:51 -0700 (PDT)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-94ace5d0e39so4012872241.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:39:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWG9iAFVAY+43PAFt8lcdzIOXb24YXTZNA+uSCHaWMzVp8V0bvd3jlU8dxLAj5stwn70jySeAaXVy1a@vger.kernel.org
X-Received: by 2002:a05:6102:cc6:b0:5ff:cb2c:a013 with SMTP id
 ada2fe7eead31-601def2ae84mr566130137.29.1773218391268; Wed, 11 Mar 2026
 01:39:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303102029.147359-1-herve.codina@bootlin.com> <abEotS0ZbGwqEmO5@ninjato>
In-Reply-To: <abEotS0ZbGwqEmO5@ninjato>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Mar 2026 09:39:40 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX01rwBMGn1FLGm-fHA0w-7+BCskMiucgxcui+PTVF7rA@mail.gmail.com>
X-Gm-Features: AaiRm53jk8vPte5MXJ7yQCkcGHKTwxyl2TK4jY54UfUzJkhzbTTXphD0vlJtQSI
Message-ID: <CAMuHMdX01rwBMGn1FLGm-fHA0w-7+BCskMiucgxcui+PTVF7rA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: r9a06g032: Add #address-cells in the GIC node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 2663325FC17
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bootlin.com,gmail.com,kernel.org,vger.kernel.org,se.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-273953-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.587];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sang-engineering.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linux-m68k.org:email]
X-Rspamd-Action: no action

Hi Wolfram,

On Wed, 11 Mar 2026 at 09:32, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> On Tue, Mar 03, 2026 at 11:20:29AM +0100, Herve Codina (Schneider Electric) wrote:
> > When checking dts involving the r9a06g032.dtsi file, the following kind
> > of warnings are reported:
> >    Missing property '#address-cells' in node xxx, using 0 as fallback
> >
> > Indeed, #address-cells is not present in the GIC interrupt controller
> > node.
> >
> > Fix it adding the missing property.
> >
> > No functional change.
> >
> > Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.com>
>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>
> I like Krzysztof's explanation "Value '0' is correct because GIC
> interrupt controller does not have children." Maybe it can be added to
> the commit message?

Some of the examples in the GIC DT bindings, do?
But #address-cells is not a required property in the GIC DT bindings,
so why should it be added at all?

BTW, I never understood why an interrupt-controller should have
#address-cells (according to dtc)?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

