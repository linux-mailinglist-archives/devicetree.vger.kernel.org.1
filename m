Return-Path: <devicetree+bounces-24585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D376A8107CD
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 02:44:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7CD911F21303
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 01:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 845B4EB8;
	Wed, 13 Dec 2023 01:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpTVvXNr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677DBA5E
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 01:44:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26CBDC433C9;
	Wed, 13 Dec 2023 01:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702431894;
	bh=iSyAPZ2ui6DQUOV4s/EIyGAwUYSfCAlu+D5HjvA3FUw=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=LpTVvXNrU0ptsKZaGzkNUBTiIINZb0AXojLFmg9BpftOPa2/RlztEM6qz/wQHkQoE
	 b4Xat99AMg9bsbJNijdlT2WX2cdTEzPNSEYt6/q1OE6vAF21JekX3b/ToBJo0gHeUi
	 DOpQr45MfvkUQ7zbJTwGtZuyEkRJWRa0hfnXJkEcX91IDZME9hgmltP3U/8r2IkuPU
	 dkATIH54n8dCa6upBTPjNc+QPM3bf0dO3lTNWL9aASQgL47T6/Bwbdhjs7EAXlR1+5
	 M8L1EBogKS4PmMpi+Vm39ugEBRVM87UsBo+1i2BuJrag7wmWeMXAggLd5w3LH2qiif
	 LoPYhhN0dbiig==
Message-ID: <360a50da-c71b-4a42-9da9-97c1ac9495fb@kernel.org>
Date: Tue, 12 Dec 2023 19:44:52 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: intel: minor whitespace cleanup around '='
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231124094620.58017-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20231124094620.58017-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/24/23 03:46, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space before and after '='
> sign.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied!

Thanks,
Dinh


