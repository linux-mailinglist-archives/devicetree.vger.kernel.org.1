Return-Path: <devicetree+bounces-23748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D774880C3E9
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:02:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5B375B207AE
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30797210E6;
	Mon, 11 Dec 2023 09:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yr3TCevd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F8E210E3
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 09:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0918AC433C8;
	Mon, 11 Dec 2023 09:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702285326;
	bh=J8XWWQjB14DkSVqB9eprhb9yAhyp/D36xk1dZtdA6tw=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=Yr3TCevdatWwf5xiFzks618D5H8ACd6fVPoiOk/BujNqZ3//JzBlWm5pMM4YtoJ2I
	 KeCvQIXH+UokVyfjBWVEuL2a6PXexsREzIQkUcMcEXdOTemqx4IWkEBSdSVWd7ikp7
	 V9siLqcnH+NK73M8CYWDvXy3xDYWsWkIKYL5aDgFvrJLgcpBb5AyXLJ77ZscCcf28B
	 Vd17yvA+vNAkTS83c0LVQFppNUK4OAReqkzeY/lwAzU5OnVzHPXiI041eooMoFAcev
	 m4Z5adkHVaXd1EuMzADH4c1oe/WPoWIWjrZb6h234ZF+1/NVfBjNDdnX44lQBlzfSW
	 KxeJGviepKUrA==
Message-ID: <30f88710fce46f7a0af8b32166b9a045@kernel.org>
Date: Mon, 11 Dec 2023 09:02:03 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Marek Vasut" <marex@denx.de>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: simple: Add AUO
 G156HAN04.0 LVDS display
In-Reply-To: <20231209063714.1381913-1-marex@denx.de>
References: <20231209063714.1381913-1-marex@denx.de>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, "Conor
 Dooley" <conor+dt@kernel.org>, "Daniel Vetter" <daniel@ffwll.ch>, "David
 Airlie" <airlied@gmail.com>, "Elmar Albert" <ealbert@data-modul.com>, "Jessica
 Zhang" <quic_jesszhan@quicinc.com>, "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>, "Liu Ying" <victor.liu@nxp.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Rob Herring" <robh+dt@kernel.org>, "Sam
 Ravnborg" <sam@ravnborg.org>, "Thierry Reding" <thierry.reding@gmail.com>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

On Sat, 9 Dec 2023 07:36:59 +0100, Marek Vasut wrote:
> From: Elmar Albert <ealbert@data-modul.com>
> 
> Document support for the AUO G156HAN04.0 LVDS display.
> 
> G156HAN04.0 is a Color Active Matrix Liquid Crystal Display composed of
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

