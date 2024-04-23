Return-Path: <devicetree+bounces-61801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1FE8AE233
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:30:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66762283429
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 10:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1310064CEC;
	Tue, 23 Apr 2024 10:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7yCztiu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6C7633E5;
	Tue, 23 Apr 2024 10:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713868211; cv=none; b=LgYQMf+WOepGknmIRzOg3s95hWPuvj8TRm6uSGEt3Un8v+j4fULpkHO7I5wjT9abGdDB9qOV7M4mqh91lc+9aAYjV99DDnlweeLVu3SZX9BdURzPGJkXq/hzvebG4pIK7WrkfM/hNis+t40ZUQawSR5glga+opfDn2tAl8/mEWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713868211; c=relaxed/simple;
	bh=Kcu25Wy2mKzGHHHOIrNFUd5lOsB/u1AUSYF0v6r5G7s=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=Gk0vYkDTUaHhq2yPUYiscpjHSOMv5I3e+5HbyBX0hBvdMJ8MvKWBTpzT2Qg7/TcKGbIyClgaNzqIbUstAkmQZf58lGyDvNGn0CvQKzyvTCBkY3FDSG8lQxH98GdlvACKkeu6qDH7SuZBdLe91PikgWyPn3nEGIzQXzXH7HBsKN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7yCztiu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4519DC116B1;
	Tue, 23 Apr 2024 10:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713868210;
	bh=Kcu25Wy2mKzGHHHOIrNFUd5lOsB/u1AUSYF0v6r5G7s=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=N7yCztiu+EF0YIuy0ljkgIUUwmfOoXwEU04MYE9PknADmgEscLjRQDGwfxZADMk7/
	 Rup2unQluYLp4kLw5Gs0zcDdAOXBAWCqyoktGil/EBAweoYaa8wWf6hl4wFB/GKD5+
	 a14WYgG49fNCWI36kEo/GbNr+nf0Yk+a/hCl2chF8VZuJweftSawUd1fYESllW3qIO
	 omMv8tUqkBVIkit+maEdXOS+GmKFwnG3LdHpBIKkgXDXXAJF6BnDwM5x5R9BuFJ3VB
	 u6F6NrGowrbe5Nk141yW7zDr11K20nMJGHsKsC0oC/fWMdqWLKamCObRnZdCcNrjnF
	 MXiXjKv4er/UQ==
Date: Tue, 23 Apr 2024 05:30:09 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Joshua Yeong <joshua.yeong@starfivetech.com>
Cc: jeeheng.sia@starfivetech.com, krzk+dt@kernel.org, 
 devicetree@vger.kernel.org, conor@kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, leyfoon.tan@starfivetech.com, 
 palmer@dabbelt.com, conor+dt@kernel.org, aou@eecs.berkeley.edu, 
 paul.walmsley@sifive.com
In-Reply-To: <20240423072639.143450-3-joshua.yeong@starfivetech.com>
References: <20240423072639.143450-1-joshua.yeong@starfivetech.com>
 <20240423072639.143450-3-joshua.yeong@starfivetech.com>
Message-Id: <171386820810.3677783.5949839682682937606.robh@kernel.org>
Subject: Re: [PATCH v2 2/2] dt-bindings: cache: Add docs for StarFive
 Starlink cache controller


On Tue, 23 Apr 2024 15:26:39 +0800, Joshua Yeong wrote:
> Add DT binding documentation used by StarFive's
> JH8100 SoC Starlink cache controller.
> 
> Signed-off-by: Joshua Yeong <joshua.yeong@starfivetech.com>
> ---
>  .../cache/starfive,jh8100-starlink-cache.yaml | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/cache/starfive,jh8100-starlink-cache.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/cache/starfive,jh8100-starlink-cache.yaml: $id: Cannot determine base path from $id, relative path/filename doesn't match actual path or filename
 	 $id: http://devicetree.org/schemas/cache/starfive,starlink-500-cache.yaml
 	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/cache/starfive,jh8100-starlink-cache.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240423072639.143450-3-joshua.yeong@starfivetech.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


