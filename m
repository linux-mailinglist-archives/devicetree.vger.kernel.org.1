Return-Path: <devicetree+bounces-137179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC562A07D65
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 17:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B35327A14A3
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 16:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F382206BA;
	Thu,  9 Jan 2025 16:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdYbG4RC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3C7204696;
	Thu,  9 Jan 2025 16:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736439902; cv=none; b=LjuekqsAOmC5QcPzGVgvgH0Ued89R4VRDLuPveiSN5VpXftYVC603a7xDrFwJKLqlr4G6fdwQvzZ7k7AT+wYKDf+SfRMUmCyzO+qBUaBH7rAuWwdf2Q4LFUxX8510xKf/KacBn2cJMIl7b1EeHn9jxxYApGPj/5+KMUiIlZa4OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736439902; c=relaxed/simple;
	bh=/OVcWt94rvJ4EpwA9guww2JY+Yyr6y9ZWHqQnXozrpY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tGopUUGkfzjSpc+rlL1Hl4zRDiffn6p52osUIvl6EERfcsDlthwoP/VbcLy6KjcDgrm2kjEqAHFikreU95EpTSFgMS1fTYn6Rcn2aQ0KA3Oal+8RnXIk+w/P2vgYdM+dR5Qi52PculV50L6FRAoH7Pub6k1hYknEgnQugKMuAEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdYbG4RC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A882EC4CED2;
	Thu,  9 Jan 2025 16:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736439901;
	bh=/OVcWt94rvJ4EpwA9guww2JY+Yyr6y9ZWHqQnXozrpY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=tdYbG4RCCYequm0qZqgN3UBswMZmz6e07WSsVdXo+ZQQeGwY5c/9bbOs7d2zW3HsJ
	 fDgRrTIg+vRpic0tWFfhN8SXhHQCY+4JbiTnqwlWO1IRMUCy99OvHipnYSWucr7yHb
	 26MFq56Z0vcPTiwv2R0ijLXbf03M9r1sSrvALDmbYrnUj9tXybiT2Smr7x+usn3eQL
	 MzGaTR/72/7XPW/gDfqXplNVpWXgR53OGuu2o0xlKuWZMV1NRD7nV5HYrsDu/EHIjB
	 0yyLKGHT0ip6qot1T24zTwtpHO2BlTPYpOzJc/7DWFtvzQzmke+xfh57Zt0AizfrOa
	 FXe7oreYXQvGQ==
Message-ID: <592b4e04-9ff4-4ca0-a55f-73c6878f3fc7@kernel.org>
Date: Thu, 9 Jan 2025 18:24:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-am62p5*/k3-j722s: Add bootph-all
 property to necessary nodes to enable Ethernet boot
To: Chintan Vankar <c-vankar@ti.com>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Tero Kristo <kristo@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Nishanth Menon <nm@ti.com>
Cc: srk@ti.com, s-vadapalli@ti.com, danishanwar@ti.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20250106123122.3531845-1-c-vankar@ti.com>
 <20250106123122.3531845-3-c-vankar@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20250106123122.3531845-3-c-vankar@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06/01/2025 14:31, Chintan Vankar wrote:
> Ethernet boot requires CPSW nodes to be present starting from R5 SPL
> stage. Add bootph-all property to necessary nodes for CPSW to enable those
> nodes during SPL stage along with later boot stages for AM62p-SK and
> J722s.
> 
> Signed-off-by: Chintan Vankar <c-vankar@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>


