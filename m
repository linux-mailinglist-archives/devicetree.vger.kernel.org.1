Return-Path: <devicetree+bounces-68419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA8F8CC363
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 16:40:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87B121C2092D
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 14:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B25E17550;
	Wed, 22 May 2024 14:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJRDQ2EB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AF620DC3;
	Wed, 22 May 2024 14:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716388795; cv=none; b=qLVTzMEGOC9maUxIZ6DvptvEOLeo0FFuX1pHrNbd9BTtQ5IZCafhkLkUh2bkkWxiYaIeT1ph/7VMWnMiM6AL+krXzVlOOiOYRj0sIQVC+k7+dlIrzuv0CkLgcEHu/GtKgfTIdKtyYy41TuagFSPhoQtYz9Y/ZG8vy4fSsyEKSj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716388795; c=relaxed/simple;
	bh=TKCuBc6hk2NBpcuSFJpKW+xqunneouMxmGzMjOpMBNo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q6Ns6MKZ6VHX27geM3UkSyuUTemVoj8/PudT+im0PHeWXhfcdddFQWm2VecPc3/1R+0nP5SRJbb6Qr628tvkS4DVx8WNbPF0t8IZM6ND0/R95KbbOOGfVzMTDVpQmHQaAk1N7Dv7dSNA3fZl5UpwaDX7R2pO2qDnsogknpMGsQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJRDQ2EB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB1B3C2BBFC;
	Wed, 22 May 2024 14:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716388795;
	bh=TKCuBc6hk2NBpcuSFJpKW+xqunneouMxmGzMjOpMBNo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XJRDQ2EBMROCYz1rTeZlXMdBBvBqDT4rSjFj6lKXuk11rL7gXGKSa0K6QRk/gpglc
	 DesZVHiCS98Jynr/Z7n51RINzbzNP+XngIiVV1s4BcIj3D9ZhoBLSOeIRe9YMjnOUm
	 iDNVhdkbLf2jjKeUfuyMssr/1cHUzvZok7NitecKVTHGOCr8CICDuP25Vqzwt6xuXu
	 z8RuqIleNv3RgHWDwBWP4H6FlXdQFXqT7Yy/hXoXQa2LsWzKonGEvKFUb3v1thy+/x
	 43RZDcvi6qVBh8XuG5WlSI+idMrWoZI9Een7GIj6xAuWbysed6XQwBmBdb1odYBgIs
	 dku2/wc+Bc13A==
Date: Wed, 22 May 2024 09:39:54 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: soc: sti: st,sti-syscon: document codec node
Message-ID: <171638879167.3266852.5627464202438101857.robh@kernel.org>
References: <20240517142245.178556-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240517142245.178556-1-krzysztof.kozlowski@linaro.org>


On Fri, 17 May 2024 16:22:45 +0200, Krzysztof Kozlowski wrote:
> st,stih407-core-syscfg syscon block comes with a child - the audio
> codec, whose binding is still in TXT format.  Document the child to fix
> dtbs_check validation errors, while allowing later the binding to be
> converted to DT schema:
> 
>   stih410-b2260.dtb: core-syscfg@92b0000: 'sti-sasg-codec' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/soc/sti/st,sti-syscon.yaml       | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


