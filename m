Return-Path: <devicetree+bounces-255266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E68DD21B2F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 00:06:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E12EC3008C89
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:06:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40EF6239E76;
	Wed, 14 Jan 2026 23:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PpXkHHlw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4381B27EFE3
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768431978; cv=none; b=OyAQ9QoIJxFIvJNvK5G0bjibXFMVuoGHgBnyKMhbEYatcO5rO+jvYJo+eWa+p9IleqwBLkxNDifDwO6mnj/GiC+pYuWfl/MhCW8sSbI818KA2M16mOA9gZKZ21HPxreKh9fxWnbtRfg+YJHU2WALLcIV6yYK3MZxsycI3dFOxhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768431978; c=relaxed/simple;
	bh=yXyXXMkGXgX/+j8OXbBzs7zSFMrvi0JAqRQZRSKvjmE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sNRrzG+2XQ22dRvgIG3c9uFJqUnF5Y8Y8auYZHllAS8aLSxNhGgCy7scajT6aGyue+dn+Z4xTpFICcgHWn/5oicOeVUsLGDtmFVdXrG4+DwWtUoSnqRs/ubVZ8DnZZc5MfZ5VAqiMPrSvj46vD+yEWCZDOyNyhvr678Bv10L3l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PpXkHHlw; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b87266fdf56so6077866b.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:06:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768431973; x=1769036773; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HYlvGQ0gpZ80d7V+/NVQkDzV9DkFwwQ8dyp8b917UHg=;
        b=PpXkHHlw0+xGGLzcizu6LkVnl+g1mzOWTe7iN9pLCTIGNkaVpn5ytJZrV2S9KLtiqK
         Y4s0TzGHcCb9mqp/Qowa7D/wiyL4jOgXRgZ4IeWpHhDRMn6HE12zcxrqvx8XB8DSedGv
         FSCPbyBpDDEfmrihVEjP6nrMf4hA+KkGprW8i3B0c6tVgkMBJhmEb4mTpv6QDwp72OEK
         CyDqhAbdjzB2KZNsYaI4TRH/omKjRQKQgOVA+zGQs4BbWlelHWbBDoFT1iih5zp1/8UP
         Wn08g8waBoJYqqvrybgAeaqwNEqj1g9R9imGwF/JQMkno/TKZzhMUV13nraFb/Sa/ac1
         GDZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768431973; x=1769036773;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HYlvGQ0gpZ80d7V+/NVQkDzV9DkFwwQ8dyp8b917UHg=;
        b=Xy8V6p5xqArpKz7VmF0Y6RK/OK99JhtHFH0enJOYh0TODb2C7Xrj3LiVzai4W7aKnO
         satE2p4Ca+LdwRHdXOq7r74llkR15jdotc++L6l2e/B7+rWGPPkx0OxSiYOVodYoam3y
         N4L6+F0xFj09u/mcz8EoDVjm/tOHtMDDlrDmiGHo6f3LqKqYnFPRL18z+K5H8P2SLH5M
         3Qafkx/Kc6JHOzx14FABvloOuMNyc1li69ZAkhB1/C23Yblen7KD4tJWgm+nTry8BgXM
         jMeWIQkP5qy+V7UoiQZ/Dv/Lv8c5MDrabRl/wNXCxBPk6Ej6n4zE8JteqsdLMHJ1H50U
         6hnA==
X-Forwarded-Encrypted: i=1; AJvYcCXoe+RyO8Yi2hxJO8SUfHW3Edu3WiHH52vC+DIVoMVn+ahr+/4i6HFsKPRjGdYgBESku+rrGTcCy8oU@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ9gWLIcv1DeOtCwGwnw1AIXJqNVDDY8JS8wF3tEtZIxTDxD1H
	qE4hWpTpij1lmusvF2LEWlyBZZqR0Jf+zolf4p/m/1w5Up16faCOPWAK
