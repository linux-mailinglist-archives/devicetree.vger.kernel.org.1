Return-Path: <devicetree+bounces-156701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 419B0A5D230
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 23:01:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 751A01754EA
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 22:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AB74264FA7;
	Tue, 11 Mar 2025 22:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F+Mkd8EZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598D22253E8
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 22:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741730472; cv=none; b=m+R9Gkc0+y2YB7zQN3MOHAaqe5WU9KJf/iz+XZJdl8XqrWN3uPPLY/HQR/xj5ZmV3iXT+siv80Gu73bYEAnPFDgY40QMvQbzLa6Lai0x/swXlMN/VTNBlNZ+DHuYI4K4k33dWHtH6XTCU+UXmsbj4C9uT0MZLD2dtBgGTTLSjj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741730472; c=relaxed/simple;
	bh=R8RuRnxBjgDCbhmHONSNJXWg1vt5oJAuNhFXR4jrKCA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L6OEr0x7AKO1xCaeTWK6kx6HyfHeJObOyR9v8j/pjKsL1328f4bowAB4Wgjeid0RDy8rqfSY7xAZF8lo0SSIk8WlS0KGgWYUH12NJaEUZ+JUm+L+BUmhGDwkKRWXEbJ+dUo0u4jMRzxIiC9WTv8Igc0XtH1kF22ww78ooSD3v4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F+Mkd8EZ; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3f6dccdcadaso2007555b6e.2
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 15:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741730470; x=1742335270; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hO14LWvT6RF71LJw1vwVk3fu7V5c53lrYh2ZZrrSiK0=;
        b=F+Mkd8EZXNZlk6zVrnrWnAm5jn1XyLSZ/+W8HgtyzObrZK95ReZmqs2tfEglSPghpb
         9NbGecCfLkmp+zCTFaftPmWx1pPbCN1VIO7LPhT/J3gHM9h5eswaoZq7b3bcxNGRgbno
         MPzNivALP7WKMxzFX+3d3Y3DdONGMOK3zyxJFAqNde8aMyQ96D2dTx4+Ej+bfdGMkhLl
         U8uysW3k/U8J4aHX+ujc+1n/Ic4y52lk0HnqbKqhR2kPz8Imwf+30Ze+2JJW9HV2bNuM
         3YHzxw2Z10wiXg42dBzcqlvPpHSxrrg/Pt+vifPaNp7rl3R85y8vkzTwYE3Bwd73dTNI
         Nl8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741730470; x=1742335270;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hO14LWvT6RF71LJw1vwVk3fu7V5c53lrYh2ZZrrSiK0=;
        b=SRGh9diqvJOn0QRP5Z46Ay4EEUY0HXwI7EV5qYvuyassKG3gNGzCCM/C0cjc2llRox
         rUC6qieB6vMRYy70p4JLJegdmNdRkVF0pVOePYwf/y5DUpTnse/jSupg2tE2Udp9QT8g
         KIrEO5RZx2y7AJ3ioDevJRF+TJ1nwtN/WpM/M7YS/PvalcLFnIC/H/bsiwjGipKNQ05H
         DEKzPcWrRqPKPVYL9qjSI3Qsh4H+Gj3mc7Gfajz8BtL6AqZp5walftRlxDUUcXODr2fN
         R8uFUJhKXZDYNlRMPAXc4E1Qg+JQHAT4zcOO6sCdJpjhz1+j3uXs3orFrAPJiyFqZj8I
         lw5g==
X-Forwarded-Encrypted: i=1; AJvYcCViK6sBZVPZM0ed5A2JhnNbpVBftLgaElwS8ITPhufs7X0tBensWGRp0DRCSaClvJo0+5rZWBycibCs@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs3aGN0it872rrk+hDiQgxOG1H3sgHUgte6Gj6rjRl5u1tRpv4
	wzg2NjbIjtMXlTKY/ILFqu1dtBk4T6s6ldz8JTEumSOGt6Zy6vB2jRuPY9l6mFme8ded5efXpak
	E1EV+mhEjg2YdAsUWPZcKFitjrWdpqtchGjM=
X-Gm-Gg: ASbGncsY7pz5vDX7ZBPTTViEjq/Jx94qYsawP7jSV4TJvamO6zHA+9y/vz9iTEOITF7
	sVZ7Wbt8P4ZLKlXB8gwTFDVd46IN6RtX/xrXHnZCIVhPlTAtnCIklloysb0EK17qz+Bu6Yb+cRW
	nuwfCm6+XVjxBF5CNMTLOPGkfAG+sAHiqWUXinplzb4JWC96qFAfb+B6BAFv8=
X-Google-Smtp-Source: AGHT+IEtQtK1Iedlr6fWywHHm6YLJ5pw3KzGPuOa1tPA+iCb0feQo7gMOWkm93j2OOJceBrScIcjgWGvXoXqmEz7oyA=
X-Received: by 2002:a05:6808:148f:b0:3f8:b73b:684a with SMTP id
 5614622812f47-3f8b74ac847mr5214463b6e.33.1741730470244; Tue, 11 Mar 2025
 15:01:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241220120038.3137248-1-pbrobinson@gmail.com>
In-Reply-To: <20241220120038.3137248-1-pbrobinson@gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Tue, 11 Mar 2025 15:00:44 -0700
X-Gm-Features: AQ5f1JoZh-NGU3L8eIpxDuwcRiYOWZhV0d89f1f2dzKHdizOfdf7E-JnqzsgH1M
Message-ID: <CA+E=qVdbbRbR+57WRPTJ-WPJ2jZz0V=mD56Ts2oQmo-rjxvO_w@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add support for WiFi/BT header on Pine64 A64
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 20, 2024 at 4:00=E2=80=AFAM Peter Robinson <pbrobinson@gmail.co=
m> wrote:
>
> Add the BT and WiFi pins on the WiFi/BT header on the Pine64/Sopine
> boards.
>
> Changes in v2:
> - drop patch that enables the WiFi module, it'll move to a overlay later

Any plans to send v3 with comments from Chen-Yu addressed?


> Peter Robinson (2):
>   arm64: dts: allwinner: a64: Add WiFi/BT header on Pine64
>   arm64: dts: allwinner: a64: Add WiFi/BT header on SoPine
>
>  .../boot/dts/allwinner/sun50i-a64-pine64.dts  | 17 +++++++++++++
>  .../allwinner/sun50i-a64-sopine-baseboard.dts | 24 +++++++++++++++++++
>  2 files changed, 41 insertions(+)
>
> --
> 2.47.1
>
>

