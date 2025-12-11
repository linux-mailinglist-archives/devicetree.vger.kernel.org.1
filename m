Return-Path: <devicetree+bounces-245858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8522BCB61C7
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 14:56:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 825E2300BA37
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 13:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC0C52836A4;
	Thu, 11 Dec 2025 13:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="le+oes8f"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94179224AE8;
	Thu, 11 Dec 2025 13:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765461376; cv=none; b=JpeX9RxUqSJx/I3rRbXKjhVMzU6ykFb3914YvlBfnLhioOI7q+Z+CRdYujAWXLyOQ1mx0B8dNCp5/1S3O1hruBHjFno/HmhGta685/FNkhCc50DuzJEPYoRDqcuF5yrF9qPB6au3ssdQAD75VG2/iGk/Pka6+iFjFUKyhbRD0zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765461376; c=relaxed/simple;
	bh=5SQDs01KZLcV5p4tX9S8+xvLJpPToC97SWUDg3gblzc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yi1LInkHSvsdxQ4/fTI8UmC/m9Yo7q+8BKwDzUikZh/IZA0pLEKXOBNHWZeVxp+F11gYBjTcNg5mbJNxTgP19hYrrZIFEFfKaDI4JCRBV4nb5D7A80Pvf8Ba0plWNA4wFsUkg7WeO6q0Q62F0DtEoIPZZKJ5CEAF1chO38ucPmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=le+oes8f; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDBC1C4CEF7;
	Thu, 11 Dec 2025 13:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765461376;
	bh=5SQDs01KZLcV5p4tX9S8+xvLJpPToC97SWUDg3gblzc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=le+oes8fsu8xf/V+rewictiv/dduuRA5U1eaTl86qprLD0P/0IEq/OfnISb69bYQT
	 d098EbVZT8qI4Qo71/c3IduMYYlIaokAIpkoqvtL2exV3WNYq36fz86C/VeTMlnTjO
	 O09R3TypxhOmExjQUyY6AAWCAm/0YkPiCkG/aQqWKPdWHHoEDjtbCiJ306qH/6EWPb
	 /KxROYV31CCmYAdps4FUhc/sXgYiMV6np3AFAP8XPGBelzJUKlRled0OPfj9AiKcuk
	 4ugsORp6zJf9hkNPY0e7aS51gpXr7MbOdjiQ/8M67WjdlFa57rEw18vmbjFLSbp/fF
	 yXPmf+IaRXCeA==
Date: Thu, 11 Dec 2025 07:56:13 -0600
From: Rob Herring <robh@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: altera: combine Intel's SoCFPGA into
 altera.yaml
Message-ID: <20251211135613.GA898633-robh@kernel.org>
References: <20251211043353.93944-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211043353.93944-1-dinguyen@kernel.org>

On Wed, Dec 10, 2025 at 10:33:53PM -0600, Dinh Nguyen wrote:
> For all SoCFPGA platforms, whether it has the "intel" or "altr" vendor
> prefix are referring to the same business unit that is responsible for
> the platform. And now that Altera has spun off to be a separate corporate
> entity from Intel, it would make sense to have the device bindings
> documentation in the same file.
> 
> Move the Intel AgileX board binding documentations into the same file that
> contains the Altera ones.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  .../devicetree/bindings/arm/altera.yaml       | 26 ++++++++++++
>  .../bindings/arm/intel,socfpga.yaml           | 40 -------------------
>  2 files changed, 26 insertions(+), 40 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/intel,socfpga.yaml

I'm assuming you will take this via soc tree. Let me know if you want me 
to take it.

Rob

