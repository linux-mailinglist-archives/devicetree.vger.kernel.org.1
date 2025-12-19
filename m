Return-Path: <devicetree+bounces-248362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE8CCD1D95
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 21:52:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B3759302C71D
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 20:52:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E91DA2F8BF0;
	Fri, 19 Dec 2025 20:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIcAEJSj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFD92EB5CD;
	Fri, 19 Dec 2025 20:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766177561; cv=none; b=A4WgLvIf6Ahz+nQ41Fq8S61EYHCe+dXgD+B+opledQI7rSJBAGIdPfgsiJD57HuXDABFK69hRC3LDxlcxu58LXQEffOz/+b8ahVkqmPB+/cbsZ+yLFOca7rHGb80khimadMnldWOfa7hD7grQ306WablKdQejBG6MhZ0gRMCZb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766177561; c=relaxed/simple;
	bh=HyEXNSVwwJgnE6ov3GXL7SMN9dCPD1vkRVDgcRsTz6I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sxkIEyttFtpN3nnHW0LjYHueVKXvXqfFBQgRs1BXSra+02Vy8MW6fdy2U3KmD8h6k7fxu4qmVd36iBR5NYHh3fV/QM+aYyCU2QGsHY7KIrXWs5KWKhIYQyWsj13UU9cDuqkOcMOGSFsBzyiCf71B863txQzlV6Zr3WABbqhwwEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIcAEJSj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D428C4CEF1;
	Fri, 19 Dec 2025 20:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766177561;
	bh=HyEXNSVwwJgnE6ov3GXL7SMN9dCPD1vkRVDgcRsTz6I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RIcAEJSjVpkzzY619Hqed58ruVEMCqaKwc3IBfQ9EJVEYPoBUiPM+e+8S5gccITKh
	 rn5WIMEco3yV4E36pSScZznRkkrIBSurURccCp89Y+QNC1xKqs8+v/tmdhqW2Cj6bj
	 MT6bdZTt/GnwLB0zy5s1CX/pnZjKhCVo2FKVrXVDtqeprDexXhzquq2sxHavRLtVBR
	 nJCrq4aJvTbSzGfqwoDD6XYhEh4nruDeq6yfft67YHgW3W0ax7yu6slAEqD6LTXSkV
	 6y1NrQHjzETgbPzoqFlSXIDgU/dv9JKBr+DArCYVQUt++Ke6BxA2rRYkImgryjWK8+
	 CCdm7GLunJonw==
Date: Fri, 19 Dec 2025 14:52:38 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: linux-mediatek@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	=?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, kernel@collabora.com,
	Guillaume Ranquet <granquet@baylibre.com>,
	linux-arm-kernel@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v2 03/12] dt-bindings: phy: mediatek,hdmi-phy: Document
 extra clocks for MT8195
Message-ID: <176617755777.3913354.15520009809669313727.robh@kernel.org>
References: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
 <20251217-mtk-genio-evk-hdmi-support-v2-3-a994976bb39a@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251217-mtk-genio-evk-hdmi-support-v2-3-a994976bb39a@collabora.com>


On Wed, 17 Dec 2025 11:19:02 +0100, Louis-Alexis Eyraud wrote:
> From: "Nícolas F. R. A. Prado" <nfraprado@collabora.com>
> 
> MT8195's HDMI PHY block has 4 clocks instead of just a single one.
> Describe the extra clocks for it.
> 
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> [Louis-Alexis Eyraud: addressed feedback from mailing list]
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>  .../devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


