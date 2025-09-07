Return-Path: <devicetree+bounces-213955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BECB47A48
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 11:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 366853BD8FA
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 09:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D1E622B8D0;
	Sun,  7 Sep 2025 09:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbWI09MC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB42922B5A3
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 09:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757239067; cv=none; b=aeuaTt16Ie+t//vM1OnQjahLgk+GWXUky19ygge9pucEzwfj4dO6PmUsVAn2Bh4G6tpwyIg6orpZi2vkNMqv5+xQgdGak5s83ri2El/7hKK1rbWEIH7huSmcbZQZQw7YnUPJx3IAnA1Ju2uvjvxJzxOSIpvtdABrqYXhjO42Gg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757239067; c=relaxed/simple;
	bh=eLGIZOEFb9vxWnPRRgiLDPKHtC/n3Xap89Q1mpPcW3g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VErQchz5TABZk6n2hLgERnQppezfB1+U9EgnUyJZb14bnDHKAF+/H7DJrxH7jDy1TBkmohvskkaaXaUAscS1rWwP8rWTEIlzgTQfU6lvzxsDROnVv8vj3Z+ezlBn/WQr2ra0/19q97qyfsZx9ddOFC/dqubNxa/dpIlDYYL9Gzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbWI09MC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC039C4CEF0;
	Sun,  7 Sep 2025 09:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757239067;
	bh=eLGIZOEFb9vxWnPRRgiLDPKHtC/n3Xap89Q1mpPcW3g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZbWI09MCunKva4jQdCLdGxY0SBtBEMxePwwhgG2h2P4FWIW14rk4hRN7/qB0mTZhI
	 GW+4G+/rJk+MKAAuamRK133wdAcs56ITplRXTCUv3p6T0yBuxkLNeXLpRtc/ctf4tL
	 575jWeCMSp8+i3B+lzKL+Splichp5DGbZ8XnaA8rWjKEJmSWGdJqpli/eyTadUjk7g
	 0cmUM9SrW22AEPpW36oMgAXp1cOUW8+7Kt9Zj5y58l9wtNyS9vllc1zQ9KEg03V/9C
	 iF/d0Ihr12KsdCCB2pUbwjNOmVrTWndQadJQuvmc9AAs+657v93z5W7jegwuTg83lM
	 CZrySchU/nFVQ==
Date: Sun, 7 Sep 2025 11:57:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, Frank.Li@nxp.com
Subject: Re: [PATCH] dt-bindings: arm: cpus: Document pu-supply
Message-ID: <20250907-tactful-blazing-urchin-9f8bd9@kuoka>
References: <20250906231930.461022-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250906231930.461022-1-festevam@gmail.com>

On Sat, Sep 06, 2025 at 08:19:30PM -0300, Fabio Estevam wrote:
> The i.MX6Q/DL/SL devicetrees use the 'pu-supply' property to describe the
> regulator connected to the PU domain.
> 
> Document the 'pu-supply' property and set it to deprecated.

This awfully looks like typo of cpu-supply, so I don't get why you just
cannot fix the DTS?

Best regards,
Krzysztof


