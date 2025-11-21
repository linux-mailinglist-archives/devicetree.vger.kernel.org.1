Return-Path: <devicetree+bounces-241261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F370C7BB63
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:05:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 442D13A7417
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 21:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFF6A306B15;
	Fri, 21 Nov 2025 21:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kvus6StE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4391F2F069E
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763759112; cv=none; b=MH3VH8ilN0/oBm3RkeTLMcxJGxAjQoTzzE1TKfqW2FXfgp10k8nnSYQnJTdkFkx8IVx9s6IPegL5zBQO5KvPoq2He2A+SPoewJdT7g7p6E336jFlyWdRni64a9Bdm9hkzSSGMW8GAGZD6iyT0oZKtsbJOqPzFtXiYexyeTJ7x4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763759112; c=relaxed/simple;
	bh=ikocOw5rSrWvxBWEQdFtppjYN11mom4HHhas6/T9J2g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BdDtV8arC0sgd4Yddq30dkJIw9aiDWLvLcDzSPiIbwzWC3T5srKZQ9+lnS18iwmIoxaIshXfOAR4LEU4peZ54CetEpbAPfFsaEp84ODlKC5j3d5C6vCMESk34K3Kucnxw0yPZjCilijQ1qm7rYTBM1wOyGh0vU68+kzZJD+76u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kvus6StE; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42b53b336e6so207027f8f.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763759108; x=1764363908; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JM0Mreiq32b+LPITrWPP1aT6vTsdSPOWG4QtqrPmPSQ=;
        b=Kvus6StEPYOK5Nn9yT9sJpo1VRUIp3KQK79bcMq9Yh55IrwEPQoOoe8iwDeryiWUXl
         Dr29xuT4qBbPvsKO/1v/c2z1nv9UEkmCSS0k0pVNhcxpB2PSzaWQ/D1DdBTD1Bja7hzM
         LZ6O+hfbpOPovUN7n/Btv3wjDQYtEpC2IRDB9+6Kkt9YLOuhJzDNYDMbKmyLEh5RMwWi
         s/6ug5j6nNJTuZxtvLzwCk8hlH5XI5FSLJrVkUau+2WFbOvrNoOnNd4WnrE6LQ6iTJd3
         HbcW2EEKOzFSvYY0wqpu1t1rDqU/h/ZWq7fDTEfC+vUiobsM5396nB9jNehUS7s7ecQt
         hfVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763759108; x=1764363908;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JM0Mreiq32b+LPITrWPP1aT6vTsdSPOWG4QtqrPmPSQ=;
        b=gRYjtYFiG0o/LXBtwNspJm+FM2Jb2h4qEJS8KwcSXQaNd7KZrwifL67zEYk2BCOzHQ
         NvVqN9RQ4feAuLu8EoV1TASKt5zGVdELmU3o8i+Kv/RgAFcQy7N+f4Bj6N9nBsjg3314
         t8US/5JLndvEELKl67VRm7sL4pZ01sTeIA6ngzdAF7mgFkHwt7T7igv1tGuZl+G8GMEy
         otJoDE0jvYcS3QQLB+ToxuYOneZHpk7J0Gszdx1GLue0xKMGKO9fd+0uLviDu+TD974/
         NnY3BkPzYlYevyBAJngiro21Zmhhb2M1Xzz0igck1K/zAkdpo19+kmqXg/zT19F9bUvp
         i7Cw==
X-Forwarded-Encrypted: i=1; AJvYcCXaAAAVVNrrLFhq8DjEmeXlbWQgPBvSfJa/J3LHEBozTtQx9VKUii0VHV2ipMQLiZ0BqAjWIuBXl2vN@vger.kernel.org
X-Gm-Message-State: AOJu0YxLgnMT7YGOEOOI85QQXJ8064tXSf/qzjOeNeDfziALr1RPSXSe
	bR3pMiHI+cayyHBc+b9fRRdA9i/2Wy/hb4y6bEZrxSwPZk2k+Y4HiLWj
X-Gm-Gg: ASbGncuxdVw9UM8HoOXQ+edA2QqLc37/6QNlCYYeSCzn9DNj+x7mu5/b4WFQUdCoDav
	ljKuUazj9iDn2iSXbb1GUapK/zCNGQavy9lL6NyKaTf85x4Pe0TS0ntQSqQvxxBkXbXj8KwXPam
	jeN+YNvGF8pIyGcKFcdt0dlnYVntBaxKHN5/OVknuXP0V3NYqjJKv3iJGCZdmi8kUd7fhmWK4pw
	jg6DUp7YhPc6I9lC1FUWtSfsaMa7BnUnx332GC94e593y15/UNZ2nzzTP/wIqAmee/PyNPFSGHr
	HpJ87haOep6Luw12YzyCF0GWBYSDpK87IfFNf2/HXZZ0qrmwQi1UCMWrWQJ5dvmtWNQKtCMdsVu
	DloWKW0KZdQv8ohEkkkS9lEmVfgQ7aWyqHDBY2bojGoHTzvlwzuAhtwaano0G8HcuEi4EqzCwUa
	N1+uU=
X-Google-Smtp-Source: AGHT+IFS3P2oYUjpO8Y/WJHNkwI++Z16Q0FgFLqrouu1RpHsouIxJV7ZSaPDknXEWFmL4yz0PFSImg==
X-Received: by 2002:a05:6000:4382:b0:429:c711:22b5 with SMTP id ffacd0b85a97d-42cc3eda99cmr1814532f8f.1.1763759108146;
        Fri, 21 Nov 2025 13:05:08 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:b19f:2efa:e88a:a382])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f49a7bsm12836295f8f.19.2025.11.21.13.05.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 13:05:07 -0800 (PST)
Date: Fri, 21 Nov 2025 23:05:04 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Prabhakar <prabhakar.csengg@gmail.com>
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
Subject: Re: [PATCH net-next 09/11] net: dsa: rzn1-a5psw: Add support for
 management port frame length adjustment
Message-ID: <20251121210504.ljeejnltaawahqtv@skbuf>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-10-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-10-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121113553.2955854-10-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-10-prabhakar.mahadev-lad.rj@bp.renesas.com>

On Fri, Nov 21, 2025 at 11:35:35AM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Extend the RZN1 A5PSW driver to support SoC-specific adjustments to the
> management (CPU) port frame length. Some SoCs, such as the RZ/T2H and
> RZ/N2H, require additional headroom on the management port to account
> for a special management tag added to frames. Without this adjustment,
> frames may be incorrectly detected as oversized and subsequently
> discarded.
> 
> Introduce a new field, `management_port_frame_len_adj`, in
> `struct a5psw_of_data` to represent this adjustment, and apply it in
> `a5psw_port_change_mtu()` when configuring the frame length for the
> CPU port.
> 
> This change prepares the driver for use on RZ/T2H and RZ/N2H SoCs.

In the next change you set this to 40. What's the reason behind such a
high value (need to set the management port A5PSW_FRM_LENGTH value to
1574 bytes to pass L2 payload of 1500 bytes)? It sounds like this needs
to be called out more clearly for what it is - a hardware bug.

