Return-Path: <devicetree+bounces-32910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B84F8312E8
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 08:01:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7C566B23F7A
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 07:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06A989447;
	Thu, 18 Jan 2024 07:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="u14GadiI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8C69444
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 07:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705561267; cv=none; b=YlKu4omUOKAmopn6B4oofXD8faH33Y5348piGgbNG3Pj/LTkI2sP5Irq5T+Qx4b8Tg/16Wb4huAz0UzGNClh/HZkctcQ+sb9d8YB49IWwovWwovrWpFPPulnV8EgpRrPyvsiV+bceFSGBe7Dngd8AA97Qfgd35D9JAJUX+U/M9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705561267; c=relaxed/simple;
	bh=unJ6WFc7vKcJ4G8AMMVuHFC/ssWPtKV2Ofie6q8oPgA=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:MIME-Version:
	 References:In-Reply-To:From:Date:Message-ID:Subject:To:Cc:
	 Content-Type; b=SZ1bCtj9vewBPj9rOJe1EEkyDTfojGNQxan+vUfwjn8y7OD0w8fRUpUfxqlFVfWbG1J8NuhZhtEd65n8dkOH4rjS72P2NLcdA3SeDl17Yt14CsA1SR0cbRHK/KqbQgk/MggifQBVQonjL4lLD5yncDGqoZKMzie1P1pkONH0q0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=pass smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=u14GadiI; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=edgeble.ai
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-5cf2d73a183so322801a12.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 23:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1705561262; x=1706166062; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=I+/SphmSczTQB/7x0/uHD+Ko02TvpaehY225Yo3PifA=;
        b=u14GadiIMTDhDLIjUZphmIpFF/7GCZnbU8iDdCTL7P15vhhg9AyAD4IXgG2Q7deFwV
         aMyptdacJ6lL2TrjOOOY/6ljKdnZqPPShOaTY3w87+43yhSti+z+X7OMFA+m068/tU6L
         QjrOmGQA72qk/FyIkd71g10mPvekxfKDA/jllVIJxlcN6hzv37E4EYZE6jGRxxTkRTOn
         BJhQKdtmdJssHL3atV4paSCvzt3FMOlMSZVvP1cKOGY0ljg2Hdg0r2IonRtG5YWNS5H7
         LhLXAb37CJjowdAvB3pYPU6UkxEe25JzwfsaKbuj940wf7F/AwY20Ggl9ndmzGP5gEXl
         OJVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705561262; x=1706166062;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I+/SphmSczTQB/7x0/uHD+Ko02TvpaehY225Yo3PifA=;
        b=LcpT3y/SW4J1whBEZqMUNUr7KSJ2bc3bOgEdM5sjPIPTvl6L4ziQuldoSBb1L2xO24
         scsAzpP8KkbJGK/E5mBGaIzwBm3Yu387tc3qAvo9z5s26WPGiYfETUlB2guY2uw5KhUa
         +ELgWd2pXCT5ZRFjS50b+MqosM4jPmc8by1hi/FwLs889Tz3+oDy0jNbAF7SkC6zJwnw
         7Ans2HQ2AgISIv6M/Tzn3zV8E9ro53i3wGOSIh3QbA1uVfySOw0vxeZoli19wy9MGi45
         JLqFUflN4lIxAnJIQTTlHPbroGyKapAegUgcteTkqvHFlkovGpQ8l14E7Y5nD7Add34B
         cY5g==
X-Gm-Message-State: AOJu0YxI5tqFa2esVF6QZcfoef0/J/P40qwduaVhNoBxvlGmD6Yub9ok
	jhecFFZX+Rmli0MbDtM09wSxCrLVEXSPPmu9lHUoL4+0XCx5yY7e27DxaW7+ZTSNep+r1pPmdpC
	C3s8fwPDG2R8Hw6CA0Y9YV70dJ8XMUnC4eWd3YQ==
X-Google-Smtp-Source: AGHT+IH25PXnoBhV0fLFktjyfx6CY2sgg121FnKFk5OQcNtYrEkXLlFoZmqPRzmJhiSKg+wYFfUW4B8RiSwuvOhS9rA=
X-Received: by 2002:a17:90b:1884:b0:290:2c12:f40e with SMTP id
 mn4-20020a17090b188400b002902c12f40emr172020pjb.26.1705561262203; Wed, 17 Jan
 2024 23:01:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231125190522.87607-1-jagan@edgeble.ai> <CA+VMnFx4j1=CGou4yya_7RbFgPwQ_KqOLoTWbYLthPw2VwR3iQ@mail.gmail.com>
In-Reply-To: <CA+VMnFx4j1=CGou4yya_7RbFgPwQ_KqOLoTWbYLthPw2VwR3iQ@mail.gmail.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Thu, 18 Jan 2024 12:30:47 +0530
Message-ID: <CA+VMnFyZnZVj46dHhXZM=FzBjWjEpxka5RkQbsMFXceMcPnMwg@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] arm64: dts: rockchip: Pack Edgeble NCM6A, 6B DT
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Hi Heiko,

On Tue, 2 Jan 2024 at 16:31, Jagan Teki <jagan@edgeble.ai> wrote:
>
> Hi Heiko,
>
> On Sun, 26 Nov 2023 at 00:35, Jagan Teki <jagan@edgeble.ai> wrote:
> >
> > DT patch set for Edgeble NCM6A, NCM6B SoM, and IO board.
> >
> > Changes for v2:
> > - suffix -regulator in node names
> > - fix node lables
> > - update commit message
> >
> > Any inputs?
> > Jagan.
> >
> > Jagan Teki (10):
> >   arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
> >   arm64: dts: rockchip: Add edgeble-neu6a-common DT
> >   arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
> >   arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
> >   arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
> >   arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
> >   arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
> >   arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 B-Key, E-Key
> >   arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
> >   arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a
>
> Any update on this patch-set?

Can you merge this, if it's Okay? Planning to sync the DT in U-Boot before MW.

Thanks,
Jagan.

