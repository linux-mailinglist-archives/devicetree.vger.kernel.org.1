Return-Path: <devicetree+bounces-255747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E67B1D27ED1
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:05:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87E16303E66B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E37983D1CC0;
	Thu, 15 Jan 2026 18:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiXGOy6g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B313D1CA2
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768503349; cv=none; b=pv1rjJk2FADgIabA5776wOTHHinic4PoRFZG4+p6T30pGZsdMrD7Q4pwDxHb8kPKDMdBOeSJMd2DGyOZIKruuU+bo+NF5DizhR/yvMctVOhUOzL+sr7T7aVo3p3eAQyqfVWIxMvgPT+99a0Bc+/FlCTTCAiVBt5hdfKnXeuf6uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768503349; c=relaxed/simple;
	bh=aOSRDFakGh+5h+6qiUYQmK78wJEtBDPIU2CeS3D2/Hw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sJSx7EyrEJDBKt8IH3ddZ6FwkzVzOH/4HEEuBCQsHljqdva3M7jsGrCWmepSjQ+GU3cNyjUEW8T37cViqxXTJK+lHDKalcYmR3Twn0NbSVQmgcensOcOCpzvnfWief7ZYXgsJDCgpqnzmS0gk3f9dQDZG7O8bkm5G3OJWyzaZk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiXGOy6g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 418C6C116D0;
	Thu, 15 Jan 2026 18:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768503347;
	bh=aOSRDFakGh+5h+6qiUYQmK78wJEtBDPIU2CeS3D2/Hw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GiXGOy6gJPPQnsMPZ/eN1qB+60jvhhAqMO1MJwulQ3DQBHzw2ohwTnahpaU+EWDKA
	 agSfrzZ8pMUOV7GV8RhyJKFeJW6xK15bHvRxhgvo5y9tNSSvGCgQsK6qi5pjeGKBu6
	 3V2Cv52gYQECGMj+J/5jm0V1otwjUXzqmR8bSZdFdv516fx6uladLQ4YcPPhZMBahj
	 39Y4DodP3tSpbDVflF6/TlPAprOU4X78s+6gEo8tfIc1XZtflLi0eVNp5sW47IEgk3
	 pIz0ai+FnZpmx+BdP/UY3sIENZrm+yJG6isnz6I5F+XEbDb5FwUIZcTNSFil2LaGPW
	 fhEVX9xI4rXfA==
Date: Thu, 15 Jan 2026 12:55:46 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: krzk+dt@kernel.org, simona@ffwll.ch, airlied@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>, tzimmermann@suse.de,
	jagan@edgeble.ai, linux-rockchip@lists.infradead.org,
	dmitry.torokhov@gmail.com, conor+dt@kernel.org, heiko@sntech.de,
	jesszhan0024@gmail.com, mripard@kernel.org,
	neil.armstrong@linaro.org, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, aweinzerl13@yahoo.com,
	maarten.lankhorst@linux.intel.com
Subject: Re: [PATCH 5/6] dt-bindings: input: touchscreen: goodix: Add "panel"
 property
Message-ID: <176850334606.1005378.10711190670525490537.robh@kernel.org>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-6-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113195721.151205-6-macroalpha82@gmail.com>


On Tue, 13 Jan 2026 13:57:20 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add a "panel" property to define a relationship between a touchscreen
> and an associated panel when more than one of each exist in a device.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/input/touchscreen/goodix.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


