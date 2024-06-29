Return-Path: <devicetree+bounces-81604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1CF91CD8F
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 16:17:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 445B62835AD
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 14:17:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4763C22331;
	Sat, 29 Jun 2024 14:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="xX968M3W"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC9B1E4AF
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 14:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719670624; cv=none; b=jvTNL92de+zPrDoT92vDWSYKcXHXuXL2DEAL8Waqu5i8o5ikXj6T/1EejUHqheIf13gkbE+gULgDUHM3CmTc6Rk5BMRetftWsovSb9h51FmZIymF7zV+J4IMv1QfgilDf+vRKKDvqnwyFXNmcFyHxVl0B9B4BQi1mIe3gqFnWek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719670624; c=relaxed/simple;
	bh=bBSqKmguxxWZkTFpQNZuhIq5G1vNPNlbeivzTB9eW5w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dAA2tD5arWRkZqigd9drI6/D8TtqZUrVYHG441xFxONqlH/IjUttMFpjzSQLB6cwOrA2eptSTiEgTqoAocAP3hz4eYWOoTIFz3n39wKniv+MpPioYWE3F1ixhV1++htYxa5vQlGts5Vh6exjUc2cg1hm1P+U4fDXBH1pV6UOB5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=xX968M3W; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ccPwkiUNKUMF1pYDwO7CHbFCoOb3o2M8y4Ko6wOppjc=; b=xX968M3WCLfjRuMS4b0uV9Qkf9
	S8GmLkMv/ETnVz1MpKZpLRq2K8dxKhqbd31jAtNAnbGsSSjGHuIF4VJrf0SrlUpdX9s849F4WcBJY
	6jIRyUFPqtMJ8r9BOV6cp3Pj0IUHeKSi5Dz06rOYuJXU6PJdEWEYCxjZPj5x1wLbJaFU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sNYsr-001Nf6-05; Sat, 29 Jun 2024 16:16:57 +0200
Date: Sat, 29 Jun 2024 16:16:56 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Zoltan HERPAI <wigyori@uid0.hu>
Cc: gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/3] dt-bindings: marvell: typo fix in SoC name
Message-ID: <9973241c-3e94-426e-8815-d94ae4c20212@lunn.ch>
References: <20240629113450.127561-1-wigyori@uid0.hu>
 <20240629113450.127561-2-wigyori@uid0.hu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240629113450.127561-2-wigyori@uid0.hu>

On Sat, Jun 29, 2024 at 01:34:49PM +0200, Zoltan HERPAI wrote:
> Fix typo in the SoC name of Marvell Kirkwood. This change is in the
> description which shouldn't affect functionality.
> 
> Signed-off-by: Zoltan HERPAI <wigyori@uid0.hu>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

