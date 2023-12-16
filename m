Return-Path: <devicetree+bounces-26051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3795981562C
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 02:58:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E014B1F257FB
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 01:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 969B6139E;
	Sat, 16 Dec 2023 01:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8RijpzK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7175F1E485;
	Sat, 16 Dec 2023 01:58:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C65DC433C8;
	Sat, 16 Dec 2023 01:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702691888;
	bh=OoijHobpoqt+JTfUwOIcCNQhL26zyoe6cQqVX0CFqF8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S8RijpzK8LHo/DGSoSFKxy+J3F5xPvw0p9OaiRyYYm5FW0DcozzrUXI7vmRPcKGtN
	 nYEMJxOQVN1ztbD3CJ8CtNjmjFuAkmTYN9G/XBq15RRiZsdLpqtsFqRza0uMhi8iyR
	 udvijrqehRiHbwWq1luqSOdpf4krujE/evDaNhUNbyRuHtCzFDSnt1NIIy1FFOMZ+d
	 lx4L4ScTj0ddlCE4wyCdTTsZSWTJ33xRwbXgoUfOBC3zr12evBQ7vebmhmEHeV0i4r
	 690G7B4RNoSJTeRj9l22pbrCDPbWlC4NzYWJxAaUr/U+ejvb7IYcnnmZDKIvgAe0vE
	 Um4IcVSbRhzEA==
Date: Sat, 16 Dec 2023 09:58:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: David Heidelberg <david@ixit.cz>
Cc: Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH] arm64: dts: freescale: fix the schema check
 errors for fsl,tmu-calibration
Message-ID: <20231216015802.GO270430@dragon>
References: <20231215230743.86194-1-david@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231215230743.86194-1-david@ixit.cz>

On Sat, Dec 16, 2023 at 12:07:35AM +0100, David Heidelberg wrote:
> fsl,tmu-calibration contains cell pairs (u32-matrix). Mark them as such.
> 
> Use matching property syntax and allow correct validation.
> 
> No functional changes.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>

Applied, thanks!

