Return-Path: <devicetree+bounces-12591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 365957DA67F
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 12:39:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B72F1B212B4
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 10:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E8526126;
	Sat, 28 Oct 2023 10:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ucw.cz header.i=@ucw.cz header.b="selF0ELp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1312596
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 10:39:33 +0000 (UTC)
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D228F2;
	Sat, 28 Oct 2023 03:39:31 -0700 (PDT)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id D707C1C007C; Sat, 28 Oct 2023 12:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
	t=1698489568;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=YXbQJwvtANscaIAeF/IlPVvDQ0S7sSN8cPn0pshFltY=;
	b=selF0ELpndESgbl6BrmFQRFj6mWRWRXbbD+T5e5sEilTl7sjj9R4ioCK+K0M3az60gG4e1
	UiCAcLFYDc1FxyijG3F7Z23AoFBKiOPPopwYTF6BBh3s/8kqv7joLzAS9N35etViALgzjn
	ebMkG7OpuWcyVTZjq8uGnPZ69XIF4LM=
Date: Sat, 28 Oct 2023 12:39:27 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm845-oneplus: enable flash LED
Message-ID: <ZTzk39tQlYlpo2rU@localhost>
References: <20231001-b4-sdm845-flash-dts-v1-0-275a3abb0b10@linaro.org>
 <20231001-b4-sdm845-flash-dts-v1-1-275a3abb0b10@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231001-b4-sdm845-flash-dts-v1-1-275a3abb0b10@linaro.org>

Hi!

> +	led-1 {
> +		function = LED_FUNCTION_FLASH;
> +		color = <LED_COLOR_ID_YELLOW>;

That's warm white, not yellow. We should likely create a define for
that.

BR,
								Pavel
-- 

