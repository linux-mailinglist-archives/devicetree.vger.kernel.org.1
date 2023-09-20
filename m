Return-Path: <devicetree+bounces-1756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CC87A821F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:57:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C48D1C20B5A
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE207328BD;
	Wed, 20 Sep 2023 12:57:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF62663B2
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 12:57:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 542B4C433C7;
	Wed, 20 Sep 2023 12:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695214661;
	bh=BEisPBW1KmRtjT0oASI8wcLRc3DN9B2NAkRyypriO4c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=epCiZInOoCbpxjCdjLMW2InMLbNS+gI1bdgkUZm6GNs5MUjUeXpqAh6I1m3ZEe4lh
	 VGqMvfAxWlROij4oB6Irk1fEbrtp//aeUmw3bSdQEXfrE6qiZ06Wb4472o3AZN78CT
	 Q/4ELlqfcVoBmMWwJdRjTys1eLuU4i5jOWfnfKf6AfoKVFmF4eX33lwm3KnOSMz746
	 KS0kXiKmJ5ORY5R/qYSdu1HdePrPRkBqUtNehb/r69reG8bM6Y/HfML5UM06vRHvvq
	 jmAz/slVpAgad01z2H/w79rcPLPGpoxn488UjfAzR/d5dBwSFJCM8F9RRJ0RfixCJW
	 h8sXuXece5RoQ==
Received: (nullmailer pid 2032568 invoked by uid 1000);
	Wed, 20 Sep 2023 12:57:39 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20230920115044.53098-1-tony@atomide.com>
References: <20230920115044.53098-1-tony@atomide.com>
Message-Id: <169521465924.2032537.6288372017884083091.robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: input: gpio-keys: Allow optional
 dedicated wakeirq
Date: Wed, 20 Sep 2023 07:57:39 -0500


On Wed, 20 Sep 2023 14:50:43 +0300, Tony Lindgren wrote:
> Allow configuring an optional dedicated wakeirq for gpio-keys that
> some SoCs have.
> 
> Let's use the common interrupt naming "irq" and "wakeup" that we already
> have in use for some drivers and subsystems like i2c framework.
> 
> Note that the gpio-keys interrupt property is optional. If only a gpio
> property is specified, the driver tries to translate the gpio into an
> interrupt.
> 
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
> 
> Changes since v1:
> 
> - Run make dt_binding_check on the binding
> 
> - Add better checks for interrupt-names as suggested by Rob, it is
>   now required if two interrupts are configured
> 
> - Add more decription entries
> 
> - Add a new example for key-wakeup
> 
> ---
>  .../devicetree/bindings/input/gpio-keys.yaml  | 41 ++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/input/gpio-keys.yaml:36:13: [warning] wrong indentation: expected 14 but found 12 (indentation)
./Documentation/devicetree/bindings/input/gpio-keys.yaml:38:13: [warning] wrong indentation: expected 14 but found 12 (indentation)
./Documentation/devicetree/bindings/input/gpio-keys.yaml:47:13: [warning] wrong indentation: expected 14 but found 12 (indentation)
./Documentation/devicetree/bindings/input/gpio-keys.yaml:49:13: [warning] wrong indentation: expected 14 but found 12 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230920115044.53098-1-tony@atomide.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


