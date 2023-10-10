Return-Path: <devicetree+bounces-7349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 731487C0252
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:13:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A8BE2819B4
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:13:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D4E2FE3F;
	Tue, 10 Oct 2023 17:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uU+4dcVj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606062FE01
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 17:13:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2145C433C8;
	Tue, 10 Oct 2023 17:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696957994;
	bh=CpRi1qWIPg1zI8cNlGAKUvwmbroDRNWSt7h1XCOInNQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uU+4dcVj7euRRCf/2o4v/4SBVoKBPj+tUGSsLawdSANa7lZyo7nthdv4WZbEeXlLa
	 ptTRCLPGDW9v7EdysZ8o3NrPBT6FN4VfmhYsvpudfVTt/q2rDfons9zHVvRSyrNtjE
	 n5QOHcvL2c6cqluwD4tiQoKujA0hCEdwOLteX9/u16i7J8hGLd8Bqej6hvInuannUP
	 wXSxnOtzxBnL6wgnHGRkwNMMnkqDpPAGLay3P0vh+iSDNDG8B7W0cHHvKynAtPN/zx
	 ynmA7pa6bgoFna7SpzNKM/qFHT6SA7E5BMqp/UW6lWRK+Y/df5R3P0jdePxKCOUVEz
	 FBD/0I1wS5/Ig==
Received: (nullmailer pid 1067723 invoked by uid 1000);
	Tue, 10 Oct 2023 17:13:13 -0000
Date: Tue, 10 Oct 2023 12:13:13 -0500
From: Rob Herring <robh@kernel.org>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: mfd: rk806: Allow
 rockchip,system-power-controller property
Message-ID: <20231010171313.GA1065385-robh@kernel.org>
References: <20231010074826.1791942-1-megi@xff.cz>
 <20231010074826.1791942-2-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231010074826.1791942-2-megi@xff.cz>

On Tue, Oct 10, 2023 at 09:48:20AM +0200, Ondřej Jirman wrote:
> From: Ondrej Jirman <megi@xff.cz>
> 
> Declare support for this property.
> 
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> ---
>  Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> index cf2500f2e9a0..e8c9f17f6ea8 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> @@ -29,6 +29,11 @@ properties:
>    '#gpio-cells':
>      const: 2
>  
> +  rockchip,system-power-controller:
> +    type: boolean
> +    description:
> +      Telling whether or not this PMIC is controlling the system power.

New users should use the common 'system-power-controller'.

Feel free to mark rockchip,system-power-controller deprecated and add 
'system-power-controller' on the existing Rockchip PMIC bindings.

> +
>    vcc1-supply:
>      description:
>        The input supply for dcdc-reg1.
> -- 
> 2.42.0
> 

