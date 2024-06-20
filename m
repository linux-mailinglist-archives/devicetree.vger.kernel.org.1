Return-Path: <devicetree+bounces-77904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C239105AC
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 15:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E842AB25B45
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 13:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B02EE1ACE86;
	Thu, 20 Jun 2024 13:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="V0+qvCb1"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A881AC77D
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 13:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718889572; cv=none; b=eLeG77RToa5vVLLn9AZGYcYTJVR0r1XeIA82X+BYJlzPn0uCP1uMfViogxS3Z5J748jdd/5Li1hzjqyn2tNXTLtjVkCfWTfwa55Jq+Uz2pnBsNOJ0HbTqCpM9hmlaz0ABgFO9FBO5Fa9L+UXhiIPk25iMM/x5P6lhhZ4y0BgmAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718889572; c=relaxed/simple;
	bh=BV1WLhE4C8cxKsCUyQftaONKUO7BupTFwyuw+2FphCw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=rhn9MzIy4eyu+dcMIY8YJmHlC2fOoTlIbdOmMvqptpyeOQGYcwBlFAT+FY0J4gEhrKW4zoDzlk+2fuJAn88rmEmEX3iJ+WFFGpk/wVaDRKwPcnmpJfSss1JKQXMxdbOOsfk+JZaQtXmQOeGgA4uAQ8bvXAbU7PkSDY8SLGiP/cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=V0+qvCb1; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1718889570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=AsRP5r0fpvpmEsH04gNv9kKaqCwtAkKfmqkVYvY6dLE=;
	b=V0+qvCb1rfAn2B4bglLa0k+cOgclGO6V/nQOVKIfSypvKjqXPbXp3BGHgoITQQT045NjQ4
	v1RCNApk+K7bMd+JLxGEZ55l207Dti3o3bWKUjed+GlqZ8JrzxODJDcfJTOBF0Ql6kD46s
	FFbxDumR9GxqKebWTpOu4GewhAoMcj8=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-70-zIdt_587OhatNffcICAqcA-1; Thu, 20 Jun 2024 09:19:29 -0400
X-MC-Unique: zIdt_587OhatNffcICAqcA-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6b0762cfd0bso1450666d6.0
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 06:19:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718889568; x=1719494368;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AsRP5r0fpvpmEsH04gNv9kKaqCwtAkKfmqkVYvY6dLE=;
        b=iDDa7KQlAEMG/7cT2H2dwo4FhzS4qSG9s0p2sO9SeIYKVOSfDb8sitvu2+JziVQzuJ
         lGRtSCIxbp0GAVJP1HLLsJGGTJKw6quB03pDDYmq2YqLNXsKPzImX0yKfFKGc3qxjpxf
         SdoxPoxExXgsV7WBrRQEDlHb1+vyzfcIexU3ELT5V1+6cpEVJAzUrr4NI/Jq9hlpzuWV
         TmsqDUjojUOmi+wdYZVudbplPuIesMe39qpUyAIqWqu3tE8ATeol1hcSR/JI1Zcvb8Bp
         fpdxDxK9XRVLsw5hURA6vEMQNubAv9+JWWuJzOpbBoR+6m5x6MoX2URYNMTj+8AKlCIG
         8p5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVfQsnw8OTe4DyGe4XFwLeMBqQ1Bd5KD9FfA1kvpOn0C8S1GjFZsHl4UqlpzZlfaWxRPtc5BDrWnMBsPYaqL9uP4Vhf9cHxixnlsA==
X-Gm-Message-State: AOJu0Yy7xKW09LQvYpo+Hx2WN4RXlpIRWuOc8fh/QuINBaB1lb90FQBj
	CNzkykIwmITyT71jT6OUpNy6wwIQg63Sw+eflXXbk6/HUWBme8VokzdR2GJJjCTRT7amCtHvcIw
	xIjI+QRI3EfbqX7LOECPG+BRMADetKSJr8dvin0Fyx173S6jxqEHNn2s2zPw=
X-Received: by 2002:ad4:5dc6:0:b0:6b2:ae54:7c88 with SMTP id 6a1803df08f44-6b501e23be1mr56594516d6.2.1718889568421;
        Thu, 20 Jun 2024 06:19:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJiGXq7iC/KBqjz9TGNj1mG2OAhFM3Jo0oxe+pfu0GBa+zaF9kGf1NuOpnQDyqcPzmYgDJZw==
X-Received: by 2002:ad4:5dc6:0:b0:6b2:ae54:7c88 with SMTP id 6a1803df08f44-6b501e23be1mr56594336d6.2.1718889567978;
        Thu, 20 Jun 2024 06:19:27 -0700 (PDT)
Received: from gerbillo.redhat.com ([2a0d:3341:b0b7:b110::f71])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b5033f8a0esm19772146d6.134.2024.06.20.06.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 06:19:27 -0700 (PDT)
Message-ID: <7d208e8c8bb577cfc790fd24cf990684020ee7c5.camel@redhat.com>
Subject: Re: [PATCH v1 2/3] net: ethernet: arc: remove emac_arc driver
From: Paolo Abeni <pabeni@redhat.com>
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 robh@kernel.org,  krzk+dt@kernel.org, conor+dt@kernel.org,
 netdev@vger.kernel.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Thu, 20 Jun 2024 15:19:24 +0200
In-Reply-To: <10d8576f-a5da-4445-b841-98ceb338da0d@gmail.com>
References: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
	 <10d8576f-a5da-4445-b841-98ceb338da0d@gmail.com>
Autocrypt: addr=pabeni@redhat.com; prefer-encrypt=mutual; keydata=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
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2024-06-18 at 18:14 +0200, Johan Jonker wrote:
> The last real user nSIM_700 of the "snps,arc-emac" compatible string in
> a driver was removed in 2019. The use of this string in the combined DT o=
f
> rk3066a/rk3188 as place holder has also been replaced, so
> remove emac_arc.c to clean up some code.
>=20
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>=20
> [PATCH 8/8] ARC: nSIM_700: remove unused network options
> https://lore.kernel.org/all/20191023124417.5770-9-Eugeniy.Paltsev@synopsy=
s.com/
> ---
>  drivers/net/ethernet/arc/Kconfig    | 10 ----
>  drivers/net/ethernet/arc/Makefile   |  1 -
>  drivers/net/ethernet/arc/emac_arc.c | 88 -----------------------------
>  3 files changed, 99 deletions(-)
>  delete mode 100644 drivers/net/ethernet/arc/emac_arc.c

AFAICS this depends on the previous DT patch, which in turn should go
via the arm tree.

Perhaps the whole series should go via the arm tree?

In such case:

Acked-by: Paolo Abeni <pabeni@redhat.com>


