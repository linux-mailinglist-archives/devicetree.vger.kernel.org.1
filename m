Return-Path: <devicetree+bounces-136128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56978A04004
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:56:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AB501888BEB
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 12:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE3591F03FB;
	Tue,  7 Jan 2025 12:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b="c+d/tLH3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B891E3DE8
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 12:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736254580; cv=none; b=irNKbDS/Ux3cGeAJ3muzFIOfBnyADaXEn77nXKtZhHlk2RZlRJXsy9Eg+IqnBC4/+g7jT0KZ9NGyYwZafEkAUuCPxSb2eF9FbmdKbErA1OgPia9hXiKAKOEw4exkSCb0dKTXvxmTKlzIn+czXuci85fTsV8MXBajhkfNb5sBuVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736254580; c=relaxed/simple;
	bh=oQroOboIDmNBq/mNFGYnVxRSXnsy6Wj4xFYfAC74pmk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZlbJoDhV/xQs9JXdZGShLw0MdNYcA1eNWXSkSCCpYuOIZNYnflpTjhrNLs+vnDowFsLPbYxwnJRDEfFILzNjDXHjXE1P54NZALysBK5GxQEWMCx5HwczbgE49pWpMkL60kNm405T6MahnvlqMVRKGnQ7LztkJY1xYv14nd5QV/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com; spf=pass smtp.mailfrom=jrtc27.com; dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b=c+d/tLH3; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jrtc27.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4362f61757fso153882995e9.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 04:56:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1736254576; x=1736859376; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yBSfrxpuC6OsYhjKIDRJ9B4wUIGyoKbNlTGgOlRrFlA=;
        b=c+d/tLH33tf4GS8YUbjoBdEeNL/r2NR8DcHZbRS91fQFWZOLxEYHeqHShk0XGfEzaW
         eLyGDti7oriuFVkj1cn9JV6M47hcPBU9s3x9z9LNyqzWzN/IZ2vqSvuoUP5tx5I03tTh
         Te/4iX6e4Ugy4/UrBjQ9BxXGqrAd8KaO9mNiYiDRoutzhHcpPi610Mi1PoFQDISdE6PK
         FtNn4HN6MlCJST4+bpXy7SXcWfkUYzOTE3NDVH7/98vcPG5xFV29yJNZ+OwCal9bb0MP
         RduPjhZ+Y9e/6zvseVrjXwZUx7u5HwV94fRZNXYvddqmkMjzAufpkPyHl+48iegwIiSB
         ev8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736254576; x=1736859376;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yBSfrxpuC6OsYhjKIDRJ9B4wUIGyoKbNlTGgOlRrFlA=;
        b=gilneThOETy2D4VsEsruR6yW4/joRqKL1KW8ErMZfxuif9g8kC4KGWFMzWThX2ifNh
         xHF43MR+nsRXLclp3f9j3iR3NhXECbnplvI0eL2n7hnRJc1dts3jBRZngz5cDgRD5YB/
         5W/TGAHZaW/JJUu7C4ptTdDBMFGMWNrRlIEVPXBaIuhbP+4qZEaTOBQjBf4XGSBluPb3
         oJwHHwxYmgqzk0CF0W88r/A4CNMe1M083F8UxH2e8fGUlgK2SDSGQl1PjycqpZSjgNtj
         8Kwb5g0eLSjPGIFEkhbEWB8US2D+eiLo/vi56ZsUagUS+P2IAvfLikdXo9qUBNCDPzKQ
         NBsQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6OxMkvBvXpANo6EIU0oPCXMa3ivCwkgF+Vwz20WhNqSj2ZqtUM5SUfCjL2z9/L93LkJQ9kaseziia@vger.kernel.org
X-Gm-Message-State: AOJu0YzzzxxLnF6g/oFC2Lv0I1KrRXm6TQrTzRxfKupxT9SYkeTmTtMC
	fzjpazPbwCBAzTIMW05IiicSLMQoUxfwPf9EmCbLH1nEDJKaxe2gxBH4HYiiY6o=
