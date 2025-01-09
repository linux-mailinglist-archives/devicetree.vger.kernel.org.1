Return-Path: <devicetree+bounces-136975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E07A07251
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:59:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ACDFD1886026
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 09:59:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E342215176;
	Thu,  9 Jan 2025 09:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUrkiXPe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93052F2D;
	Thu,  9 Jan 2025 09:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736416768; cv=none; b=dI5WagVsfaTungC01SBKi3U8pOu/0svi/AA1+J/+k1ZdwUijZrF9RPvWhA9pMRnLJutXHchJeAZkliMBrGjfV3G/yHJaJdMHZqCaE3rNvPvZ0QtlLEqVTbme5OonRSh7jFnhsWdtKndeevaSYrmDlycPVjMj5AukA/MGGm+u1L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736416768; c=relaxed/simple;
	bh=5sWHctMBLzN4RbYP/rFTh0bZoUqmreP+M2uHEzQOFfM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=HShfiJ/xhZTi4TTKEzKovLz4cWpC2KFW85pQoXaKE4OmUTRUN/frMhct3yRbnG41smHUT5YSBAPsINYJ6NwgumByMLV6eFKWa6FJy5bTDnzSGC/zQvoRJaXkT+HJlp74niyVW9uaNaxGBHi/bEA5kd6gT4z9XH4VxoyFsu0hn9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUrkiXPe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68FFBC4CEDF;
	Thu,  9 Jan 2025 09:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736416768;
	bh=5sWHctMBLzN4RbYP/rFTh0bZoUqmreP+M2uHEzQOFfM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GUrkiXPe7nd1AeCU60gKOm4/1iLacvOoWZjuRz1pqGP4qEk2/1ep54YsFCcNpNEjV
	 9GY6tysynLWRkUjVkTG7wOntDV/rp+pE8P4y8wTNulVfSBCYr3DHe4rtpNeQUuHXp/
	 lmc8r8rgu0sZwC8/Jz4aAS0p1eyVgMXSC3iK34di5tK3e+pZuOGBbfHxGY1wOFbGKc
	 RZAXVRTYabht2/ZUtwleigxuoWE2Zt5n2rZjnsfpXm+XCYbJlMgsMr21CbZMjwvwZl
	 re35C03QsEPmfJ8BGIpOUjUoabMmBY6UjvqZre/H4t+fstUkn5vhwUDnD2ot3q3RI0
	 1n30zcE6eEG9Q==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Charan Pedumuru <charan.pedumuru@microchip.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20241218-matrix-v2-1-f3a8809ee5cd@microchip.com>
References: <20241218-matrix-v2-1-f3a8809ee5cd@microchip.com>
Subject: Re: (subset) [PATCH v2] dt-bindings: mfd: atmel,at91sam9260:
 Convert to json schema
Message-Id: <173641676617.2552178.14439346339961145074.b4-ty@kernel.org>
Date: Thu, 09 Jan 2025 09:59:26 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.13.0

On Wed, 18 Dec 2024 09:24:54 +0530, Charan Pedumuru wrote:
> Convert old text based binding to json schema.
> Changes during conversion:
> Add a missing fallback `atmel,at91sam9x5-matrix` for
> `microchip,sam9x60-matrix` which is not defined in the text binding.
> 
> 

Applied, thanks!

[1/1] dt-bindings: mfd: atmel,at91sam9260: Convert to json schema
      commit: e3f17f8b55e76ed06a092cb8d187d3dba5102ffa

--
Lee Jones [李琼斯]


