Return-Path: <devicetree+bounces-241244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D326C7B784
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 20:17:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CCB66368347
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 19:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1849629E10C;
	Fri, 21 Nov 2025 19:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j8IT3Noq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C68B233707
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 19:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763752672; cv=none; b=LVyrtl23pW+MoQPA7+YZfN1GOKhikDTh+ZTciGrtbdabtsnp9hI/2kBHHasI1A+5qAo2lme9+/K/L0+P98nRiSuBc5u7Fi9w1fvGWrLAmlk1sD0//jjj2HsZERhPtG55tbOTNrLiXaVa7kOOqEktHPCJq+s85EbIlovzA+hMPxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763752672; c=relaxed/simple;
	bh=4sAVwsYY2YHBOEK48pCtdqBPT9jCA7HP8BBEHRinpiw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G8PVKSgMfIysdTxab3GjxLhivphrQkwB4dj0W92/cJK5n001rPHydhVPKixRDloVH9qgea+k0hJBgXZz5XxRSDYFBnYNFaM1EqU7eyFGXJ4vdUguxpvm1on6YzsFAJQBcNXCUZFKk5RRXaFEN+ntPht5Ch9GrOhssl2ZgjgKKUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j8IT3Noq; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42b30bf0feaso185485f8f.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763752668; x=1764357468; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y8iwBwhNwuioSSQWn7LFK7t0rJ8Mh2P5vp1THsx3YdU=;
        b=j8IT3NoqDmMpUSg9gO3je6rP5DNc7uJQhf2dmXcQ04sgq43Z8nCTojxJrGcL+/hlM5
         rabuzh+0wXwEf5Ux/GvhN9eVKROxTeUBf7NrA/dKaiq9PhJCQM/+ge62muDrHXlw4Adf
         7SuPyGQ0YbYh3/TZNixM6jAGN3uJNiTTNgQGZgJ9XvuZSqfcSX6VBKGJXpjTrYlLwZK9
         0sxL20Yqdmepz4szhyKDpp/dGV58+tqVrpQCoq+IjQdpVEueg5dgU65BgSPuhoSYDbsJ
         I/48NXUZc6MqzAIITK+UFKqcUclSP26W7d37/D0yLx5vMrTIPHnAQrF8+iWZQCIulI89
         JrLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763752668; x=1764357468;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y8iwBwhNwuioSSQWn7LFK7t0rJ8Mh2P5vp1THsx3YdU=;
        b=P+9rNDkTlyHtY7vJ1+doF+PWBS0HXk3A0RVW6QTpPeac/qzajxR8hyU8QGKg8trr0E
         W+RHEUaav2xucBCkG0nG6R7N0V6M13WjQ5TIdNwTycxhuqv3dF+tPvuqhpmxnUiczO5V
         ClTF6QBUdRpIfTD1kiX+PpaKlF8/891BB5ElL+toCo4gWblMJnosMXK50zGxScwajrIH
         Fr5HhTNEaZGcz4on804sdvuJki39exNzCxH4cjuebyuJdtEFwKb+0km0iWm6OQLRJigj
         kVVei2etjEpVLE4IFVWSpXQfLEejbbwmkiZhM2UcKu/IC5jCcSz1MQ52u5qNdfV1XNO7
         6Zsw==
X-Forwarded-Encrypted: i=1; AJvYcCVD/gthJEsbAizwcUsFAnBes8O7qB/nsnbLPJHP1Em3GqgJTB8lksmxOQXPo6xR0mjjPAp2ZBnt86BU@vger.kernel.org
X-Gm-Message-State: AOJu0YxAvK4LZI738tqIUuWNww4108KeMlQnXCjMw8ylQjn+VYR1Hzly
	4oyV2jhBeCZcvaK38ECKzAEuGqEpzQO4/XtgHBtvSEaf5JvEqwI7eISn
X-Gm-Gg: ASbGncvou4THdgRLHxCLTk5Fr3fpsxHEC9ZSfH7+5T8DUtbLdjTTht1brGxMU7VLm0B
	Pb7b7ue5w18vJRWd45G+qkoAP6fZyaAkIbPW9R+lg5ONH7bKPQmXib3QLUWn1wiqCPKucy5gp7l
	pl5YNKj485sY3PTgX8jPOL9MG3Pf8/B8fDBOzDIveOF/ohKejzCRwr983V0WR8roWrd+OFR34yR
	YZ6taX0bx4lzsd6qd6LJkFxywDbQoDHqaJpYLMc9ydPQyA/WvXVVGgSgsN4R5lPf+Jo5IaP3BpY
	TqJmuAnFYKnPwpgnxPz+4qZsRNzZpNFKWYhCztUnjZTWT0EKGlLo0LiUd3j9Iflq9pSCFFPAYPI
	DEgXuAJu5MOnNogDgnQXUXmL1AnOXuxZ8+xZvkR5g/CCBea0uIOLqco/qi42eU3I/CnoJTo5DVk
	HwTW8=
X-Google-Smtp-Source: AGHT+IG+KrMg9GArGEp6Q0CjIrd17kh5O9dzvIO8tRrv+f2pfyIXfV6MHR1Wp42qXDKqxshdNqo9Gw==
X-Received: by 2002:a05:600c:4443:b0:45f:2c33:2731 with SMTP id 5b1f17b1804b1-477c0169f1emr21053475e9.2.1763752668337;
        Fri, 21 Nov 2025 11:17:48 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:b19f:2efa:e88a:a382])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477c0d85360sm48129405e9.15.2025.11.21.11.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 11:17:46 -0800 (PST)
Date: Fri, 21 Nov 2025 21:17:43 +0200
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
Subject: Re: [PATCH net-next 01/11] net: dsa: tag_rzn1_a5psw: Drop redundant
 ETH_P_DSA_A5PSW definition
Message-ID: <20251121191743.5xyrsey56gr7e5e3@skbuf>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121113553.2955854-2-prabhakar.mahadev-lad.rj@bp.renesas.com>

On Fri, Nov 21, 2025 at 11:35:27AM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Remove the locally defined ETH_P_DSA_A5PSW protocol value from
> tag_rzn1_a5psw.c. The macro is already provided by <linux/if_ether.h>,
> which is included by this file, making the local definition redundant.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

