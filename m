Return-Path: <devicetree+bounces-13669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B8A7DFBDA
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 22:02:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A550DB21299
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 21:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4AF11DDE9;
	Thu,  2 Nov 2023 21:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eCOLRmCo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDA521340
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 21:02:23 +0000 (UTC)
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE89E18E
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 14:02:20 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-6bb4abb8100so1335445b3a.2
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 14:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698958940; x=1699563740; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IPuGtKMPlEfvRS+P+xBusUQd48EgHVGydBMy1D5IEL4=;
        b=eCOLRmCofS/3Ru4fUr+jV98QuZNjY+W6xFtaZwYepsCQIxArwfbuDQtmNEpEOK5cTT
         vVvdYi7xaY9tdvuo89d0dVnJbpjFeo/XHDI1vrF1d6JsgU0DgDwF6sJ72LnCVxzbpBVR
         4mPBusHKhtyx7b+9gynEH8ygpwxsHfjoG6gSk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698958940; x=1699563740;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IPuGtKMPlEfvRS+P+xBusUQd48EgHVGydBMy1D5IEL4=;
        b=EMf2VdjUWdsxUqor1WGo5SUuhhxrerOEgT1uiupT/bOT5bSTkk6VoWd73ohlDQG/TR
         QRfD/NHb+qMdO20EDL2sRqVO+DGKjNa5lPgkxfLy+V52DeddauMeOzT04BtnWwyqvcaq
         Zb5WBjVHrjijRWAu3htAG8vX0dC09e829N19MIlYJ4WiEWyB+pAk9/lwkWy59hOeviV9
         ube4ccNNwZWy6ESgy+5t4XvcjeHbHLBUtC8e6BfgTShH/N8CGfzpEcUoaVHLk1TfDjim
         XU6eT4scl9qut6QE3oHXWNzf4hCopWSNQKz/4CqJNQoNufs+KZQVZa36tWXuUXbhkLHN
         eXdw==
X-Gm-Message-State: AOJu0YxJvrKfmbl2GrZiu/5YSpItWzaOJojcAuygAZc4o66cfRVP4rrn
	t0ZMUmV/oKNP7Bb5/xxtDOGQBw==
X-Google-Smtp-Source: AGHT+IFYvdfRwpri72fkum0U8llMGbXB5T3T/b0kSk4KbqyH+3NrsK9gYNXQO1FoJxEDxjHW0gjP7w==
X-Received: by 2002:a05:6a00:2d0b:b0:692:6d3f:485b with SMTP id fa11-20020a056a002d0b00b006926d3f485bmr18420114pfb.3.1698958940181;
        Thu, 02 Nov 2023 14:02:20 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:a601:95c2:1e12:1936])
        by smtp.gmail.com with UTF8SMTPSA id fh21-20020a056a00391500b006b22218cb92sm172254pfb.43.2023.11.02.14.02.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 14:02:19 -0700 (PDT)
Date: Thu, 2 Nov 2023 14:02:18 -0700
From: Brian Norris <briannorris@chromium.org>
To: Karel Balej <balejk@matfyz.cz>
Cc: Kalle Valo <kvalo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: mwifiex: document use with the SD8777
 chipset
Message-ID: <ZUQOWtIofdSDHi3t@google.com>
References: <20231029111807.19261-1-balejk@matfyz.cz>
 <20231029111807.19261-2-balejk@matfyz.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231029111807.19261-2-balejk@matfyz.cz>

On Sun, Oct 29, 2023 at 12:08:16PM +0100, Karel Balej wrote:
> Document the corresponding compatible string for the use of this driver
> with the Marvell SD8777 wireless chipset.
> 
> Signed-off-by: Karel Balej <balejk@matfyz.cz>

FWIW, the binding looks fine from mwifiex point of view, so:

Acked-by: Brian Norris <briannorris@chromium.org>

But see cover letter. We can't merge driver support without a
linux-firmware-compatible (or otherwise redistributable) firmware, so
NAK for the series.

