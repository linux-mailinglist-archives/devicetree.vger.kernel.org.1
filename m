Return-Path: <devicetree+bounces-156610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A44A3A5CD09
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 19:01:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 631B1189E7CC
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 18:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F3D0262D13;
	Tue, 11 Mar 2025 18:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwEL0NN3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269A2262D0C;
	Tue, 11 Mar 2025 18:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741716083; cv=none; b=W3bc3FZfEA5Ty4FEsDnIi9qujLQQK3j+tlttKInUavG0dZAg8qv9YOuYM2YykulwwIHviTndTnkdLfOjT+Eb5kU89g8ApHoiwlOo4MkJFy2+KJvSKsAG/SZCtL0AKWI/1FRUibbqptdWZtlXtZzm5D5bhi/A3lwK11xwGLV7jLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741716083; c=relaxed/simple;
	bh=PmsWGzEFOKCyFPR1Uixs4Qu1Kcuqkl/fBocf7fZqkkQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k4nq40ZjxhiPIGiD1YdO/+PkZqMYx7w5VvvQXirxXzuDyHPdquI0q+/+hwZH9XVixOgrdW9lpCz4RuCsPqaoFCVUKTuyoKe8fe/a119duUvr7rEWjnKou5x0ErsYCx8weyySJcBWZDLUHQaBKocbR0VDAtQRL0mtTBvFmqVCbms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwEL0NN3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6073DC4CEE9;
	Tue, 11 Mar 2025 18:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741716082;
	bh=PmsWGzEFOKCyFPR1Uixs4Qu1Kcuqkl/fBocf7fZqkkQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CwEL0NN3K8DSVkgeZDjipc3hUYpN1X6lZo3VfvjeOB0U0evh0RKTLEUTwR37pf8Jw
	 vvFXeeaIsdCaEBc5KJnHtX7g4EIjvEoucNFWlOriiYiVXG1OV5sfG5k4WAfrby7ozY
	 RbhGvCpACOz8MSDNr/k1jLL/xsNaempnJ7akMooxgziURsyHdYlYysqiUKrXYNvvMM
	 jJKaHHOwdBmkwGsabxXxDnBM73JBxWXaSWu/D92DNJdaSuo84yaW+AtIIxmwH6vOrJ
	 Tr08qroiKB8onuaOU/VL9FY2Pk0S/XvEW1iUS98qWocloIxIk0rsfBGpHcN3sKBRcC
	 KG7HechRpfr3A==
Date: Tue, 11 Mar 2025 13:01:20 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: trivial-devices: Add Maxim max15301,
 max15303, and max20751
Message-ID: <174171607965.3892098.11210630773333963063.robh@kernel.org>
References: <20250307230907.840875-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250307230907.840875-1-robh@kernel.org>


On Fri, 07 Mar 2025 17:09:06 -0600, Rob Herring (Arm) wrote:
> The Maxim max15301, max15303, and max20751 devices are all simple PMBus
> devices already in use, but have not been documented.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Applied, thanks!


