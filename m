Return-Path: <devicetree+bounces-286802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SETBKp9s22k/BwkAu9opvQ
	(envelope-from <devicetree+bounces-286802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 11:57:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B9F3E35D9
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 11:57:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E8C2A300348E
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 09:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70B42375AB2;
	Sun, 12 Apr 2026 09:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="PRtpWUEO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106119.protonmail.ch (mail-106119.protonmail.ch [79.135.106.119])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD23B374E7A
	for <devicetree@vger.kernel.org>; Sun, 12 Apr 2026 09:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.119
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775987866; cv=none; b=bnT/+oqiQZhaxRyKbP1DxUOvAFCapx9RUTI9O3Y0NRCgck2qCJSZYTUnrgsp+T0HgEOy7WmPsOu7TnbZgFFPC7h+aUNN72HR/lSFhySPz1FLeCjXgnfYm5BAFwq6393cunUqjHajYIK0Zvm6bS1M+Yw2xR2gNfdVH+4WLqDDQc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775987866; c=relaxed/simple;
	bh=Nd5KnTyclI6vIVZacPOcTiXqJVdoEfttW6bRj8jEAsQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jPVCTQqU08DpSnuh1S1vJMecR1fJOxL5CH3+LMrJ5wfer5i043jTCYwysqEO5I0LTND2WMW1E4Uxx5uJqHzra2nRWXXbPyd7OqGNffMBkg7Ohgsy3o4U4mIIWBBAxjVfGkkguGcHC/53PpY7l1j6B0ktKyszVWwhMq/jtoy3Cus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=PRtpWUEO; arc=none smtp.client-ip=79.135.106.119
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1775987862; x=1776247062;
	bh=m62pQ6MlRJbuDHfWnQYCUS683UQ4OtZk6TfL949rG7U=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=PRtpWUEOYwcN+mAs4enZjgiZZB959OHhQzQ9zp6xIQlXpbVPaT/UX/NjE7qt9LTjW
	 egPrk5ArDXhce4Y54vQJsFyvsgcBeRZFcw3pGoqXuUZMHL2slQcNSFHusao0omjvNN
	 nvFXZEUk1NuT9Akw4CH/EhjeJoBWRiU4Jtme8OCGf/orDP9fNi9ZA/PmCtbY/561RZ
	 uOGs9IkqxmXkgExSx8oDO6nKNlNeVWM7lKHv2wqYJSYrI4apqxa8u5bm301hyUyQLU
	 mWB0Uiivu/6n3zVTYVBUSTfPfSWH1NykACt8/Q1jZ2h8K7mECMAo1blXJV0VNFN9e9
	 p72DhZNT1efZg==
Date: Sun, 12 Apr 2026 09:57:36 +0000
To: David Lechner <dlechner@baylibre.com>, Hardik Phalet <hardik.phalet@pm.me>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Hardik Phalet <hardik.phalet@pm.me>
Cc: Jonathan Cameron <jic23@kernel.org>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Brigham Campbell <me@brighamcampbell.com>, Shuah Khan <skhan@linuxfoundation.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH v2 4/4] MAINTAINERS: Add entry for QST QMC5883P magnetometer driver
Message-ID: <DHR35EXKX62B.JXCVL4O1Z55U@pm.me>
In-Reply-To: <0fd8a01c-0ca9-4caf-946b-5e0e756e4cab@baylibre.com>
References: <20260409210639.3197576-1-hardik.phalet@pm.me> <20260409210639.3197576-5-hardik.phalet@pm.me> <0fd8a01c-0ca9-4caf-946b-5e0e756e4cab@baylibre.com>
Feedback-ID: 166659585:user:proton
X-Pm-Message-ID: 19cadfc419b259b7a96812175002a7921ce6e2f0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286802-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hardik.phalet@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:dkim,pm.me:email,pm.me:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B3B9F3E35D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat Apr 11, 2026 at 1:02 AM IST, David Lechner wrote:
> On 4/9/26 4:07 PM, Hardik Phalet wrote:
>> Add a MAINTAINERS entry for the QST QMC5883P staging IIO driver,
>> covering the driver source and its device tree binding.
>>
>> Signed-off-by: Hardik Phalet <hardik.phalet@pm.me>
>> ---
>>  MAINTAINERS | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index a92290fffa16..d0b9bfceb283 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -20274,6 +20274,13 @@ F:=09Documentation/networking/device_drivers/et=
hernet/freescale/dpaa2/overview.rst
>>  F:=09drivers/bus/fsl-mc/
>>  F:=09include/uapi/linux/fsl_mc.h
>>
>> +QST QMC5883P MAGNETOMETER DRIVER
>> +M:=09Hardik Phalet <hardik.phalet@pm.me>
>> +L:=09linux-iio@vger.kernel.org
>> +S:=09Maintained
>> +F:=09Documentation/devicetree/bindings/iio/magnetometer/qst,qmc5883p.ya=
ml
>> +F:=09drivers/staging/iio/magnetometer/
>> +
>>  QT1010 MEDIA DRIVER
>>  L:=09linux-media@vger.kernel.org
>>  S:=09Orphan
>
> This should be split up and added in the patches that actually
> add the F: files. Most of it will go with the dt-bingings patch
> and the one line added later with the driver.

Makes sense, David. Will do in the next patch series.

Regards,
Hardik


