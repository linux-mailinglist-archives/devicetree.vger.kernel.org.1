Return-Path: <devicetree+bounces-12502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1AE7D9B69
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:29:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1566BB20D32
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E1AB37163;
	Fri, 27 Oct 2023 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="UREwDYec"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6C8853B7
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:29:47 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44554C4;
	Fri, 27 Oct 2023 07:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=G3hIZfT/tWTk0hSzDgX6jOfa4f24uiv1v7ar0PbjQbI=; b=UREwDYeceNZN2uZb9VxTdHn2kb
	mEkBqRdKBqJbDYjVl80gppT10PmC7OFTWJXqEfC7AasypF98S7U533l475vwxXKI9nGWCz3p0pQ+r
	ryCVtydjWgOe/R37NNey7Amjjc9tLvuXHmFMr/pFaDjgk0aB2pa1iaf8alM41qAk0lKU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qwNqI-000LVH-2h; Fri, 27 Oct 2023 16:29:42 +0200
Date: Fri, 27 Oct 2023 16:29:42 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Elad Nachman <enachman@marvell.com>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
	pali@kernel.org, mrkiko.rs@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	cyuval@marvell.com
Subject: Re: [PATCH v3 2/3] dt-bindings: arm64: dts: add dt-bindings for ac5x
 rd carrier
Message-ID: <4bb9b888-b51e-4177-965b-bf301962f6fc@lunn.ch>
References: <20231026084735.3595944-1-enachman@marvell.com>
 <20231026084735.3595944-3-enachman@marvell.com>
 <1075eedc-3e7e-4070-8cf2-ae63513fd764@linaro.org>
 <20231027-opposite-frostily-b41eb861c8a1@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231027-opposite-frostily-b41eb861c8a1@spud>

> > No underscores in compatibles.
> 
> Oh shit, I didn't notice that somehow. Un-acked until that's removed.

Not a problem. Its way too late for this merge window. The pull
request for Marvell stuff has already been sent to arm-soc. There is
plenty of time to fix this, and there are other problems to address as
well.

	Andrew

