Return-Path: <devicetree+bounces-241246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AA5C7B7D8
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 20:22:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9D378368778
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 19:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D890A2F99BD;
	Fri, 21 Nov 2025 19:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dV1gSZbj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71FC2F2905
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 19:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763752874; cv=none; b=Wflgvq73WIQhdKjugoraaolRp8QvQEd9LpsmrRl8ouOAAYTCY7JuD5GE+YmZc1voDWohOanFV5N0D1maZaeV36SRZiR/N5iE76E4gM+uvnmBr1g9KHcWH3eR1MEIrbj1I47aIyVKfwuF83SrKEk6GwaP5XA2zNnFOrKGH9geRJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763752874; c=relaxed/simple;
	bh=74G9Xc18v1RypEuwD97ovxP6vhEte6101GCpELdVz84=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l2Pzy+N2PyFuv++xoCIC2pzSusqgzDsgGq/G32YXwn782jP1U6yb4bYYrkPdnn4iax3P5qz/YsuN+6tLuKzOK81JC3/Ish9S/ZrQGopmQfM27AK4nI3OGTw3Sup+QfBKia/S4NsfmCTeF1X+rh+FipJZsXolFOtsysxkKtm4xRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dV1gSZbj; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-29845b06dd2so29551165ad.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763752872; x=1764357672; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PuwsRCiJEfPqcQBjl8MxdvP+p6un2px2w+qwWN+KPP4=;
        b=dV1gSZbjtJMTIEC8v1mwzI6oPFvfBOnQegiolLYzTddrqUSn6mBJbMPrRKSTMfY//+
         ASZMel9F6x+gd15fpNMMCBFLKRuXcaqrrWj5Ybkuu06Fr+ZsEoAU0hjByT5Xl7kTJ+FJ
         Ia9szNdMQXWC7lhoTBwzEJ4TKQRGMV0t/V24UVCKDocyLLmfJTNCKOA6X6VRiKA1/IUN
         VBDNbDxcpZXvicmk8VOUBbuvp98JkxL3/nX00Zb+VaUwD4447jlGzU7EKw6Z1UtzWNZE
         dKqd83VKv+lwCmFotIAA4vKaia+8LRz5grJQGzo5katxe8wXSsVRyPoJxl9KfJCsuBhs
         2O3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763752872; x=1764357672;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PuwsRCiJEfPqcQBjl8MxdvP+p6un2px2w+qwWN+KPP4=;
        b=KH3OyAE9VXgubQR45S6AAHdHXogz9sd5vdtKo8LhsDq3TxCGWN1W5K3H6mizYxlub/
         XiOntHy3FJbXCQnGzVfmVT3BuhUphz+51pKrAQBkgHVg3HNK/4CXK3m0rjXIsH4JW0yL
         HkTargVzgXoM7+H+iY/5lgSWA1ty6yXY6BUZbbGaFaxV//PYAN+MHSQ7knq89JI2oM0r
         MTV3XOVR/LMuKQexzKs7rpkMcpmliw1vKD7pXLIGn98LBHuF14ImimYs7KpFMdYqaPfQ
         xWSzfoKLcEEjKvxes4KFuiCk5u0ZvIw2XE2GwWaXAjoox2D4s1dcoSClL+JKmDbB1yYi
         EonQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1R14duDx1AciyMpBSu5NaUwqb6ZFyW8x2b1ytYJ19Mixq73JXyqJObapyknWbYzY2YjxMU9LugkiV@vger.kernel.org
X-Gm-Message-State: AOJu0YytSte+Qtyq4XJy0TLDMNwUztMYy05UtrAzHSu44wgrLZfp2xm2
	eqoD2hyAftVKEbdIYHHPxzbLNmbmHnuULAcMgZB9dLmwf/OCCm7g5k5N
X-Gm-Gg: ASbGncsB9Si4gOhumGt5c/489uceDg4OJEVJ+LyXmX6oGKIyEIsS4r5eUeT/lkUoEUh
	MNRW0jciKrvKa+oGqfuXyIj0swU0QeAmZxc+HkC9HoWtw/BjX93Kwvpt7hXnvWiAYIK7Qdci5BZ
	SZn+1dngu6zkD8cs50NxDi812en0QabtTHTP6VVhrGBO5Xw02yuvI4guvz5LkWi50EpZF7obECl
	owf8ePXCYQuMkJY2gFwBK/ljC+cCO4nkB/M9E76MEBqxmJyzjqXVYEEPp7X+FfA9VPu8t7L/G/8
	1qmtvraXyhLrQRHsInrCyhSHZkqYYTvB9nub1twvI9u3FrApRETWGvpJeATPJPcMm9KTQ1siYFs
	/ZSapO88BriLffJ+cXCDAa2P1aRnlsbMXvOgeswZWAe9zB0ehZzHWwdWerMATlwWAebGzsMtrN7
	uXpN0Pr7oQHOsIdaSUMub1wkc=
X-Google-Smtp-Source: AGHT+IEL7H1VBi7kwbJmZG3DtyIxfrQ9k12/GSEXJJ2L83oQNAI/YlBkWdpeqhPFCdtjoHJfPOpsbw==
X-Received: by 2002:a05:7022:6729:b0:119:e569:f258 with SMTP id a92af1059eb24-11c9d70a16emr1089561c88.1.1763752872115;
        Fri, 21 Nov 2025 11:21:12 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a6fc204881sm25316159eec.0.2025.11.21.11.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 11:21:11 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 21 Nov 2025 11:21:10 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Billy Tsai <billy_tsai@aspeedtech.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, BMC-SW@aspeedtech.com
Subject: Re: [PATCH v3 2/2] hwmon: (aspeed-g6-pwm-tach): Add AST2700
 compatible string
Message-ID: <30d139b1-05e9-4629-8a95-95991849fb03@roeck-us.net>
References: <20251120-upstream_pwm_tach-v3-0-eaa2f9b300a2@aspeedtech.com>
 <20251120-upstream_pwm_tach-v3-2-eaa2f9b300a2@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251120-upstream_pwm_tach-v3-2-eaa2f9b300a2@aspeedtech.com>

On Thu, Nov 20, 2025 at 07:12:32PM +0800, Billy Tsai wrote:
> Extends device tree support to include the AST2700 chip variant by
> adding its compatible string to the device match table.
> 
> The AST2700 PWM/TACH hardware is compatible with the existing driver
> implementation used for AST2600.
> 
> Signed-off-by: Billy Tsai <billy_tsai@aspeedtech.com>

Applied.

Thanks,
Guenter

