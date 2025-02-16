Return-Path: <devicetree+bounces-147116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5C9A374C2
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 15:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 807781890AC4
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 14:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17BBF19755B;
	Sun, 16 Feb 2025 14:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mE1mQ6Y0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC25118BC1D;
	Sun, 16 Feb 2025 14:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739716936; cv=none; b=L46w0FUjNcBHN+uU0I6S+BasaQ5EqT3guZCtlFaU5rXusYLc8i8Z2HPvALl9RWLIxAyFuUyVZFjrTbZq77oKi4lAke8R3QO+0sUZCd8yZECLb316t2SOkTpWzrIl9HkT9V62mJrp43XBgcB+16HYfF8f16ds4KINKrydif9q4QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739716936; c=relaxed/simple;
	bh=nSV3mTrYuDqfC5mHexNWs8s03xuNlarcsyBmNmFt2Iw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bJYHUCJSoP+MVoYOYFPJgdCNCMjo2U6sX3EFCfzrd5Pb/+a0kjQPNsoVAF/Ref91LYFQttufplj6umUNF6+yGwCjI3DvaKmamXiFyCnhs68Hmg3zqWvprFtedeIc1hwHFJ4+fWJjA25TO1lgzEMIbIi+/WrD/rUVjwwIpIyN7UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mE1mQ6Y0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFE43C4CEDD;
	Sun, 16 Feb 2025 14:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739716934;
	bh=nSV3mTrYuDqfC5mHexNWs8s03xuNlarcsyBmNmFt2Iw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=mE1mQ6Y0szZpOJUw+OPpP4x0QiS+1r43y54/8tNEk3v1COEH7QoLkTiumROz4yTZb
	 jDhZS6eQJBFMqi//+x6TfqaLTQWJdLEkhuXBc1BaofsqoYH4JsYgHcMY13/AYAGoVk
	 dB1+rEkl3a3a4cYBZ4TdogQO0w+oQtT3GPIiB7A8zHTe89uwg0rwCk4pG+4PL3zELZ
	 OzEyBxXzmTHsf22BXyHOoQCp3pBUcinUvyDztTySvkKXcRw3sUgbqZthQDeXxxx92A
	 tbhX863UE9F5X5Mw/pH/bK4P9/oZn9IriCcPSfQSeiwQLpgcx9YsBq35WxRbQ2cFR3
	 O7w0CiTKoRhOQ==
Date: Sun, 16 Feb 2025 14:42:01 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Jonathan
 Hunter <jonathanh@nvidia.com>, Javier Carrasco
 <javier.carrasco.cruz@gmail.com>, Matti Vaittinen
 <mazziesaccount@gmail.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Emil Gedenryd
 <emil.gedenryd@axis.com>, Arthur Becker <arthur.becker@sentec.com>, Mudit
 Sharma <muditsharma.info@gmail.com>, Per-Daniel Olsson
 <perdaniel.olsson@axis.com>, Subhajit Ghosh
 <subhajit.ghosh@tweaklogic.com>, Ivan Orlov <ivan.orlov0322@gmail.com>,
 David Heidelberg <david@ixit.cz>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: light: al3010: add al3000a
 support
Message-ID: <20250216144201.6238345c@jic23-huawei>
In-Reply-To: <20250215103159.106343-2-clamor95@gmail.com>
References: <20250215103159.106343-1-clamor95@gmail.com>
	<20250215103159.106343-2-clamor95@gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 15 Feb 2025 12:31:57 +0200
Svyatoslav Ryhel <clamor95@gmail.com> wrote:

> AL3000a is an ambient light sensor quite closely related to
> exising AL3010 and can reuse exising schema for AL3010.
Hi,

For a binding like this, also explain how they are different enough that
we can't use a fallback compatible.

Thanks,

Jonathan

> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../devicetree/bindings/iio/light/dynaimage,al3010.yaml     | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/light/dynaimage,al3010.yaml b/Documentation/devicetree/bindings/iio/light/dynaimage,al3010.yaml
> index a3a979553e32..f1048c30e73e 100644
> --- a/Documentation/devicetree/bindings/iio/light/dynaimage,al3010.yaml
> +++ b/Documentation/devicetree/bindings/iio/light/dynaimage,al3010.yaml
> @@ -4,14 +4,16 @@
>  $id: http://devicetree.org/schemas/iio/light/dynaimage,al3010.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Dyna-Image AL3010 sensor
> +title: Dyna-Image AL3000a/AL3010 sensor
>  
>  maintainers:
>    - David Heidelberg <david@ixit.cz>
>  
>  properties:
>    compatible:
> -    const: dynaimage,al3010
> +    enum:
> +      - dynaimage,al3000a
> +      - dynaimage,al3010
>  
>    reg:
>      maxItems: 1


