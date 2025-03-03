Return-Path: <devicetree+bounces-154083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67122A4ECE8
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 20:13:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB53E8E4E4F
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D8EA277010;
	Tue,  4 Mar 2025 18:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z12p8awD"
X-Original-To: devicetree@vger.kernel.org
Received: from beeline2.cc.itu.edu.tr (beeline2.cc.itu.edu.tr [160.75.25.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BC3277017
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 18:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=160.75.25.116
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741112087; cv=pass; b=tgq1TUNAysVz6N70pqwbXjLOq6RmwSZUT6z5EiXwQjtkmDnhwMEo4oTTjM4gpCoaIXW2i10HpSrCxT03gQB9cUq7DTy42UQKWV7wjxHjWRQ2/tmZlfUnmyqxCpfGCxX8/4sq6mPCl0MEYpiryS1bq5o61IpMhRjefhgSMBKSQyU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741112087; c=relaxed/simple;
	bh=iyUoLSPXMiRrDuj1QjSG3Se/xMam/JZHpS5wjuiJGpo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XzvNX1NlhN5XilKQaLHDYoTZfPSAM3amU/GF/rNEGJMuMuN9HrT6259XVc/XTRQHGwkremLK/W7eUChH/8ywy3EZwLBrATK6Opb9Q74O5S2g8Zn0Dezdl7E+fmGpiFhvP09/GRWGknai/IPtaoKd5rBkzz8Jrb5div/fgSt4IpM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z12p8awD; arc=none smtp.client-ip=10.30.226.201; arc=pass smtp.client-ip=160.75.25.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr
Received: from lesvatest1.cc.itu.edu.tr (lesvatest1.cc.itu.edu.tr [10.146.128.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by beeline2.cc.itu.edu.tr (Postfix) with ESMTPS id E51BB40891AF
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 21:14:43 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Authentication-Results: lesvatest1.cc.itu.edu.tr;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=Z12p8awD
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
	by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6dDb3kxLzFwXq
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 17:22:23 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
	id 1116D42720; Tue,  4 Mar 2025 17:22:13 +0300 (+03)
Authentication-Results: lesva1.cc.itu.edu.tr;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z12p8awD
X-Envelope-From: <linux-kernel+bounces-541754-bozkiru=itu.edu.tr@vger.kernel.org>
Authentication-Results: lesva2.cc.itu.edu.tr;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z12p8awD
Received: from fgw1.itu.edu.tr (fgw1.itu.edu.tr [160.75.25.103])
	by le2 (Postfix) with ESMTP id 0B6E841A7A
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 16:04:35 +0300 (+03)
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by fgw1.itu.edu.tr (Postfix) with SMTP id D78CF3063EFF
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 16:04:35 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C79E188DD35
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55ED521147C;
	Mon,  3 Mar 2025 13:04:10 +0000 (UTC)
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9653213FEE;
	Mon,  3 Mar 2025 13:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741007047; cv=none; b=Fl1GJyO+UDx93l6UVIhuGYn0pZQUXKOY2D1Sop/UAFXyXbQg1M1jB+trmRcCZcWkxSApkljGjgCQEqhmg3wYqn4jCWEzWKCn6yLOxxT6Ne+9bdBBV87XS5DI0+lHqaBQ6VXzmrqmamSZ5MvQnlXBXA4Roi8U6Gl2oUyLtD6wu30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741007047; c=relaxed/simple;
	bh=iyUoLSPXMiRrDuj1QjSG3Se/xMam/JZHpS5wjuiJGpo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KnbY1yDDbi7TgiXg8Y1CWfqNcJNSq/PI9Kgyd23qiu6zfevTR76m0k4fmxY2sU3lBhSGLD5ksSIs4UnuyQ7QYX8eJHiwXQGbjXrYPdId1Jkl+PBFEBizsGVwpEW7BAn94P+Yt6H3pTBg1i6ei7XxRdITViJ4/k3SQuTI/NNarrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z12p8awD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C800CC4CED6;
	Mon,  3 Mar 2025 13:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741007047;
	bh=iyUoLSPXMiRrDuj1QjSG3Se/xMam/JZHpS5wjuiJGpo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z12p8awDHjQe/xOPfCA3gI1tAXP8mLksekgMbbmPdzcdtitUwiV7Yyq2jcz4gS2V+
	 4BvijIr4YBpjkW6eWZIkZDi/d3r2DGNMfKyB953LdUDfV9qnjhoOeNMsTiEpIv83rX
	 XPeVzEL+WOCUtd1k6U4+U7Gm3bBr4KeEEcm90UZHK+WaKtxI7rG99ASlrWEUkI9gmE
	 CLEC/Jl8RBr6uMIwCmYGPk/MGoUcHP3Sh21gIlMXISziRl1H3xZtxvRmZokhKJwaqv
	 nZeGLy69SDMhNPdTjws2M6WROHYK4VCLfaEMmlw86KA7AJ7nR2/CSMOQLWIzSP0WkF
	 1a+l8nvRzV+Qg==
Date: Mon, 3 Mar 2025 07:04:05 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: linux-kernel@vger.kernel.org, conor+dt@kernel.org, broonie@kernel.org,
	nicoleotsuka@gmail.com, tiwai@suse.com, linux-sound@vger.kernel.org,
	krzk+dt@kernel.org, linuxppc-dev@lists.ozlabs.org,
	shengjiu.wang@gmail.com, festevam@gmail.com, perex@perex.cz,
	devicetree@vger.kernel.org, Xiubo.Lee@gmail.com,
	lgirdwood@gmail.com
Subject: Re: [PATCH 2/4] ASoC: dt-bindings: fsl,audmix: Document audio graph
 port
Message-ID: <174100704415.1424041.5644377914048631835.robh@kernel.org>
References: <20250226100508.2352568-1-shengjiu.wang@nxp.com>
 <20250226100508.2352568-3-shengjiu.wang@nxp.com>
Precedence: bulk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250226100508.2352568-3-shengjiu.wang@nxp.com>
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for more information
X-ITU-Libra-ESVA-ID: 4Z6dDb3kxLzFwXq
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741716745.55111@eglgMsW1wcPhcbHDMHYosw
X-ITU-MailScanner-SpamCheck: not spam


On Wed, 26 Feb 2025 18:05:06 +0800, Shengjiu Wang wrote:
> This device can be used in conjunction with audio-graph-card to provide
> an endpoint for binding with the other side of the audio link.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  .../devicetree/bindings/sound/fsl,audmix.yaml | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>



