Return-Path: <devicetree+bounces-115476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCCE9AFBAE
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 09:58:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DDB331F241A3
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 07:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F32FF1C07F7;
	Fri, 25 Oct 2024 07:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpvgZVQ3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BE51C07DA;
	Fri, 25 Oct 2024 07:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729843120; cv=none; b=abCrjJiZIPFl/tS6m8z/Xnot6ksx9KBZ8VQtoeECqpymF3iOqab+ZluwDV96Z30CUAwE9mJLStSVhBCqyPaqOVHui5O0Nln8tKBDNVApUAwrj5YDFmKEQznd1jKz5QnewMmrZDnBHpWl9ZU+4UJBlK6y6nahaHs8BKLcbJkaz2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729843120; c=relaxed/simple;
	bh=Qc5sTAeQ60W3V2dierXWzsokifl75oKJ2qzBPZPP+eE=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=T+0qAyLculVFGU0NkX1WtoruQIhhV2F52Nh8APf4soGBd7FMkBZTXBy4OUJJ9t8/sDyakV0OMJDjF09pxhTtXZT0KfSokdP2pPurkZ17nx0CttLyVsWpF+qdeB/jpCXQYNLwavY8yVXALQduZBErvEge4WqubKb/8gd0lPhPa+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpvgZVQ3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EA76C4CEC3;
	Fri, 25 Oct 2024 07:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729843120;
	bh=Qc5sTAeQ60W3V2dierXWzsokifl75oKJ2qzBPZPP+eE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=cpvgZVQ3WuTLNmsTjwLfp59utSAA4UNa0Do696ttV7tgylr06MR3eoLT/yG6mon9I
	 IsDKmvifJBnH15Uvq7nDJEYZ3qWbmo2YAY1QoIVccFUVvt4PrLXd9WVQ36NV/kHP+L
	 bZK6xan5iis+Yt+14sOQX9ic7Zb4WGaCC3Z922r702yett6BjrSvKv9ewe5s2JQ4Nu
	 3MtRNDjxwGo3rjfXlFlTaPcrE1WT4K1SEgNtFWLknQkEGHJgfktqoeI/tS0XwZD9+g
	 aKiucmOWd4F/FBRE5AVLE87wP8WWI3q0AKeNTWochWSGIYW50jPGkaiyEGyWPyzDYW
	 RCTdkvst7p3lw==
Received: from sofa.misterjones.org ([185.219.108.64] helo=goblin-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1t4FDQ-006gzT-JH;
	Fri, 25 Oct 2024 08:58:38 +0100
Date: Fri, 25 Oct 2024 08:58:36 +0100
Message-ID: <86jzdw3977.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Jiajie Chen <c@jia.je>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Add performance hint for boost clock
In-Reply-To: <20241025031257.6284-2-c@jia.je>
References: <20241025031257.6284-2-c@jia.je>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/29.4
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: c@jia.je, andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false

On Fri, 25 Oct 2024 04:12:58 +0100,
Jiajie Chen <c@jia.je> wrote:
> 
> The x1e80100 CPU can have up to two cores running at 4.0 GHz, with one
> core in the second cluster (cores 4-7) and the other in the third
> cluster (cores 8-11). However, the scheduler is currently unaware of
> this, leading to scenarios where a single core benchmark might run at
> 3.4 GHz when scheduled to the first cluster.
> 
> This patch introduces capacity-dmips-mhz nodes to each CPU node in the
> DTS. For cores numbered 4 and 8, the capacities are set to 1200, while
> others are set to 1024. This ensures that the two cores can be
> prioritized for scheduling. The value 1200 is derived from approximately
> `1024/3.4*4.0`.
> 
> Note that capacity-dmips-mhz is not ideally suited for this purpose, as
> it was designed to differentiate between performance and efficient
> cores, not for core boosting. According to its definition, DMIPS/MHz
> actually decreases with higher frequencies. However, since the CPU does
> not support AMU, and no elegant solution was found, this approach is
> used as a workaround.

Are you sure?

[    0.570323] CPU features: detected: Activity Monitors Unit (AMU) on CPU0-11

So activity monitors are available. Not that what you have here is not
useful, but this comment seems a bit... surprising.

Thanks,

	M.

-- 
Without deviation from the norm, progress is not possible.

