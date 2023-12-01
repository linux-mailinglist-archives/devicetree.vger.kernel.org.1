Return-Path: <devicetree+bounces-20761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB71800C95
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 14:51:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C83C1C20BD1
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 13:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27BED3B2B3;
	Fri,  1 Dec 2023 13:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="gCTDf9AK"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E41F01734;
	Fri,  1 Dec 2023 05:51:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=AvV8JJJxcriT9Y3w0PKezGi7UKnqKJcMe2L3N57bRPI=; b=gCTDf9AKh80iH7/jlDZTCIN76n
	PRR1oFOe4hTzVENWvQWqgmHCdUoJq7kocrD1LCHmtFSGYDrdFjecx7oeDfyyTsZH97WarAhsLbs5T
	fqDdR/5MT73cnLr0187tw+moyu5y6ObuOIulDteevnaAObXKLMgLhVS/hOSaOlEE+S68=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1r93vK-001lXZ-0X; Fri, 01 Dec 2023 14:51:18 +0100
Date: Fri, 1 Dec 2023 14:51:17 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: marvell: move MMP boards to common marvell
 directory
Message-ID: <1e25e2f4-e4b9-4219-a9c2-cb6230a62549@lunn.ch>
References: <20231201132306.60753-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231201132306.60753-1-krzysztof.kozlowski@linaro.org>

On Fri, Dec 01, 2023 at 02:23:06PM +0100, Krzysztof Kozlowski wrote:
> Marvell board bindings are spread over arm/marvell/ and arm/mrvl/
> directories.  Move MMP board bindings from the latter to the former, to
> keep all of them together.

Hi Krzysztof

Did you test get_maintainers.pl? MMP has a different maintainer to
many of the other Marvell SoCs. We want emails going to the correct
Maintainers, and ideally not spamming the others.

	Andrew

