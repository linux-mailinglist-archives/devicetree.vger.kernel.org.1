Return-Path: <devicetree+bounces-153373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E0298A4C2C6
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 15:05:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 820811885287
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 14:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1009212FBC;
	Mon,  3 Mar 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCESRwN8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE831F17E5
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741010753; cv=none; b=Xtd2zAqYl7YtXI6UzLe1P8sYJIU7jqsvkHmuSFgEcvvIVGvpena7ozwe4y/XcHZFbsknEQu6NObfEvmYEtiajCqQXJVbWGQhW2wjbnVCVAqY+KDmL6JDOP5Nuao/7AIKWJKmnGzUEZTu+5IQ9V03TW9o6nPI358k8JqC1uCWRMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741010753; c=relaxed/simple;
	bh=cglLiwllq/Wswh1pEsU+NDxZ2WeFb6SUBQz7cTf3n6w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FeVWep/BUZiq4UQhLYQYDhphUY1irBlh6ns1d5g0IqZleYHL3xWIWMgClR0UX2+oqPdXHcgtyfY75CBBpGQ8hBd+VA5tXL6ELjpMUngo0IFDmqeAkVJAn4zWhMRRI409sxQtPNYpgCYCw5Yx/v6mHEzRJ2bJD09Esf8Gqrxa8b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCESRwN8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC9F3C4CEE6;
	Mon,  3 Mar 2025 14:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741010753;
	bh=cglLiwllq/Wswh1pEsU+NDxZ2WeFb6SUBQz7cTf3n6w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZCESRwN8ClzNBAEpK+3t+/K/OP1fi9QdcdKyld1gS6ZVZq1Qmy1QGXMYtwgI+cDFt
	 dSMtm1h0DpNmjQ4Dz5q6Od9y6S/k5q9tLPIYKgb9C+H1xfjuEjN0E0To5dzYKnTAd5
	 swUihpJWdj6M3tFx2heNNzc5AJRF1t4c0pjKAuyShfqEP/ZlQavfoDxb2FEZM//FIF
	 KOwboj/xojCySNQNEsQPDScUIR37DlZpsihwy0CA4oYQuwLHah60qxLdfC60/Cymmm
	 PRO6SwWVYU/sg/tf1ZR5wt0YijzJm0dDF/PQ2GpdDxEFi8ZvcjXOsegGRBaQQwcsii
	 RFtX1blzNw8gQ==
Date: Mon, 3 Mar 2025 08:05:51 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: =?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>
Cc: kernel-dev@igalia.com, Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Iago Toral <itoral@igalia.com>, dri-devel@lists.freedesktop.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Melissa Wen <mwen@igalia.com>,
	Jose Maria Casanova Crespo <jmcasanova@igalia.com>
Subject: Re: [PATCH 6/6] dt-bindings: gpu: Add V3D driver maintainer as DT
 maintainer
Message-ID: <174101075097.1758007.4807852577942863948.robh@kernel.org>
References: <20250226-v3d-gpu-reset-fixes-v1-0-83a969fdd9c1@igalia.com>
 <20250226-v3d-gpu-reset-fixes-v1-6-83a969fdd9c1@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250226-v3d-gpu-reset-fixes-v1-6-83a969fdd9c1@igalia.com>


On Wed, 26 Feb 2025 16:59:04 -0300, Maíra Canal wrote:
> As established in commit 89d04995f76c ("MAINTAINERS: Drop Emma Anholt
> from all M lines."), Emma is no longer active in the Linux kernel and
> dropped the V3D maintainership. Therefore, remove Emma as one of the DT
> maintainers and add the current V3D driver maintainer.
> 
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Nicolas Saenz Julienne <nsaenz@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maíra Canal <mcanal@igalia.com>
> ---
>  Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


