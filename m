Return-Path: <devicetree+bounces-252139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A573CFB94A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 02:23:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3E093041560
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 01:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99FDB78F26;
	Wed,  7 Jan 2026 01:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwpYqf3U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCC120ED;
	Wed,  7 Jan 2026 01:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767748884; cv=none; b=I+eodahlYrRcQ1dt/kzIL8CgJFLgHOZhBr0GpxuDoo0iyjpcasbhQMSec8YPJTAEIpKooSn/k9fvjbpl2X9m228y4U2BG0UkMrxByk8xYnRXLeOt6PPXM1gh4gXUrkjDhUXu0XsB7uIcJBs1W3ikZs3LO7dtOxmcRA9eZqj0Els=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767748884; c=relaxed/simple;
	bh=INPQULfnOT2iZKP/PXsRjM56lcKkldiSn3VbNWYDo3I=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=A8Bvg1TjH41ePj/lAfBBWPW2dQWUSLsyW0dCLyPcwirMxMKKo4YqoQhp2k1Hm5MHOzz7MVrpaVynBoPRkFhnDTAqV9ahMdq1yC8ycYpbUf9J8+VG1w54k3MlWNVtB+gropEB+IQlTy4dqwECK7WUexZIP6Bj2T2K92gRI8hAPfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwpYqf3U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0C3FC116C6;
	Wed,  7 Jan 2026 01:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767748884;
	bh=INPQULfnOT2iZKP/PXsRjM56lcKkldiSn3VbNWYDo3I=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=XwpYqf3UuhEDpCkl/323vN1dZ6Mqwx/utna740qsfyMW0VP9Cr2zaRIrrOaVxiFcF
	 LZ7EPI8L4WGrlsLLx2oZs3vC42XvCRRsGey/iX5kWglRU9HC9KzYd5DfW3o9VnpiLE
	 0PjMhESLmxkX21gkzPd5aniB/UdKjuavFG+OVcvVaTdlOLIOfowinsiVowMAFGkdiC
	 S7fu8/EzbqkkEwPTVDBoFwKul/z3MrBS4ceXdsaJHTHJhRQY0AawGPA0feMeCMOJwW
	 kv8wOYKJqNstFt9GE2CvqW3N8KNfCelKpmlSkwTPXYWZv6ae4bTsBdjKQjNxPc++FB
	 cYgaNOmW1c7zg==
Date: Tue, 06 Jan 2026 19:21:22 -0600
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: sanastasio@raptorengineering.com, linux-kernel@vger.kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, lee@kernel.org, 
 Georgy.Yakovlev@sony.com, conor+dt@kernel.org, devicetree@vger.kernel.org
To: Timothy Pearson <tpearson@raptorengineering.com>
In-Reply-To: <20260107002136.3121607-2-tpearson@raptorengineering.com>
References: <20260107002136.3121607-1-tpearson@raptorengineering.com>
 <20260107002136.3121607-2-tpearson@raptorengineering.com>
Message-Id: <176774888288.3145768.7199015384251468516.robh@kernel.org>
Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc


On Tue, 06 Jan 2026 18:21:33 -0600, Timothy Pearson wrote:
> From: Shawn Anastasio <sanastasio@raptorengineering.com>
> 
> The Sony Cronos Platform Controller is a multi-purpose platform controller
> that provides both a watchdog timer and an LED controller for the Sony
> Interactive Entertainment Cronos x86 server platform. As both functions
> are provided by the same CPLD, a multi-function device is exposed as the
> parent of both functions.
> 
> Add a DT binding for this device.
> 
> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
> ---
>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++++++
>  1 file changed, 128 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/sony,cronos-smc.example.dtb: smc@3f (sony,cronos-smc): Unevaluated properties are not allowed ('timeout-sec' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/sony,cronos-smc.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260107002136.3121607-2-tpearson@raptorengineering.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


