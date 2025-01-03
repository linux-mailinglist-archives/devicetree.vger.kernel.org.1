Return-Path: <devicetree+bounces-135415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8E2A00E40
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 20:04:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAC731643D4
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 19:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7431D1B2EEB;
	Fri,  3 Jan 2025 19:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHn2/J0s"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5748F66;
	Fri,  3 Jan 2025 19:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735931061; cv=none; b=EFbntVMu6ei3jolTEeno5+CnhWjYhyixpjQtxBQBYQLVjk65jFhSMNKCoHGJaVCFRhvFiBryg6sBzaWGD7W2LfrobE0xvP4rYnkSmYhDpR5jqSp03u6ILB/ADW8Jd1ko5NfMsOwlDV1S7p+RXdVfw1qNt5x8sXB6u/Xzd7zj5hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735931061; c=relaxed/simple;
	bh=DafI9g1XNuT7MPMDVqmKvgRQVNguGNF9YtDmgVH8Iow=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KEP5+/vCYfLUIvdQuVFZwWV30D2/MQOt7gvg61x79v/nDK1wSvDUIQNflqOsqf3AEjcLbXt1u6eL/3ivheR2w9JokcilXHWNQAPVvU5jrY/sU0on/4Ul0W/TDE3dr6JHVAp0xXBRutcKlU2mGbJtUrhJkeusviMhrIzW5N5IGoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHn2/J0s; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 958EAC4CECE;
	Fri,  3 Jan 2025 19:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735931060;
	bh=DafI9g1XNuT7MPMDVqmKvgRQVNguGNF9YtDmgVH8Iow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hHn2/J0sJx6vjiRvnr3BjTE74srVelov907d8VsnVm0ANis/x9aebgim/iDefjDuh
	 WbL9RMwudR/ejSBUlulYqopxODhLwySitf+m0o7p+q/VmjMwp2muKB8n67wjfi7Fnb
	 TYeLymDrlKfoj5l+6GaGf7tFA7V1CRU7bwkkS0qWX/2c15hlrpgQHTejk0KMsfhmJ1
	 Q2vaUlyUHEECVj5vuwWQK6hum8IqxZzYtlWUKhOFJ+qJXPqkiYqZMFZZ7jo9NC1OoM
	 FyXxFG83is1AvXAwbsWgRrLCZvmUh7ZXQ2Tsw/cAuMvs6Npkfw8fhRRrAj02W2BZVu
	 xyoO0FY4hRQzQ==
Date: Fri, 3 Jan 2025 13:04:18 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: cristian.ciocaltea@collabora.com, Andy Yan <andy.yan@rock-chips.com>,
	krzk+dt@kernel.org, devicetree@vger.kernel.org,
	detlev.casanova@collabora.com, sebastian.reichel@collabora.com,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	heiko@sntech.de, linux-arm-kernel@lists.infradead.org
Subject: Re: [RESEND PATCH v1] dt-bindings: soc: rockchip: add rk3576
 hdptxphy grf syscon
Message-ID: <173593105799.2574254.3863097129830130474.robh@kernel.org>
References: <20241231091841.252103-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241231091841.252103-1-andyshrk@163.com>


On Tue, 31 Dec 2024 17:18:41 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add hdptxphy grf syscon compatibles for rk3576.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> (no changes since v1)
> 
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


