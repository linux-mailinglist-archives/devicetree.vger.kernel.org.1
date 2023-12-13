Return-Path: <devicetree+bounces-24581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 235C881076C
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 02:10:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A1D53B20EC4
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 01:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECE7FA49;
	Wed, 13 Dec 2023 01:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liX+i5T+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE44253AA
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 01:10:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64463C433C8;
	Wed, 13 Dec 2023 01:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702429830;
	bh=zFgCXNZVO3YDofpL6TscI323EBNpEuAQT0bTybTcNS4=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=liX+i5T+scnUajZViKh42x8MMZMiyiRRENbhNhVUg5i1/PjQvViQVIk1flvTmZLhS
	 KgJqYdPcJyE7pA0W68b8D7fOqZyJoBOsvVUjwmJzYN/H8rReh2I7oSpE4IJyPOQpM7
	 86ZvMmHk2KZiVISDK6fJ3X7S8PCs0mEfQW+KkIRAcRuNhWpwhcOmYKH3siwZXghWBf
	 MGcWQBi+zvuEO9oDEaEghr6F3LxVKq6dxEjrXJ3NPOcJ4whtj68cDOaKOWEfuOIVbe
	 ZJ9XZ+1zu3OKIK1oH9vgTWN3WjwpMow08dUkQW4J/brRzCpCPf49h43btp5Vl9bQbn
	 c2Z2oT/92zRYw==
Message-ID: <a2a71f27-f58c-4481-9b50-a04b61894b06@kernel.org>
Date: Tue, 12 Dec 2023 19:10:27 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/15] ARM: dts: socfpga: drop unsupported cdns,page-size
 and cdns,block-size
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/9/23 11:30, Krzysztof Kozlowski wrote:
> cdns,page-size and cdns,block-size are neither documented nor used by
> Linux, so remove them to fix dtbs_check warnings like:
> 
>    socfpga_arria5_socdk.dtb: flash@0: Unevaluated properties are not allowed ('cdns,block-size', 'cdns,page-size' were unexpected)
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>

Whole series applied, thanks!

Dinh


