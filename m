Return-Path: <devicetree+bounces-135104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE599FFBED
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:39:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2C073A4598
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D117914BFA2;
	Thu,  2 Jan 2025 16:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOCKJsto"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A569054F81;
	Thu,  2 Jan 2025 16:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735835811; cv=none; b=DNEzlehbALpVoUusOnaVHtItoOSnWNDVh5mkdG3oZOjMoZHsR8OrB3hk0QUnyNM7GlY16nYrhhxaogoqoZul7E1jZnZVNYJRtiG8lhZvlg/9F8LO9qSNtOsg4blMyAsenT+qTbzW4pcuFVtg7176s4Nc3dPAQgh5O8rvXJSqKQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735835811; c=relaxed/simple;
	bh=nWc6UpmDNJz3uqaXwynjb1rGXS/muYMpNGQ7lI5V2jU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HS68yAIaaFZtqPnE8LWu7WAKUPbC4fOs0QQqHiW65Hkhn9k1F2oBbpM/8fxidQXFltaOCUBpUOCU0GixO0fUAIh5h5aqBoxMXNtX98cnSeh7hi0rn+X936r9lWI7wCkuZSOYbXbaBAE1X1QOXH08NFbJjUJP0qdGzaM+2uKRK8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOCKJsto; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D871FC4CEE1;
	Thu,  2 Jan 2025 16:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735835811;
	bh=nWc6UpmDNJz3uqaXwynjb1rGXS/muYMpNGQ7lI5V2jU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gOCKJstoJo7gd0OBUynUAtvIPXaeOUat4iEc+ZZYZ++kcWdHG66ZvfzdoKT/Ve+ZA
	 1yQYHmNUqj4Bg5PYs25sgeQs77j98z6osfqLaLkQ6InP/Pru2WxJSV/htyvEfvQ7To
	 xHWjb2qqJT6IvDfWPuBd1Bs8DG3YA42Ubjb4K5jrc5mddmbXcd12rARWmYAxIYxhYf
	 aovvdLKIo+MMo9yqHsCKo658JYdvX7PdqbYKWyiPTHEc2XDiPvPA8bjKzNzcK8VuyI
	 awzYLSxBSQgtECIl6VowhFc7oYMmSqydTwNUzI3cVhvpYuF4CPeObTPajQIXeGtx1k
	 wRWaYxjKXAyMw==
Date: Thu, 2 Jan 2025 10:36:49 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Cc: devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Siflower
Message-ID: <173583580593.4127461.1382117883929326003.robh@kernel.org>
References: <20241223034350.215375-1-gch981213@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241223034350.215375-1-gch981213@gmail.com>


On Mon, 23 Dec 2024 11:43:49 +0800, Chuanhong Guo wrote:
> Shanghai Siflower Communication Co. is a manufacturer for home router SoCs.
> Add a vendor prefix for it.
> 
> Link: http://www.siflower.com.cn/en
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!


