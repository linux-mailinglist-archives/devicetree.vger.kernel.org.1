Return-Path: <devicetree+bounces-61487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D94388ACE72
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 15:38:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 170AF1C20AC0
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 13:38:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B6B914A4CA;
	Mon, 22 Apr 2024 13:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="2I6qbCM2"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EA913E8B2;
	Mon, 22 Apr 2024 13:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713793095; cv=none; b=CsaCbbvNNJAwoxa/5vsJ2YpSSzrbpNXUjwWxbbQZJUmIi0Ju2x5PJJBYXzphxCUxA57+TUKqZZPObbs4rNY2f+P1ne1XfGB4Sa0UCzs1iiddttbsCRHV/NuFxugskvCxLYmdpw53EM9KBfSgvm5G8ARfO4LtRZSvARUsFIP2XrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713793095; c=relaxed/simple;
	bh=Zt9NiHBfPgRwlTm6nzsX1ZsM+2StZtIhTHfSu836wCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dlpxqDTKJg3DTAXXPSnHyEbowLI4Q7Nh+JBSrjxEUbzj4pxV0LZq1NxDv7fbCZXVs+Y0m8dNGTshESe/Tg75QXlfh6ykkZr9yuEqk8yEMsizPh8KhPkKa8mus5UKaLjdUICS7loYYYhePfsYfk61sbgb03jefxRQygkjlQ5gNBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=2I6qbCM2; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=aqB3pm3NRWrL8sjyDk+V+IMwCDAPAs2u6pMfUJGsjFY=; b=2I6qbCM26jVX3DyfORIh6lz9Du
	JaaJOjUtPbRiu2t8gB+PjR0zLfdhAHKVueWYo77OvzjAdQIZj4k9j/nXQGFuU6V9o0KDtxCPL7dDp
	NM8EsV3Qd3IPawfptSlqKp4iEOT3J2nrC2rlOzfRoubIdc3k5mcelJO7a62mZdssIIpI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1ryts1-00Dca6-0B; Mon, 22 Apr 2024 15:38:09 +0200
Date: Mon, 22 Apr 2024 15:38:08 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Josua Mayer <josua@solid-run.com>
Cc: Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: arm64: marvell: add solidrun cn9130
 som based boards
Message-ID: <d8b3991f-15dd-4139-bd51-54d81645dde6@lunn.ch>
References: <20240414-cn9130-som-v3-0-350a67d44e0a@solid-run.com>
 <20240414-cn9130-som-v3-1-350a67d44e0a@solid-run.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240414-cn9130-som-v3-1-350a67d44e0a@solid-run.com>

On Sun, Apr 14, 2024 at 02:58:32PM +0200, Josua Mayer wrote:
> Add bindings for SolidRun boards based on CN9130 SoM.
> 
> Three boards are added in total:
> - Clearfog Base
> - Clearfog Pro
> - SolidWAN
> The Clearfog boards are identical to the older Armada 388 based boards,
> upgraded with a new SoM and SoC.
> However the feature set and performance characteristics are different,
> therefore compatible strings from armada 388 versions are not included.
> 
> SolidWAN uses the same SoM adding a southbridge on the carrier.
> 
> Since 2019 there are bindings in-tree for two boards based on cn9130 and
> 9131. These are extremely verbose by listing cn9132, cn9131, cn9130,
> ap807-quad, ap807 for the SoC alone.
> CN9130 SoC combines an application processor (ap807) and a
> communication processor (cp115) in a single package.
> 
> The communication processor (short CP) is also available separately as a
> southbridge. It only functions in combination with the CN9130 SoC.
> Complete systems adding one or two southbridges are by convention called
> CN9131 and CN9132 respectively.
> Despite different naming all systems are built around the same SoC.
> Therefore marvell,cn9131 and marvell,cn9132 can be omitted. The number
> of CPs is part of a board's BoM and can be reflected in the board
> compatible string instead.
> 
> Existing bindings also describe cn9130 as a specialisation of
> ap807-quad. Usually board-level compatibles stop at the SoC without
> going into silicon versions or individual dies.
> There is no programming model at this layer, and in particular not for
> parts of an SoC. Therefore the ap compatibles can also be omitted.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

