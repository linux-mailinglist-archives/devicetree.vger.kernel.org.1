Return-Path: <devicetree+bounces-110329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D76799A18E
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 12:38:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D5544284875
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 10:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAD3C216454;
	Fri, 11 Oct 2024 10:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhMSuF/q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD9412141A6;
	Fri, 11 Oct 2024 10:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728643057; cv=none; b=qaO1PsTwOuQEomAiw2WSFptl10gxBMEchAQtDgeXljHVVZTfpI5szDky627CqBlu/VFsjWw5dpKXv8fBWaSx4CN3OPjj5AtTPaJRtYCgvJ4SgPFdUyVQKYAbiOE+kL9mKeemGrzlhKhxW5V9jVMdjdEHwn/xHsB2Bw3PLCiLX7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728643057; c=relaxed/simple;
	bh=IOQqHOY00MYzHsMvprnnV25LSKAIRjz+sXiOlW6AUXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=NvZHzBjyjay4THKJzm3PN0hL4LpBafsk5xgORkDC3whsQKnOI40w1D2Kjxz6Hk2qiLjnpnrTXT2+fyaNZyDWd2yNrcHVAf9YLJJcHmfqrXydkDcTPTJqzxettIfdgI5vNWW5CIN/QImjHOSR7D1HsrVi3sZXoj5JpdxLFCOosXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhMSuF/q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B8D8C4CECF;
	Fri, 11 Oct 2024 10:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728643057;
	bh=IOQqHOY00MYzHsMvprnnV25LSKAIRjz+sXiOlW6AUXg=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=qhMSuF/qOpxnv8r6H0OBHMdG7Xkk7dB9Q2z637rN4tyl1ISsveVXVr/PMn5jxL520
	 u5X4O2l/4PrZP23/Rli7TrDDOEL2erR9K6r39bT4zrWzZTOBVtRIX0nJSb6AItWui0
	 ChiNUuYdBBytMtnSXoqUeFUaFNo4UuxWdBu0EfosM6jgemG9aHPpfkDLwackV12MmB
	 1TSEt5o4Jl60mvbMDXpu8yFu08n+lr8LjkWB22hKiiWa2HKpFPu0rc5tSWvUhqirTN
	 5VryuHRxYrqkCZwsC4Y+0lCVUDq/tWYaav9K/f4A4EBL/19n6GRf2lLvJvBBzsc7Mm
	 fiu7prvXiBArw==
Message-ID: <e5cf9173-c0f5-42c6-85ce-1ad7cecad83a@kernel.org>
Date: Fri, 11 Oct 2024 13:37:31 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] ARM: dts: omap: omap4-epson-embt2ws: add unknown
 gpio outputs
To: Andreas Kemnade <andreas@kemnade.info>, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, linux-omap@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, tony@atomide.com,
 devicetree@vger.kernel.org, khilman@baylibre.com,
 Conor Dooley <conor+dt@kernel.org>, aaro.koskinen@iki.fi
References: <20241010122957.85164-1-andreas@kemnade.info>
 <20241010122957.85164-4-andreas@kemnade.info>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20241010122957.85164-4-andreas@kemnade.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/10/2024 15:29, Andreas Kemnade wrote:
> Set them to the state seen in a running system, initialized
> by vendor u-boot or kernel. Add line names where they are defined in the
> vendor kernel.
> gpio15 resets something in the display, otherwise meaning of the
> gpios is not known.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

