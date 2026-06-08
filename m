Return-Path: <devicetree+bounces-308344-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SZrkC8rQJmoNlAIAu9opvQ
	(envelope-from <devicetree+bounces-308344-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:25:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A67D65723E
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 16:25:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=W+E5T850;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308344-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308344-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 065ED3010A92
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 14:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF5273D6CDF;
	Mon,  8 Jun 2026 14:10:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C263D5235
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:10:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780927838; cv=none; b=KlHrz2DVvo8DHNIAf6AEQrmPtexhuYqlyh4XOCxBdxtZLAjG+xFlekFeD+ywyyp1cwxYCyzbRyXds2UMQG0uPJwfcNVJeqZl8Qkoj7cofeDnSsBIfUjMwofswydsuSNX30K7LsxadLxgbVqMTFhSqtDBktJE3GPtcn57vTwMN3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780927838; c=relaxed/simple;
	bh=btyAI54yDbc1PrDd4mh1mz68xgJhi9mDIAJSmkvzzfs=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tXc3fFECdf5HGQTvC22cJgrOAGpnUIfuU0LJmzESqC10NT6+pl6jUN6vfIB3QeBwkFnOXVAEEd0cXV4og4PZ0iu8FblvZpGZeQxBJFl4b0AV3dDTiwJM55BQVXbwfur4EkB3Je/HNSOolG7ALfLemb/8Hmkduq9786zXeHCYHwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+E5T850; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A1891F008A1
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 14:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780927837;
	bh=PrVSE6aneU5Bzz2XD7Cd2Q0n7A9MLLyGaboZM28LhJA=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=W+E5T850k/pcWFfsOhMMTnmpzYRqG4IXAuOT03FOFnDhJGvB5QsEHc1/u4fsmCvr/
	 anPg5+E4AzcGYoc2V89dPnE869DvhegibObs8JyULT4LuNRgJvtU/fmwaQ26osiDVq
	 0IthpFW1K7aObdKLFRwesKUBilKUmGtKK76i+92zKJoyJ+DpKS/8HvakLasfmay1Da
	 4HYlSSfD4rFadGXQCs4XBuObPSOcW6xNDovSiAmTtD9iqD91yLi05nYDQOfCM/KLO5
	 RVC2845d2ytItmG5XxdLDnR6/AT/xXl5BfXH2Sp93x3Msqijtml7oKDMM0J2v0lBHa
	 UsfgTyY7x8ABg==
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-13810b63a1aso391647c88.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 07:10:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9vnoMtexRcHSuBukppRHhd/Nu3ELhFBIIxxpVuMHKUAib0rxzrofKx4gLFRO/bybJ5SUU+KlYoluVE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/I7iSRe3WvtIAfgZG/0HUDKwQQJWymEHor6p+qNnJDNapNhHm
	C9Ft6TIwHTfdVVNiLBsfr/rSA8R1/Dm4N7OpD5LyNdxejA5tTm2zF0wfokRLuRgur8O0XVASpk9
	abaV6L9cD0+0ApD+c+pa9SmlXpg3uPwNm4VF/sglbWQ==
X-Received: by 2002:a05:7022:38e:b0:138:5ae:3eaa with SMTP id
 a92af1059eb24-1380666889cmr8618060c88.9.1780927836722; Mon, 08 Jun 2026
 07:10:36 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 8 Jun 2026 09:10:32 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 8 Jun 2026 09:10:32 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <ah92oEavMu4QRn8y@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260512033317.1602537-1-eleanor.lin@realtek.com>
 <20260512033317.1602537-3-eleanor.lin@realtek.com> <agMM9soiqpG-TRSb@ashevche-desk.local>
 <adff3a2d21a64d3ea3b408d62157ee1e@realtek.com> <ah92oEavMu4QRn8y@ashevche-desk.local>
Date: Mon, 8 Jun 2026 09:10:32 -0500
X-Gmail-Original-Message-ID: <CAMRc=MdA24z-tB_D8CTw68Di8e4OVQJ1QH4+rDskFzq=xjJ5BQ@mail.gmail.com>
X-Gm-Features: AVVi8CcAz4YtcQCT50U6nbCProIEsU4DtxX8RzXUqk3r8sd3Dvk2sHxbtefZrDw
Message-ID: <CAMRc=MdA24z-tB_D8CTw68Di8e4OVQJ1QH4+rDskFzq=xjJ5BQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] gpio: regmap: add gpio_regmap_get_gpiochip() accessor
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: "linusw@kernel.org" <linusw@kernel.org>, "mwalle@kernel.org" <mwalle@kernel.org>, 
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "afaerber@suse.com" <afaerber@suse.com>, 
	"wbg@kernel.org" <wbg@kernel.org>, 
	"mathieu.dubois-briand@bootlin.com" <mathieu.dubois-briand@bootlin.com>, "lars@metafoo.de" <lars@metafoo.de>, 
	"Michael.Hennerich@analog.com" <Michael.Hennerich@analog.com>, "jic23@kernel.org" <jic23@kernel.org>, 
	"nuno.sa@analog.com" <nuno.sa@analog.com>, "andy@kernel.org" <andy@kernel.org>, 
	"dlechner@baylibre.com" <dlechner@baylibre.com>, =?UTF-8?B?VFlfQ2hhbmdb5by15a2Q6YC4XQ==?= <tychang@realtek.com>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-realtek-soc@lists.infradead.org" <linux-realtek-soc@lists.infradead.org>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, =?UTF-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>, 
	=?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>, 
	=?UTF-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>, 
	"brgl@kernel.org" <brgl@kernel.org>, =?UTF-8?B?WXUtQ2h1biBMaW4gW+ael+elkOWQm10=?= <eleanor.lin@realtek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308344-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,mail.gmail.com:mid,intel.com:email];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:linusw@kernel.org,m:mwalle@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:afaerber@suse.com,m:wbg@kernel.org,m:mathieu.dubois-briand@bootlin.com,m:lars@metafoo.de,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:dlechner@baylibre.com,m:tychang@realtek.com,m:linux-gpio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-realtek-soc@lists.infradead.org,m:linux-iio@vger.kernel.org,m:cy.huang@realtek.com,m:stanley_chang@realtek.com,m:james.tai@realtek.com,m:brgl@kernel.org,m:eleanor.lin@realtek.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2A67D65723E

