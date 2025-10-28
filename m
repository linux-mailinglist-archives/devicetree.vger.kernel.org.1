Return-Path: <devicetree+bounces-231883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF45C123B9
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 01:46:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C37C4624FF
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 00:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C169934CDD;
	Tue, 28 Oct 2025 00:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZbfIKp4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4E6168BD
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 00:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761612323; cv=none; b=Od1XHosBWKcgrP33k8Dp0qvYBuAuJAttndeJ6iWA+I4zyqwiF/+Mug7Nbrib9zAxw1z0lO0oNCqpQZ5twy3K7ha0Gl12h6IMj74h/xt3qSX/zXMIHRx/ugPneG3VT8FoPKBKS3mVJXWaFw846pcBIzYb5PUJI1lO/6yGpo9AXSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761612323; c=relaxed/simple;
	bh=kiCGzfX1Rn3NMjDqMZoGFfmU+sqHKb8RcmulHZRuF2o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E+krP6+v/NmFfluhTm1pGaUqc3w0bXxQcYvP74UTVGcK66he18jNnXmHGHX5cMg0ycha58CshSiXCB2CTF/Kjh95mI8dBByr3PZ2GP6IDLPLsuom+8AA/lSgAq2BUVBKSyaGbZatkyGetuVf/FU5PXDrjtWBb1z9JzFv5g8sMMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZbfIKp4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAEC6C4CEF1;
	Tue, 28 Oct 2025 00:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761612323;
	bh=kiCGzfX1Rn3NMjDqMZoGFfmU+sqHKb8RcmulHZRuF2o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=uZbfIKp4Cls2nFP6ZYBOi/UzdrRP3GIpvYyW7KbRSGeOwwsQB3ypL5/bPEsPZV7hj
	 +AJlkLCeN9NijArta2xON30Xp35G97OVvGYpTvAp93EXPFl5PqnVtymyCgEbg3WatI
	 V0oDSSweVjMuhA6teUFWIG4b2KQOvlQVTz1QT4Ty/rw1/cFIVw2MtFz05YwPxyoYRz
	 tpTvdtcPZ4p41aCizZoH/lwN55H3t0hDs0hmS8wyLanfz7mN+DOcvAa7FWbB/Ydj0N
	 IwkwtrKYhUDAAusJ1+mnuUWBBa6j3b4vEdpW2vhJkvRG5W02j1wV0KH2JB/zdYw4n5
	 4c/iJAjBv4CwQ==
Message-ID: <00aa5c1f-e68e-48f5-b5d0-b6cf2c287abf@kernel.org>
Date: Mon, 27 Oct 2025 19:45:20 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: socfpga: agilex5: add generic "snps,dwxgmac"
 to ethernet
To: devicetree@vger.kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowskii+dt@linaro.org,
 conor+dt@kernel.org
References: <20251023214012.283600-1-dinguyen@kernel.org>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20251023214012.283600-1-dinguyen@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/23/25 16:40, Dinh Nguyen wrote:
> The ethernet hardware node on Agilex 5 needs a generic "snps,dwxgmac"
> binding. Without this binding, the ethernet driver will not be able to
> correctly set the has_xgmac variable.

Patch rescinded because of a net-next patch that removes the use of 
has_xgmac.

