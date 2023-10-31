Return-Path: <devicetree+bounces-13001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 882F67DC458
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 03:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37B0B2812DD
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 02:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 945C9110C;
	Tue, 31 Oct 2023 02:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=t-8ch.de header.i=@t-8ch.de header.b="VCaxTTHF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03E77F8
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 02:23:59 +0000 (UTC)
Received: from todd.t-8ch.de (todd.t-8ch.de [159.69.126.157])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1901DC5;
	Mon, 30 Oct 2023 19:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-8ch.de; s=mail;
	t=1698719035; bh=/JXD693pREHWBy4Dt1P8oq518aZztsASJG12CVDqGd4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=VCaxTTHFTKV4VoGo4Xi5uxOiBwUKCxgjJyd6GwaWUpyuWaCznQi6QJfiresw8S0/0
	 nbj7cG9IwdCosnkBCRagjNwUEP3X5azPRtKFWJBDpCRzttYJaDbeRpfliNWItVEv3c
	 E5yg2WFyUhZj+Z7YWRraaFQwmYC534q+Km/Imgwg=
Date: Tue, 31 Oct 2023 03:23:38 +0100 (GMT+01:00)
From: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh_?= <thomas@t-8ch.de>
To: Anshul Dalal <anshulusr@gmail.com>
Cc: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
	linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Jeff LaBundy <jeff@labundy.com>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Message-ID: <9c9f6171-f879-46f5-81d2-6764257a49eb@t-8ch.de>
In-Reply-To: <efea5ae2-7e41-4b78-a283-1f907be560b0@gmail.com>
References: <20231027051819.81333-1-anshulusr@gmail.com> <20231027051819.81333-2-anshulusr@gmail.com> <d1dd2142-546f-42b7-8966-ab75fd4f8817@t-8ch.de> <efea5ae2-7e41-4b78-a283-1f907be560b0@gmail.com>
Subject: Re: [PATCH v6 2/2] input: joystick: driver for Adafruit Seesaw
 Gamepad
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Correlation-ID: <9c9f6171-f879-46f5-81d2-6764257a49eb@t-8ch.de>

Oct 31, 2023 03:10:50 Anshul Dalal <anshulusr@gmail.com>:

> Hello Thomas,
>
> Thanks for the review! The requested changes will be addressed in the
> next patch version though I had a few comments below:
>
> On 10/27/23 11:44, Thomas Wei=C3=9Fschuh wrote:
>> Hi Anshul,
>>
>> thanks for the reworks!
>>
>> Some more comments inline.
>>
>> On 2023-10-27 10:48:11+0530, Anshul Dalal wrote:

[..]

>>> +struct seesaw_button_description {
>>> +=C2=A0=C2=A0 unsigned int code;
>>> +=C2=A0=C2=A0 unsigned int bit;
>>> +};
>>> +
>>> +static const struct seesaw_button_description seesaw_buttons[] =3D {
>>> +=C2=A0=C2=A0 {
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .code =3D BTN_EAST,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .bit =3D SEESAW_BUTTON_A,
>>> +=C2=A0=C2=A0 },
>>> +=C2=A0=C2=A0 {
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .code =3D BTN_SOUTH,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .bit =3D SEESAW_BUTTON_B,
>>> +=C2=A0=C2=A0 },
>>> +=C2=A0=C2=A0 {
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .code =3D BTN_NORTH,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .bit =3D SEESAW_BUTTON_X,
>>> +=C2=A0=C2=A0 },
>>> +=C2=A0=C2=A0 {
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .code =3D BTN_WEST,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .bit =3D SEESAW_BUTTON_Y,
>>> +=C2=A0=C2=A0 },
>>> +=C2=A0=C2=A0 {
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .code =3D BTN_START,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .bit =3D SEESAW_BUTTON_START,
>>> +=C2=A0=C2=A0 },
>>> +=C2=A0=C2=A0 {
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .code =3D BTN_SELECT,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .bit =3D SEESAW_BUTTON_SELECT,
>>> +=C2=A0=C2=A0 },
>>> +};
>>
>> This looks very much like a sparse keymap which can be implemented with
>> the helpers from <linux/input/sparse-keymap.h>.
>>
>
> When going through the API provided by sparse-keymap, I could only see
> the use for sparse_keymap_report_entry here. Which leads to the
> following refactored code:
>
> static const struct key_entry seesaw_buttons_new[] =3D {
> =C2=A0=C2=A0=C2=A0 {KE_KEY, SEESAW_BUTTON_A, {BTN_SOUTH}},
> =C2=A0=C2=A0=C2=A0 {KE_KEY, SEESAW_BUTTON_B, {BTN_EAST}},

No braces I think.

> =C2=A0=C2=A0=C2=A0 ...
> };
>
> for (i =3D 0; i < ARRAY_SIZE(seesaw_buttons_new); i++) {
> =C2=A0=C2=A0=C2=A0 sparse_keymap_report_entry(input, &seesaw_buttons_new[=
i],
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 data.button_state & BIT(seesaw=
_buttons_new[i].code),
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 false);
> }
>
> I don't think this significantly improves the code unless you had some
> other way to use the API in mind.

I thought about sparse_keymap_setup() and sparse_keymap_report_event().

It does not significantly change the code but would be a standard API.

Thomas

