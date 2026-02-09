Return-Path: <devicetree+bounces-263899-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MkYEMyjiWlU/wQAu9opvQ
	(envelope-from <devicetree+bounces-263899-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:07:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCB110D579
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:07:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3194230075F1
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 09:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BF20328B76;
	Mon,  9 Feb 2026 09:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LPYJolRd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05C3328B66
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 09:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770628028; cv=pass; b=AFVPp+oVy6bKMxK49u1yyiaLVQVWy+s4Cof+C33jsKYzkPVtY6yvCs+2OdmHH2UmmLT+koWp79IswHfzUq0rsDdOhR2CSFbd8Sa3hnp0v2LWo0WSnypSRlo4oe5tjbm2FkKDojG3HaEGieS3VmSEnyTuww7h2gdKe4kyOQTTzKE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770628028; c=relaxed/simple;
	bh=ARNZTT0ZHaBrZDbctujL9G/d4o2dbqa30Uva3TCyzX4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oXhcI2VhI1BBGS+qgRxWs8/LPmv3NIMHdLykV3R5S+bRda+6ityx1nQudeE6hkCxeddWLaVksHcPC5ZjXJoK4/hrvwZWKgL+7jKcUB+UMqZr7bt9+HT1MzFtd9O77bhsOklHPUkawO4E/VYzFLdbl9dQsKoxeCnlghiD1vYVFXE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LPYJolRd; arc=pass smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-4376de3f128so500151f8f.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 01:07:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770628026; cv=none;
        d=google.com; s=arc-20240605;
        b=FUul+XSozDym+g/jYN+XruDAUvXZZJB0sQnZIDc54ZX4RT+V45wk1Bq2ED1WBEoEyf
         yoOQIWIw1eQNze5FNTqgk5IYPv+p30zUnOKEPtjYxaJ1f9SCG56m1bbzhwU/P6Nh2kPp
         RXWR2WoRl4Fd7VlFROKDC/ZmVi8fM6pQzd8ziAMeoMCp1htraVGiskawqmlBfCRYvCA6
         q0cE77oPEXysAIVuQLcX9XCvc9/UPoXefV3ecyvJL/NoXgciXu09Kbc1RD4Yby061L6+
         jNIkar9/JfbcE9pFAGt0DcpiwGlzT0JqtZoGEZdatbKwA1xYyTtPUd1J77aOAb9w3CPI
         VQGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ARNZTT0ZHaBrZDbctujL9G/d4o2dbqa30Uva3TCyzX4=;
        fh=6WTCYDrX2zSUclXIWTU0y+MwOrMVs7Xjnb7YTLhpPq8=;
        b=X9m0vW2bdO7gVXVMcRY3PmZNadaWQEh591Ft8ZNXeLLUvrWdlnqXZrKvpuClUaIBBD
         +FF936t6q7Teoktit3EaYH+CGUtlhCwzLnkQSS2zUFTBe397i1yp4fzOi13BJEsnI4nq
         O+V3+6W+N8eAsWQKnYtBcTz/cQxvGm2+Wx6AfByxn1MD5fBsGlP8abNfX9PKhu2i4uWG
         lyWvu8xUbGs3SPECYUYt1Tg5ChJZT+7jxaI7pQsYf7iz/F0JI9eQ3CBcN/jvm+sJxBOQ
         CvIF7mVQQ/wnqAW22AUHm9V7TfG4F0B9ij0IU4cplAOZQvz1SfMUPYBY/9ESldPcV9lY
         X47Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770628026; x=1771232826; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ARNZTT0ZHaBrZDbctujL9G/d4o2dbqa30Uva3TCyzX4=;
        b=LPYJolRdSSRxYinDkCi8JHgOkqNUZp76bD7EU177xUHiKXM35vsveBHoZzt6v47BEc
         qRYpoUeeMhtVogm4fl74RxdQTJN/ScwZUSw4ICCqDIKS9fVbB0/XWfxT2Kej7tWpWVK0
         0zoLN4iS4SRV5PKuKeMaojzs+cC8FVgVUlyc+rQ1flBNTFV6IKvYZ1aUuQVd36Do/bX3
         X+z9pF2PlsICvgaQCDJ1hCr5RTS4X2d+wm709uOgQaWiZP5GqayqvEyB+hEVQjc5d/1+
         sVnF0K2Qmb84CjkXeWkwn/IKD8PUIUr/Nn05TX/aTz4/ojqbtGLzYlqwfHN/xS78LLOV
         YtJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770628026; x=1771232826;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ARNZTT0ZHaBrZDbctujL9G/d4o2dbqa30Uva3TCyzX4=;
        b=hI5wyX2FiOTTaz8Q9tYqj/L3DxGGcKPOfhuwpk4YK2jrQCtLwN3hEPyIAiuO0Zq8Wy
         HyVQx5dah6jS9i8GYhDgnORx4gwyuixpznvDpX4GvCxi4QUuFNNvTGNCzpX+u82RWwQ7
         UDq/EoZvW9uTjexRRgaxspCcMb2SE5AH0aQU7EVqSF67qFKIGS9YELondGYoI6pCVGPb
         ZLks8DemgVAv7ubSwVp5Q27OQnn0cNArLqVQy72ey8vL/tsjQb0WbRUU6EcMHV2SdB2M
         wRXQ+lBsunNTXJPESbhflHwORswBbsc4qKtsE5VUXL6R0U4j32jFwozbjG8qW3Tz1lHD
         VTuw==
X-Forwarded-Encrypted: i=1; AJvYcCXbmVcrp7H2FD4kVn5bEAy2CyBxYshGoqSIJ8LjhmvbcXeLUkM/+MQjXGYRutMiReI2Hzr7oSpbhRqW@vger.kernel.org
X-Gm-Message-State: AOJu0YyznkR6UM0eMOf4MOwWhTAYmUChXMh6T8LCXa1QDYnb2665zOjx
	I4qsrbe0R1APGd++E53pcVAdP8f9QDfE9GKY+WPKLP5fbIz0D45F4WHxvdsEPXUBZBe7IpmjBTA
	h0C4CNYgnfi/ARGzaQhWn6w1m6GbMarA=
X-Gm-Gg: AZuq6aLeIlH9Ep/pFP01jeU1GZfUR3zGbORrGvebb2im9HdR0jILbLMIjzPbvquvPqg
	QbjOJCB0WqHIa451CxnHxLlKz6YYh+x3bPOJqXwPJjOdo91ftxTFvrQ4QMH9F5h6IBkHbJCSkw9
	wlVsGbmVnpCPdsGOble41cREzGeqLKso2t5jwF5zMAnem4rBY30MME1YWj45MyIY1p98nZtXATN
	j1QUaec+VYolwYYc1IwmSRR1Af0jAz5hFdbPY1DDMapTgu3jl7T+GJq03eHLAYjzVA+3Nbz
X-Received: by 2002:a05:6000:2913:b0:432:5c34:fb32 with SMTP id
 ffacd0b85a97d-4362933f436mr17440511f8f.23.1770628025680; Mon, 09 Feb 2026
 01:07:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260206172845.145407-1-clamor95@gmail.com> <20260206172845.145407-11-clamor95@gmail.com>
 <aYiHnUW93AB0ARJH@smile.fi.intel.com> <D8B3E97F-3405-4EBD-882D-677F530E4EDB@gmail.com>
 <aYmYcd0431P5sUtq@smile.fi.intel.com> <5AA39777-F5C8-4AD5-A5C2-47265C8213F5@gmail.com>
 <aYmg_7uq2rAWJgGK@smile.fi.intel.com>
In-Reply-To: <aYmg_7uq2rAWJgGK@smile.fi.intel.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Mon, 9 Feb 2026 11:06:54 +0200
X-Gm-Features: AZwV_QgwoS53VSYtsaxPBt7zkNokx4yMZnC0-ZnRQ3AbohXwTZvajTpszTk4bdc
Message-ID: <CAPVz0n0+UxdocZdLtqPz=5m5RMV_K2Ldqsf53-13hUiLpV6c6A@mail.gmail.com>
Subject: Re: [PATCH v2 10/11] mfd: motorola-cpcap: diverge configuration per-board
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Dixit Parmar <dixitparmar19@gmail.com>, Tony Lindgren <tony@atomide.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263899-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,atomide.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9FCB110D579
X-Rspamd-Action: no action

=D0=BF=D0=BD, 9 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 10:55 Andy =
Shevchenko <andriy.shevchenko@intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Mon, Feb 09, 2026 at 10:42:02AM +0200, Svyatoslav Ryhel wrote:
> > 9 =D0=BB=D1=8E=D1=82=D0=BE=D0=B3=D0=BE 2026=E2=80=AF=D1=80. 10:18:57 GM=
T+02:00, Andy Shevchenko <andriy.shevchenko@intel.com> =D0=BF=D0=B8=D1=88=
=D0=B5:
> > >On Sun, Feb 08, 2026 at 05:19:49PM +0200, Svyatoslav Ryhel wrote:
> > >> 8 =D0=BB=D1=8E=D1=82=D0=BE=D0=B3=D0=BE 2026=E2=80=AF=D1=80. 14:54:53=
 GMT+02:00, Andy Shevchenko <andriy.shevchenko@intel.com> =D0=BF=D0=B8=D1=
=88=D0=B5:
> > >> >On Fri, Feb 06, 2026 at 07:28:44PM +0200, Svyatoslav Ryhel wrote:
>
> ...
>
> > >> And please, may you contain all your reviewing in one iteration. The=
n both of
> > >> us will spend less time working on the patch. Thank you!
> > >
> > >It's an impossible request, you should understand that. If you want, u=
se AI
> > >or your robot colleagues for that, I'm just a human being, I can't see
> > >everything at once.
> >
> > Ability to see only nits and don't see the possible issues seems to be =
a talent.
>
> Paying respect to the reviewers requires some talent, indeed.
>
> ...
>
> Also, train your logic a bit, why do humans have so many professions? Acc=
ording
> to your "logic" one should be a doctor and a cook and a programmer. Why n=
ot?
>
> Or even closer to this case, a doctor must be a surgeon, a dentist, a the=
rapist,
> and you name it. Why not?
>

If seems that my expectations were too high. Apologies, my mistake. I
will keep in mind to spare you from wasting your time on reviewing my
patches in the future.

Regards.

> --
> With Best Regards,
> Andy Shevchenko
>
>

