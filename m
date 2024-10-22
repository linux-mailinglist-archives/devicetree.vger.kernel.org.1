Return-Path: <devicetree+bounces-114345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9490C9AB540
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 19:39:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4730928545E
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 17:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADB2E1BD00D;
	Tue, 22 Oct 2024 17:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="DZjm3ev3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B7DC13BC1E
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 17:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729618756; cv=none; b=EZoBPLTDF6eyTGC8SRhOK/0RB5i0bX5woij2pB0UNzATRsqzUap+ogkH/ppLkO93lZomBNAtPl6pInr755IB6MKplzhtuZzvkv7VInRm46nq/X942niZdDg6l5DiM+Ssv1NMXUz4nHVPxtAeF/O1thac/1WTClwCA73YS1/aqL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729618756; c=relaxed/simple;
	bh=LlLzd7M/7SsX6nncXDGfDEEeNGVIcqrAhkOqr2TXBv8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g6F0ATQP42skd7CTfJiZTvRlhM2hvWXYfzTtlOom+g1rFbf3INLk3LnKpUfRclOQNZoob6IpbWy2bg92tHa78xM5M5epPw0wS+emX+vgwJF8mM45Y6QepxM7K/0bp+1aeFYJms8tHdYmGyVJuvS6GWeRfwzhqzf9NETdAwqO68Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=DZjm3ev3; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 82E783F167
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 17:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1729618751;
	bh=gIp82CbtDDICzfhljA3RfNnMq4WLw57LTcEeK1RhMvg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=DZjm3ev3T8lJpSVQb/o+TxLml4FINUXQ93RD7uCoIdF4rK+Eal2cawAG9+huSiT7y
	 /ppRODHs1xQIW9IzbyzXTUOLi34/1Nv6ntaoyjz/lj1kaQIz1L3uJZ2nKAfrhjRvEM
	 wnR/h8l263+JBOxKbFQQzrlHkjl7DCLaIftI0sCJSd6fkOvMCGs/vEZZEjQdyJSJeH
	 6gqPbBn73f031jnyafig91mrjMzCvpfp0PlMHaC4iWutbNgW+Z65aaVoa8t9+0ssLg
	 yQBF5dy+bh/s/VEMs8rEo0mUbBvF0eKJMJ/Q1nd23eYires3YLmAaHTzBVKMwamusk
	 Y5CBtNm9FAzyg==
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-287b3c7faf8so4438621fac.2
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 10:39:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729618750; x=1730223550;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gIp82CbtDDICzfhljA3RfNnMq4WLw57LTcEeK1RhMvg=;
        b=cR+2iixfJRl0lXgNn3yPSih8Dr02IeZocvMUhS9aYwsre2m741kFoJSjZGzuqm5Bg5
         QLvWcDvjP+k/kGU4aZOcJzs8QKP4D9QtgW48ynt+vTs0y7EQr0rLJHImVhlZCQaNVBCl
         Uw7dMidwn91c4EtWYuZr+v77JcfEvVaDRauFQZaXu9C9N/+DPQPKyMVahxQ+TdZadgvy
         cVSJwfIJyOlFH+THDejqgcn0uz++FIDrHGa9ywPoLwGvaIz/Utmsg0ivmtigZ4g+WJ9a
         zB8JJAn5g5nR0gpU8SOSB+lc47z/1rX5UeRlvDbduA2biyJNkxG+rZmVBBv9pnfhjpqt
         UyYA==
X-Forwarded-Encrypted: i=1; AJvYcCUW8KuBE3TUbO0JYqR0WNJ0YyEKm2Fu5PLGW5h3oQMaJMO/Rks2yxIfvxOtubWYzWihsYSd4kBqob5t@vger.kernel.org
X-Gm-Message-State: AOJu0YzuHqlX/G56Dlt2Z95Vp95jEtD8rjQCHcHEIvr5PYWLAWu7shNP
	gN39xscLXD041GYaRBwsRB0B8OozYlbklRxj8arY6H8AU+1aoV6wE+rxtksQn3aUdJxtiVRWkyB
	cPMqODcQH9mwRuS2PqfWmPYd0lbun28QLz5kcTHADGSIf870Kz/Eyyd1SIHkD56DG/KgU1i1iYF
	aInc3jquSplKs/l7WdQOWVja39ND4ykzIpTn/v/ppOfQUZGmTysg==
