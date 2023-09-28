Return-Path: <devicetree+bounces-4345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2B07B216C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 17:34:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 860A3282634
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76B243D3BB;
	Thu, 28 Sep 2023 15:34:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666AC8836
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 15:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C42B9C433C7;
	Thu, 28 Sep 2023 15:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695915248;
	bh=yA76syt11xoVYZH5ZXAc4jjHZzjxXGFWQox/+TwdtGc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e7++/EvD/zl1p9E3yKa04t1fUV4yLxO8C7UxcnHrByAekjaUi9bu7YZhTGHfM7luN
	 g3AIv91+AP9cYAfxv31DNVdiUsJDO1ThGJ0r9eXoIFKr4v337a5i3emODm+FumyudW
	 BGM+dxJAWWZDgrmWycs7SL4Ml1i9QBKmJvRIcgt0xrcsXK7Oqv39qTXwlPA9exXok5
	 w2kkteeMEwr/xTwJQ7ST45SJcnRWsx+RkKiEi/m+JYlVgps1iEDXLs+kjLyEj4eff/
	 3O2dZ43XosV1NY3nMmgVVjZE9t5Re7Psm9O42wShXzfXl4MzXi5SnyjDloHnQJvdWL
	 fuh+gVtYnqwXQ==
Received: (nullmailer pid 550608 invoked by uid 1000);
	Thu, 28 Sep 2023 15:34:05 -0000
Date: Thu, 28 Sep 2023 10:34:05 -0500
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm,psci: Add missing unevaluatedProperties
 on child node schemas
Message-ID: <169591524261.550509.6355253200951423376.robh@kernel.org>
References: <20230926164553.102914-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926164553.102914-1-robh@kernel.org>


On Tue, 26 Sep 2023 11:45:44 -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/psci.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


