Return-Path: <devicetree+bounces-132592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8C79F786D
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 10:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E73E4164EC4
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A337C221D8E;
	Thu, 19 Dec 2024 09:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKcerMP/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C035220696;
	Thu, 19 Dec 2024 09:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734600381; cv=none; b=Mrs6+SbVsKyYeCwrIUHr6c7uXBXlUxGUDkyeUtfO2lFtD9W3c4dcVo+Xl4dxuh5vSBNkKF1dADpteEy0UL26WU8KcP/wU4ShJ7oe2v6H8mYFQnRf6D+8GiSqDtaedUB/NJ5Ip9uCBRUeMe6NrN6wexW4q8muuaXF0C1nodikgTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734600381; c=relaxed/simple;
	bh=O+s0wI5XwlLeA03oojhj5E9hxegvtSj2pJ/okjUIDFo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=poAYUZ3DL7WyzOa9WJdXBM4VibNvaSejYRCjGlvkyaQ6ZQTll67ZHCK6vs3Pj38/KqnWvYs3q4ujJ1ccsoDnJw6iqH9aWXrUbcKQY0bFXBO+8ts6f0tpeRiBCnftmwvUeWtjuzBAsO+L83Mjud0XiQe28/NmstF9/sU3agNFVUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKcerMP/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15A4EC4CECE;
	Thu, 19 Dec 2024 09:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734600381;
	bh=O+s0wI5XwlLeA03oojhj5E9hxegvtSj2pJ/okjUIDFo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DKcerMP/LghMObUvAQiBvP4Aoz4LxA77Y4/bZdy/nPAcfOxbJwfrGRzywLzn5qA4y
	 z0ehEySfmWDNxChckJthdPYkzhytlZgHOJBvQkErw/RypFeUegB/2jwU7ZWGlzfosZ
	 zWMfnS8+eGzufO9qRltDenBuAmeL48XnK8Xxlual4/iY+T1ocORvM0N+RelY0hsgAY
	 nhYs+W8SpZk9s2BN+o2Vd4DK+Wy6A+e7FmCfExR1QGQmrNXVJ7Vb4rD8tRR93ryZyJ
	 xsAXJxy73Lk7IV86WHJ4fRQ7yqku7UtWHDfz8Yk14yRC7NffuMgXw0WG21H7DFNhdj
	 drXdNrBfrlR9w==
Date: Thu, 19 Dec 2024 10:26:17 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Thierry Reding <thierry.reding@gmail.com>, 
	Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@pengutronix.de
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add prefix for Topland
 Electronics (H.K)
Message-ID: <tp7qos4ezilczvz2mgeji6kxicfq4vaxsqmp3bij6nxptdom22@jbekrhq3zjbb>
References: <20241218-topland-tian-g07017-v1-0-d5e411c199e3@pengutronix.de>
 <20241218-topland-tian-g07017-v1-1-d5e411c199e3@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241218-topland-tian-g07017-v1-1-d5e411c199e3@pengutronix.de>

On Wed, Dec 18, 2024 at 08:44:58PM +0100, Ahmad Fatoum wrote:
> Topland is a professional supplier of photoelectric display and touch
> integrated products from Hong Kong: https://www.topland.com.hk/aboutus/
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


