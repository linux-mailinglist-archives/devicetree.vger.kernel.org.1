Return-Path: <devicetree+bounces-153468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAE7A4CA3E
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 18:50:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C71C17F97E
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 17:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E5B145348;
	Mon,  3 Mar 2025 17:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eXLTehq/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E86210F6A
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 17:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741023167; cv=none; b=BW1eq6YZ76oIzNhuoKMNMN2QddNxGUpSkGDBZP8VpS67oyyLfXkCUr7001BJk2bopBjN8dlD4LO08ZEso7GK6HLnMT0gNlUsDuqfPiOmCp/0PK1ngCuZsUGVCjflELfJGRKIBPlY9vBDNZFGKMsos65lgeSF68KhV5IaHJhuc34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741023167; c=relaxed/simple;
	bh=3M7BlSm/KhV3uvgWvgNvRYmy6Y1rGKPzZoOe+NOLyeM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pef753MecQglc5LEPKWnEAEnadZKymaEoTGWf0i81dKnMJZ+vVsYzQl+B9AEHic6jVE4va5MzlwV97dJYzFOrtKmaXrqD5eCcV1InU2WweY7BxlkBgRtAIWOkPHrMIElXJWbqy3r1o+VBkfp8m0joMl4jZSXuuHYwUnzlhyP4yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eXLTehq/; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5e538388dd1so2048300a12.1
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 09:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741023164; x=1741627964; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UZ/4qxzis310JPKxwHfUD3sy7Z1En+4L5qdqwXsp4Gc=;
        b=eXLTehq/+HKNCevIhAF0K2DlTEWdShuqZDqFaBNiiaBvkKtNrQx1XNnCXtGa81Ho5+
         ZSAqR/m/YD6IECD3y/uSr7TSB94YbgJmElWLAqnIhRMtUAveFA1eSehrJFmkROMrz5Ys
         Hh5PsK518U0IU2WTxromlL7+e6UrPqn5fCMZrzC5H1RKsb62HcY6ffELITb8IF7U2GuU
         phx4Q2TP5kX9aKWrcnXpv6w4CM0tHlGLpAraX36v24IzKu+n/nM3bfW/t6hFF2rvJ2D9
         10N4t+66NZvgz9ociKe69kdvvc6KTFcxqcllLIOQyFSHm9uVwCtEttnHDO2EjdYMbLy1
         ldCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741023164; x=1741627964;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UZ/4qxzis310JPKxwHfUD3sy7Z1En+4L5qdqwXsp4Gc=;
        b=mK+zcSAYyro6QYdCpA2piG8EdmyYibQkWgSCW/0yXlFSS2f6ldrhG2eImj4QA+PuKO
         jJaLUEtPTSQCJeWxH7kMsZNSpkj8xZDZqieNnBxvb43HEKOMner4pBbVNsZbeI0FrKDR
         iiDSnwgae3pt10F814dIqsg1KCgNPRtXj5DNTSW+a6J5myHvQ9ZH8T0N0ZoTeygdxxP8
         SKtC2MTylfFgBnKys47uX+8aSXMYnqU09R8tXZcheBjk99VzOUEMma9v/Xd52j5YbWqa
         IPrOjOeRdSbJUU286cC/j6yEoPKX89zz03rZTxz+I0lAUB6/fDFkDiWpBGDqjA8hNOSM
         VCBA==
X-Forwarded-Encrypted: i=1; AJvYcCUHe5Olvo6XRodwN4bDlMAHp16zHP+mRUkiT6sbVGb7lQqX6+wioMk3iAc1K7Ie2aQ5umfU541PwKOH@vger.kernel.org
X-Gm-Message-State: AOJu0YwtepJstUW6uFDcKryg22HPKZwTRYJpRfs7+l66nuGHhYb2swSz
	WTmQw6S/lCWYWMdbWQ5zF3YWCV6vv/eEWnZLBDve9xm45nkSJG1Q+YWBNvrrb78=
X-Gm-Gg: ASbGncuZULyrhkCHQK1C8xUIautbRfBBcZkPm3LmCk/ogCnyuwg3WB9OnolRX6n6WtJ
	jMwPAqhlnGXyHe6/wBXO631UzDiq1rBWbmG0As7aW/u/OZrIuaqE/3QI3B3cgP4055HLZSfqjwK
	ZNM823nwoGpn40VUlJOt06a94dQ9v+YWAuiNf6yg8MLumgQ1CW1ZUDxKohWpnqbLIrgPETIaM/F
	g70ZSU1530ln0i8XsAtlmpNB/qLo6/NqvXpc29WrlQcUNxOJmuX2a/1W5bK608MivD1ZHqCVIg3
	whNRxRzNoN25XvpdP3Zr9PuFkRWcChAnjxjX0Exlvg==
X-Google-Smtp-Source: AGHT+IFplOERSX9U+E9Rz8azUp8fETio6bPVPJ+92Yo7dBFoDZjtI8Gwjb0JWHGO53dujJ5eWDY9Fg==
X-Received: by 2002:a05:6402:3506:b0:5e4:d401:590a with SMTP id 4fb4d7f45d1cf-5e4d6ad4209mr13888763a12.4.1741023164183;
        Mon, 03 Mar 2025 09:32:44 -0800 (PST)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e4cc6b2daasm6666153a12.25.2025.03.03.09.32.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 09:32:42 -0800 (PST)
Date: Mon, 3 Mar 2025 19:32:40 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, Frank Li <Frank.li@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: linux-clk@vger.kernel.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 0/6] arm64: dts: freescale: imx8mp-skov: switch to
 nominal drive mode
Message-ID: <Z8XnuIIfDFykrKH8@linaro.org>
References: <20250218-imx8m-clk-v4-0-b7697dc2dcd0@pengutronix.de>
 <174102306220.2928950.8878245519332562153.b4-ty@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <174102306220.2928950.8878245519332562153.b4-ty@linaro.org>

On 25-03-03 19:31:02, Abel Vesa wrote:
> 
> On Tue, 18 Feb 2025 19:26:40 +0100, Ahmad Fatoum wrote:
> > Unlike the i.MX8MM and i.MX8MN SoCs added earlier, the imx8mp.dtsi
> > configures some clocks at frequencies that are only validated for
> > overdrive mode, i.e., when VDD_SOC is 950 mV.
> > 
> > For the Skov i.MX8MP board, we want to run the SoC at the lower voltage of
> > 850 mV though to reduce heat generation and power usage. For this to work,
> > clock rates need to adhere to the limits of the nominal drive mode.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/6] dt-bindings: clock: imx8m: document nominal/overdrive properties
>       commit: d5992f1af1550a9e11e42cfa2ca1ad2a1b7fd7f3
> [2/6] arm64: dts: imx8mp: Add optional nominal drive mode DTSI
>       (no commit info)
> [3/6] arm64: dts: imx8mp: add fsl,nominal-mode property into nominal.dtsi
>       (no commit info)
> [4/6] arm64: dts: freescale: imx8mp-skov: configure LDB clock automatically
>       (no commit info)
> [5/6] arm64: dts: freescale: imx8mp-skov: operate SoC in nominal mode
>       (no commit info)
> [6/6] clk: imx8mp: inform CCF of maximum frequency of clocks
>       commit: 06a61b5cb6a8638fa8823cd09b17233b29696fa2

Applied only patches 1 and 6.

My b4 setup messed up. Sorry.

> 
> Best regards,
> -- 
> Abel Vesa <abel.vesa@linaro.org>
> 

