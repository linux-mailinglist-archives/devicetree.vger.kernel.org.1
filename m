Return-Path: <devicetree+bounces-244654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B1BCA7918
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 13:31:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 63BC430160F8
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 12:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CADAE32D0C4;
	Fri,  5 Dec 2025 12:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXhIB5b0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825FB2FBDF5;
	Fri,  5 Dec 2025 12:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764937901; cv=none; b=KN2uAZVLvCrzwyp1Pyk8rMjwGwDSlz/TeszRsiAeO2vnZ7/2peCXRIyj5U+CZOuZtMqnoTzE4JMREAxxUiPGMM/RkWApdG4u8Y7JKpBft+Tw6bXFAYp3jJXONxnL1dXyYS8uKf+DOPyitciul36PohWjHLUSdY6Rx7Fdabpt88k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764937901; c=relaxed/simple;
	bh=+CRp8yynNybcaLkCmQEtMgcN2+GKbGVhIF5SJyTicA8=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=KNS7ASEFdeyZkf3xDHx2Z8JYXzARYdxvRq13J+gGAQ0M1E64ZtSMqUI7Dq7mVjGh2/UxvCLVkJwOV+8aQWt3LUo2SHsY/t4OHgP5IhGJg/MtX/qA28x1wz0a17qSyvlg5SsM71DZtUpzf4eARnSOtkXD8s/KqBcRcZNtb2iDecA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXhIB5b0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73F46C4CEF1;
	Fri,  5 Dec 2025 12:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764937900;
	bh=+CRp8yynNybcaLkCmQEtMgcN2+GKbGVhIF5SJyTicA8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=tXhIB5b0mw0rKTR8eoXzV6oxQnxEw/MzuhlOAvEmOsk57XOh9k4uL8rF2J6AUNVTV
	 ONYrWBrxjMW2IczWFxsNsRKQGPnHy3feKLHvqUNSEnpTMzBxQmaSSZf5gUEavb1z7R
	 V80WFmiCmR30pCYp4QIDFAynSg+HhDbeJJOFe6RStTj5YnYSWbjMfvMsRICH0a1WPl
	 09Lmc5z5Nq7NJMipN/9sVTRA8DqkwOqqfksHtnT9lbzeNPXPguuvgxrWmidL4WTw7O
	 Go5BUZBaiCmjrLBM8mY6Y2hUhHT8H/EaorozADDM1vSPz7yxX74eiz1ZWsTqMF8cfZ
	 O9F9pIJh7KlUA==
Date: Fri, 05 Dec 2025 06:31:37 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
 Billy Tsai <billy_tsai@aspeedtech.com>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-aspeed@lists.ozlabs.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org
To: Rebecca Cran <rebecca@bsdio.com>
In-Reply-To: <20251204210238.40742-4-rebecca@bsdio.com>
References: <20251204210238.40742-1-rebecca@bsdio.com>
 <20251204210238.40742-4-rebecca@bsdio.com>
Message-Id: <176493761251.3641290.13291920660908033862.robh@kernel.org>
Subject: Re: [PATCH v3 3/3] dt-bindings: hwmon: (aspeed,g5-pwm-tacho) Move
 info from txt to yaml


On Thu, 04 Dec 2025 14:02:36 -0700, Rebecca Cran wrote:
> Move the documentation for the aspeed,ast2400-pwm-tacho and
> aspeed,ast2500-pwm-tacho devices from a text file to yaml file.
> 
> This allows for dts files containing these devices to be validated.
> 
> Where the text file documenation of required properties differ from the
> implementation, prefer the implementation and update the schema to
> match.
> 
> "#size-cells" was 1 but implementation is 0.
> "#cooling-cells" was marked as required but appears optional.
> 
> In the fan subnode, "cooling-levels" is optional according to the code
> in drivers/hwmon/aspeed-pwm-tacho.c.
> 
> Signed-off-by: Rebecca Cran <rebecca@bsdio.com>
> ---
>  Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml | 91 ++++++++++++++++++++
>  Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt  | 73 ----------------
>  2 files changed, 91 insertions(+), 73 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml: $id: Cannot determine base path from $id, relative path/filename doesn't match actual path or filename
 	 $id: http://devicetree.org/schemas/hwmon/aspeed,g5-pwm-tacho.yaml
 	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml
cooling-levels: size (6) error for type uint32-array
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.example.dtb: pwmtachocontroller@1e786000 (aspeed,ast2500-pwm-tacho): '#cooling-cells' does not match any of the regexes: '^fan@[0-9]+$', '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/hwmon/aspeed,g5-pwm-tacho.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.example.dtb: pwmtachocontroller@1e786000 (aspeed,ast2500-pwm-tacho): fan@0:cooling-levels: b'}\x97\xb1\xcb\xe5\xff' is not of type 'array'
	from schema $id: http://devicetree.org/schemas/hwmon/aspeed,g5-pwm-tacho.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.example.dtb: fan@0: cooling-levels: b'}\x97\xb1\xcb\xe5\xff' is not of type 'object', 'integer', 'array', 'boolean', 'null'
	from schema $id: http://devicetree.org/schemas/dt-core.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251204210238.40742-4-rebecca@bsdio.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


