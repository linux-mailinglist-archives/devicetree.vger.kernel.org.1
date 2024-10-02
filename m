Return-Path: <devicetree+bounces-106994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5C098C9FB
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 02:21:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 694141F244F8
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 00:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80EDD10F7;
	Wed,  2 Oct 2024 00:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PX+QkRJf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDFD621
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 00:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727828490; cv=none; b=OvZ538xWOECmMB3ANgYMET34d/2xN4jazIjY3tCQxnH3z7+jDkuiTPW68Qv0M+Y2VN9QUPRnXccVem9nb/TspnsbjxTO6mNWIRmVlP/I/012Gw4JCvaoWQOprPjaUX1b/0QZPr0KQWygfGJuqY7WlY4cP2Kqf4sNoVMr3qcvI5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727828490; c=relaxed/simple;
	bh=tE34ob5YAlEgUzeQKbhVSbtlqHVINVmb1eQFaTucMdc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e/waD9YhlbjwTWSVycqALh67R1eOPl2Ry63H1qNvzMb7LPb3R4cVds7y383JQ3PUEod30nTXu47fLfvPtwYwuuT8mDJqThzHTSVzkndeGw6bS9cFgY17PWjTEDJEMJbXERmu4AHWCPjeAW6/Hq6cDNawxRKstYEi6pzLVaMrKmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PX+QkRJf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7909C4CEC6;
	Wed,  2 Oct 2024 00:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727828489;
	bh=tE34ob5YAlEgUzeQKbhVSbtlqHVINVmb1eQFaTucMdc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PX+QkRJfeymWVpquQlz+bUzgj+WAVAjuHiwbWHKoxwibKo8Fn/XL9r9+bZ4ebCrXF
	 fuzwz3PbBVP3w87AjiiXuU1JHivh0EnHevPHiPm7CHufuzbpGg1XKXntAyGuZq9kIK
	 euR5Z5Czhrs/hwIgyk3lQvZkL2Qd+GV5lgyd4G4pDJiaDM6qWFGQTjI/O+KKTOER0Q
	 sEkFhf8slF95gaxNPlpzjn5hVgPqXd6mk57EOn96ejg6D3Bdb+Ogx2dn04vlFd2zHt
	 tvnpqJ2d+Fj7rFYa45Hi12uAw0MEsYydx1ztwFV8ph9fG5JVTt4EEXSYdlh+RFREw1
	 HCkNvyELS2YoA==
Date: Tue, 1 Oct 2024 19:21:28 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>, broonie@kernel.org,
	conor+dt@kernel.org, otavio@ossystems.com.br
Subject: Re: [PATCH RESEND v2] dt-bindings: display: elgin,jg10309-01: Add
 own binding
Message-ID: <172782848686.108859.7660758085508666833.robh@kernel.org>
References: <20240930213238.977833-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240930213238.977833-1-festevam@gmail.com>


On Mon, 30 Sep 2024 18:32:38 -0300, Fabio Estevam wrote:
> Currently, the compatible 'elgin,jg10309-01' is documented inside
> trivial-devices.yaml, but it does not fit well there as it requires
> extra properties such as spi-max-frequency, spi-cpha, and spi-cpol.
> 
> This causes the following dt-schema warnings:
> 
> make CHECK_DTBS=y rockchip/rv1108-elgin-r1.dtb -j12
> 
>   DTC [C] arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dtb
> rv1108-elgin-r1.dtb:display@0: 'spi-cpha', 'spi-cpol' do not match any of the regexes:
> ...
> 
> Fix this problem by introducing a specific binding for the Elgin
> JG10309-01 SPI-controlled display.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
> Changes since last version:
> - Resending with Krzysztof's Reviewed-by.
> Changes since v1:
> - None. Sent it to Mark as per Rob's suggestion.
> 
>  .../bindings/display/elgin,jg10309-01.yaml    | 54 +++++++++++++++++++
>  .../devicetree/bindings/trivial-devices.yaml  |  2 -
>  2 files changed, 54 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/elgin,jg10309-01.yaml
> 

Applied, thanks!


