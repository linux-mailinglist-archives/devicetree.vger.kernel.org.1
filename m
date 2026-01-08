Return-Path: <devicetree+bounces-252709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E4FD022A0
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:40:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D130830FC2C7
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:33:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F9E63A35B5;
	Thu,  8 Jan 2026 09:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="X8Zh6SMd"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91260379967;
	Thu,  8 Jan 2026 09:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767865046; cv=none; b=QGWJhHaMmPc2NAdaiwX01xJq/Azn+1viJOpBf7tieN7l20Inxw7WU1paQapyAHkdI1ZycREP9tN6pd4Eo2w1b8HxnRSmuPBFpHGIGxXt/4Aa++WmWfIMSMmMFLub6LETWiL6UWz9ecpbP7jx2OOBgdGXYpQwWRY3SVcxgwP1mLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767865046; c=relaxed/simple;
	bh=2T44/apNjr2gnnb77k/8UJbtzai37rTt/19ChaZRSmk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WpOKuHxDAs8fxxYdsMxhKaF9Os0juHGDnLwyDfYBL/HQsapZHr+iSFX+jyrCuu2Krny5//KSawoab9A+zM9XnNvUB3Rd9D2TDciNkTKSWhrOblqCFnfvSvL2zZQA3bJXpVbqiW3qughSMVubzBRrwbsicWaFaAI/C31HzI6ps1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=X8Zh6SMd; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1767865033;
	bh=DtIN+U3vfCr3zEjBHzX6oM4do/3hxJWl7iyhruf7srI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=X8Zh6SMdTyodMLssOQ3O7TKAoEPFh6iqNodDHJeC2Uy6VOj2vnzyTbYc9gZosTuip
	 OGY+JVUtwbRcGh+Fpa0SDRaAupzoaPeBSsbajmLa8W+AJlTMKL/Gn0bCU6ow1nRsQB
	 roNAh/OymbyKbGjX7c9120pangqNthVSnX/dCKrnx52AUGOLcCn7smRQiFtiLLhMCq
	 DMu88Bica3Jv2Uuq4HlMvzVMCO5UtDM5l5icXPrDXGwE8rUHli6ljh7q3Sry2gHVtl
	 riDRUDzfk5jKfHMs+ifuCtvzFqUtaZJOgIu65PYfsw8Vv+L5Ejr7DXVEUVoeMRY9gD
	 UiS7LkzSSEyGA==
Received: from [127.0.1.1] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id AD5C179F8C;
	Thu,  8 Jan 2026 17:37:12 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Eddie James <eajames@linux.ibm.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260106213153.2766411-1-robh@kernel.org>
References: <20260106213153.2766411-1-robh@kernel.org>
Subject: Re: [PATCH] ARM: dts: aspeed: ibm: Use non-deprecated AT25
 properties
Message-Id: <176786503263.1448890.555842411272962996.b4-ty@codeconstruct.com.au>
Date: Thu, 08 Jan 2026 20:07:12 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Tue, 06 Jan 2026 15:31:51 -0600, Rob Herring (Arm) wrote:
> The at25,* properties have been deprecated since 2012. These platforms
> weren't upstream until 2020 and 2023, so it should be safe to switch
> over to the "new" properties and just drop the deprecated ones.
> 
> 

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


