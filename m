Return-Path: <devicetree+bounces-7795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A477C5879
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 17:49:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5DEE28232C
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 15:49:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58D551A263;
	Wed, 11 Oct 2023 15:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neKr/JAW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5872510A
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 15:49:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E50FCC433C7;
	Wed, 11 Oct 2023 15:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697039378;
	bh=+4vMMnbz6QM3xqt6SUWU/u/wTBq1TQ2bMWhWyVpP1ck=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=neKr/JAWpIGZ6cQ0odUAwAzsX3izewlUsu5qdv35VN0D0QoFSqseHZk/VhagElKQ7
	 xO/Ep7SaCKgWM9l2v3e9586y8od72dvk7klu6xqQROrtbzceADDqAQZ9HU88O8eEo2
	 A1tkawJa3OkYvdouGHXKnYtjiLqtobcRHjy3L+13H6maeJxrYjzpnWAWNutUG/BOFg
	 K5vncX1Z4QhvXx3Rm9P3k7es1t7wWcZyDH3bM812FIHy1bi7WyNrx8MlmX+FYoSxF+
	 GErynuIp6oa2BbpPsQdRkeeggaHiZHdJkCL7/U+mh/ld31fKEpSxLaOpxR/y7NvWsB
	 YHcVjWyd/pqaQ==
Received: (nullmailer pid 793454 invoked by uid 1000);
	Wed, 11 Oct 2023 15:49:35 -0000
Date: Wed, 11 Oct 2023 10:49:35 -0500
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Ilia Lin <ilia.lin@kernel.org>, Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Georgi Djakov <djakov@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, Christian Marangi <ansuelsmth@gmail.com>, Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH v4 08/23] soc: qcom: Add driver for Qualcomm Krait L2
 cache scaling
Message-ID: <20231011154935.GA785564-robh@kernel.org>
References: <20230827115033.935089-1-dmitry.baryshkov@linaro.org>
 <20230827115033.935089-9-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230827115033.935089-9-dmitry.baryshkov@linaro.org>

On Sun, Aug 27, 2023 at 02:50:18PM +0300, Dmitry Baryshkov wrote:
> Add a simple driver that handles scaling of L2 frequency and voltages.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

[...]

> +static const struct of_device_id krait_l2_match_table[] = {
> +	{ .compatible = "qcom,krait-l2-cache" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, krait_l2_match_table);
> +
> +static struct platform_driver krait_l2_driver = {
> +	.probe = krait_l2_probe,
> +	.remove = krait_l2_remove,
> +	.driver = {
> +		.name = "qcom-krait-l2",
> +		.of_match_table = krait_l2_match_table,
> +		.sync_state = icc_sync_state,
> +	},
> +};

As I mentioned in the other thread, cache devices already have a struct 
device. Specifically, they have a struct device (no subclass) on the 
cpu_subsys bus type. So there should be no need for a platform device 
and second struct device.

See drivers/acpi/processor_driver.c for an example. Or grep any use of 
"cpu_subsys".

Rob

