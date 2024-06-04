Return-Path: <devicetree+bounces-72255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BE88FB322
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 15:05:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 817831C24B08
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BD56146013;
	Tue,  4 Jun 2024 13:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qif0UDwL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB08144D2E;
	Tue,  4 Jun 2024 13:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717506330; cv=none; b=jtILjBWvKa9cSRVXXLQiqtImDatPeh8k0FwK2MGveWca2GyxC8dWN6nMeCtEPTG0RUm+jzdBiDik/FpGR/n8X1XsXwctlvNCF8iPPJNJJDmpQieNXZBTiwPHXtGmgwTGH0nMLoxDw+AGqDWDvTtx7ofMlmxqpug6cWtEvu2zCAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717506330; c=relaxed/simple;
	bh=9EKMSE4WwZwbHhI87SmvVkxv+6q5bsofM8XJUDQ9ajY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H/c8McqzPtAElAqRW8vXnx2RzUc9KD1U1LGeUC+IflVj5dnzeOEVc5gfASEvc9vSBonK+hc/oDjccslmKIQ2Ak17HWf4L0CCQ8jbfoNieJR3IExrJe2ZoT3GLODjDl7uRQG0xqCZJm0YY27NSsCv++c3Z+vk8l0td4BQ54yytg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qif0UDwL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 594BAC2BBFC;
	Tue,  4 Jun 2024 13:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717506329;
	bh=9EKMSE4WwZwbHhI87SmvVkxv+6q5bsofM8XJUDQ9ajY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qif0UDwLifv6BkCrZFJHf9Cga0EV9h0UEzXW4e7t/NLrlVc2YyZA4aDCZbF0JkZ2N
	 ekOvCmlyXm+3Efwig/zKswIc+QfBfwOAsX1DflYCuPijz6wcol6BEmO5LDOF18CjMh
	 PAmKXffV7aWgrx9UkHxJ3E4DldyYCCLMXlp/V5QFQCJpKc9FrWBegt9HpUZ3AXPleV
	 xvbxT06FF2WAp6DAb3VVCQCOm1X3uDgQMTaWpK/QD+9QpNCOHteqgSTD892vn9sCkd
	 +mcb9I/Ad2Jp7XJ6eGe4HsdHW2XaX3nhUDSXLZ6mlxYSawDKpHS04eEIZOgzNOA6F+
	 6QFQx+xkg4QyQ==
Date: Tue, 4 Jun 2024 08:05:26 -0500
From: Rob Herring <robh@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	patches@lists.linux.dev, kunit-dev@googlegroups.com,
	linux-kselftest@vger.kernel.org, devicetree@vger.kernel.org,
	Brendan Higgins <brendan.higgins@linux.dev>,
	David Gow <davidgow@google.com>, Rae Moar <rmoar@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Daniel Latypov <dlatypov@google.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v5 07/11] dt-bindings: test: Add single clk consumer
Message-ID: <20240604130526.GA12945-robh@kernel.org>
References: <20240603223811.3815762-1-sboyd@kernel.org>
 <20240603223811.3815762-8-sboyd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240603223811.3815762-8-sboyd@kernel.org>

On Mon, Jun 03, 2024 at 03:38:04PM -0700, Stephen Boyd wrote:
> Describe a binding for a device that consumes a single clk in DT. This
> will initially be used by a KUnit test to clk_get() the clk registered
> by of_fixed_clk_setup() and test that it is setup properly.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Brendan Higgins <brendan.higgins@linux.dev>
> Cc: David Gow <davidgow@google.com>
> Cc: Rae Moar <rmoar@google.com>
> Signed-off-by: Stephen Boyd <sboyd@kernel.org>
> ---
>  .../test/test,single-clk-consumer.yaml        | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/test/test,single-clk-consumer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/test/test,single-clk-consumer.yaml b/Documentation/devicetree/bindings/test/test,single-clk-consumer.yaml
> new file mode 100644
> index 000000000000..8c384c48707d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/test/test,single-clk-consumer.yaml
> @@ -0,0 +1,34 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/test/test,single-clk-consumer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Test consumer of a single clock
> +
> +maintainers:
> +  - Stephen Boyd <sboyd@kernel.org>
> +
> +description:
> +  A consumer of a single clock used in tests.
> +
> +properties:
> +  compatible:
> +    const: test,single-clk-consumer

I don't know if there's much value in defining bindings for tests. We 
could alternatively make 'test,' opt out of everything. There's already 
some support in dtschema for this with 'foo,'.

I need something for the DT unittest as well. 

Rob

