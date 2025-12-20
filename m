Return-Path: <devicetree+bounces-248436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 823A3CD2B4A
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 09:58:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3DE553012DF7
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 08:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 751562F6928;
	Sat, 20 Dec 2025 08:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnLoiBHO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE044A35;
	Sat, 20 Dec 2025 08:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766221074; cv=none; b=Gg3vL3WlAdys+glbeSrxuqrFPA2QH8/LWBuoqEDkmPmwpbJSvrCKb/UI8UgzFTIy9TZe3CoBbTjLP8wlncM1DkwTeph7A3STVQREh3zy/UCOzKOsxVkqvaf+uzxMJcooJ97Yq2YEqC9W1SEjwjhaYqG3iGR/x9SpIwbbGDb6a9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766221074; c=relaxed/simple;
	bh=tffN5+aRCom1c+A8K5hJYGEMEBNHdQ8p2T9tfKHv+0o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cNkhu1z3FGf/Y3IdGftO97zQbmJdQfmS6AFLBH5QyD1gWSxWqLnkj4p1tdFFiVgLhSu5aoptCA1LKrHRa+EIY9+9gOWA3ZNeqBtJmaYlJzYn/Cz5Z/GakjdAzD03N48TrNpSwafI70HLsTZdZhXCnItqWU042ciabXg8yzYfl5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnLoiBHO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3A7BC4CEF5;
	Sat, 20 Dec 2025 08:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766221074;
	bh=tffN5+aRCom1c+A8K5hJYGEMEBNHdQ8p2T9tfKHv+0o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QnLoiBHO+2csqUknGm2baOomibBnPB+7sR/GLRUImB/myhMUF9xHauxg5zNBD4VH6
	 suKtRiKo9+CrT2N+qySStsduuZRs5rJiogxi+f+/MwrojnZcOyLWAMDrpGewefU/yi
	 Mpy/ro8wgjSUKqkQHProBAj4uEOpfuOmPWe+F552zrnA515jP1zgJmq5HvYVYYmFyY
	 Gr6336E/g8k19lSz3UJ7eWGAbsMXGYFBofF11oZ5x0CzlbMWnZtAorYZ+MYvmsTaGl
	 8UyDt957IK63DK8PqcfaL0DOsGpdeRGowczqzYkenSCDGgw0BLF3A5M+HSG6inZvth
	 aCfSi4BJHcGvQ==
Date: Sat, 20 Dec 2025 09:57:50 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: cy_huang@richtek.com
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Alan Lan <alan_lan@richtek.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: regulator: rt5739: Add compatible for
 rt8092
Message-ID: <20251220-camouflaged-bug-of-ampleness-ff0c6c@quoll>
References: <cover.1766125676.git.cy_huang@richtek.com>
 <9b67b2d2b4268d356f41ae2d0c3202e7813ea6b1.1766125676.git.cy_huang@richtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <9b67b2d2b4268d356f41ae2d0c3202e7813ea6b1.1766125676.git.cy_huang@richtek.com>

On Fri, Dec 19, 2025 at 02:36:19PM +0800, cy_huang@richtek.com wrote:
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Append rt8092 compatible in rt5739 document.
> 
> Compared to rt5739, RT8092 can offer up to 4A output current.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> ---
>  .../devicetree/bindings/regulator/richtek,rt5739.yaml        | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


