Return-Path: <devicetree+bounces-252488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 772A5CFF9BF
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 20:01:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B3822300183B
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 19:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DA7036214D;
	Wed,  7 Jan 2026 18:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byNly+xC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93CEA3590B5;
	Wed,  7 Jan 2026 18:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767811628; cv=none; b=WvkuKvaSO8du1xEYN50yztQBB8h45BwyZuKD+www8uMHxMACQi/qRxaiz8UEFndQyshFL4x89fxYk73GqNxbPhw9W7MfJYdant3fuopRIJDVRY2vz3MjD1WTv0HxyN9wwbk4Aoj8oxPefmhZ85J1Uunk3f2Jir6qlioWdbE91UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767811628; c=relaxed/simple;
	bh=4yPG+l5w/j0jWKQpiaGiOl5XoPWy4TQ2jbFaBEAm37g=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=dpew4jUEn0s+KWDMqfYIb9IHYttwb/wZzQTMljmtwwFq9JAPJIYAxSWMCj6QB7q2qbtrVFXWwxcwiCf4TlN6Lb2GmoD88bvCK7p4U4QLV3wO2rkw4n79BwpW5fOxoQncrnRM/Uk/M09IW9D9zHEZCTDZQ6sG7+S44T/liQbN5Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byNly+xC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F672C4CEF1;
	Wed,  7 Jan 2026 18:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767811627;
	bh=4yPG+l5w/j0jWKQpiaGiOl5XoPWy4TQ2jbFaBEAm37g=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=byNly+xC4C6f7zXeBIXrz3hqx8lHaCN87ADcjy8AiWMYjewyNxjnpjm3C+suZIbFr
	 ueRaCZHpEgYmZQLk6pzLf/pROq8hXnIdeun2zrvus/JMkexgJGGYJPl4ArKg3NgJRo
	 ftOyrMB3tus/EvxTsYxpCRF6kNtJx7sFdPS4MhiXvX1knFHXWwHGznAIco0MXB1FJg
	 VwASizKEQcE3S3g1QgmUGB7xv9tvFXsjDzyXeBRGYbUT2CAQq+qO35OwNjuhbWecBB
	 zxUU92vuAOS1ziNK22FPDg9+eLGavknPzkbV69ZZh/cyRvN6w7x9O/R8sBBBMCDn2E
	 W0wTSp9oflxLA==
Date: Wed, 7 Jan 2026 11:47:03 -0700 (MST)
From: Paul Walmsley <pjw@kernel.org>
To: Conor Dooley <conor@kernel.org>
cc: Guodong Xu <guodong@riscstar.com>, Rob Herring <robh@kernel.org>, 
    Krzysztof Kozlowski <krzk+dt@kernel.org>, 
    Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
    Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
    Alexandre Ghiti <alex@ghiti.fr>, Paul Walmsley <paul.walmsley@sifive.com>, 
    devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
    linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2] dt-bindings: riscv: update ratified version of h,
 svinval, svnapot, svpbmt
In-Reply-To: <20260101-prong-carnage-bbb6272e23c1@spud>
Message-ID: <fc4a3b44-3776-68fd-6e1d-876cf319c3eb@kernel.org>
References: <20251225-h-description-v2-1-b0c66080c704@riscstar.com> <20260101-prong-carnage-bbb6272e23c1@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Thu, 1 Jan 2026, Conor Dooley wrote:

> On Thu, Dec 25, 2025 at 02:24:20PM +0800, Guodong Xu wrote:
> > The descriptions for h, svinval, svnapot, and svpbmt extensions currently
> > reference the "20191213 version of the privileged ISA specification".
> > While an Unprivileged ISA document exists with that date, there is no
> > corresponding ratified Privileged ISA specification.
> > 
> > These extensions were ratified in the RISC-V Instruction Set Manual,
> > Volume II: Privileged Architecture, Version 20211203. Update the
> > descriptions to reference the correct specification version.
> > 
> > RISC-V International hosts a website [1] for ratified specifications.
> > Following the "Ratified ISA Specifications", historical versions of
> > Volume II Privileged ISA can be found.
> > 
> > Link: https://riscv.org/specifications/ratified/ [1]
> > Fixes: aeb71e42caae ("dt-bindings: riscv: deprecate riscv,isa")
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> 
> I've put this on my dt-fixes branch, but shout Paul if you'd rather this
> went via you.

Am happy to have you taking these!


- Paul

