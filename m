Return-Path: <devicetree+bounces-137480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02408A0929B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:54:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AE3E169E87
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F25210188;
	Fri, 10 Jan 2025 13:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWqV6/vE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DC3E210183;
	Fri, 10 Jan 2025 13:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736517261; cv=none; b=iwbSBhn8D0Xyq/JA2QvLmKCAhcDiTYmZeVmoZWanX5Mjn9m8YK6fZ7ES+My70QWrW4NAqg8k/+5FLbFXRwGaKN7VO9vOKJbf1CXFlNFgIn7NFhTsN/xzviMTLGrDqnnqVGjpIkTNCaLU8TX3cMMZFNoaaqgKCJ1+woxIH0Yd5RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736517261; c=relaxed/simple;
	bh=c33XsyMYg3lCZo4jpADv7ET+BOVPEFjhz4yMn/jPl1A=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=e3TVCg8gSLsPLbKI2p4QXrBGFR+YnbuXS8oLeHeUE/EO6djORWrWRZcKm9rTZgIqbSF/0jFQWklDCl1ZLPHtkAAXoJTz4tOgD9lAfw3r7GaunWiqcrKkbvzjGLjPlkPBEwubBZxIedTRLzZ3wZFao4xdPBXdTd1jJjiYuycIq44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWqV6/vE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D91C3C4CEE0;
	Fri, 10 Jan 2025 13:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736517261;
	bh=c33XsyMYg3lCZo4jpADv7ET+BOVPEFjhz4yMn/jPl1A=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=KWqV6/vE7KQCJgNFRcquCgrCjHRe/7On429TF1/YwgJ8uyH8LgGnzoxu9h2hPB+np
	 eV/ArpXirzOXk2MpJjQ5k2WU4XMN2dCN1XuMVoBPAKP83DlDEDkR2NThlO8HSZDfVW
	 gA5KluAc59Ylpw0SuzcNDGBrYLBFUSQgkS0qaYo1N/3f+8+p2K0uIW4KkrNMi2w/oy
	 xW2oqZPse7R8vvCQYlX3fQDuPhwc4OH0wc0+4cIe13QQwrz7xXQwh7alaDcRZLcsUR
	 2eEEyMV/pjQr7ARpnoAagABg7tVVjjDWNP1H9LlIK8PpZRx/wKuoR4S0PLhydXrnA3
	 DEVsj+JcmLydw==
Date: Fri, 10 Jan 2025 07:54:19 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: matthias.bgg@gmail.com, nancy.lin@mediatek.com, 
 devicetree@vger.kernel.org, singo.chang@mediatek.com, conor+dt@kernel.org, 
 sirius.wang@mediatek.com, Project_Global_Chrome_Upstream_Group@mediatek.com, 
 krzk+dt@kernel.org, sunny.shen@mediatek.com, chunkuang.hu@kernel.org, 
 linux-mediatek@lists.infradead.org, fshao@chromium.org, 
 angelogioacchino.delregno@collabora.com, jason-jh.lin@mediatek.com, 
 xiandong.wang@mediatek.com, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, treapking@chromium.org, 
 p.zabel@pengutronix.de, linux-arm-kernel@lists.infradead.org
To: "paul-pl.chen" <paul-pl.chen@mediatek.com>
In-Reply-To: <20250110123835.2719824-7-paul-pl.chen@mediatek.com>
References: <20250110123835.2719824-1-paul-pl.chen@mediatek.com>
 <20250110123835.2719824-7-paul-pl.chen@mediatek.com>
Message-Id: <173651725647.2671771.14303040035335565076.robh@kernel.org>
Subject: Re: [PATCH 05/12] dt-bindings: display: mediatek: add OUTPROC yaml
 for MT8196


On Fri, 10 Jan 2025 20:34:01 +0800, paul-pl.chen wrote:
> From: "Paul-pl.Chen" <paul-pl.chen@mediatek.com>
> 
> Add mediate,outproc.yaml to support OUTPROC for MT8196.
> 
> Signed-off-by: Paul-pl.Chen <paul-pl.chen@mediatek.com>
> ---
> The header used in examples:
> #include <dt-bindings/clock/mt8196-clk.h>
> is not upstreamed yet.
> 
> It will be sent by related owner soon.
> ---
>  .../display/mediatek/mediatek,outproc.yaml    | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,outproc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250110123835.2719824-7-paul-pl.chen@mediatek.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


