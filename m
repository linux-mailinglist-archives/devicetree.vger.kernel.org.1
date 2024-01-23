Return-Path: <devicetree+bounces-34325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8D283963D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 18:22:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F212A1C2119B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 17:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74D3E7FBA1;
	Tue, 23 Jan 2024 17:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZmMT0kqH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B2863518
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 17:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706030552; cv=none; b=hUKG65zLBYINKqnDbcVJjO+PjYSV6f6iBkM1lxOBMdVST67fq4KluKhq+/pZ5yvkAL0RUrDPQ3dxwfV3C2gOuG9+VQ2dUIUlugcPsd5EuQkA9QtveFx4cxdZEBtOrURkcibnzE/8DiV3+Ohvew3iX5MXtrCCLxcXNGfzkXQC3/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706030552; c=relaxed/simple;
	bh=1Hfc6n+pM6KQNiyZQNXhNkFf773fzhUlASTk4Tfi3oQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HmnEA5tFWTZD4TpPeLX5II36Syeqfxd141MVYbh41NZvfQox8yBtltYOjFuElV9uHKcvFuUTN6x+vlAEJDBZ8jJc3W0b8Z9Fg6ddz3bedZRxmpOIEDM/cfkdNOag7TTR9oyauU4NaKWlvkGiI48WfNB80j+TR9sx5f0MYa/rYBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZmMT0kqH; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-339237092dcso3297701f8f.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 09:22:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706030549; x=1706635349; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1Hfc6n+pM6KQNiyZQNXhNkFf773fzhUlASTk4Tfi3oQ=;
        b=ZmMT0kqH8TvUD3gM5p5O90FrptpqkFMA9wSGe0G5ip+Y05ycwi2OKq2fkBmjiZgKzo
         Yf5XRSduF4j8q6XLhQJbjQSqe+Deb82QXBJ/BAxEgctBteQQS/424fATVuQI9cPM+6Xx
         0K+Fw0yFZOyqX0Qk2y1BIG4VjMwyHapqFtoU6LVkiefqBWPnTmM9dtqDnBy+wNJFp4XM
         hCAlAjpckhoqxVIrHmIqVrHTznRXFRKX2FsNkvhkKLCtn4o40gTh33A1SvFowFQrWaAB
         3qtke2qgNlHbBttjzKDYusXQdt+FC8b0XLUjizG3o8yvfcXc1FoXNYcbLjsGAAp61hDB
         WUiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706030549; x=1706635349;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Hfc6n+pM6KQNiyZQNXhNkFf773fzhUlASTk4Tfi3oQ=;
        b=Fa/De8zGMSbw2D09K+vKmuWUbFFnb7z3fl6Tf/LzQyNFG3y+1Occ9KSEa9YOopCRc5
         y6wW0Ibk4tgar5e7L6CTpgx3NOnJVeAY/EtF4lL5m3PTDVnVoDrwxi51iT/5yE5NbhNB
         mJ7D00qid66br1cMZjXLdRQ4iCIkzB4hZaYTGmMP3j0UUnokQat6s550r85pWrpk4YmC
         6Vi9yfdXpvVlngQAeNu8gqi5QTZmBUruDRz8yphUu0I2XyHDIMNkQ8qsOc1kWXFLtZoz
         gnzFGgH/n8CrG8cziwqUBTjl1J3mCPSVqCIHwgK1TokQOMk2u/Ml8lEW/gWWu/OezfGw
         it1A==
X-Gm-Message-State: AOJu0Yyui9c4BeIdUtnoUq5gkr6Xil5eqdmLG0jpsbFaThD6AOteSj/b
	OdNzTzdUjqo0PVVPcqOX0s7/zvfqB+uqzqmALLfwhH1nr2GoQq6GX5r52XlYQ/I=
X-Google-Smtp-Source: AGHT+IFoO7gQRGdGA6peiV/mTL2CvpmYneI+ojl6fbQ6l0AX59DKNiE6xTLu71LBrqA2E5JpU1OYmA==
X-Received: by 2002:adf:a459:0:b0:338:fcdc:ad21 with SMTP id e25-20020adfa459000000b00338fcdcad21mr4255272wra.49.1706030549105;
        Tue, 23 Jan 2024 09:22:29 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id l8-20020a5d4bc8000000b00338914eb90dsm12032927wrt.82.2024.01.23.09.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 09:22:28 -0800 (PST)
Date: Tue, 23 Jan 2024 17:22:26 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Karel Balej <balejk@matfyz.cz>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v4 3/3] backlight: Add Kinetic KTD2801 backlight support
Message-ID: <20240123172226.GC263554@aspen.lan>
References: <20240122-ktd2801-v4-0-33c986a3eb68@skole.hr>
 <20240122-ktd2801-v4-3-33c986a3eb68@skole.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240122-ktd2801-v4-3-33c986a3eb68@skole.hr>

On Mon, Jan 22, 2024 at 08:50:59PM +0100, Duje Mihanović wrote:
> KTD2801 is a LED backlight driver IC found in samsung,coreprimevelte.
> The brightness can be set using PWM or the ExpressWire protocol. Add
> support for the KTD2801.
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.

