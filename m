Return-Path: <devicetree+bounces-239559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CB833C666B4
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 23:16:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 76C18351DD0
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24243093BF;
	Mon, 17 Nov 2025 22:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbZobeRk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90E523EABB;
	Mon, 17 Nov 2025 22:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763417782; cv=none; b=bKibLoy1ZNrko6Wja9fPiXiSuztQ7oVUn5RKpENHgV1fGsGwwkUg5mJIoYOXSTsENtqcSOPlBEBuB96eGqPqV2sFWSvzK8O676b4nsPADEaQxD2daDer61y+19yDESQ+csTYUn7KabWP3p7neCiQ47nXwflXq3ppBfXlI//LsK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763417782; c=relaxed/simple;
	bh=kh3T3UvtdvrpXjQpgvHGlGLzTijiY3FyEc+vFyfgu9U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XXgaFQe8B1GVKuhVomiIlg6fFZoDJfpQSGAjZe7Ln/6CIwiKbHHAIqyrU/6U/fAS6JWc7P/bNHpFK2IfSJzcTGh77ybsL6S8I3pEb2swIePL++hKwuS5ptYX8Ai9U2LdzymPgoF/ERFluA6CKnbNPkAUDFYVg5VCCfgS/CKHUMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbZobeRk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE6DAC4CEF1;
	Mon, 17 Nov 2025 22:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763417780;
	bh=kh3T3UvtdvrpXjQpgvHGlGLzTijiY3FyEc+vFyfgu9U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NbZobeRk7Otovno/knQ4CjH2U9ziv4TzMqhLXhvKZpznOztYcsxNnWt9uk3Mehrhw
	 VacWZ5XugKaQy72Fcxn4Jz/q3shZjqG+0j5XJvXVbnompYkcLMn3F77DQkDwlDl+a3
	 9TiBhnJ9lofsKdsA97ZmG4aLeQBbmV25z0C38Ye0GqFXKN3b29jUC1YFXzW+4+8e48
	 Q+q9NJPyPYbq209mU02FMhL7Wqh6DT10RzU0mQtN9HkE6CZzmt76jHLpkYK9RpyNAa
	 iwr+2ATnRncR/ngxhIFccPrffaSJaymEpppm1cqNr1RqMeBdc9V31R5tk7pVzJhIKe
	 9rLEJXuUMyx7A==
Date: Mon, 17 Nov 2025 16:16:18 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Daire McNamara <daire.mcnamara@microchip.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: mbox: add pic64gx mailbox
 compatibility to mpfs mailbox
Message-ID: <176341777747.818372.10784269144119060270.robh@kernel.org>
References: <20251117-screen-appointee-837a7296ca91@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117-screen-appointee-837a7296ca91@spud>


On Mon, 17 Nov 2025 15:46:54 +0000, Conor Dooley wrote:
> From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> 
> pic64gx mailbox is compatible with mpfs mailbox, even if the mailbox
> consumer is not - the underlying communication mechanism is the same.
> 
> Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> CC: Conor Dooley <conor.dooley@microchip.com>
> CC: Daire McNamara <daire.mcnamara@microchip.com>
> CC: Jassi Brar <jassisinghbrar@gmail.com>
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: linux-riscv@lists.infradead.org
> CC: linux-kernel@vger.kernel.org
> CC: devicetree@vger.kernel.org
> 
>  .../devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