X-Gm-Gg: ASbGncu2ai/LEh60rs1hnMz262UjA0nqkU0KI7XqIzoFwSGgmjAPRFr8MDMsB2QNrJf
	zXJQzUjljZP2EvkGJWClaBTYNAYZP6Fit5aMqZ0oRhbrCbalsM9Y7H0ODrvwrhyw/fbKZbrnM9x
	7lgT7CqqZn6NGh8J3cD9cfczCyMshBFx2Ezj29dWkmqoYJQI6pG8BN8SZTWMiwGL2xqjxxMgbo/
	uAZuD9Rgrwr+h5MFaQ5IFoVPVc9govrd2grAwOs62r82ksoaKcJvUGw8Z/xAdqpdkAa+oG25n6L
	SSquiswA/4nsK8A=
X-Google-Smtp-Source: AGHT+IEmps/wVpiEbRTPlIfFaxVLghtVlcbTA9GHt1AXFR4/nEGjdiruq//V5iuCyK9uhhdBpld1xQ==
X-Received: by 2002:a05:600c:2312:b0:436:8a6f:b6db with SMTP id 5b1f17b1804b1-4368a6fb89fmr383424155e9.22.1736254575701;
        Tue, 07 Jan 2025 04:56:15 -0800 (PST)
Received: from Jessicas-MacBook-Pro.localdomain ([131.111.5.201])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436611ea487sm593720325e9.8.2025.01.07.04.56.15
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 07 Jan 2025 04:56:15 -0800 (PST)
Received: by Jessicas-MacBook-Pro.localdomain (Postfix, from userid 501)
	id B3086CDDDC3E; Tue,  7 Jan 2025 12:56:14 +0000 (GMT)
Date: Tue, 7 Jan 2025 12:56:14 +0000
From: Jessica Clarke <jrtc27@jrtc27.com>
To: Rob Herring <robh@kernel.org>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Linus Walleij <linus.walleij@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH v4 2/4] arm64: dts: morello: Add support for common
 functionalities
Message-ID: <Z30kbmA-3h-Rhg7l@Jessicas-MacBook-Pro>
References: <20250103181623.1980433-1-vincenzo.frascino@arm.com>
 <20250103181623.1980433-3-vincenzo.frascino@arm.com>
 <CAL_JsqLYu_z6yNA-MgKgoA=nC5ftzOEH5UNkswA_=xTJiOB0+g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqLYu_z6yNA-MgKgoA=nC5ftzOEH5UNkswA_=xTJiOB0+g@mail.gmail.com>

On Fri, Jan 03, 2025 at 04:14:31PM -0600, Rob Herring wrote:
> On Fri, Jan 3, 2025 at 12:16 PM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
> > +       cpus {
> > +               #address-cells = <2>;
> > +               #size-cells = <0>;
> > +
> > +               cpu0: cpu@0 {
> > +                       compatible = "arm,neoverse-n1";
> 
> I'm pretty sure the N1 doesn't support CHERI/morello. Perhaps
> "arm,neoverse-n1-morello" if we want to capture what it is derived
> from and since "arm,morello" is taken already.

Rainier is the codename of the core itself, and Morello LLVM recognises
-mcpu=rainier not -mcpu=morello (there's -march=morello instead), so
perhaps it should really be "arm,rainier". Though SMBIOS reports it as
Morello-R0P1 so it may be best to use "arm,morello" here.

The real problem is that the board compatible has changed to include a
generic "arm,morello" node, with the argument that a v2 board could
appear. So why not instead change *that* to be something like:

  compatible = "arm,morello-sdp-v1", "arm,morello-sdp";

Then you can use "arm,morello" here for the cores.

Though some of this may depend on what the FVP's DTS looks like; is it
going to claim to be a Morello SDP, or does there need to be a common
denominator compatible beneath that it can use?

Please CC me on future versions of this series.

Jess

