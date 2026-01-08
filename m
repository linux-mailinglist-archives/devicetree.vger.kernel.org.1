Return-Path: <devicetree+bounces-252568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83808D011CC
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 06:34:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0641130780A9
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 05:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB906302CC0;
	Thu,  8 Jan 2026 05:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Rm5e8stj"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF391A285;
	Thu,  8 Jan 2026 05:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767850215; cv=none; b=DCJ7rapdKMK3wViE7cPFKOlwUfRSgTyLNbQCHerm1OIxPgqQ6kUKhqOWizgnz6TNqYfRB/Iirc47sprDD+7LxR/qjJp+ivmIGFAB8E+uNBr9oPG13YugtPFkWpzLJrPVOkLLcYyAq7bzim0AFHnf0CeJNEVHKlzWk8+FIPj8rhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767850215; c=relaxed/simple;
	bh=EyiiW/ygHf6HqQ0V7sdnHWtu6lSrMXowL3utkyKtAgI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=l6qdxk8YzPrJ77tNM6MGHxMBJkT0J1R02y0y8irXD1VWRRApJJxEyjvnwRx8wAQfSt0yg/MHk5U+53B3Hphal4ILfPsbcKjOq66VmdzjRx9dYXfuNTQAyNH28xyABKurNkjZFmpZpE9jmqQFhnCufqBOSq+YJBNk4/QsBdIt5g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Rm5e8stj; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1767850211;
	bh=MfTEXcf5zciGZot0fekZJidEbYo8hYFDlzJ4aD4mgVc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Rm5e8stjXFPtDa9xewdJ1RB82WuVDvStDj2Lopa19weEhxIYhCWkjIDTKHVn0IqE9
	 8VvQgSrSR4bTvuYkBdS3urYWXj3HKZ30DFFl0Tf98STxAAO/9Gh6ywnRYQcUMsvjz1
	 Pwnu6yVxU5Y/10s9bvygwMO1b2wvMfeUCVOUJKf+NiEIekq8gJokbDCH57ZqiXcgkN
	 bRVKnK35RwaK6FljS8jziMgPR7Zc0KiD2Amh3UxFVKnV8F8nWFgwu+8yWffmLthPWZ
	 umyifu0JiDbfyObUG1Sd/Mhy8ySTe8UljQYU5JTR+f7mQWs++Rt+7e/UCLHhBBp/SZ
	 qumSRY1G/5eyA==
Received: from [127.0.1.1] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 218887C834;
	Thu,  8 Jan 2026 13:30:11 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 joel@jms.id.au, Cosmo Chou <chou.cosmo@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 cosmo.chou@quantatw.com
In-Reply-To: <20251219062948.528824-1-chou.cosmo@gmail.com>
References: <20251219062948.528824-1-chou.cosmo@gmail.com>
Subject: Re: [PATCH] ARM: dts: aspeed: bletchley: Remove try-power-role
 from connectors
Message-Id: <176785021104.871508.750215017284279406.b4-ty@codeconstruct.com.au>
Date: Thu, 08 Jan 2026 16:00:11 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

On Fri, 19 Dec 2025 14:29:48 +0800, Cosmo Chou wrote:
> Remove the "try-power-role = sink" property from all USB-C connectors.
> The try mechanism is unnecessary and wastes time during connection.
> Since power-role = "dual" is already configured, standard USB PD
> negotiation is sufficient and more efficient.
> 
> 

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


