Return-Path: <devicetree+bounces-240579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AE1C72E5F
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 09:34:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 442DD4F01A3
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 08:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22FBF3128AA;
	Thu, 20 Nov 2025 08:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuhsLNFa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F126F30DEDD;
	Thu, 20 Nov 2025 08:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763627103; cv=none; b=a/ap7+SLTp6mERUZBZ/oxIh3uhWSkdEsDH1stWCByr0+iYlmCIXBUvpG6Gg346XjH/tQshV3vnVOKxGobbWZLaFqZekyGpp0U7q/pxtjmpOdl791+1YJGB/gl/DCx832Xx0j4wL1kMzM2PgBfqYsDR/4iPPn7IIDaVkbuapFhjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763627103; c=relaxed/simple;
	bh=1Xn5Sh69vBo1kPivyK9OnESXDYMQbUtggKYy7JqDebE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=adcfkwmYxfIympi5/j0lH/iDmMgEiJ+5B1SX7DBJUy/stQYU7ji8cqkpdxddoT0ZGpNcnYWeBnwShdwsPBNFMVFQuLNgY0R2izdPnusr9S3dCtLI78F2qsqAMvf/sl5lzxRp3bGnX6Cchc6fOJTR3FxYYNm6/8tAvdzQ9qUIV1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuhsLNFa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA62DC4CEF1;
	Thu, 20 Nov 2025 08:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763627102;
	bh=1Xn5Sh69vBo1kPivyK9OnESXDYMQbUtggKYy7JqDebE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RuhsLNFa7vN+h7eI3AjwM07CoSJ8MRL3N2PTXww0KYWe9UDS+Xj0fpCna1nnGJGpH
	 +lj6AhAURxx49kXo8/crWpZuQfbQ9tykOuVd85r9AKuP2dxV9v89QMG64F85QDDhQd
	 cnrL+sJpCIhHV6ImSGnOpjLz06vrhNs52c3wd8vxVzAhgJ0wXm6hT3p/BTzABpjv3G
	 ve7XdaMM8Q6+IvYsr90YyI4m4QUicC17oIpd3MQUtkx9TAoVOnmLJ/GThXAb+5P1p2
	 dh8qAfQC1TThqDOnXHqDJDjlbrBPbFxwnSk0ndaRwKaf1ci4VYy61HJpjY1DlbmyC2
	 usQmT2GXsrZ1g==
Date: Thu, 20 Nov 2025 09:24:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com, 
	trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: cpus: Add Qualcomm Oryon compatibles
Message-ID: <20251120-tacky-perfect-barnacle-0fb27d@kuoka>
References: <20251119-oryon-binding-v1-1-f79a101b0391@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251119-oryon-binding-v1-1-f79a101b0391@oss.qualcomm.com>

On Wed, Nov 19, 2025 at 09:50:53PM -0800, Jingyi Wang wrote:
> Previous "qcom,oryon" is too generic, add specific cpu bindings:

Why is too generic? Why gen1/2/3 is not generic? Both sound exactly the
same for me - arbitrary number incremented from 1 does not make it less
generic.

> qcom,oryon-gen1 for X1E80100, qcom,oryon-gen2 for SM8750, qcom,oryon-gen3
> for Kaanapali.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

Best regards,
Krzysztof


