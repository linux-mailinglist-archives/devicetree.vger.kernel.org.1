Return-Path: <devicetree+bounces-21009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D6E801F31
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 23:43:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9FC7BB20ABD
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 22:43:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A7C622098;
	Sat,  2 Dec 2023 22:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="Le2RtE6a"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B565A4;
	Sat,  2 Dec 2023 14:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=wsur4cooD2ikDX+1j0hmv8bEdcDbDiNq3c9HAKF1KWc=; b=Le2RtE6aBoIgT9mlf//zAabcom
	uKLh69SyRu0EerJs4Sug8CgghxI3GL2ygkjqTFocDILg8dqNtkxxFM9o5Ew3v4iBSrH9fZfNfIS0Y
	If5GIQmFFEdXeBDIvWiREQYMFH0rPCc6P+ymQzGBx/kuCyq9cyvWdpBFSt6pOGV5Osb4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1r9YhE-001s1i-4q; Sat, 02 Dec 2023 23:42:48 +0100
Date: Sat, 2 Dec 2023 23:42:48 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: David Heidelberg <david@ixit.cz>
Cc: Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Peter Rosin <peda@axentia.se>, Heiko Stuebner <heiko@sntech.de>,
	Nick Hawkins <nick.hawkins@hpe.com>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Simon Guinot <simon.guinot@sequanux.org>,
	Wei Xu <xuwei5@hisilicon.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Enric Balletbo i Serra <eballetbo@gmail.com>,
	Baruch Siach <baruch@tkos.co.il>, Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/5] ARM: dts: marvell: make dts use gpio-fan matrix
 instead of array
Message-ID: <cb86b7bd-7dec-42dd-8d90-fa0eea321ae1@lunn.ch>
References: <20231202222934.137191-1-david@ixit.cz>
 <20231202222934.137191-5-david@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231202222934.137191-5-david@ixit.cz>

On Sat, Dec 02, 2023 at 11:29:04PM +0100, David Heidelberg wrote:
> No functional changes.
> 
> Adjust to comply with dt-schema requirements
> and make possible to validate values.
> 
> Acked-by: Simon Guinot <simon.guinot@sequanux.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