On Wed, 3 Jun 2026 02:34:40 +0200, Andy Shevchenko
<andriy.shevchenko@intel.com> said:
> On Mon, May 25, 2026 at 12:04:09PM +0000, Yu-Chun Lin [=E6=9E=97=E7=A5=90=
=E5=90=9B] wrote:
>> > On Tue, May 12, 2026 at 11:33:12AM +0800, Yu-Chun Lin wrote:
>> > > Expose an accessor function to retrieve the gpio_chip pointer from a
>> > > gpio_regmap instance.
>> > >
>> > > This is needed by drivers that use gpio_regmap but also manage their
>> > > own irq_chip, where gpiochip_enable_irq()/gpiochip_disable_irq() mus=
t
>> > > be called with the gpio_chip pointer.
>> > >
>> > > Add gpio_regmap_get_gpiochip() to allow drivers with complex custom
>> > > IRQ implementations.
>> >
>> > Hmm... Can't we rather add
>> > gpio_regmap_enable_irq()/gpio_regmap_disable_irq()
>> > that take regmap or GPIO regmap (whatever suits better for the purpose=
) and
>> > do the magic inside GPIO regmap library code?
>
>> Thanks for the review! I apologize for the misleading commit message.
>> The real reason I need the struct gpio_chip pointer is to properly set u=
p a custom
>> IRQ domain. Our SoC GPIO controller is quite complex. It routes differen=
t trigger
>> types to multiple parent IRQs, which doesn't fit the generic regmap_irq =
framework.
>> Therefore, we have to create our own irq_domain and pass it to
>> gpio_regmap_config.irq_domain.
>>
>> The core problem occurs inside our custom irq_domain_ops.map() callback:
>>
>> static int rtd1625_gpio_irq_map(struct irq_domain *domain, unsigned int =
irq,
>>                                 irq_hw_number_t hwirq)
>> {
>> 	struct rtd1625_gpio *data =3D domain->host_data;
>> 	struct gpio_chip *gc =3D data->gpio_chip;
>>
>> 	/*
>> 	 * The second argument MUST be struct gpio_chip *.
>> 	 * If we pass our custom data structure here, the kernel will panic lat=
er
>> 	 * in gpiochip_irq_reqres() when it calls irq_data_get_irq_chip_data()
>> 	 * and strictly expects it to be a gpio_chip.
>> 	 */
>> 	irq_set_chip_data(irq, gc);
>>
>> 	irq_set_lockdep_class(irq, &rtd1625_gpio_irq_lock_class,
>> 				&rtd1625_gpio_irq_request_class);
>>
>> 	irq_set_chip_and_handler(irq, &rtd1625_iso_gpio_irq_chip, handle_bad_ir=
q);
>> 	irq_set_noprobe(irq);
>>
>> 	return 0;
>> }
>>
>> Without an accessor like gpio_regmap_get_gpiochip(), we cannot retrieve =
the
>> gpio_chip instantiated inside gpio-regmap.c to fulfill these requirement=
s in our
>> map() function.
>
> This is all good and needs to be depicted in the cover-letter and/or comm=
it message.
>
>> Before I send a v4, I see 3 possible paths:
>>
>> Option 1: Keep the accessor (Current v3 approach)
>> We keep gpio_regmap_get_gpiochip() but I will completely rewrite the com=
mit message
>> to explain the custom irq_domain_ops.map and lockdep requirements.
>>
>> Option 2: Let gpiolib create the irq_domain via gpio_regmap_config
>> Instead of creating the irq_domain in our driver, we add all necessary I=
RQ fields
>> (irq_chip, irq_handler, irq_parents, etc.) into struct gpio_regmap_confi=
g. Then
>> gpio-regmap.c populates the gpio_irq_chip structure before calling
>> gpiochip_add_data(). This prevents an early return and allows the core g=
piolib
>> (gpiochip_add_irqchip()) to automatically create the irq_domain for us.
>> Drawback: This adds a lot of fields to gpio_regmap_config and might viol=
ate the
>> original design philosophy of gpio-regmap.c (commit ebe363197e52), which=
 explicitly
>> states that it does not implement its own IRQ chip and delegates it to t=
he parent
>> driver.
>>
>> Option 3: Drop gpio-regmap entirely (Revert to v2 approach)
>> Currently, all drivers using gpio-regmap (mostly simple CPLDs and extern=
al I/O cards)
>> use regmap-irq to get their domain. Since our SoC has a complex IRQ rout=
ing scheme
>> with multiple parents, maybe gpio-regmap is simply not the right tool fo=
r this
>> hardware, and we should just implement a standard GPIO driver directly u=
sing gpiolib.
>>
>> Which approach would you prefer upstream?
>
> This question to Bart, Linus, and poissibly gpio-regmap stakeholders. I'm=
 not sure
> that my personal opinion will be the best fit here.
>

My preference would be for #2 but I understand that this could risk getting
stuck in endless bikeshedding so I'm fine with going #3 with potential for
future refactoring if we have more similar users.

Bart

