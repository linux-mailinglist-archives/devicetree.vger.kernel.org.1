Return-Path: <devicetree+bounces-48454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DEA872217
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 15:56:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A79A91C23089
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 14:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4BA9128392;
	Tue,  5 Mar 2024 14:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzXOVjzb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCB5128387;
	Tue,  5 Mar 2024 14:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709650512; cv=none; b=VoLJ2atzs+BvPYdMbb+WX1pFwHaohyp+eqmd1Xd9CzxjGeebhA5tG7xJcYQrTybypjdjFhPrFsJ4sSYYR69LbfVOt7/OP78wFtQd9TI9Dh8MPoMRHqB9aemdHPbJDe5y3FJTAd+Y7Daf18fLuMUhhMxu8+Mf3Iw8Zod23kbTMbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709650512; c=relaxed/simple;
	bh=xLcFJLLfYX+bTX9wy65XVlGdwDh5qOZJ1CFWePAiFRI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mip+FUxC4twJxMkdcGZQPTTTXINgBB7L4zBBRyO9OuXGjKVZ015jdhQnJR6zluvfosLxKVj0HbAISkX5M1Bdbmr+DjR79sVZCMrL8q4uUJ4qb/V9KYtIDkMrA22IihmrDbBxZT5nS1lAx0+jKXQshnuVVwzpPyMCvlZ113HUPMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzXOVjzb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8103C433C7;
	Tue,  5 Mar 2024 14:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709650512;
	bh=xLcFJLLfYX+bTX9wy65XVlGdwDh5qOZJ1CFWePAiFRI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mzXOVjzbqFiJ80C3EYlM1KWOa8QGpbxKAnUGVaZn5VWPWLISRK2rZstnPP1lDycaR
	 nm1cxClYxsz6r/QyYL/bQALF7ywDLGZ+dY0f028VWwYVWqa8ArwEKm7UMgBkPHI+jM
	 KpnZWO4/EKYaInICE5k8ieF7iTd7DFv18e1XfgyAgcpWF27aUX74ZcQfrye67tRys0
	 VPD1QPd/mfqpj2mo1XCZIRzStNaX3+cC/a4+IEK1emTrn6ITDzjXC5LZE6DhcFemIo
	 47TiQGWEdyjQpQ9n94Q5tnxLYvMTyGTSNC4RrKdp97h7VDZm0Pxuom0ubLzCf5bRB0
	 zemjxa4d8b3qA==
Date: Tue, 5 Mar 2024 08:55:09 -0600
From: Rob Herring <robh@kernel.org>
To: Yang Xiwen <forbidden405@outlook.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, David Yang <mmyangfl@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Shawn Guo <shawn.guo@linaro.org>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Jiancheng Xue <xuejiancheng@hisilicon.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: phy: hisi-inno-usb2: convert to YAML
Message-ID: <170965050914.3339459.3878039383818291915.robh@kernel.org>
References: <20240305-inno-phy-v4-0-a03204c9cf1c@outlook.com>
 <20240305-inno-phy-v4-2-a03204c9cf1c@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240305-inno-phy-v4-2-a03204c9cf1c@outlook.com>


On Tue, 05 Mar 2024 10:19:47 +0800, Yang Xiwen wrote:
> convert the legacy text binding to YAML. While at it, remove
> "hisilicon,inno-usb2-phy" fallback compatible.
> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 91 ++++++++++++++++++++++
>  .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt | 71 -----------------
>  2 files changed, 91 insertions(+), 71 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


