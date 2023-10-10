Return-Path: <devicetree+bounces-7381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D94717C040D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:04:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8ECC6281B86
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94F8F38DDF;
	Tue, 10 Oct 2023 19:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=t-8ch.de header.i=@t-8ch.de header.b="kSiUyrrs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACC830FAC
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:04:15 +0000 (UTC)
Received: from todd.t-8ch.de (todd.t-8ch.de [159.69.126.157])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5098393;
	Tue, 10 Oct 2023 12:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-8ch.de; s=mail;
	t=1696964646; bh=3MpUfcVd0SIAi956WNWhjBSMQfD+4nqTDl8IQsMjp04=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kSiUyrrssGx4J7Y/Djzrr+iFdAHLnoTbeh1F2XcHUrVKwS2VH6SEoVG6C9aSAkUDH
	 2GCrqhnW6G0dV+45uHauRzSAZz/F1sbdn4SWgSX5YTAgVoC7gRwDIXAWHuqqMyljtu
	 uRRKo5c7nYUokZ5FjTd1rU7vy6pBEAecGrVUDWYs=
Date: Tue, 10 Oct 2023 21:04:05 +0200
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas@t-8ch.de>
To: Anshul Dalal <anshulusr@gmail.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shuah Khan <skhan@linuxfoundation.org>, linux-kernel-mentees@lists.linuxfoundation.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] input: joystick: driver for Adafruit Seesaw
 Gamepad
Message-ID: <8fbd4f6c-b1cf-4924-9e4b-2b9455b42e41@t-8ch.de>
References: <20231010184827.1213507-1-anshulusr@gmail.com>
 <20231010184827.1213507-2-anshulusr@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231010184827.1213507-2-anshulusr@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 2023-10-11 00:18:24+0530, Anshul Dalal wrote:
> Adds a driver for a mini gamepad that communicates over i2c, the gamepad
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
> Driver tested on RPi Zero 2W
> 
> Signed-off-by: Anshul Dalal <anshulusr@gmail.com>

In general:

Reviewed-by: Thomas Weißschuh <linux@weissschuh.net>

But one more nitpick below:

> [..]

> +static void seesaw_poll(struct input_dev *input)
> +{
> +	struct seesaw_gamepad *private = input_get_drvdata(input);
> +	struct seesaw_data data;
> +	int err;
> +
> +	err = seesaw_read_data(private->i2c_client, &data);
> +	if (err != 0)
> +		return;

This should be logged at debug level, so the user has some sort of
chance to figure out if something is broken.

> +
> +	input_report_abs(input, ABS_X, data.x);
> +	input_report_abs(input, ABS_Y, data.y);
> +	input_report_key(input, BTN_EAST, data.button_a);
> +	input_report_key(input, BTN_SOUTH, data.button_b);
> +	input_report_key(input, BTN_NORTH, data.button_x);
> +	input_report_key(input, BTN_WEST, data.button_y);
> +	input_report_key(input, BTN_START, data.button_start);
> +	input_report_key(input, BTN_SELECT, data.button_select);
> +	input_sync(input);
> +}

> [..]

