Return-Path: <devicetree+bounces-139985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A67A17B24
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 11:14:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 883583A1F05
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:14:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 191AE1E9B10;
	Tue, 21 Jan 2025 10:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMAHmT0t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A191B6D14;
	Tue, 21 Jan 2025 10:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737454489; cv=none; b=gfzO3KMHvlY80/aVoO1Lwj/tY31hU0iht/Be4eRRCkLlc67RwGTSYixNoMBb6QqSUAg423Pnwq1KoK6Sr4efE+0x/JCG3XwrRD+qR59IefJ23OJgJtGrxZjY705zqpt34amRm9cV8CVLESCOhJLLgp2Y4yEJNoFf57PO5QiJHiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737454489; c=relaxed/simple;
	bh=04qTz7CSMOIP18CaQqgrluBBwkB/rAJoEuXBAFg3YkQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=THovPFe14eRsHTnjqMdN3I2k0laVZ9k5jxioMboRAxMSrQqoG6mK0XnosFAX87YMKDkcUsGqL4MsL1Eb495lqwOfhFwsFmA/8eBVlyPVzxW79jXH8Z6tDgsRazcRRXpJcP47HNw5e/+/sw9YbFSLVNfF8NIzkRBVJuqTpubypx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMAHmT0t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2341C4CEDF;
	Tue, 21 Jan 2025 10:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737454488;
	bh=04qTz7CSMOIP18CaQqgrluBBwkB/rAJoEuXBAFg3YkQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aMAHmT0tgdndgvuTud9TuSW3+uFYlpGuODPBCtIS8u9ApjfzfavBgDzjSPUeg6ESJ
	 m6WiIiPzW6pvcuu73g5lke6rPMHAbcPSHjNcQeIO5s16aXUpInT67WYsbN1SJ0rq1z
	 e0uxKxZYydAgI86Ii/q35px09lpL+TXBG7XwTuImfxmPsR6VM1aMjxj7Mk9hNxRZfZ
	 4Qytrko49EMYDe/4HNOx8jj6doCEYzY622iU6pSXMfBdiNya74jZp41FOQL72mavBC
	 alT0z8BKbLAeftH8CP/FsN5srb2oO8xiyIc1wwSIfQtVoDyNuiQLGvBN1StGn+scv4
	 RIY14/Qu/5skg==
Date: Tue, 21 Jan 2025 11:14:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Friday Yang <friday.yang@mediatek.com>
Cc: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v3 1/2] dt-bindings: memory: mediatek: Add SMI reset and
 clamp for MT8188
Message-ID: <20250121-alluring-fractal-toucanet-c3b1ab@krzk-bin>
References: <20250121064934.13482-1-friday.yang@mediatek.com>
 <20250121064934.13482-2-friday.yang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250121064934.13482-2-friday.yang@mediatek.com>

On Tue, Jan 21, 2025 at 02:49:26PM +0800, Friday Yang wrote:
> From: "friday.yang" <friday.yang@mediatek.com>
> 
> Add 'resets' and 'reset-names' properties for SMI LARBs to support
> SMI reset operations.
> On the MediaTek platform, some SMI LARBs are directly connected to
> the SMI Common, while others are connected to the SMI Sub-Common,
> which in turn is connected to the SMI Common. The hardware block
> diagram can be described as follows.
> 
>              SMI-Common(Smart Multimedia Interface Common)
>                  |
>          +----------------+------------------+
>          |                |                  |
>          |                |                  |
>          |                |                  |
>          |                |                  |
>          |                |                  |
>        larb0       SMI-Sub-Common0     SMI-Sub-Common1
>                    |      |     |      |             |
>                   larb1  larb2 larb3  larb7       larb9
> 
> Signed-off-by: Friday Yang <friday.yang@mediatek.com>

SoB/From mismatch.

Please run scripts/checkpatch.pl and fix reported warnings. After that,
run also 'scripts/checkpatch.pl --strict' and (probably) fix more
warnings. Some warnings can be ignored, especially from --strict run,
but the code here looks like it needs a fix. Feel free to get in touch
if the warning is not clear.

Best regards,
Krzysztof


