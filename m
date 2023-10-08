Return-Path: <devicetree+bounces-6828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E0C7BCFC6
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 21:11:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F04CF281101
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 19:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0490A182DC;
	Sun,  8 Oct 2023 19:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=t-8ch.de header.i=@t-8ch.de header.b="h2gP711h"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A5711725
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 19:11:00 +0000 (UTC)
Received: from todd.t-8ch.de (todd.t-8ch.de [IPv6:2a01:4f8:c010:41de::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC793AC;
	Sun,  8 Oct 2023 12:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-8ch.de; s=mail;
	t=1696792257; bh=HTTJDJafn8qJ5y8ypB1X2wmPBXY2xmjffTqJQzQtOmM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h2gP711hueezP+66rwMJLWYR4gkQ+T+bNaaoU1UBRrB5ACZvmSlGFC64Y1V/FNuNy
	 vg5SHL6shRKFt4Am7e6nAtNyg5GSrGzRuz3erfCVkufo+nUhSbZxsMrfUAE+EtDsL/
	 DbXCjvYZXzhT80IzWgGBfSVtjFYDC/KDoBZvldhY=
Date: Sun, 8 Oct 2023 21:10:56 +0200
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas@t-8ch.de>
To: Anshul Dalal <anshulusr@gmail.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shuah Khan <skhan@linuxfoundation.org>, linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH v2 2/2] input: joystick: driver for Adafruit Seesaw
 Gamepad
Message-ID: <54334f96-a1cc-439b-9de2-ec0187495f35@t-8ch.de>
References: <20231008172435.2391009-1-anshulusr@gmail.com>
 <20231008172435.2391009-2-anshulusr@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231008172435.2391009-2-anshulusr@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 2023-10-08 22:54:34+0530, Anshul Dalal wrote:
> [..]
> +
> +	input_report_abs(input, ABS_X, data.x);
> +	input_report_abs(input, ABS_Y, data.y);
> +	input_report_key(input, BTN_A, data.button_a);
> +	input_report_key(input, BTN_B, data.button_b);
> +	input_report_key(input, BTN_X, data.button_x);
> +	input_report_key(input, BTN_Y, data.button_y);

FYI the button layout on this device is different from common commercial
gamepads like XBox, Playstation and Logitech.
This seems to be common to all gamepads from Adafruit.

Adafruit:

    X
 Y     A
    B

Others:

    Y
 X     B
    A


In input-event-codes.h the symbol BTN_A actually maps to BTN_SOUTH,
matching the common layout. But as you can see this is wrong for this
device.
(Same for BTN_B and BTN_EAST)

Weirdly enough for BTN_X/BTN_NORTH and BTN_Y/BNT_WEST the aliasing is
correct for Adafruit and wrong for the others.

Not sure how to fix this correctly. Maybe the input maintainers know.

> +	input_report_key(input, BTN_START, data.button_start);
> +	input_report_key(input, BTN_SELECT, data.button_select);
> +	input_sync(input);
> +}

