Return-Path: <devicetree+bounces-241251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C89A4C7B91B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 20:41:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DFD2635D713
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 19:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2F6F2E22BA;
	Fri, 21 Nov 2025 19:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MPnUvd+g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CA12E7F06
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 19:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763753991; cv=none; b=AgZctur/+xUQnhmF3ZVHH6Hw5Z33cfm3xiQGxNoKoGFwzYhhc8ScClpStsDQRVrwWeZA0l2J4co90L8pKXZzzU5xyAnKpeEe1zr4fatCpWxJjWkHxhsVIAHlD/APLarqp6uO4v1eFGnWbCachaogtXh7f5BQUInICrPbkKVK3nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763753991; c=relaxed/simple;
	bh=/ORdsN9to51TeOs1BjW1wgj0a85OPhpdeTHQwv/1q2A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z0LYzAkj08ncwNw+LWj9iZ5RsvFGaSdZ/2N2Y3rblMUwUMBJmhwrhKwJmhbWfiyz4OpdzerPf2Zh5KkhL4Iz3dqHJ4Kg12j157wSl+7G5rZOC+EM+APJh052Nf8mvQLDzIV6+n72/iyPIJaX8vyJk9qJFzwRwo/+1lHes0sGJiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MPnUvd+g; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-429c5e0f94eso345468f8f.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:39:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763753987; x=1764358787; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DGqbZP8+hvf7xeF3jbLslaQnJSoADTEWG1GIF5MUBRo=;
        b=MPnUvd+gTqEHKRS5dVAbX3j6bnHM7VXaeHq+8QzaGG8uWtQaKaF5o/qiQo8NjI59Q1
         3+wzKNW12jOdEUYDY55duhTp4GCT3F+bO4JpE4fIDt16JU/Z1wpsBlJWwIXSADHUzRYD
         HQls7BQC8ebXgEy+xq8Bcxnt8HKrV5TL1lgPSiSDIBSoqmc1OA+u4hJhlGV3diUvZ9JM
         kZq6RqVuQo1UyDtNYS3dai/j4Bpq0UyJZ3MhXlE3sIsQO5nHPYEcukhnHVakiTqbKiww
         wzxQl5yQkZa83S8MFkts5uYB0+hm2FxyyAXs8BwbEMGdnVPlmFH3VVq9sNymBY29xII1
         2vEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763753987; x=1764358787;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DGqbZP8+hvf7xeF3jbLslaQnJSoADTEWG1GIF5MUBRo=;
        b=SdHa2fPeIEZSNG3Z5gr+8ps3OPHRBCFaQwWN0CgnYPYbfekBWfDAcJLqFb944nSR6n
         7eLLb7v9TztQqyU+YieNmjslidDowLgavCEEqzBKvXTPqFGMPwkeiR3SucNnwk9jsfXT
         xMhHcpTtph/LMenSl9UlHRIGC08SWUYbLx9aWVJ3rGx0qDUH1mhmyJiaPkMADq+rHHTJ
         qpA5Qb3DJdk3ktZwKViXz3tqRSKgjaJC/zEr1GMjaceWaOw3/m5NLzSzWLwzSOMc11B0
         nIQll6WkJELe6J499+07ntvi69BdM7MP0aBJAU3tLnZmWORUAZS5mtELGH5ofVNtVk/Q
         zVig==
X-Forwarded-Encrypted: i=1; AJvYcCUSMKmv621g3aTn1yEogeIlDOwmdjk+SwVKssXqkmUrG/0a4wcvnkO9H6QV0pGe0BPAuZDApGPyZoFt@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf3XMYwjiLP0ipcQib0zSM6OTyyRi4gC0NBJUzNQ47Kcpx6kIE
	vE4mVd/FZI4j4vbsIsY4Hex+aoImsGY9Ehc4NOgpw9bJnUmtCd//QvBH
X-Gm-Gg: ASbGnct0sOxVanwHs6PSPah+1OWr6pNEW/escwDboHliNN+B5N/tlrZpmP6aJ3GhCKf
	vg1Jqc2zityjId6xLHvJP12sTBTf6mdBhvZJuaKADlB1UUjYDBJnDD5jvp13TeKguerTQkA5Jr5
	yoF7lZudcEL/TFFeNFP4IdsrkmSYam+kOpkDYZmufBlnveSdLQPBuUIUbkJ+NA4WuqDkiGdK35s
	AqxNu3ucQ0oipqwSBpG1JsPGtXeh+Qd18clHcE3shsppAMLKNi+ke9QqyrKxGXVc4lNcJRdhoHm
	QkXhmjw9dEqLSNZz7Oqt7KPC9tZ9LU4znNXdIH001Jn5gdmVWvMo0WewEG7FwKupBFG5ydrTpD3
	Xw74+BBlSvZ3n4xp2Z0Evr7O+DYSE3DLqnDDBRG2C8sWGiikd/0O7frq5wr+r9hfe1yQgWDpwJh
	j0F2c=
X-Google-Smtp-Source: AGHT+IENFs6ZeqSSU+KjG9QyVSgBwvU+cDVIGAR8OjDvX7BWestdMZ6UnPS0+COQ/ad/NdSX8SYyYw==
X-Received: by 2002:a05:600c:3b96:b0:477:a6f1:499d with SMTP id 5b1f17b1804b1-477c315f86bmr17005775e9.3.1763753986770;
        Fri, 21 Nov 2025 11:39:46 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:b19f:2efa:e88a:a382])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf1df3d5sm59104335e9.2.2025.11.21.11.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 11:39:46 -0800 (PST)
Date: Fri, 21 Nov 2025 21:39:42 +0200
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
Subject: Re: [PATCH net-next 06/11] net: dsa: rzn1-a5psw: Add support for
 optional timestamp clock
Message-ID: <20251121193942.gsogugfoa6nafwzf@skbuf>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121113553.2955854-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-7-prabhakar.mahadev-lad.rj@bp.renesas.com>

On Fri, Nov 21, 2025 at 11:35:32AM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Add support for an optional "ts" (timestamp) clock to the RZN1 A5PSW
> driver. Some SoC variants provide a dedicated clock source for
> timestamping or time synchronization features within the Ethernet
> switch IP.
> 
> Request and enable this clock during probe if defined in the device tree.
> If the clock is not present, the driver continues to operate normally.
> 
> This change prepares the driver for Renesas RZ/T2H and RZ/N2H SoCs, where
> the Ethernet switch includes a timestamp clock input.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---

What is the impact to the current driver if you get the clock and
disable it? I'm trying to understand if it's possible to only enable it
when using a feature that requires it.

