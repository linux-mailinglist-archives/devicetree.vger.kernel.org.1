Return-Path: <devicetree+bounces-198651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC731B0DB07
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 15:38:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1511EAA6F64
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 13:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 567852EA74A;
	Tue, 22 Jul 2025 13:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPw/Qnsz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268912EA73A;
	Tue, 22 Jul 2025 13:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753191463; cv=none; b=r1Sh0CPE9sCDjgwyAydYU2QOlqr9LYjvABHE5XTN5/NV+EuDoXnm7L9DRQDyPUaCEFmvn3eYrwYDBERoevxZaw1PyqiRrB/XmTgzYYWclGJnmYR/Ualk2hF+IxHuxiwXjNUWc0eOckfIAVfP4AggTYa/7d6XStbTGl3agth0kdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753191463; c=relaxed/simple;
	bh=19yBFzDmu5QiQTTTGUCqhuUWVhFvwAFT+PqajB6IGqo=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=X44qxu9yvnFS7hltcgvg90esjEvgJtmyh+NTxfPJE+XiV4f38x5v3yKMAiOvnStIH5elMrNb+4pg1lvT9SkLfOsVbZkpzc3p0FREHlAi5XMRPwh+3f2wII+SfWYl9nhJC53tqSkjPNXBJr+heTDxgxSw4SnVVyhCndntG7dNPao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPw/Qnsz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 489B3C4CEF5;
	Tue, 22 Jul 2025 13:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753191462;
	bh=19yBFzDmu5QiQTTTGUCqhuUWVhFvwAFT+PqajB6IGqo=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=CPw/Qnszvq4+yQ3ZPOz6ILa0ml8Og4sZI8c6MbhdqAr5DTZSOJJWw/yuazrjnRsOi
	 xOlMXoVe22NsvkEM1Klq6XcJ++E6T5Jd3Lb9GCEvvauorJrnfOZvHnGS9XTZz54yxc
	 Tn/yyASb92EiB+cVyEGxWtnC0yB/0jds/4+EZNofShHYsZ656doefTX7sf8IAUmwzg
	 uHnXOfldzkFUwqdAW1aQzlAXScNlUrSTJs0tI2VQhAw8hYvLp51WRAAdi7g3r+os4i
	 P/hIJ9SWA5j5T4IDzsg82DJ9J4qcSGpgfr8IM7AWdLdHaE5l5ve1gj9b+sMh4LpB7j
	 F28RtDCqPprjA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250701063636.23872-2-krzysztof.kozlowski@linaro.org>
References: <20250701063636.23872-2-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: marvell,mmp2-usb-phy: Drop status
 from the example
Message-Id: <175319145991.114152.16396253727506565143.b4-ty@kernel.org>
Date: Tue, 22 Jul 2025 19:07:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Tue, 01 Jul 2025 08:36:37 +0200, Krzysztof Kozlowski wrote:
> Examples should not have the 'status' property and 'okay' is anyway by
> default.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: marvell,mmp2-usb-phy: Drop status from the example
      commit: a91ec5efde530747c23f3182cc5b53ba99b57051

Best regards,
-- 
~Vinod



