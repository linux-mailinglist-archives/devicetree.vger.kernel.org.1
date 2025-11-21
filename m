Return-Path: <devicetree+bounces-241247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5839DC7B835
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 20:28:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E34CA35382B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 19:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F9332F12BA;
	Fri, 21 Nov 2025 19:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NUmURNMk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86F1CB663
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 19:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763753228; cv=none; b=oYE7oiUQCGr5QluwTgI6zZK+2ea7zUVjfVQ1uCD8bJLZ6IAeIw8A5PWEqTx7+AwRIKwZ6+r7wPMI9wPpVaQWyjKIj50UcNnhkrl3iGdxUWM9dFpOEicbaa2Hbk5XU4ZQIsRGwQv7ytB3Dp/n0e7lOKpiFNkWkdPQRJ+ep4lZIUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763753228; c=relaxed/simple;
	bh=FpPmrNBuKiuzYquOiGtXWIrHTqyVgbm4VpSHg+nibLk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dcXX5GAsq5TApYrbPmLHU7wOLQ2EWoIdMikO2PZ6T62LLmZDm8endrLrCB3HbaNL9l9l6ks3b3Y8laGwkNO9zCpv3NqZKddSLWSnF/g4hObgB49JmzlmOBshwGQpjOCiMxi/9CMogip5FotkVzxLSaHfOTWb5/wumHP0Od6al9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NUmURNMk; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42b305881a1so181677f8f.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:27:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763753225; x=1764358025; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ky8MNRO/KnATv6ZPDH12/iyZld6BKAT4bhit2Vz/NhE=;
        b=NUmURNMkSSSvu/Pt6XrIvcoVrYsa+RYkvGHH+1jx6uywXx8A1PiN/H/Cwyrk40dmEH
         S/iRmkHfSBzpaz+vWnM/aKo4xJSwRe0TdbOrCJLdjlfqSdgvaSjI69fEn0duBILZy+cE
         y5VPz7xTI3x9k++cpiQgFAo/zlnchHgEOgJwJGs9IidFQkA8KMSXgV4tu9uV+KaEgbH3
         930Fo4NQzD1ktM5fvXAzwCVN5WS17MVP5r4FN2G1k01C+wDkj31HuujZWfbthOAwNDHu
         0AL9TzvgCN7zQ6JibJvuse3opHfD+jhmmxW8VSY4SFPjFw480j3vw7/M5iLjbln3KlWF
         d0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763753225; x=1764358025;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ky8MNRO/KnATv6ZPDH12/iyZld6BKAT4bhit2Vz/NhE=;
        b=w2PGosFSGEABKWYjTWVI/w6u11hN9wAx+m44Bv/L8lv4Ol8WpTZRFtWk3cukgvThne
         iVsGQWalaBnHF1j86MtDyJHkeP3RVseMUPWEvf3CBWFtTk+vpMhuXf+0LpauTRHuHeuP
         gl3DczKcFo/H/F6FVp6SllLj7OUbPYzcEdSxqMmXVjE0uUQRnvJFPsx7/ghdbF0aydAd
         M5e/E1YFdsDB+QRbVGAoziS9Ds1f+SMTwCxn5A5jE6Qf/51b+gczic9qfO201g5etx7D
         CWfN8lac0nke/KDKZLzJYthafpTGCwVTU6yPU8RQxB84hQdCrmsop1PCNnqLWIYv48cD
         Mf4w==
X-Forwarded-Encrypted: i=1; AJvYcCXulQyCD2/sufArNaLNB3ofNwqf7S25y+PcRTyrsIEdz3N3rAv7IYaniEmgIsS5LdSqdBMEpLy0F42R@vger.kernel.org
X-Gm-Message-State: AOJu0YyH/+UkqCuZWOBDNLU5Q+XaO9Za+uamLG//zy8Msk9P61KtTTX8
	cVUL3B1TOVgbqGPSW1/LYEWledJpvvJRik7GHZclwrQ1tharejp921C7
X-Gm-Gg: ASbGncttQEZaXBEFawOxKB9H7krrIWwoDWvzRuGwA45OCeRQhcHmts6hi1JvXKiwVvK
	wRWlfH3Qub8XXNCp0S2tUR/rKA89wIP2lRbAmNfdhpMcD2ULx3S2zATL30rq61gYaKfg+p92gHt
	nmXy2I72t+LluYn+4Oz15T6fSb2BKSxHpQ/seU8VMIByQe/JVFwiBFULtliyIy1QUJEv5yFxPdF
	ArH7YU1L3owYZK69TsVui1I/y0FtpwEYevXNcbCjbFcmVUmQnOUhvkU7rdL07z9qJ2TCsICw9O+
	ARgKSVcmrRhLRmukNgSX4jyJE4XJtbJIjJYaDolW5YU7truSVQpMsD2VqrFY+zSs+cNkYnZg7p8
	VIotd7b1fqt/cR+4RRWSCUlpFZrtSUmcYsjn3NoSGfcHqk8Elwh6XxO8udY7UNWK9lUkB07XCZ3
	6GFN0=
X-Google-Smtp-Source: AGHT+IE348ikYusVnT2VGIZWl+evV/447ueHW9w22vcPuRfWXrW3lvJtPVVGuCPdYxsayq5bsL3b5A==
X-Received: by 2002:a05:6000:1863:b0:429:d725:40f0 with SMTP id ffacd0b85a97d-42cc1d13128mr1881881f8f.5.1763753224516;
        Fri, 21 Nov 2025 11:27:04 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:b19f:2efa:e88a:a382])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f34fddsm13036413f8f.14.2025.11.21.11.27.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 11:27:03 -0800 (PST)
Date: Fri, 21 Nov 2025 21:27:00 +0200
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
Subject: Re: [PATCH net-next 02/11] net: dsa: tag_rzn1_a5psw: Add RZ/T2H
 ETHSW tag protocol and register ethsw tag driver
Message-ID: <20251121192700.3eg5h2eqk7bruxeu@skbuf>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121113553.2955854-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-3-prabhakar.mahadev-lad.rj@bp.renesas.com>

On Fri, Nov 21, 2025 at 11:35:28AM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Add an explicit tag protocol for the RZ/T2H ETHSW and register a separate
> ethsw tag driver so the existing A5PSW tag implementation can be reused
> for RZ/T2H without code duplication.
> 
> The ETHSW IP on RZ/T2H shares substantial commonality with the A5PSW IP on
> RZ/N1, and the current tag driver does not touch the register fields that
> differ between the two blocks.

Tagging protocol drivers are specifically written to not deal with
register fields. I would like a clarification that this is a phrasing
mistake and you mean the packet header fields that differ between the
ETHSW and the A5PSW tag format.

> Expose a distinct DSA protocol and a second dsa_device_ops to let
> consumers select the RZ/T2H tag format while keeping the proven A5PSW
> handling unchanged.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---

