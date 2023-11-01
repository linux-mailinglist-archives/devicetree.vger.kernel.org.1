Return-Path: <devicetree+bounces-13381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C68797DDDDD
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 09:45:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 039811C20BCB
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 08:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AC70568E;
	Wed,  1 Nov 2023 08:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=t-8ch.de header.i=@t-8ch.de header.b="O/NmY7tT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675FC46BD
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 08:45:22 +0000 (UTC)
Received: from todd.t-8ch.de (todd.t-8ch.de [IPv6:2a01:4f8:c010:41de::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67CAEA2;
	Wed,  1 Nov 2023 01:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-8ch.de; s=mail;
	t=1698828315; bh=dUn69NpLHm95YlSQflbcp4YFtXVEb5UF3XD5Lg1d5gg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O/NmY7tTzxPyPRa6lTNocgFIqOJjvGDfR88RyqlmXkdEZ7KnUY4FVhnBV3jXO8kEI
	 M2K26fSQ1MFk/XD4lCApNP3GBO+iQMfsLYdH+097QrWsdV0BaKT/kvH3dglzSYgE7e
	 +x288rUcOvxWX4XNS3TIhOxl1Pwtol6ggbdpS4rA=
Date: Wed, 1 Nov 2023 09:45:14 +0100
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas@t-8ch.de>
To: Anshul Dalal <anshulusr@gmail.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff LaBundy <jeff@labundy.com>, Shuah Khan <skhan@linuxfoundation.org>, 
	linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/2] input: joystick: driver for Adafruit Seesaw
 Gamepad
Message-ID: <2241e06f-ef90-4299-97cd-cfb8fd569065@t-8ch.de>
References: <20231027051819.81333-1-anshulusr@gmail.com>
 <20231027051819.81333-2-anshulusr@gmail.com>
 <d1dd2142-546f-42b7-8966-ab75fd4f8817@t-8ch.de>
 <efea5ae2-7e41-4b78-a283-1f907be560b0@gmail.com>
 <9c9f6171-f879-46f5-81d2-6764257a49eb@t-8ch.de>
 <152d15c4-10bb-45fe-9b9c-b323535a921f@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <152d15c4-10bb-45fe-9b9c-b323535a921f@gmail.com>

Hi Anshul,

On 2023-11-01 09:50:36+0530, Anshul Dalal wrote:
> On 10/31/23 07:53, Thomas Weißschuh wrote:
> > Oct 31, 2023 03:10:50 Anshul Dalal <anshulusr@gmail.com>:
> >> Thanks for the review! The requested changes will be addressed in the
> >> next patch version though I had a few comments below:
> >>
> >> On 10/27/23 11:44, Thomas Weißschuh wrote:
> >>> Hi Anshul,
> >>>
> >>> thanks for the reworks!
> >>>
> >>> Some more comments inline.
> >>>
> >>> On 2023-10-27 10:48:11+0530, Anshul Dalal wrote:
> > 
> > [..]
> > 
> >>>> +struct seesaw_button_description {
> >>>> +   unsigned int code;
> >>>> +   unsigned int bit;
> >>>> +};
> >>>> +
> >>>> +static const struct seesaw_button_description seesaw_buttons[] = {
> >>>> +   {
> >>>> +       .code = BTN_EAST,
> >>>> +       .bit = SEESAW_BUTTON_A,
> >>>> +   },
> >>>> +   {
> >>>> +       .code = BTN_SOUTH,
> >>>> +       .bit = SEESAW_BUTTON_B,
> >>>> +   },
> >>>> +   {
> >>>> +       .code = BTN_NORTH,
> >>>> +       .bit = SEESAW_BUTTON_X,
> >>>> +   },
> >>>> +   {
> >>>> +       .code = BTN_WEST,
> >>>> +       .bit = SEESAW_BUTTON_Y,
> >>>> +   },
> >>>> +   {
> >>>> +       .code = BTN_START,
> >>>> +       .bit = SEESAW_BUTTON_START,
> >>>> +   },
> >>>> +   {
> >>>> +       .code = BTN_SELECT,
> >>>> +       .bit = SEESAW_BUTTON_SELECT,
> >>>> +   },
> >>>> +};
> >>>
> >>> This looks very much like a sparse keymap which can be implemented with
> >>> the helpers from <linux/input/sparse-keymap.h>.
> >>>
> >>
> >> When going through the API provided by sparse-keymap, I could only see
> >> the use for sparse_keymap_report_entry here. Which leads to the
> >> following refactored code:
> >>
> >> static const struct key_entry seesaw_buttons_new[] = {
> >>     {KE_KEY, SEESAW_BUTTON_A, {BTN_SOUTH}},
> >>     {KE_KEY, SEESAW_BUTTON_B, {BTN_EAST}},
> > 
> > No braces I think.
> > 
> 
> Since the last field in key_entry is a union, the braces seem to be
> required.

Indeed.

To make the union more visible explicit this could be done:

{ KE_KEY, SEESAW_BUTTON_A, .keycode = BTN_SOUTH }

> 
> >>     ...
> >> };
> >>
> >> for (i = 0; i < ARRAY_SIZE(seesaw_buttons_new); i++) {
> >>     sparse_keymap_report_entry(input, &seesaw_buttons_new[i],
> >>         data.button_state & BIT(seesaw_buttons_new[i].code),
> >>         false);
> >> }
> >>
> >> I don't think this significantly improves the code unless you had some
> >> other way to use the API in mind.
> > 
> > I thought about sparse_keymap_setup() and sparse_keymap_report_event().
> > 
> > It does not significantly change the code but would be a standard API.
> > 
> 
> Thanks for pointing me in the right direction, do you think the
> following implementation of the API is acceptable for the driver. Since
> I couldn't find a driver for any similar device using the API in this
> manner.
> 
> inside seesaw_probe():
> 
> err = sparse_keymap_setup(seesaw->input_dev, seesaw_buttons_new, NULL);
> if (err) {
> 	dev_err(&client->dev,
> 		"failed to set up input device keymap: %d\n", err);
> 	return err;
> }

Yes, and it replaces the calls to input_set_capability().

> inside seesaw_poll():
> 
> for (i = 0; i < ARRAY_SIZE(seesaw_buttons_new); i++) {
> 	if (!sparse_keymap_report_event(
> 		input, seesaw_buttons_new[i].code,
> 		data.button_state & BIT(seesaw_buttons_new[i].code),
> 		false)) {
> 		dev_err_ratelimited(
> 			&input->dev,
> 			"failed to report event for keycode: %d",
> 			seesaw_buttons_new[i].keycode);
> 		return;
> 	}
> }

for_each_set_bit(i, (long *)&SEESAW_BUTTON_MASK, BITS_PER_TYPE(SEESAW_BUTTON_MASK))
	sparse_keymap_report_event(input, BIT(i), data.button_state & BIT(i), false);

The sparse keymap takes care of the translation.


Notes:

SEESAW_BUTTON_MASK is now an actual variable instead of a macro.
It should be 'static const' in that case.

When using the sparse keymap APIs the driver also needs to depend on
INPUT_SPARSEKMAP.


Thomas

