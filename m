Return-Path: <devicetree+bounces-131584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A25C9F3F96
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 01:57:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5ED8D164273
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 00:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF34717BCE;
	Tue, 17 Dec 2024 00:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqLgNCHu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A03D27E;
	Tue, 17 Dec 2024 00:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734397019; cv=none; b=kN9o0cbo7ns4oao1ckHeJ9dzE66KHKLekNSzP7/5iwOmYbe0f91CMyC3mgg6zSfXsQx20zAnqf8l22O+adrKNPxzy4W2k8zI1EhL4kdO750W/sCwv4uoiJfsE/Xy06dRsm0aZc782YwkkPbRww3s6MDT88MUZp/kzxGR3fvtYgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734397019; c=relaxed/simple;
	bh=S/gdz94MTNfSLAdmz3G9UVEKum7fL0vOatHwgDkuyjU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=m43l8du5HWSDRMbm1zTmPsLKsuD5uSYTdHSwspAnBVARhEKTHKD7BggeIlySWyqwkFPW8eYkTB39+ZE1nPgDX2wZu8En2WbaHNBf7DPLpxBqWAUJk1RnAoZiLE+CNZppbTwZhGjIJOId0R1+KvQC3X/xkkBDePC/z5ShIIxdP5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqLgNCHu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87D80C4CED0;
	Tue, 17 Dec 2024 00:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734397019;
	bh=S/gdz94MTNfSLAdmz3G9UVEKum7fL0vOatHwgDkuyjU=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=aqLgNCHuU2Mw3bS0mBXNbed3XQiyXODMTX+iOWxir1x/nRO3mWFfKJEcfl27OSAke
	 VecsNPZNe3z7oTtFikNqKemavbwxOj3fKjA/5Hs9b+gFJDIvh1SWir7dZ+OZ+ExoPe
	 2TiCoqN8eKu02+PFhe1l+khfBfBphTzfDfU82+YFixzhw69UoK4Zo3pl+jVixIRRAv
	 4ae6eKbhcIyLK6GyJg/urwXxwHKSkZNmjHCv5AVuDZFPLceqRKlurHs0KgA2YXh7bE
	 c3H/i2pbMN5USbyLrG/wQpCVlkrQlvaSfL7KgUzBYbOyFMyBWAMYdFRAO/2wY/rV9/
	 u/L1vdBpbspiA==
Message-ID: <9fac3079-73ad-48ff-bbc1-18494cf5439c@kernel.org>
Date: Mon, 16 Dec 2024 18:56:56 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: socfpga: agilex5: Add gpio0 node and spi dma
 handshake id
To: niravkumar.l.rabara@intel.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241204063254.296870-1-niravkumar.l.rabara@intel.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20241204063254.296870-1-niravkumar.l.rabara@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/4/24 00:32, niravkumar.l.rabara@intel.com wrote:
> From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> 
> Add gpio0 controller node and correct DMA handshake ID for SPI
> tx and rx channels.
> 
> Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> ---
>   .../arm64/boot/dts/intel/socfpga_agilex5.dtsi | 24 ++++++++++++++++++-
>   1 file changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> index 1162978329c1..51c6e19e40b8 100644
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> @@ -222,6 +222,26 @@ i3c1: i3c@10da1000 {
>   			status = "disabled";
>   		};
>   

Applied!

Thanks,
Dinh


