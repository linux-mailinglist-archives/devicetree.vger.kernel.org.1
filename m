Return-Path: <devicetree+bounces-255746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 927BDD280BA
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:24:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 96E78309E889
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E5AB3C1FEC;
	Thu, 15 Jan 2026 18:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGk1+rC2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 884D53C1980
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768503272; cv=none; b=kHPAT9wKmoNeg/BZOqLpg0KQhxgNmBY3kBEHoE+l7LLD4G7wxlRLKglHMB/6MdZTD0GN9i8pYDXAaF2Wy/q1FhK/yQg/Xb+mvHVGsazv9yhykFO7iTmgxkyH2t0de2p0Gg1LS4Xa34XPLJIvLKee1PR7EPn3y5QYqFzjZTXB750=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768503272; c=relaxed/simple;
	bh=98e4lR5ellL77qMHm5OIbYjTWV660uTxn/sNbZ2b52Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UadVbROpzh6EMT+MbohvoYs/GgiIyRCbUtrMCcPoR4R4ZkxGrC9BFH6KZ2R+pT0HtIllVNTjxna47DjX0HmWYotOrxl8prGsHG5sPnV99kmOWbsUwHt2GAb5Pp/00v0+L//lLkHu3ZU3wDpR4GaSWVP+k9G5D4uO1rE/6wj1TTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGk1+rC2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB394C116D0;
	Thu, 15 Jan 2026 18:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768503272;
	bh=98e4lR5ellL77qMHm5OIbYjTWV660uTxn/sNbZ2b52Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EGk1+rC2qRpdcWgov11G4chGSoaTnaT3BIpo5z9ahfNMVGujIk2F7pRSorjzdkq76
	 deXlsZp+422uJOOrISTDod6mvnKkO7cpFinQGB4jyW/TSP9IY9B9hFrKrbIV+0qaQC
	 J/FfLTauqBq4HpE///s6e6VWzOQUAAMrj9gOG3RFET+Q6RlIEKYvfaQphrn8BUxn/R
	 35jguhVdQoG8JPKyfP9v0ltLsjBBker5IT2RFgVlcdcWik+QwSIElPTXr+FdFA/ZBQ
	 Q1QG6PiTPEuCs22vWtwTiyKGYvQao9Fh7fhl+/7iHJPGbrktRTL7Y+ltjooBxbijs5
	 6Jw43PLqKHwRg==
Date: Thu, 15 Jan 2026 12:54:31 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: krzk+dt@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	dmitry.torokhov@gmail.com, jesszhan0024@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>, simona@ffwll.ch,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com, heiko@sntech.de,
	neil.armstrong@linaro.org, aweinzerl13@yahoo.com, jagan@edgeble.ai,
	conor+dt@kernel.org, mripard@kernel.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 4/6] dt-bindings: arm: rockchip: Add Anbernic RG-DS
Message-ID: <176850327047.1003915.10842845210082585223.robh@kernel.org>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-5-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113195721.151205-5-macroalpha82@gmail.com>


On Tue, 13 Jan 2026 13:57:19 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for the Anbernic RG-DS.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