X-Received: by 2002:a05:6870:14d6:b0:270:184b:ccd9 with SMTP id 586e51a60fabf-28ccb63856fmr15126fac.39.1729618750419;
        Tue, 22 Oct 2024 10:39:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHp2eOIro3rmG5TpkZ8Vs1zAmqxePU9Yf+aTCteWKwLEX1pSdHkee4wAR+DRJadUrVYphpsbkFcpqUY2k5VgeM=
X-Received: by 2002:a05:6870:14d6:b0:270:184b:ccd9 with SMTP id
 586e51a60fabf-28ccb63856fmr15106fac.39.1729618750027; Tue, 22 Oct 2024
 10:39:10 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 22 Oct 2024 10:39:08 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20241022061004.62812-1-e@freeshell.de>
References: <20241022061004.62812-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 22 Oct 2024 10:39:07 -0700
Message-ID: <CAJM55Z9ApObth8AD1gpNO0ppxUmvYW3m0q1dAyqekRhXwVxb9w@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: starfive: Update ethernet phy0 delay
 parameter values for Star64
To: E Shattow <e@freeshell.de>, Henry Bell <dmoo_dv@protonmail.com>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> Improve function of Star64 bottom network port phy0 with updated delay values.
> Initial upstream patches supporting Star64 use the same vendor board support
> package parameters known to result in an unreliable bottom network port.
>
> Success acquiring DHCP lease and no dropped packets to ping LAN address:
> rx  900: tx 1500 1650 1800 1950
> rx  750: tx      1650 1800 1950
> rx  600: tx           1800 1950
> rx 1050: tx      1650 1800 1950
> rx 1200: tx 1500 1650 1800 1950
> rx 1350: tx 1500 1650 1800 1950
> rx 1500: tx 1500 1650 1800 1950
> rx 1650: tx 1500 1650 1800 1950
> rx 1800: tx 1500 1650 1800 1950
> rx 1900: tx                1950
> rx 1950: tx                1950
>
> Failure acquiring DHCP lease or many dropped packets:
> rx  450: tx                1500      1800 1950
> rx  600: tx      1200 1350      1650
> rx  750: tx           1350 1500
> rx  900: tx      1200 1350
> rx 1050: tx 1050 1200 1350 1500
> rx 1200: tx           1350
> rx 1350: tx           1350
> rx 1500: tx      1200 1350
> rx 1650: tx 1050 1200 1350
> rx 1800: tx 1050 1200 1350
> rx 1900: tx                1500 1650 1800
> rx 1950: tx      1200 1350
>
> Non-functional:
> rx    0: tx 0  150  300  450  600  750  900 1050 1200 1350 1500 1650 1800 1950
> rx  150: tx 0  150  300  450  600  750  900 1050 1200 1350 1500 1650 1800 1950
> rx  300: tx 0  150  300  450  600  750  900 1050 1200 1350 1500 1650 1800 1950
> rx  450: tx 0  150  300  450  600  750  900 1050 1200 1350      1650
> rx  600: tx 0  150  300  450  600  750  900 1050
> rx  750: tx 0  150  300  450  600  750  900 1050 1200
> rx  900: tx 0  150  300  450  600  750  900 1050
> rx 1050: tx 0  150  300  450  600  750  900
> rx 1200: tx 0  150  300  450  600  750  900 1050 1200
> rx 1350: tx 0  150  300  450  600  750  900 1050 1200
> rx 1500: tx 0  150  300  450  600  750  900 1050
> rx 1650: tx 0  150  300  450  600  750  900
> rx 1800: tx 0  150  300  450  600  750  900
> rx 1900: tx 0  150  300  450  600  750  900 1050 1200 1350
> rx 1950: tx 0  150  300  450  600  750  900 1050
>
> Selecting the median of all working rx delay values 1500 combined with tx delay
> values 1500, 1650, 1800, and 1950 only the tx delay value of 1950 (default) is
> reliable as tested in both Linux 6.11.2 and U-Boot v2024.10
>
> Signed-off-by: E Shattow <e@freeshell.de>

Thanks for working this out.

Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

