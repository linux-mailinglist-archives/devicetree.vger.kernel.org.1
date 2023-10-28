Return-Path: <devicetree+bounces-12592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A65487DA681
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 12:39:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 376D4B2129B
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 10:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D8362596;
	Sat, 28 Oct 2023 10:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ucw.cz header.i=@ucw.cz header.b="SW2cpvuU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306D98F64
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 10:39:45 +0000 (UTC)
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB745F1;
	Sat, 28 Oct 2023 03:39:43 -0700 (PDT)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 9ECBE1C007C; Sat, 28 Oct 2023 12:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
	t=1698489582;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=v8GRunWXkz2EhpYIjMx6s+mZlAVkZ08YcCPCZSlxpBg=;
	b=SW2cpvuUcKZSXMhvvuuxlm/i9jPTzcMmda0cWak6ny1mD29a8a8IpBXjsYa1WK3xc7xnFO
	xS3FuD96N+gYPA6OAawwsek45oOuRd1BUOQy4uDZ5vL3cCIH/5aV1B4lxwALTBbLat06vT
	ylVAq+Y92pkHieG+eYCklekWFnLqsoU=
Date: Sat, 28 Oct 2023 12:39:41 +0200
From: Pavel Machek <pavel@ucw.cz>
To: =?iso-8859-1?Q?Andr=E9?= Apitzsch <git@apitzsch.eu>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH 0/2] arm64: dts: qcom: longcheer l8910 and l9100: Enable
 RGB LED
Message-ID: <ZTzk7cNJd4iPsd3B@localhost>
References: <20231013-bq_leds-v1-0-cc374369fc56@apitzsch.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013-bq_leds-v1-0-cc374369fc56@apitzsch.eu>

Hi!

> With the driver for ktd2026 recently applied to linux-leds[1], the LED
> can be enabled on longcheer l8910 and l9100.

Please make sure sysfs name is consistent with notification LED on
other phones, as documented by well-known-leds.txt.

Best regards,
								Pavel
-- 

