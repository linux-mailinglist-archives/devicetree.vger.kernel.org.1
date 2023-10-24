Return-Path: <devicetree+bounces-11262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F34807D4FEB
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:38:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 99ED4B20D8D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEFDD219ED;
	Tue, 24 Oct 2023 12:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="oNxwDKRh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C1024205
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 12:38:17 +0000 (UTC)
Received: from mail-4319.protonmail.ch (mail-4319.protonmail.ch [185.70.43.19])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1DA3120;
	Tue, 24 Oct 2023 05:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1698151093; x=1698410293;
	bh=XZn4U+TTmmXfZmr3fNPkxTzNFm221OIMLprzX82zvtw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=oNxwDKRhxtt42QaAcTyAYHwRtM1V3u/HDLpwBoyvusemBTPl8V54NWoZF6Qfz4jRi
	 T953H554aX+7y3N0XyL/dYMZtqLaBhrhMV+n11kLsHKUn6vQVlP/aIN2vRA2axbUKC
	 qUMl77GgvDTe0hz8whcktcwiPCCJihMuO95tRFA8Am83WeQ5xRHyzBVUhIfKbUzA0K
	 rVUSOtJJRMnA0OhG/SJN8bVYuDif/nFpHQnfHyJ5YiQ54AENho8NNvcZ787Fy7valD
	 IGzbZnMCTAlrDQyRFkbA/qSKA4cdZKlc40QoxwfhdryNYbZLmhWj21d35ZbXi08dKx
	 2mI0c0D5/Js+Q==
Date: Tue, 24 Oct 2023 12:37:26 +0000
To: krzysztof.kozlowski@linaro.org
From: Raymond Hackley <raymondhackley@protonmail.com>
Cc: alim.akhtar@samsung.com, conor+dt@kernel.org, devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, raymondhackley@protonmail.com, robh+dt@kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2 1/2] ARM: dts: samsung: exynos4412-midas: fix key-ok event code
Message-ID: <20231024123415.2009-1-raymondhackley@protonmail.com>
In-Reply-To: <bc5bbf47-7bcb-4fc6-a88b-b92d74803a7a@linaro.org>
References: <20231017101402.62740-1-raymondhackley@protonmail.com> <20231017101636.62755-1-raymondhackley@protonmail.com> <bc5bbf47-7bcb-4fc6-a88b-b92d74803a7a@linaro.org>
Feedback-ID: 49437091:user:proton
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

This key-ok is the hardware middle button on midas, and there is also
touchkey, which already provides <KEY_BACK KEY_MENU>, so I assume the other
KEY_MENU in key-ok is duplicated. Fixing it with KEY_OK as the node name
implies would make more sense.

Regards,
Raymond


