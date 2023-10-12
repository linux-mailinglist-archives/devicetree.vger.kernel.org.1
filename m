Return-Path: <devicetree+bounces-8278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 637D07C7788
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:00:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 945901C20DE4
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9BC93C6A9;
	Thu, 12 Oct 2023 20:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rz6sWJJR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2EB3B7BD
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:00:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 137EFC433C7;
	Thu, 12 Oct 2023 20:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697140825;
	bh=8Ceza1ZDkpR+cTaIVe/nQrwJI2ziN4RgO2pzz0SXZsQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rz6sWJJRKoju87QlLNM3OyXCmbrsPnVokgeQV0/3cbTq25Wx24srm7JRBlLC/c5w2
	 q1IeZdmbk1qsg1v/cgL7zAbWt+aFhgFN3I1vamG8MPR8HAaorN1n1csACsFwlUZtkl
	 XbwBoA//zuGdf/vdTigS6auxyAlRVL3aFceJwTNXmTIccRskN3VlT252gK7cGyjHYj
	 AKM/uvjr5L63v9oROapYi3GVMyoBkx9S6AlUvg/2zsU9qEHe3Avzoq00FcOnSmToVN
	 lJjJgt3EXdfpjTxg5cRjpQboLJFzP+Bz0cVTAk6SRsUUhORBtc32Ln3H4pPkFUPErw
	 X2Nc+tkoIjp4Q==
Received: (nullmailer pid 1587847 invoked by uid 1000);
	Thu, 12 Oct 2023 20:00:23 -0000
Date: Thu, 12 Oct 2023 15:00:23 -0500
From: Rob Herring <robh@kernel.org>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v3 2/4] dt-bindings: mfd: rk806: Allow
 system-power-controller property
Message-ID: <169714082258.1587798.5080334695883658494.robh@kernel.org>
References: <20231010174138.1888396-1-megi@xff.cz>
 <20231010174138.1888396-3-megi@xff.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231010174138.1888396-3-megi@xff.cz>


On Tue, 10 Oct 2023 19:41:17 +0200, Ondřej Jirman wrote:
> From: Ondrej Jirman <megi@xff.cz>
> 
> Declare support for this property.
> 
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> ---
>  Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


