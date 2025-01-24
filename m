Return-Path: <devicetree+bounces-140862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60056A1BE74
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 23:39:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC0777A1014
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 22:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A8A51E98F4;
	Fri, 24 Jan 2025 22:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pccylc+M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B7B1E7C34;
	Fri, 24 Jan 2025 22:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737758369; cv=none; b=ZBQtGj2dKVE1P/IcwGS72XeBmoRO3oADVSahNmU2byofg/Ya4rKMVU8eRCTR2qxXZDRlQWX77TreeJc6Wvm6Inuljcz/AxpFa1FNwOcX+CYRZuWNVNm9yGWtEP+NPIww/mL4SgisdbQa49blQblVV1umMdZgtekVKWi/wE96CCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737758369; c=relaxed/simple;
	bh=m2eF3XYSw42WMuYOxKe5UAoJN9B0wVD1OnNIQ4spMyI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cpc1/h2NS+rw4ka4WqIG7wPD2GhodwLSs52INlBYW2Bkl7+ec+qiJ4Idntqauw6VZWybirTUQp/lfFdIdZYGLpQVR7eGY9v7nxKnVwCdvs+o7hDRauzl4vEIy0bDg4upN1icaG/4rPnUqBSzn6/G04i3mw4qZcnfW/jJuHpTXrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pccylc+M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11487C4CED2;
	Fri, 24 Jan 2025 22:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737758369;
	bh=m2eF3XYSw42WMuYOxKe5UAoJN9B0wVD1OnNIQ4spMyI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pccylc+Mqd+OqPqb3ESeLsA6mYIFXdCcjMjkC0HWUnJzVVPWUo6tFpvCEjGh1MrjK
	 SZNJUdSB9/QAy23iLLnvSpjmtNA53fF+9KPWBmf1c33xDTGr5Wj/nioeNxOfqExGLe
	 efWd2sbO6eXxTSZVneaFatao0QM4CWsP3Cpdj026veG8PlCMTa2ftaombmXg3YCb7k
	 v6RTnZVMSZDUQt5wXEZmXdqoEEwttDKMoNKN7z/3t8SpKxAV6Jn/fMprmOVa0hvSwS
	 6Ih/JbUOVZVoL5necqQ6qmWduMQSaTsNggP/gFC5I9Dz9dVEZFr8dZ3YmGqCVY94XC
	 XDr0i/dQ8CCDw==
Date: Fri, 24 Jan 2025 16:39:28 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] docs: dt: writing-schema: Describe validating one DTB
Message-ID: <20250124223928.GA2546661-robh@kernel.org>
References: <20250123145009.546923-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250123145009.546923-1-krzysztof.kozlowski@linaro.org>

On Thu, Jan 23, 2025 at 03:50:09PM +0100, Krzysztof Kozlowski wrote:
> Running DT schema validation with `dtbs_check` is time consuming thus we
> also have ability to check only one DTB target like:
> 
>   make -j8 DT_SCHEMA_FILES=gpio CHECK_DTBS=y qcom/sm8450-hdk.dtb

It's kind of duplicated because "make help" has:

  make CHECK_DTBS=1 [targets] Check all generated dtb files against schema
         This can be applied both to "dtbs" and to individual "foo.dtb" targets

> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/writing-schema.rst | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
> index eb8ced400c7e..6dea741c5962 100644
> --- a/Documentation/devicetree/bindings/writing-schema.rst
> +++ b/Documentation/devicetree/bindings/writing-schema.rst
> @@ -222,6 +222,10 @@ separated by ':'.
>      make dt_binding_check DT_SCHEMA_FILES=/gpio/
>      make dtbs_check DT_SCHEMA_FILES=trivial-devices.yaml
>  
> +Validation of one DT source by providing Makefile target::
> +
> +    make CHECK_DTBS=y target.dtb
> +    make DT_SCHEMA_FILES=xxx.yaml CHECK_DTBS=y target.dtb

Perhaps dir/target.dtb

Though that may prompt folks to do:

make arch/$ARCH/boot/dts/target.dtb

You need just the sub-dirs under arch/*/boot/dts/ as part of the target. 

>  
>  json-schema Resources
>  ---------------------
> -- 
> 2.43.0
> 

