Return-Path: <devicetree+bounces-137542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EA2A09688
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:57:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4688F188DCDF
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 15:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26AC6211A0F;
	Fri, 10 Jan 2025 15:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEvyIBtR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F108420A5FB;
	Fri, 10 Jan 2025 15:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736524630; cv=none; b=Mmh+Bc5C5cMeg39wSg8HaHbcV1AppO3+CfjthyQLNTOmMqergow8vC1ib6kfUzmxoy6eR1DHJ/7EPqkoAv8Z3uIxN7uMJBrJSiU4vKJidiVUcRFsNFouU/IET4vVpf7WPew3fMbMVCYjP3HvUzVhTif6iJdY8FMTpkrokEQVp9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736524630; c=relaxed/simple;
	bh=Zepb3Xf1LqvXqepzt+MhmKK6OG5jBl8iAJLNE0dVQPw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WlgcO/2+cLEBX1uzz6dhTI/hEfztDDJ8rEjVwyu3CVxz/l1q5U3im8AkLOK6XmfmHJloQwTl8FYMdeT0u+2+/eABblV0Wyy5rOJP8WXi3PtjSUr9nYPfH7I8bw2vC4XJp9y/8y9Vj1Klts2srhYmU/S4SnHHqO+je7Pe3LBS3j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEvyIBtR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6422CC4CED6;
	Fri, 10 Jan 2025 15:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736524629;
	bh=Zepb3Xf1LqvXqepzt+MhmKK6OG5jBl8iAJLNE0dVQPw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NEvyIBtRig1NynjUKr+d72gORi8xggQKkHvmTDwaw+mxp6ygcL0HqICFfzPh84x3Z
	 LsJY2EfD8qZPaOR8yGe4MxG4lwmy4wziMf4LNwY33JkuVXED7L2c+QHfb9j8A7Wq1J
	 Tr6CQHqBQxP2XUEimgcLM6KrYb4Q0q/Bndd8xIW1y32DUGOGJwOKAz5EJd+YhfIpIJ
	 XkrhSUFBUN6AG28zCvbRnoJYIymyJY+Pt1P68yuiveXnp2xvXXDS4jf+JkNG7/4Zxl
	 du9aEo6KNrAuqISmeSYHyXfkMRZpVCxVR4ntT3PxWZvGRbF/03xLiO3dZVjvHsn+kp
	 Y5qJP2Z4A3XNg==
Date: Fri, 10 Jan 2025 09:57:08 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, tzimmermann@suse.de,
	jitao.shi@mediatek.com, linux-kernel@vger.kernel.org,
	mripard@kernel.org, ck.hu@mediatek.com, p.zabel@pengutronix.de,
	jie.qiu@mediatek.com, junzhi.zhao@mediatek.com,
	lewis.liao@mediatek.com, simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com, krzk+dt@kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	ives.chenjh@mediatek.com, tommyyl.chen@mediatek.com,
	linux-arm-kernel@lists.infradead.org, matthias.bgg@gmail.com,
	kernel@collabora.com, chunkuang.hu@kernel.org, conor+dt@kernel.org,
	jason-jh.lin@mediatek.com, dmitry.baryshkov@linaro.org,
	airlied@gmail.com
Subject: Re: [PATCH v4 08/34] dt-bindings: display: mediatek: Add binding for
 MT8195 HDMI-TX v2
Message-ID: <173652462808.2939128.70242417447514107.robh@kernel.org>
References: <20250108112744.64686-1-angelogioacchino.delregno@collabora.com>
 <20250108112744.64686-9-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250108112744.64686-9-angelogioacchino.delregno@collabora.com>


On Wed, 08 Jan 2025 12:27:18 +0100, AngeloGioacchino Del Regno wrote:
> Add a binding for the HDMI TX v2 Encoder found in MediaTek MT8195
> and MT8188 SoCs.
> 
> This fully supports the HDMI Specification 2.0b, hence it provides
> support for 3D-HDMI, Polarity inversion, up to 16 bits Deep Color,
> color spaces including RGB444, YCBCR420/422/444 (ITU601/ITU709) and
> xvYCC, with output resolutions up to 3840x2160p@60Hz.
> 
> Moreover, it also supports HDCP 1.4 and 2.3, Variable Refresh Rate
> (VRR) and Consumer Electronics Control (CEC).
> 
> This IP also includes support for HDMI Audio, including IEC60958
> and IEC61937 SPDIF, 8-channel PCM, DSD, and other lossless audio
> according to HDMI 2.0.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../mediatek/mediatek,mt8195-hdmi.yaml        | 151 ++++++++++++++++++
>  1 file changed, 151 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


