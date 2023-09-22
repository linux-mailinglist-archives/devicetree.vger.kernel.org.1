Return-Path: <devicetree+bounces-2619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 981337ABBEA
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 00:41:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 8FA441C208F6
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 22:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3EFD48824;
	Fri, 22 Sep 2023 22:41:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A439747366
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 22:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 179ADC433C7;
	Fri, 22 Sep 2023 22:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695422469;
	bh=hPLyooGEXjDQO7zmx/azSWXqBtNWU5gcxUV/qloDfIU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NMis+nyuHAS+i4eWThT+eJqLZhTdeKA98jZ2F1VHzjUTb+rZjdae/8GHFw1FEysYz
	 QR/19Tp2FJMPBgFyFy/+W+2kIDRG0up88Q2nk5VQnZAs4UOzVz8Ah69D4eRhJuVWc4
	 nDhE+/iu1ThpYrfYFLQMehuT6I9ohkaV/yPYw/AOILWbzQA33HZu0KlrJaS5L2xAAi
	 Ki7+YXfRQ6viWgoNClEnhEFzzLrC7CwbBGaj4eKKGNsdE/dmn2ywJwnaQjqwasmwVB
	 wRfNNxKfP97wZdjx+JRWqOZXlVXWT3tjvvPWjnlfW+ueHX7c7ypRjoidsBMnM2ukv9
	 ljzVtmYJ+4eZA==
Received: (nullmailer pid 4054192 invoked by uid 1000);
	Fri, 22 Sep 2023 22:41:07 -0000
Date: Fri, 22 Sep 2023 17:41:07 -0500
From: Rob Herring <robh@kernel.org>
To: Ravi Gunasekaran <r-gunasekaran@ti.com>
Cc: devicetree@vger.kernel.org, sinthu.raja@ti.com, linux-arm-kernel@lists.infradead.org, nm@ti.com, robh+dt@kernel.org, kristo@kernel.org, linux-kernel@vger.kernel.org, vigneshr@ti.com, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH 1/3] arm64: dts: ti: Add USB Type C swap defines for
 J721S2 SoC
Message-ID: <169542246631.4054136.7526733156419705188.robh@kernel.org>
References: <20230921100039.19897-1-r-gunasekaran@ti.com>
 <20230921100039.19897-2-r-gunasekaran@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921100039.19897-2-r-gunasekaran@ti.com>


On Thu, 21 Sep 2023 15:30:37 +0530, Ravi Gunasekaran wrote:
> From: Sinthu Raja <sinthu.raja@ti.com>
> 
> Lanes 0 and 2 of the J721S2 SerDes WIZ are reserved for USB type-C
> lane swap. Update the macro definition for it.
> 
> Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> Signed-off-by: Ravi Gunasekaran <r-gunasekaran@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-serdes.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


