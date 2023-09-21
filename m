Return-Path: <devicetree+bounces-2194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E020A7A9B9A
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:02:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4CECCB211AB
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27E6818B17;
	Thu, 21 Sep 2023 18:55:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1778312B69
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:55:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28139C433C7;
	Thu, 21 Sep 2023 18:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695322502;
	bh=+ITl6i5O0qO8N7J52aMXg4Y16ZZB0+VuzRDddRpxbT4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PswoqZnJpmSHZqX1IkJM3D1IkZKlK4EB7M4LvLUel6hWlZ4zpCyl22bKqZxQL0oBi
	 D1vQ3PfqPlw08pSK9UbrGstz5fOmDhl+bMQuQ1BU7GvGxiPm9AwYAhPc+DY10lNe0f
	 usQR4DHgOcEkJ7R2ZeQzZFvmKyobzQDTvVpUGzSeGon/f05LMPo56J0UYDnWHjSUrW
	 11FFHBzavYh3cfX4pzrYTShBV7bqiGE5sVa5UK6d0ZHHwX4ucTwvqeYG7xtq2Xeuv1
	 wLuD2CrUkAuBdAJL/g/MnmgzJhS3QujIG1NyFt6ugTJX/dBIE64aimTSZkj7QVs+av
	 9zjcGU9HyoV+w==
Received: (nullmailer pid 800436 invoked by uid 1000);
	Thu, 21 Sep 2023 18:55:00 -0000
Date: Thu, 21 Sep 2023 13:55:00 -0500
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, Ilia Lin <ilia.lin@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, linux-pm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: opp: opp-v2-kryo-cpu: Allow opp-peak-kBps
Message-ID: <169532249877.800354.7360993815442441183.robh@kernel.org>
References: <20230920-opp-kbps-binding-cleanup-v1-1-65b059bb4afc@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920-opp-kbps-binding-cleanup-v1-1-65b059bb4afc@quicinc.com>


On Wed, 20 Sep 2023 16:03:57 -0700, Bjorn Andersson wrote:
> Many of the users of operating-points-v2-kryo-cpu scales interconnect
> bandwidth based on the selected opp. Extend the binding to allow the
> opp-peak-kBps property, inherited from opp-v2-base.yaml, to be used to
> specify the requested bandwidth.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  Documentation/devicetree/bindings/opp/opp-v2-kryo-cpu.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


