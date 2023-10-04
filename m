Return-Path: <devicetree+bounces-5839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0757D7B8167
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:54:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 3B4BC1C20837
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A31C115E92;
	Wed,  4 Oct 2023 13:54:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93ED03FF1
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:54:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7939FC433C8;
	Wed,  4 Oct 2023 13:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696427675;
	bh=rlPu3O1Qd3M3TwWAX0nB0L1fM6tsuvYQG9C6oxCBGHw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZBR1cJ4e8z1cefVOxoXKfsFkG0PMnCZxNtku+ODpsKW41kS6yp9V7CSHR9DEwvAoI
	 jlR3XKvGNGl+9yEPcp82tbqrIP5KpThk9dfSr5jI/dfHQKuBorZdC7ko4ch239Xur6
	 CGHstoQMmcWdsnwBLtmnzcAPlOvKeAlkCEM3VkJChbK6XsO4VbcxQusr5dIwML+05G
	 qUz72H+rzy+dCo/Oanvf08mLcCJUA1gtMjE79U8GotO2zvGfZvkJ+EJcUebM27SlHd
	 MizaHt+HjYpp89ji44Lmdy//NtMjbqDzmxtQnNX7njZGtDAHnA1hM5OH0QA/RrkqsT
	 4AU2L0stMUysg==
Received: (nullmailer pid 2784664 invoked by uid 1000);
	Wed, 04 Oct 2023 13:54:33 -0000
Date: Wed, 4 Oct 2023 08:54:33 -0500
From: Rob Herring <robh@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Hugo Villeneuve <hvilleneuve@dimonoff.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2] docs: dt: writing-schema: add example for multiple
 DT_SCHEMA_FILES
Message-ID: <169642767269.2784606.14360719853383172840.robh@kernel.org>
References: <20231002183813.1702052-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002183813.1702052-1-hugo@hugovil.com>


On Mon, 02 Oct 2023 14:38:12 -0400, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> Variable DT_SCHEMA_FILES can specify multiple files or patterns, but the
> documentation does not indicate how to do it. Each entry needs to be
> separated by a column symbol ':'.
> 
> Add an example to make it more obvious how to specify multiple
> DT_SCHEMA_FILES.
> 
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> ---
> Link: [v1] https://lore.kernel.org/all/20230928190259.3497563-1-hugo@hugovil.com/
> 
> Changes for V2:
> - Change description to indicate that multiple patterns can also be specified
> 
>  Documentation/devicetree/bindings/writing-schema.rst | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Applied, thanks!


