Return-Path: <devicetree+bounces-194264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F80AFD7D6
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 22:05:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7A763ADCBB
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 20:04:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF7921ABBD;
	Tue,  8 Jul 2025 20:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNSjpre9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B442C224D7;
	Tue,  8 Jul 2025 20:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752005095; cv=none; b=MxvHDJxgTu7fW1lMr0cdcPFKKFDAQBxtoXxmEitDJr/CfcvkVj2IuvLT/IRC/L5tOZs9Fl509q2+uKNxU6AYkR5meOyjkPObrzgwizbpMIwKcCrW0Vy9SAoUqYFCCfSGA3BY3QqCs2pevknUW8aNeJVkg1seFmjNY4f26yrxr0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752005095; c=relaxed/simple;
	bh=UAxdp1DGkpWzNRjNigWBfUd83bXcPNzljSWxeW6F6ys=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xa/dn+F8FXyebndljXqXCbbiZqvTleN338wnvHQK2SYFfgLKUCQTmR4fBEZs1bFYBln17fKkH5Y/OwxZJHA8A+HX87GIgZKJqiOtHAZ3hEEnf5JD0inFqpPULyZdimERdpXX3p24t31JQ6+tewoUvExM0sGZ2oQiEE4URxELj2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNSjpre9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C11CC4CEED;
	Tue,  8 Jul 2025 20:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752005095;
	bh=UAxdp1DGkpWzNRjNigWBfUd83bXcPNzljSWxeW6F6ys=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tNSjpre9hQm11qlU7fwO/m5yuK6s++nUu913KGSodJ1VVbBXIqeDLnEui01mJtsLw
	 rpEL7rAhofOjBlC2nqbcCvhI7CEpbr09N/gy9P8T/h9b2qyXVLc++06Ao7a5lv2yoY
	 BVyJN9oN4tUu9wegJuCgyEqaxWaGjka3IiYOVh0kwM9BO0f/3ezO4lVPK4tg/luqyb
	 ZN+UBhGPaLnWpDAfWKTDr8qH33FTfMtUwcx8zRB7UE0CdqWhmguyr04jIRB4bUhItN
	 FJseQLrpgyIyHW1aPKEvTIbsHFg6W05WkaFkxbRlFVK79+vS2KB6SQSkNy0xeFUMgN
	 si8FA1sqFv9/Q==
Date: Tue, 8 Jul 2025 15:04:53 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, neil.armstrong@linaro.org,
	mripard@kernel.org, linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org, hjc@rock-chips.com,
	quic_jesszhan@quicinc.com, tzimmermann@suse.de,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	nicolas.frattaroli@collabora.com, andyshrk@163.com,
	andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
	conor+dt@kernel.org, krzk+dt@kernel.org
Subject: Re: [PATCH 05/13] dt-bindings: display: ili9881c: Add Bestar
 BSD1218-A101KL68 LCD panel
Message-ID: <175200509348.879110.17260989179996281641.robh@kernel.org>
References: <20250707164906.1445288-1-heiko@sntech.de>
 <20250707164906.1445288-6-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250707164906.1445288-6-heiko@sntech.de>


On Mon, 07 Jul 2025 18:48:58 +0200, Heiko Stuebner wrote:
> Document the compatible value for Bestar BSD1218-A101KL68 LCD panels
> that are based around the ili9881c controller.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


