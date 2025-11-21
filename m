Return-Path: <devicetree+bounces-241265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B11D1C7BC3F
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:36:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5C13236035B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 21:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B5732FAC0D;
	Fri, 21 Nov 2025 21:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GY0Tg+5o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADDA529BD81
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763760989; cv=none; b=VVI0ts/4l8LrTrFQvoDPOz7ez6/CMZ6X9HBgeexdg3akGGOLmFth40BPBRqA94YNySEr9aSqP81sZtUeYNDBs/gieCQDY416AmzI/hL3jZ8eXva6XLwsMotSdSvuGSscxP6yzwB+fdYP5TGFK2FrUcEhjr7qLUHSKQ7c+Yu24Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763760989; c=relaxed/simple;
	bh=mQoTp/0W3Tm81jtP5ZtWSaFnbRrYjUy6x0Nz1Yudsfc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G9mtZGB/yiQwChZKTC+Qepipxw7C9O0pF8dQTdliMWwxT6HV4T0vA7e8HTk4flDkJYbWvQ4Vr/MLYmmUxFo4qkny8JJJSv2xD0eBuQLI4LVuYMcXE+0EtKoKmBH6wCOXS8dHixbSBuJKW5ui1OuNhO7zQ74lAALTxY5nbZPOuaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GY0Tg+5o; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-429cbdab700so297215f8f.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:36:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763760986; x=1764365786; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mQoTp/0W3Tm81jtP5ZtWSaFnbRrYjUy6x0Nz1Yudsfc=;
        b=GY0Tg+5os0lYIExGFgvS7/783CS+0uKDNDibOMenyW2uYIzeXPLWhuAFyhS9yXaww6
         W62rnaRXrNE5WlmaS6/wRewJj6+pL9HidgCITReZKAggW7nYmpG7Lab2nq+/uSkMypCu
         /8Sy51JD0pW9TOuumUciPAp9Zo2uFlRKnFMgKnh4cGEVLTzptV89RBmVyQwlk5isLpTT
         hYVs8MeVT7ps/yUk0LDDIQ7f7tJwKC+3S/R6qCFoRTpyjKJR9KJoUa1a1BkI+9GDnki2
         4WbX2nQ1uO0vSm9AuCQ8mjyXSd7MLw/hvO1hUcev91Puyyg/WNTC91Oo7jxwIpbeMque
         57Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763760986; x=1764365786;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mQoTp/0W3Tm81jtP5ZtWSaFnbRrYjUy6x0Nz1Yudsfc=;
        b=JPR3bBqpZWQ0CTYOuri08g8+2xAi7M1XZUBTQpuKdSl5PNVXkiL0eDTcHQGtVWnsvg
         POzo5q/lk61rYHbMVJ0NjCest2oF96VcP2aWWms2GfeO9BTNck4AKNovMnFBH2pYEyQe
         mMoakV4evJMRBmh08MwEVXznvpkxsO4aEcbFVIDsKOqjpuwgRXUaR2CoZMYgnt4KJpil
         lIyxIhiAO7HQBuKw5wXRKPMMDSwc0L2Y8PgJ+HdZjVJow+lBL0B1qKjr8CLScRcvSgq+
         1aM1YcIDuxxLsgGjKCjXw6cEtvdW+yQqfE307t8pBv2S2S2npMazihpdZkOAbewVmLad
         OrPA==
X-Forwarded-Encrypted: i=1; AJvYcCV1Fmz4J5wmyQb61BIP7/SKSDN5WDEq/UxYX/ZWZ4+sY89sWwuf8dFZvKLjEWNuBQp6VV3CI/+H+QIs@vger.kernel.org
X-Gm-Message-State: AOJu0YzowN5kEV43lAb6kHFasl/AqC4hkNmJBuCIfaMedyDCchFfCdjx
	eHVJB0psJufIWX0Apu9EwvPj6nH9DYGwvaStuvb1Q64ocvkBtiI+YAP0
X-Gm-Gg: ASbGncupmjDOuvqZCspeUrNvBeaay4Vr5AmryEXuSaW1sxTCJmEIPzHWpHRvN/uB+7f
	GYIXWL4pJZRsasIuD/9orpFeVw6TbOw/I4n+KPmMubwn0wB+0ktrKU0G8RS1+AZgis5UPHpIL9p
	vnoHtnzZNAI1zs96QzkR4rzotSMGuTzK4ZPoVoiOYYwFxLHEVw4eci4Q02/UI48GiitoMMvc0Hu
	B03DSuBET0RKsOEvRj/eVYw6S+6UwKYlupRHVwPeie6EV32ShKe8AjFYWN+i13WRjWvOgIIZud7
	pYuew4l4c36f6O5Ux+UzE86szhPVJttzRi3o7YnKBJm9u6L+hjJj041iTW7NTStlftBZ2n0W2OY
	9XrGh9QZqcbydUnGk+sOvHJs+yxbrZpUng8YPWVi/Moo9QbHXKTa5ruGp27jzW3pBxZHdBtp4fe
	LePbgDaVxBcUtTdQ==
X-Google-Smtp-Source: AGHT+IGP5JsAPDcUlNR9Yhu9GlfGTfN+lPzh1aUNyqY2EC7E2nmAVlVVI0nYus9WGy5sHpZE8GOYEQ==
X-Received: by 2002:a05:6000:2c09:b0:429:ed57:d17f with SMTP id ffacd0b85a97d-42cc3fb7ce8mr2036844f8f.6.1763760985746;
        Fri, 21 Nov 2025 13:36:25 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:b19f:2efa:e88a:a382])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fba201sm13249373f8f.32.2025.11.21.13.36.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 13:36:24 -0800 (PST)
Date: Fri, 21 Nov 2025 23:36:22 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simon Horman <horms@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH net-next 02/11] net: dsa: tag_rzn1_a5psw: Add RZ/T2H
 ETHSW tag protocol and register ethsw tag driver
Message-ID: <20251121213622.rz7chmrhmzhxzhvm@skbuf>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121192700.3eg5h2eqk7bruxeu@skbuf>
 <CA+V-a8vyjt43TPUmu+1TFHFvQsBwYTzKFSQOQm=O3R0dpZWG_w@mail.gmail.com>
 <20251121204833.hu4jfq6bx2kdamd3@skbuf>
 <CA+V-a8uA-p9wGXNVdf8Oykt518_2X6fyK6s2-R+G_AR2DqXckA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+V-a8uA-p9wGXNVdf8Oykt518_2X6fyK6s2-R+G_AR2DqXckA@mail.gmail.com>

On Fri, Nov 21, 2025 at 09:30:14PM +0000, Lad, Prabhakar wrote:
> Based on the feedback received I would need to register a new driver.
> Do you agree?

I agree, but this justification needs to be present in the commit message.

