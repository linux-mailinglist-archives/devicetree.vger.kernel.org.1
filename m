Return-Path: <devicetree+bounces-5847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2D07B8202
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 16:17:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id CE5A81F2272C
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:17:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4A318C2A;
	Wed,  4 Oct 2023 14:17:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F285515EAE
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 14:17:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82DC2C433C7;
	Wed,  4 Oct 2023 14:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696429027;
	bh=7ATEAWA0d7zV8d/5xNEL0X8Ri5dFJxCHFsqlexmSiBM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dk2zLmLMjH5d40IXFZYdPRHHLKWzHMqK22+XJxltzmW9+6Z3ug98wz0PWKyP1D0mM
	 fUnALGNB15FyyiuLacLUpxgIwbvZTyQH2i/W7vVJohna1SWY11R0+PJzXqKJMs8D9p
	 Uj7gV3nqcIdHtmgTYJsUPQdNIeT8EMOIKPaf4CSZ5ojc98AKILXzLaD0Bi81vAWbpP
	 Ex5ri4uGStvhnv7cIaT0vv/ji3rKCdKYLb28CAlvJ6amazAefoEKdA9hRm46kXd2Em
	 4WCzu4Eis6Ae/gOCWloziRf5pUSp/3Fkkp/09If2pZajoh5naEBlJJFOIOXC7VPjzM
	 fGqaXYZ7sFOUw==
Received: (nullmailer pid 2959614 invoked by uid 1000);
	Wed, 04 Oct 2023 14:17:05 -0000
Date: Wed, 4 Oct 2023 09:17:05 -0500
From: Rob Herring <robh@kernel.org>
To: Matt Johnston <matt@codeconstruct.com.au>
Cc: linux-i3c@lists.infradead.org, Alexandre Belloni <alexandre.belloni@bootlin.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Miquel Raynal <miquel.raynal@bootlin.com>, Conor Culhane <conor.culhane@silvaco.com>, open list <linux-kernel@vger.kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Subject: Re: [PATCH] i3c: Fix typo "Provisional ID" to "Provisioned ID"
Message-ID: <20231004141705.GA2947549-robh@kernel.org>
References: <20231003075339.197099-1-matt@codeconstruct.com.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231003075339.197099-1-matt@codeconstruct.com.au>

On Tue, Oct 03, 2023 at 03:53:39PM +0800, Matt Johnston wrote:
> The MIPI I3C spec refers to a Provisioned ID, since it is (sometimes)
> provisioned at device manufacturing.
> 
> Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
> ---
>  Documentation/ABI/testing/sysfs-bus-i3c        | 4 ++--
>  Documentation/devicetree/bindings/i3c/i3c.yaml | 4 ++--

Acked-by: Rob Herring <robh@kernel.org>

>  Documentation/driver-api/i3c/protocol.rst      | 4 ++--
>  drivers/i3c/master/svc-i3c-master.c            | 2 +-
>  include/linux/i3c/device.h                     | 2 +-
>  include/linux/i3c/master.h                     | 2 +-
>  6 files changed, 9 insertions(+), 9 deletions(-)

