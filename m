Return-Path: <devicetree+bounces-6714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C375F7BC898
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 17:23:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80124281E66
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 15:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE87D2AB31;
	Sat,  7 Oct 2023 15:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6aZYe0E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C014420B20
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 15:23:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 832C8C433C7;
	Sat,  7 Oct 2023 15:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696692223;
	bh=9FvghTJx3n5zJscHtVU/mx4NrhT3yTXI6D36vN8bU9w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=m6aZYe0E/NxsHBMhWo5vZPAFmMp/9ZbTe+uxADVYPJXpE4qfG09wNMPFYJihec30v
	 xFUIxuruWES+8S1Q1FUzKpk5v3NUhXlfZSvUd/QePuK4VadTXJYPahQYhN/4goU85K
	 eLbkMWU7UroC3LhuLYlWVXDaUOfjbUfiYXYsmofNp5FLS+jik5183XCMz+09N2RoQz
	 863AEDvWrqsDV67Qo5EXrXb0ouCgbFKfvZcAB4nnnR2Uf+CklDPBvqvcDdvSkWf4Mk
	 KV7BBS1XkVEN9o5LblvfzGdjQDYlh7InI6z/OSUtFAePvqLZgycwsqcJFstWqdkQaq
	 IVKtrgZDVkCog==
Received: (nullmailer pid 2012352 invoked by uid 1000);
	Sat, 07 Oct 2023 15:23:41 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Anshul Dalal <anshulusr@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-kernel-mentees@lists.linuxfoundation.org, Shuah Khan <skhan@linuxfoundation.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-input@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20231007144052.1535417-1-anshulusr@gmail.com>
References: <20231007144052.1535417-1-anshulusr@gmail.com>
Message-Id: <169669222125.2012336.4347656576097036742.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: Add bindings for Adafruit Seesaw
 Gamepad
Date: Sat, 07 Oct 2023 10:23:41 -0500


On Sat, 07 Oct 2023 20:10:49 +0530, Anshul Dalal wrote:
> A simple driver for a mini gamepad that communicates over i2c, the gamepad
> has bidirectional thumb stick input and six buttons.
> 
> The gamepad chip utilizes the open framework from Adafruit called 'Seesaw'
> to transmit the ADC data for the joystick and digital pin state for the
> buttons. I have only implemented the functionality required to receive the
> thumb stick and button state.
> 
> Steps in reading the gamepad state over i2c:
>   1. Reset the registers
>   2. Set the pin mode of the pins specified by the `BUTTON_MASK` to input
>       `BUTTON_MASK`: A bit-map for the six digital pins internally
>        connected to the joystick buttons.
>   3. Enable internal pullup resistors for the `BUTTON_MASK`
>   4. Bulk set the pin state HIGH for `BUTTON_MASK`
>   5. Poll the device for button and joystick state done by:
>       `seesaw_read_data(struct i2c_client *client, struct seesaw_data *data)`
> 
> Product page:
>   https://www.adafruit.com/product/5743
> Arduino driver:
>   https://github.com/adafruit/Adafruit_Seesaw
> 
> Tested on RPi Zero 2W
> 
> Signed-off-by: Anshul Dalal <anshulusr@gmail.com>
> ---
>  .../bindings/input/adafruit_seesaw.yaml       | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/adafruit_seesaw.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/input/adafruit_seesaw.yaml:4:6: [error] string value is redundantly quoted with any quotes (quoted-strings)
./Documentation/devicetree/bindings/input/adafruit_seesaw.yaml:5:10: [error] string value is redundantly quoted with any quotes (quoted-strings)

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/input/adafruit_seesaw.example.dts:20.13-26: Warning (reg_format): /example-0/seesaw_gamepad@50:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/input/adafruit_seesaw.example.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/input/adafruit_seesaw.example.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/input/adafruit_seesaw.example.dtb: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/input/adafruit_seesaw.example.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/input/adafruit_seesaw.example.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/input/adafruit_seesaw.example.dtb: seesaw_gamepad@50: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/input/adafruit_seesaw.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231007144052.1535417-1-anshulusr@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


