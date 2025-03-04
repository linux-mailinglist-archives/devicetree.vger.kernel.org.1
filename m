Return-Path: <devicetree+bounces-153895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B7CA4E3AE
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 16:38:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCAEC883105
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 15:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09E9324C09C;
	Tue,  4 Mar 2025 15:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1RldajX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D161A24C093;
	Tue,  4 Mar 2025 15:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741101119; cv=none; b=izd/mMedgMhdFbOo2Sgq6sAgHoOuw56dme0Y/O0c+0cmjryqLN9XPucN8/tlAAIUf9UHeUv0R9mOn9MBhd2dMxE0/AMsxNoCaAWm9suh8MtZEACxToz/0h4A+e0nfOXv35Php3tTd5cSXOtamlSZDlJZUHPPqIB44XWnvAxiKRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741101119; c=relaxed/simple;
	bh=4SIBqmrS42kkSMxCMQFChof+F0bMN3x2UOvDWptOUsk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tk0saRSALfHot2T0WLlp1/3QDaiRd8g9IufWj46xkcrDUo1e+ePLpCjGVWVlcl9a67JA3jLS719XVVZU7Dn+6G5zTaPyxDSqBAUOc8eCTKT5+g1f+PoRmK9s1sSCGWHVg+ulr5S47IsE4sP+oaTFjUS0nZbw9cZQxeFxy86xde8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1RldajX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22280C4CEE5;
	Tue,  4 Mar 2025 15:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741101119;
	bh=4SIBqmrS42kkSMxCMQFChof+F0bMN3x2UOvDWptOUsk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f1RldajXPHDVDaV8FrXpmlawZekNo7rfjLrH+iZk48PdTNBRRGoGXlRiD1dMOmiOK
	 hdPWou5HpOvcLRH93nIoXnoYhrybdWjGDoYCEY6KjmM4THfuQMoeypD3sNZR50pLw3
	 hoDsuVH5UnLQ8II5S35z2YdM3BZzZT84eDNImYf/MQIiBXd4SuOtjuJda3Jn3pHocW
	 KaBXHJ0twf+ut9bhI+4tIH7Pfpsi4iTEx4VCI6WIuCQ8FpFOOiJSKVwWSaB2APzLFK
	 oTX5LqnYHQ8rSsOU8Rljk4c76OrwGylKiU8s1/2pdz4l2fXAEK1tjyxpkrT64br/a/
	 8THTVDr84zQXw==
Date: Tue, 4 Mar 2025 09:11:57 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Longbin Li <looong.bin@gmail.com>
Cc: linux-riscv@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>, linux-spi@vger.kernel.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	linux-kernel@vger.kernel.org, Chen Wang <unicorn_wang@outlook.com>,
	Albert Ou <aou@eecs.berkeley.edu>, sophgo@lists.linux.dev,
	Conor Dooley <conor+dt@kernel.org>,
	Inochi Amaoto <inochiama@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: spi: add SG2044 SPI NOR controller
 driver
Message-ID: <174110111660.2625891.8370014258934747237.robh@kernel.org>
References: <20250304083548.10101-1-looong.bin@gmail.com>
 <20250304083548.10101-2-looong.bin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250304083548.10101-2-looong.bin@gmail.com>


On Tue, 04 Mar 2025 16:35:42 +0800, Longbin Li wrote:
> Add SPI NOR driver for SG2044, including read, write operations.
> 
> Signed-off-by: Longbin Li <looong.bin@gmail.com>
> ---
>  .../bindings/spi/spi-sg2044-nor.yaml          | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/spi/spi-sg2044-nor.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


