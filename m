Return-Path: <devicetree+bounces-248433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E460CD2B1A
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 09:50:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AF34D3001625
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 08:50:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7952E2E54AA;
	Sat, 20 Dec 2025 08:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQ7WTYEz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD3D4A35;
	Sat, 20 Dec 2025 08:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766220650; cv=none; b=tY1noGgT9eQff8Rfwcp0KNLLNLDT8LFfh2jJSgrtseRmVDKSMfv9DQMDnAigMEVBjUgNcFfbJ8djTodemm+dX6/NZchSRjnexD5RJxJo8boibqn+nfAX5Cfs7OFTTHdCH1YeyLG/EI4Hc7Vk7mbCSaJmQ3C0RgyDVguF1GP8vDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766220650; c=relaxed/simple;
	bh=KMGRJxlzAk+Zjh9XzcPMcNYeP3+MhI920DxzhKPK+7E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hlUi4LRfXCY18t/H4sX+vzGx9NfNRdbdLW2ljB7zZSTQ4LZB83T0PZSwW5tSnLrVVMr9Y/lbRRO8toFc9qJBhBmKcEhTKHzIj/7NOselgihjWHZQnydyJAKfjeO6ep0kgseJrP8qVmjlHb8jalUySGdK9DBrEvI9/RyJ1QcgL1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQ7WTYEz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7708C113D0;
	Sat, 20 Dec 2025 08:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766220649;
	bh=KMGRJxlzAk+Zjh9XzcPMcNYeP3+MhI920DxzhKPK+7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NQ7WTYEzzfbjDdoO/QuQaA0CK/JT2Lm2UQS9zvmWR2AtyVp4pmq5AMf1JzIHs4OdP
	 daQifxpDMQrA8O4Bd7F3DqI2swCOLQ9LSpTH4kuu+NRYmnkAqGf3Qe0k5F2BxqNCU+
	 5q/593xFifVpWI9niLJGPxwjbQndnhwBrfeI0VvlqJf/DBQxdkNNKoXmqC7vfY6Ywd
	 csPVH2wFeZeOHTmFYsUyFt5dDRn4NEuDg3gyMptCcYJjwe7jufuJESFRrmc72EdJ0y
	 Zdq8MjVCdQZQTARx5KhY3rdPP7cPkjEa5lhg/lyI0Ch/PNKYbc39hBDbI1kx/lhJAf
	 oZhwGQ4TI933A==
Date: Sat, 20 Dec 2025 09:50:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: Add Bitmain BM1880 System Controller
Message-ID: <20251220-savvy-ninja-sparrow-ebfcbc@quoll>
References: <20251215212639.3320085-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251215212639.3320085-1-robh@kernel.org>

On Mon, Dec 15, 2025 at 03:26:38PM -0600, Rob Herring (Arm) wrote:
> Add the already in use Bitmain BM1880 System Controller binding. All the
> child nodes already have schemas.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/mfd/bitmain,bm1880-sctrl.yaml    | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/bitmain,bm1880-sctrl.yaml

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


