Return-Path: <devicetree+bounces-77719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E866490FC8D
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 08:12:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4DFA4B2187D
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 06:12:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8935139ACC;
	Thu, 20 Jun 2024 06:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="bQ6ESW1i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0652033E
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 06:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718863959; cv=none; b=o2lEfoT+dTluwHzU7QY9I2ZX/v6/PTZZ1OKO7S+d1lMBTXTheIKhqe97HrdhN/Ql+9RMeR9W4MTIqhjDPVUDYBorla7DSsM9QFozoPFQTlWXB78Dv2m/zncVWD9B+nK03n9EZU7EYwq7wv3sE+J6POGLo2U9rnvGLJIMM01+VRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718863959; c=relaxed/simple;
	bh=Ujzo3gQITrG9jyah8JaPR0BBgm3LCxgvrnBzDB3jdY0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BTSQA+tMM58e2asmgRKdgAgHkCJYT5AhyEE36G6ZDQ6l+N9auXS2zqLq01DxrH++fNAA/OL40XZCNauZ07M+I8HPsteupLI5nbRhisyGHch3rVFh4zik6I6WRMew/uFAORxDh8fzzd8gNUKBh93TMZPSePVACbEzhKPbKBMGWds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=bQ6ESW1i; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4405dffca81so310851cf.1
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 23:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718863957; x=1719468757; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6MDp6Gu1dB3kA3pFusfmm/YJymGwGFjMgRsVqOFAv7U=;
        b=bQ6ESW1i2MjYncPA5eJ0H71YdcvQ1iw8n5vW7vwoyAGPU6Y1Uq1nHooGo3iQwkAS5Y
         rIYAdEyKrW1I8J5L+WmmwHoz1Ltwvg9566hM4Z0lZj0RF0V+edZaT/UesNaNOA3y3PhZ
         SBBjU017ZE3WouI/yMidOd06kO+npy5cQTuX6Yn42Cw5uBdaYo0b9zeLbfZiMJtiicxw
         sTl7QTjvDFNSV8VfPljsGNqg322Ct27+1D4QSWt3EHfxUd/lGEOp2xklcRRWSMb31Dbs
         aKN3CdlokR4ylNSgT/u8puxdv4MfoK5OshXbfzSastzITyPmw+NORLqHRYOGa4pgIdwa
         54ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718863957; x=1719468757;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6MDp6Gu1dB3kA3pFusfmm/YJymGwGFjMgRsVqOFAv7U=;
        b=apvrFayxv+SThaMrD0TN2PBiGorUmHePkoI7Et9dm+c56uyHQOvKXKkuJvTRo3w+6p
         ON+mf6D7thtux7P2JQ1Ckre3dJ4ywZUpO0ahxDP/ZN4lQ6ueeeIvZxD4CY5Kpa3vjRT1
         qFGAgt6KPSvF7Bw6t9l2S7U9HDV9TYSymL6Ed+I2BXHQW0ozlzpgosiBozl6KvJyYern
         pBm5otWqsFVXABBiDwlQT+Q/TbLmBEM59zGY/7UhcR0r5GA9JyqE69BOtOFY0TYICOkA
         /JsrIHMQ6Y0wSIMxemL9C5N8YHA9i4caRDlLNnLMUUaY9uwSP83plu0y+Bqxc/KO5dyn
         R1GQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7Sy/9P6Ngd8UXQp6Xm1CRkXzWPa/DBVXqyo2GEklVGbnIZPv2pudS7EaZoTqkMFgCS2jM+tL+tt73397zp5MCx8x46NHoMVCTpA==
X-Gm-Message-State: AOJu0Yyhv45Zkg3tgl58fEjp4Nu6lyRmLxPnWmTtG4fTl6qdbQpp/uPU
	oz0XYkhR2UyHCFwBK5dsD71AESbvJf61v9K7AgmSOZC7BZA3E3YrqLHqHExF6NHReAzKcQ/LFTi
	dywehKwkEleSu6GIj6Ydhu8Sw0SxtAt8bP7vYDwlBqglBQWiiHh02
X-Google-Smtp-Source: AGHT+IHNWwGYLve/6F1QWlvTiTVYGmQ4H8cLjWmI+lXR1LrdOwVRPseIr/mca32BSn0Ip3ODypzRKhOpFo2sA5ibuss=
X-Received: by 2002:ac8:5708:0:b0:442:172e:4dd2 with SMTP id
 d75a77b69052e-444a902844emr4894831cf.18.1718863956650; Wed, 19 Jun 2024
 23:12:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240611171600.1105124-1-aniketmaurya@google.com>
 <20240611171600.1105124-3-aniketmaurya@google.com> <202406182005584f0deea8@mail.local>
 <20240618200932858a6e40@mail.local>
In-Reply-To: <20240618200932858a6e40@mail.local>
From: "Aniket ." <aniketmaurya@google.com>
Date: Thu, 20 Jun 2024 11:42:25 +0530
Message-ID: <CAMmmMt21TAH3Vp8axtY9PoM0K6gzQqtMiHTaNGXKPW3J2DJF-Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] i3c: dw: Add optional apb clock
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Jeremy Kerr <jk@codeconstruct.com.au>, Joel Stanley <joel@jms.id.au>, 
	Billy Tsai <billy_tsai@aspeedtech.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-i3c@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hey,
> > >     ret = clk_prepare_enable(master->core_clk);
>
> It could be worth having a look at devm_clk_get_optional_enabled
Do we want to use *_enabled clock apis for both core_clk and pclk?

Thanks,
Aniket

