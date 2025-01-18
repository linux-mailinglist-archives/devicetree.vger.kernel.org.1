Return-Path: <devicetree+bounces-139458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 42606A15D58
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 15:37:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EF401613A4
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 14:37:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6858B18DF65;
	Sat, 18 Jan 2025 14:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHwCdDvN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E398184;
	Sat, 18 Jan 2025 14:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737211069; cv=none; b=nnvglD6MCt/EoihYGOlEUUghlMvGaGqR5nRXlc+N889yBMDdnOmX03aunwHm1RqNAfvNhNbbsi6LrcKjOJLIs2r52QnfvCQSZAaEMHG61WgswyUsnzXa7glAuAto12euRjpRQgDBW4Bs2tYtbu5FVg+nBTYL3oa+zFZBzSW+2HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737211069; c=relaxed/simple;
	bh=L72H64JQO+JOMYHDJE3pyxhswNH2Hie+rT2+Zsa0jps=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o4sF6SpQwxqptqqowakWH3uuJANDNZjDGfk65slkmSOEez/wE7mNJU+sUbdncKjATj8wGXq+gdohRYp31qjb0HVA2jWxqHKLfUFIpfYM1NLz26mbzFubgxL5ey8euLGyz7QuOfCuUdKIwWNOdCcMwkcf6wGi6ZwNjo2sQJhhBDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHwCdDvN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEB92C4CED1;
	Sat, 18 Jan 2025 14:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737211068;
	bh=L72H64JQO+JOMYHDJE3pyxhswNH2Hie+rT2+Zsa0jps=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iHwCdDvNDLOF8xkozd0+ZKt0CruK+PLCV+Ix0B0W3rB//W8K2/S/a+/HYg5aDIS0I
	 TNYqG0AqWVKqapIHPXhAJdLpsqVRc1tKJGh10EbSvLbTcQ9JO2f1TVEzwALMXpWZlu
	 auBaC6hUpaMCcP1Yhj3BpE7jTtSIkvRLFMpHyPSO6bZgeehxvn9oLHxmC2+i0uITg4
	 bUk7yY+5yfE0IFhO2voaSM6GycuvkGKxhyQXIkUUZO10MWulrD9wyvYNSAZRPym22D
	 4plJei9MkpXhUfk0GxfZtw7TVcU2kjAhjUdPN8yq2u5qShmHoJRrK/k45JTbo6iCk7
	 SAPYKwiDYvgGg==
Date: Sat, 18 Jan 2025 15:37:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: display: panel: Add compatible for
 KINGDISPLAY KD110N11-51IE
Message-ID: <20250118-tested-smilodon-of-exercise-65c24d@krzk-bin>
References: <20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com>
 <20250117091438.1486732-2-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250117091438.1486732-2-yelangyan@huaqin.corp-partner.google.com>

On Fri, Jan 17, 2025 at 05:14:35PM +0800, Langyan Ye wrote:
> The KINGDISPLAY KD110N11-51IE is a 10.95" WUXGA TFT LCD panel,
> which fits in nicely with the existing panel-boe-tv101wum-nl6
> driver. Hence, we add a new compatible with panel specific config.
> 
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---

Nothing improved. Implement review.

Best regards,
Krzysztof


