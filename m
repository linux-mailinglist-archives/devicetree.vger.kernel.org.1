Return-Path: <devicetree+bounces-6531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 636067BBBD1
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 17:36:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C97D282061
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 15:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5221927721;
	Fri,  6 Oct 2023 15:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fftnpSMS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33761273D3
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 15:36:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1022C433C7;
	Fri,  6 Oct 2023 15:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696606591;
	bh=XKrlh52/xCv6WSC2L6XJZQfYHZD/gUFZWaCEyBCpEeo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fftnpSMSsBB+5lYOQaTeKbNLcppQVgrw6C/dOra/J6SkBQDqR7jjFK4qduY8ey+bd
	 60DFvMA0gS3sBQAyIjs5cenGjskaK9VMSR7YAxZ1XdEv0Nkpb/hihs/0Juyx8uNEeQ
	 tvdfVhufp8x6LurbQ8hN5g8JPgHxlVJFYdle15WA0B7amLYG7Qe6OAq07mTU37deUt
	 YU+k0rZTaMzncVwgW5f3eWkrqaerAzFSQ4f5gzYZgavYnpU8tgVsSDx+TSmNdN+wb6
	 LtZaE7AvWv6GevJyqzmtS2JKxqKeczpkY/sfJT+nkIkMYJ0LUSOnJxFth11ca+Wy1l
	 z454ub3nOzf4A==
Received: (nullmailer pid 3978856 invoked by uid 1000);
	Fri, 06 Oct 2023 15:36:21 -0000
Date: Fri, 6 Oct 2023 10:36:21 -0500
From: Rob Herring <robh@kernel.org>
To: Sridharan S N <quic_sridsn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, andersson@kernel.org, agross@kernel.org, robh+dt@kernel.org, konrad.dybcio@linaro.org
Subject: Re: [PATCH] dt-bindings: arm: qcom: drop the IPQ board types
Message-ID: <169660658107.3978799.1662058094270868857.robh@kernel.org>
References: <20230927093130.4098385-1-quic_sridsn@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230927093130.4098385-1-quic_sridsn@quicinc.com>


On Wed, 27 Sep 2023 15:01:30 +0530, Sridharan S N wrote:
> IPQ bootloaders do not need these information to select the
> the DTB blob. So dropping the board names from board section.
> 
> Signed-off-by: Sridharan S N <quic_sridsn@quicinc.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 14 --------------
>  1 file changed, 14 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