X-Gm-Gg: AY/fxX57k0MjrsSISll1M8vOyIPzPTgFVuzP/RzFtXseKr5yxISaQVC2QSSFOgAdTDn
	JlHvpzmqpMpc2pbAs8AvtxQzs2ieCg+5C5sF7kHet5A2NFLjVTXJD/WPm4UJzZHBtePmpeKQ0/A
	eaB0vm1EmKmuY/d8RBtIXpvQv8n5pGdey8mCWdUi6EnS3TZsa2aUjqrrN1d4NBpSU4LJhjb7xVF
	A2X+cxuFN1/xfIDr4/Wxk+qihSF2FIamCIG6EHfCuRmnExDsZ6MhNVVxA/EBGsKAuiQSrIYIXQn
	ozBkjpmXk2HqY4Z/z9h7X0xOv3OmRbuXHiK+xpb67snOxhhg860CdRnTfocxvc4dRhbvUJ5ChNW
	b9hbEv72Gu+P8pPrrlNSCyPO278V29M7DQJSZxGd+HAJ/BQbGS3Qb7PYPqMR1YMDU/FtZp+CJ5P
	0snA==
X-Received: by 2002:a17:907:1c25:b0:b87:1eaf:3762 with SMTP id a640c23a62f3a-b87615a948bmr202658366b.7.1768431972629;
        Wed, 14 Jan 2026 15:06:12 -0800 (PST)
Received: from skbuf ([2a02:2f04:d703:5400:d5b0:b41:b5b3:8c4d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a27c0casm2615825266b.19.2026.01.14.15.06.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 15:06:11 -0800 (PST)
Date: Thu, 15 Jan 2026 01:06:08 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Frank Wunderlich <frankwu@gmx.de>, Chad Monroe <chad@monroe.io>,
	Cezary Wilmanski <cezary.wilmanski@adtran.com>,
	Avinash Jayaraman <ajayaraman@maxlinear.com>,
	Bing tao Xu <bxu@maxlinear.com>, Liang Xu <lxu@maxlinear.com>,
	Juraj Povazanec <jpovazanec@maxlinear.com>,
	"Fanni (Fang-Yi) Chan" <fchan@maxlinear.com>,
	"Benny (Ying-Tsan) Weng" <yweng@maxlinear.com>,
	"Livia M. Rosu" <lrosu@maxlinear.com>,
	John Crispin <john@phrozen.org>
Subject: Re: [PATCH RFC net-next v3 2/4] net: dsa: add tag formats for
 MxL862xx switches
Message-ID: <20260114230608.qoojzz332jubiaqg@skbuf>
References: <cover.1765757027.git.daniel@makrotopia.org>
 <de01f08a3c99921d439bc15eeafd94e759688554.1765757027.git.daniel@makrotopia.org>
 <20251216203935.z5ss4sxbt6xc2444@skbuf>
 <aVx6NABI_8gEEysQ@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aVx6NABI_8gEEysQ@makrotopia.org>

On Tue, Jan 06, 2026 at 02:57:56AM +0000, Daniel Golle wrote:
> On Tue, Dec 16, 2025 at 10:39:35PM +0200, Vladimir Oltean wrote:
> > On Mon, Dec 15, 2025 at 12:11:43AM +0000, Daniel Golle wrote:
> > > the actual tag format differs significantly, hence we need a dedicated
> > > tag driver for that.
> > 
> > Reusing the same EtherType for two different DSA tagging protocols is
> > very bad news, possibly with implications also for libpcap. Is the
> > EtherType configurable in the MXL862xx family?
> 
> Only the egress EtherType can be configured, there is currently no way
> to configure the ingress EtherType the switch expects to receive on
> special-tag packets on the CPU port. MaxLinear, however, said they could
> in theory release a new firmware changing the EtherType to any suggested
> value, but it would be incompatible with existing downstream drivers in
> the field, obviously.

Sorry for the late response.

I don't think it is a deal breaker. For all I know so far, we can
probably live with the same EtherType being used for multiple protocols,
and the distinction is made by the /sys/class/net/eth0/dsa/tagging string.

