Return-Path: <devicetree+bounces-136959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79171A0713F
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:18:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D036166F04
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 09:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D942215197;
	Thu,  9 Jan 2025 09:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+PSqo3K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1558A214A98;
	Thu,  9 Jan 2025 09:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736414170; cv=none; b=lgcQla/k0e8FelECIz0Ux8Lm3cuqKNfgjWefMNzTgvDkcwLlNpq4mLxpRq7bfxaDIVdBHgm1nqz1QyvyLTPVv/CMVh2NwTnYG4+uv/ircddGpqHfso3n5YIiFfcRF/fkiBA7SPO/XfAiK6zHBYWGo7lEv7NnLZrv3t8i4Xu5CYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736414170; c=relaxed/simple;
	bh=pzEqprWkkcYMG76vFYKPLddgpbIGz3LDR25pymZL3/Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cEdqTKE18KQVTTnpotY/KKISYJ1N3PhYWsCcddFEuF6FwGyL/pnYr0XqUEEeR0S6yYZDLmXOJSSD4cVxL50qWzt3Ag6RYtYxyPpxm6M9innosCXPQZhLV1cjQGhv5y6f8AzCxK5qg2lLfGshJP/LZzoLfo3Rs+ATZY+XeN/ZzJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+PSqo3K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD998C4CED2;
	Thu,  9 Jan 2025 09:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736414169;
	bh=pzEqprWkkcYMG76vFYKPLddgpbIGz3LDR25pymZL3/Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S+PSqo3KRjIBEoxg904nsLlilQWiSShftgfV+29WmG5Z1q+9KeqQbnxoTQyuYYeDb
	 Em6ELRezNiejpVDuh/E5QBVRe+jfn23B8R2mgQUgfYD22WGiUzpyrct6z0LzmJ6CoX
	 A652jNunb0f53rPh0obn3SatGCJP7SzYJV6FyJoTdyhbtaJbyyFBhkjl+bbbnMTtnj
	 S4eX3TZ+4QF9vA5H3dxDbzg8K+2Z00SCJtuEBj8AJCjRQfvwZhkGc7V1zudegDsgHv
	 eZscj+A1oo0pd+nznLPOhIF1a4YHBbZZnNk9PaTwjiR+MIdHMsgT4KbaCF23luX77y
	 eOi4+EaikT2Rw==
Date: Thu, 9 Jan 2025 10:16:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bryan Brattlof <bb@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: ti: Add binding for AM62L SoCs
Message-ID: <qbyucnranctctrqkfc3uyuhhvvmseh5dpzoi3tlahq7e24kufb@w23tcbefjklp>
References: <20250108-am62lx-v2-0-581285a37d8f@ti.com>
 <20250108-am62lx-v2-1-581285a37d8f@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250108-am62lx-v2-1-581285a37d8f@ti.com>

On Wed, Jan 08, 2025 at 04:51:53PM -0600, Bryan Brattlof wrote:
> Add the binding for TI's AM62L family of devices.
> 
> Signed-off-by: Bryan Brattlof <bb@ti.com>
> ---
> Changes in v1:
>  - separated out devicetree bindings

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


