Return-Path: <devicetree+bounces-8190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AF87C70A0
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:47:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32FC028294A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88BB6208D2;
	Thu, 12 Oct 2023 14:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2UIuOXG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB7317F5
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 14:46:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0385EC433C7;
	Thu, 12 Oct 2023 14:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697122016;
	bh=WYk8Vw1pWoRdShAXmpY6B+PhCJi+fjgJkBB4Nnw4F/0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A2UIuOXGvcUyOe18uadv3OKJBKlOJd88IIqUXS5j+7tgaXUqBzENh6ZDfUHFIgy3F
	 Va7kGtUTfOVkF4021igWT2kzet6PsLoMNFUi3wHHk29qsQ+4If5Ns30rZi+sO7+w3c
	 x8RzyfqLdnPQ4cuu7oFRs4Qp71juywTPfWoLPWsN3nw/InGbllkmnqe64V7Pc0CY3V
	 H3L86P2qxFyRUJGbmYhQKAR65yJtfc1GyiahBl28gIp+8tkg5SxBuAIsOf5IMyCdCR
	 mbayMpRkjvx7gQQW1sBxBfOXdRvpyFPTTkYKY/54wpzXHiDwf/t0SG6POT/kUuhu49
	 S8B/gpoJ4841A==
Received: (nullmailer pid 554377 invoked by uid 1000);
	Thu, 12 Oct 2023 14:46:54 -0000
Date: Thu, 12 Oct 2023 09:46:54 -0500
From: Rob Herring <robh@kernel.org>
To: Tanmay Shah <tanmay.shah@amd.com>
Cc: conor+dt@kernel.org, shubhrajyoti.datta@amd.com, linux-arm-kernel@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, jassisinghbrar@gmail.com, michal.simek@amd.com
Subject: Re: [PATCH v2 1/2] dt-bindings: zynqmp: add destination mailbox
 compatible
Message-ID: <169712201405.554322.6115611735958707225.robh@kernel.org>
References: <20231007042702.178028-1-tanmay.shah@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231007042702.178028-1-tanmay.shah@amd.com>


On Fri, 06 Oct 2023 21:27:01 -0700, Tanmay Shah wrote:
> Current dt-bindings does not contain compatible property
> for child mailbox node. Child mailbox nodes are used
> to represent destination (remote) IPI agents. The compatible
> property for all destination mailboxes must be required to
> identify the node.
> 
> This addition of new required property does not break ABI
> as current driver does not use this compatible property
> but, new features in driver should use this property.
> 
> Signed-off-by: Tanmay Shah <tanmay.shah@amd.com>
> ---
> 
> Changes in v2:
>   - Fix commit message about breaking ABI
> 
>  .../bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml           | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


