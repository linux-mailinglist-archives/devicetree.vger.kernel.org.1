Return-Path: <devicetree+bounces-231179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D062DC0B410
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 22:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BA4694E35BA
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 21:17:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E216924EAB1;
	Sun, 26 Oct 2025 21:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfvI2uaW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30AB221FBD;
	Sun, 26 Oct 2025 21:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761513439; cv=none; b=arMqx3V8ATE+BDkpcqdBidFi+jI25GKRjjXZcg3mQNAAkHF4gr2SWzQzuuuUL0kmWbHzRxIZ/CtavZ0fe+23+QIQWeVKtfLmAX7u2zkxCsdVNnGdDkDa3YbNtDSNv6rl2ezIuACQJ3pmRLZTxGMA0kKSWbPLwGx5FD+TtIvK8Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761513439; c=relaxed/simple;
	bh=nVTMFH3So27LyHQuXMPPHtrd7ND7ymeCK1tF644Emr0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KvQsU8DC1OmEXsts9K2U9s6f6OEVxKyd/VahxOdEC3l9H0UyFklQgd20w1RhSW+1tmj5dpVHYSouDcTPYPZv/LFa2pz+Gfi4W6kltn7LHveOJ74bPHz3nin90aaVQr2u76SJXeZB0iI7EkIGtEFXtwwHBLqwvQjL1NbKVMqQf4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfvI2uaW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F542C4CEE7;
	Sun, 26 Oct 2025 21:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761513439;
	bh=nVTMFH3So27LyHQuXMPPHtrd7ND7ymeCK1tF644Emr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EfvI2uaWg0oFtOyOp9EHzv19qKi5Bdo4XPoLVZcsEMcNvyV+gnReiAbGIOWTIFgQZ
	 zz8Wc75t0gIVEAe0slC5iTe59xyJFdEIcsd3HzCwvOdnkknVF/elduigL6VBWxkwuD
	 wpiHMFe+8CuelQkJDjdutxAo5LYqa/SIw4imxsC9adg0MsoW8qqJZqmaaw9EgXGh/k
	 cXSV5leN3urw27mGAhHgptJjvR7+vHLW6rP+Ckdxt44r+0MKf6LY2aQgvRYJt9HZ9X
	 iGINGrAEL7WO9a00ihuUtkI6NTTjah3rSHHUHAnEemv736TgSYV+vLk+198LM89Fi/
	 wwlOHB5L208EA==
Date: Sun, 26 Oct 2025 16:17:17 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Restrict
 resets per each device
Message-ID: <176151343423.2959050.2808385809411398103.robh@kernel.org>
References: <20251017045919.34599-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251017045919.34599-2-krzysztof.kozlowski@linaro.org>


On Fri, 17 Oct 2025 06:59:20 +0200, Krzysztof Kozlowski wrote:
> Bindings should be complete, thus complete the constraints for the
> resets by adding missing compatibles for devices with two resets and
> "else:" clause narrowing them for all other devices.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml          | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


