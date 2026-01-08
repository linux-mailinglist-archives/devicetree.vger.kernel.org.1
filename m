Return-Path: <devicetree+bounces-252621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B93DED01E2E
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:43:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 554D4340C085
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 08:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2179537BE63;
	Thu,  8 Jan 2026 07:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nkZt0S9C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3C9637BE8B
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 07:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767858640; cv=none; b=MA2z0xcdeCHFlVEKy77BeX4WobtMs8l3W6013a3v+wP6AfFeP0YnXmlNtcnUudaseO+PbHp8gc+JuAiiOkU3KCMeGz1xfcSkaeD5xki+8N3EbKao0D8d0LtCo9U+U0E+TjY7LB34dHOaIXQgDdnNo+iQ7IufFKIiC5xw/b+aVXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767858640; c=relaxed/simple;
	bh=kRy7DNw+fulZHF6KL6RSdTY4oFE4rQkK/b/b5F2abBg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=THBCjbVkDXm/KS8UeBFQ6cr2zlmVGS9cBVOcx7T+9/9E7SJnAmSNYPv1Cz8ceXBC4AKNNzaW5gNGl165CD2Eje46Ev5VUba1nOqArHd0FhWyLzS5NrRtgHNoeVYw1+eZOPDjTsFqZAWKF/nAc1KIDB3zLksy5+SXDAlhdfJbdKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nkZt0S9C; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47d59da3d81so7570215e9.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 23:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767858630; x=1768463430; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VFk3K6PIfFKKeMfxjlBdSwZqQED8HkDY5r3p5jOG4Bk=;
        b=nkZt0S9CNQkM4KswXRGOt4dFk0qApsuwZeMjTupOt+g8g4vkmVMILICnhmhm+AbFaB
         xYY/GdUL+1klkQIRVTK9LGvspHyviczRqLYaeel2XWUpDyeSynvN3SmXkiBjlwawee0Y
         zTVBy7V71cSQ+3WgAKqFGYjObbjLFC2Q9b/C1o90Z2s9oES4+SILRElc/1PUgMhmjbVS
         K39ker4397iZyl6aaDuVftZvyr09j1HX69Etsu1kKjr2/iwswIY0rEPWs0Ie1oNmbqED
         nD0zMQqy/33Uhbhfor6NbQmTIayJ82lYwJDyMOs0B80hllJhuVdW5t20sB/CietXBlWL
         296A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767858630; x=1768463430;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VFk3K6PIfFKKeMfxjlBdSwZqQED8HkDY5r3p5jOG4Bk=;
        b=O21KI/PUj471ET+rT+d6Gz29BgM5KV5zXnNZhP0uFjECjPv04Hxw6WNgnGsW9QKtrz
         VQ7L4jz8Ga4eJzAzDAmMt5dflF4gU/Ctn8qLj9eCCF3BuA2wRWrTB4JV9meLnN6brvEo
         CAOtPTmej278Gia3EXTdNSD7nVr3nGfCO+s5RXtYrx1IncMxtX4z8fPVQnVSXRVrPxq1
         +FTALJdkf3ooGAE+Y3CkdlzMFhskemNTDU8hHiZOfLb06bnk70iey8GngRq9lYVsMD12
         NdYyDmZD60wjWGEuhJfTw4mM7s/h1uuoS4CdlOFk8SRg3wObBk0jV2ACJPi2XekahzKf
         sP+g==
X-Forwarded-Encrypted: i=1; AJvYcCVOlgGqwJ1xrM4jL86Pm9pXFKElHZWgHCqgqB2N+iFYwXXWughbPTfCn1FhiOuvvgxRyV9ONv3gZEU8@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+f7CY6gmyRVKKezMCHGowa4Ij/eWxRYDNRO2bu/O46KeG7poE
	ofPrhHQDfmdonf+ZVP2B3Hku1vnsKu/YGY4I8JxCHTmWTHyg7Q2L+2Qi
X-Gm-Gg: AY/fxX5EL7rHdUxUY7pSflzjfgU1nALi8bVdQfM03BsQ84liTbnO66Tb2URxb1BqWgZ
	gsAavOic7vnf64cDQ8z099EANXIIC5Acr/dMdBCTIrPLn3RtuYHuSVQixt1ipIApjNaGeWIXtIw
	wz8axrdm1y/Th6U7hINbtD9NYtkK7JUyM7aWYiygz2hex5e/ySZD4DJG0e1HRpIobonqgD+Dp3q
	Id2+bBf+pDzNNHuHQgLxkT5tX2fhQ4CG2vPLHs+YoXsFobMTvF73JZEIv7Xvk1altcDbd1tQMe1
	e8NGOwbYrIv1ot92riTLhjRb9Mtt5UqPuwKcHNgBIJrWHwofjD330oYd4bU2MATN1b6wD4TXuwC
	WFXtyyHYLnXaTei3GqXD4B/8X1ERfQKCj6DFKY1leIM7PKXyhIOp3VXWrZljY7u6+yKYpP2IMPw
	oY4K6KWaP7oJKTBdJ7YZuHSRmne2EbRXS98fdPc+kcuXWXRC6INNKa4mHjKITSawPq
X-Google-Smtp-Source: AGHT+IFyoRt2dNQOmJxXYPgtoHsx+IUK5C9FJ9EM4O+p7P4XzBFb87PUvms2YVvujmSmeqx+2jAPFg==
X-Received: by 2002:a05:600c:1792:b0:47d:7004:f488 with SMTP id 5b1f17b1804b1-47d7f6163f8mr74389625e9.10.1767858630018;
        Wed, 07 Jan 2026 23:50:30 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dad8bsm15257199f8f.8.2026.01.07.23.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 23:50:29 -0800 (PST)
Date: Thu, 8 Jan 2026 07:50:28 +0000
From: Stafford Horne <shorne@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/5] openrisc: dts: Add de0 nano config and devicetree
Message-ID: <aV9hxM_YnV5P-l_R@antec>
References: <20251217080843.70621-1-shorne@gmail.com>
 <20251217080843.70621-3-shorne@gmail.com>
 <CAMuHMdVCY=5UypK65Ver6UZM_m6DZuw9mhfANMx4+Y6PgNAdmA@mail.gmail.com>
 <aVi0W6syzK6buL_v@antec>
 <CAMuHMdUP3z4Os=3XC6Nuzx8QAap=LTcuJrGZsy71GO=NFTOjZg@mail.gmail.com>
 <aVzb6pStdagr3IUX@antec>
 <CAMuHMdXr7H_M-QO-3ty4mpycMfDHsxrDWejjw7u3RPcUqioapw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdXr7H_M-QO-3ty4mpycMfDHsxrDWejjw7u3RPcUqioapw@mail.gmail.com>

On Tue, Jan 06, 2026 at 11:18:01AM +0100, Geert Uytterhoeven wrote:
> Hi Stafford,
> 
> On Tue, 6 Jan 2026 at 10:54, Stafford Horne <shorne@gmail.com> wrote:
> > Just curious, Do you have a quick way to enable out of tree debug patches i.e.
> > to dts and defconfigs?
> 
> Keep them in your local working branch, and rebase that when upgrading?
> /me has +1200 local patches :-(

I see :)

I am going to play with mini.config's using KCONFIG_ALLCONFIG.

-Stafford

