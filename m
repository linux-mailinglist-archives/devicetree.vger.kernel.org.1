Return-Path: <devicetree+bounces-241217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD52CC7AF71
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 18:00:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CB113A3373
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 17:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F1152ED85F;
	Fri, 21 Nov 2025 17:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXVqhXKQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291AA2EB872;
	Fri, 21 Nov 2025 17:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763744443; cv=none; b=SEVFqWoTAZTvkHRK/ve08NHWCDdMMZKfaItLssIP/roKwEAX+A9MePEejyCOR3GoNLH02YE4oYlJ8FjcSSCZOBObEmG/MvXo65Ux1ezl4bWRRObUkORrfBFmxuEYhO0QgZdW2bmURZQNt7dVkHpAOVjxYiOwR29HZpUZDu/SErs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763744443; c=relaxed/simple;
	bh=90DNGtFm9MdQlp4AmTDRnAxa7ja0sbcC058ubJ/XCpw=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=mWwZt2JC14Ls9fwF/iVBeyt4YZJEVChubBKd+MKf0It+9NZiq6xQggKOrYvLtRh+UmVSiest9xHcUnVdajZ1MysbaYSQX9bOh1DPYTEq4Y0mUn6YNQXyDi1UZCFD0wuX1bfhJ/GkVMFH1nBPcDzWXOLT1CMv5nN6RH7SkQcJ9Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXVqhXKQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58C79C116D0;
	Fri, 21 Nov 2025 17:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763744442;
	bh=90DNGtFm9MdQlp4AmTDRnAxa7ja0sbcC058ubJ/XCpw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=QXVqhXKQsC6vuM6z3TZJVHYw9E2N8BceNMfCU1JtZYQ68/XXZg61NXd+fcuWoybbs
	 m+gutwnYEnCnNLvDInugffbf6Yv9bNdhrwq5rvl0NPaZcTB4KtneQT/TdKmvjTDtwC
	 0SEVb7NSsf0ombKmQSJtUKNiY5EkjvtuAVCszqp9CgNIkqwsb2Cu0xTtOHpZ503+MB
	 Vsg0kyP7Q74kvbGwUcEN+hYObx2LbE2Gys8tDJlDl7ZeP8C9YOiMsK6pd3iZF9o7YE
	 NVC7CYwgT3ESn9aUWU0jRWXqiCyHe82/sRK/Kf/dBx+zo3F1/yjLQld8Ew/IAcQQUm
	 RkTuipMD7zikQ==
Date: Fri, 21 Nov 2025 11:00:41 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 Vignesh Raghavendra <vigneshr@ti.com>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 Richard Weinberger <richard@nod.at>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
In-Reply-To: <20251121-mtd-memregion-v2-2-c5535fdcebe4@bootlin.com>
References: <20251121-mtd-memregion-v2-0-c5535fdcebe4@bootlin.com>
 <20251121-mtd-memregion-v2-2-c5535fdcebe4@bootlin.com>
Message-Id: <176374444102.1332163.10540866248088706987.robh@kernel.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: mtd: physmap: Allow using
 memory-region to access memory resources


On Fri, 21 Nov 2025 16:42:36 +0100, Gregory CLEMENT wrote:
> Enable access to memory resources not only via I/O address using reg,
> but also through a portion of main memory using memory-region. To
> achieve this, new compatible strings have been introduced: mtd-mem and
> mtd-memro.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  .../devicetree/bindings/mtd/mtd-physmap.yaml       | 59 +++++++++++++++-------
>  1 file changed, 40 insertions(+), 19 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/mtd-physmap.example.dtb: memlog (mtd-mem): $nodename:0: 'memlog' does not match '^(flash|.*sram|nand)(@.*)?$'
	from schema $id: http://devicetree.org/schemas/mtd/mtd-physmap.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251121-mtd-memregion-v2-2-c5535fdcebe4@bootlin.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


