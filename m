Return-Path: <devicetree+bounces-5175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 311DC7B580A
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:50:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E34102823CF
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54161DA44;
	Mon,  2 Oct 2023 16:50:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62933232
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:50:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62B9CC433C8;
	Mon,  2 Oct 2023 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696265455;
	bh=f355bukHKLu1rhR9na0ATb96tUNkqek2Wx4BQTlRLEE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TvhQY/lPTGKePjWnU3TJXXZbvZcyE9R4GVQNjw2UhR1CGilrwJflkZpSCRx68mWX9
	 aglUTzcQd57shU8ZaQjV4Ir5l5bU7wGp7N8tJtUwEQ0Ix+MGMON27iCuEipKyDXxr6
	 dJhSpUKrHjvchK3ArrSixlPpkW+/3M5PrIhA+PL9oBHP5zfjGTzOZt2GcmkXAKF4lH
	 Uth6eLZhyVqoJ9Z+o2yT8q+A6ims3hajfeoQ+CPSbHYnHWSR7VPoFmWZWt18Q6SrHn
	 vVjTax/Xrw+fgZz4gVd8yUZIM03a1AIcqsYAGgQAtj3sMbyfF4HDpgOb2ZVcTtvXRq
	 dGYG6HWBiHP9w==
Received: (nullmailer pid 1924037 invoked by uid 1000);
	Mon, 02 Oct 2023 16:50:52 -0000
Date: Mon, 2 Oct 2023 11:50:52 -0500
From: Rob Herring <robh@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Hugo Villeneuve <hvilleneuve@dimonoff.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] docs: dt: writing-schema: add example for multiple
 DT_SCHEMA_FILES
Message-ID: <20231002165052.GA1915589-robh@kernel.org>
References: <20230928190259.3497563-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928190259.3497563-1-hugo@hugovil.com>

On Thu, Sep 28, 2023 at 03:02:59PM -0400, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> Variable DT_SCHEMA_FILES can specify multiple files, but the
> documentation does not indicate how to do it. Each entry needs to be
> separated by a column symbol ':'.
> 
> Add an example to make it more obvious how to specify multiple
> DT_SCHEMA_FILES.
> 
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> ---
>  Documentation/devicetree/bindings/writing-schema.rst | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
> index 4a381d20f2b4..a500d3c2e12e 100644
> --- a/Documentation/devicetree/bindings/writing-schema.rst
> +++ b/Documentation/devicetree/bindings/writing-schema.rst
> @@ -159,11 +159,13 @@ It is possible to run both in a single command::
>      make dt_binding_check dtbs_check
>  
>  It is also possible to run checks with a subset of matching schema files by
> -setting the ``DT_SCHEMA_FILES`` variable to a specific schema file or pattern.
> +setting the ``DT_SCHEMA_FILES`` variable to a specific schema file, multiple
> +schema files or pattern.

And multiple patterns. I would say: ... to 1 or more specific schema 
files or patterns (partial match of a fixed string). Each file or 
pattern should be separated by ':'.


>  
>  ::
>  
>      make dt_binding_check DT_SCHEMA_FILES=trivial-devices.yaml
> +    make dt_binding_check DT_SCHEMA_FILES=trivial-devices.yaml:rtc.yaml
>      make dt_binding_check DT_SCHEMA_FILES=/gpio/
>      make dtbs_check DT_SCHEMA_FILES=trivial-devices.yaml
>  
> 
> base-commit: 633b47cb009d09dc8f4ba9cdb3a0ca138809c7c7
> -- 
> 2.30.2
> 

