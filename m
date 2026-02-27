Return-Path: <devicetree+bounces-269358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOavLxbNoWn3wQQAu9opvQ
	(envelope-from <devicetree+bounces-269358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:57:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DF71BB19E
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:57:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0BDB30715F9
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6224C346E5F;
	Fri, 27 Feb 2026 16:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IqqREgXB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5B034A3D2
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 16:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772211214; cv=pass; b=YfMjGg0/dZ3QpBujCEjQFt86lWcyF1oYCFr+u5IM7dyEmOEz1Lu0KdGgAH8n7JbG4Icv8VPCV9CwIGUZwYGV0v7+aAJIi7N9rMRLdrkRU+b8u+Aj3bqhsV2GjOeHP4hoKTbOCneBvHis/1koy5YQMKzOCoWrJpqpIa5l+u+8Mo4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772211214; c=relaxed/simple;
	bh=KZngnYUFiL9iC7PfOpmHfHOayoaMJPuP6405Q5pqqfQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GtG7zzwyWqWikDSrz810RfD0uitzox7unt+lmjIbESvIk1F9BHVtsA9UFDFgswMbqcFJqAFdR2vhx6+zT2fqtuvoKOVrHpscR0i9uX6L0ceUe45JZOicgGszYbmbb0aw10Y1WoTNeEMRRZT+CaTjENgU/nYa0xIcZiKSix0+cnY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IqqREgXB; arc=pass smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65c5a778923so3674289a12.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 08:53:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772211211; cv=none;
        d=google.com; s=arc-20240605;
        b=UEWAQUYewWmMK71cNqq0RyE+yLItr9AlZLGO3UCEedka5e54M5Am1IwtoJpqXY5BRo
         eEaOdNotwSUFJeWfU4ZArpO+FOrGxOT/IApfJrlAduMt3nwfqFwcYmAzHF7pD9H6b9wX
         4tpfFUntlfzTyI7A4tQdwf9QwxPRABfV7GtPGGTB3KAjnx5/KPckE+dsoEtUnghV+Qsn
         Bz2q4N7wpOPVQSKlf+LsbwBmfMNQNRvPEpNu10RWixXFPZyEzi7EaokxU3dkqose9oTv
         tINgfg+ewNGIpsuUQRoF8TJh6zMBNkNn/uvkxOmOTk4A4qA9YdjdjHphADr88GSHXe2C
         r1tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YnQBstCl1AwhiM2ywlP8p0cFY97sOWrrQ4M1rwGrcGg=;
        fh=42Tz2CUWdVAPCukuYiECuxiFf2fW8rLB6rHsyUCh98U=;
        b=dxtBTU0IbcE2c+q8GOFkeouHDIV3CxtHUGSM4dSsvKcGF/4fAM25u7MqfeYB1NRwnT
         vIUUoR/jJ5a1RUw+vlNt0svpQONp6kPD5UT0hk4K+LfgbzqBwsSaO0IYmJe8FDVD59J/
         JHgv4GReO86aGuXH5FUd6leiRyrNcthg05bcx2goQhgFASn5pSCS04KfC2isnYw6lSRf
         aAVFJTZLeNSl1onM8cyYjRgUtj1lVfBTBCVENdwWjmdEWa6Y3hiwALdLkQZ7/mhfMvYQ
         YMH0D+KiHyCRBCBZxL+Tcoxmv6MB5K/S2Zvf71CyfJllK54tVOahOoBfnVgOTOH8AjoI
         /DSw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772211211; x=1772816011; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YnQBstCl1AwhiM2ywlP8p0cFY97sOWrrQ4M1rwGrcGg=;
        b=IqqREgXBjpI80Bmudspq923mrD9H0Uyxxjm9wxO2zjrA9LL/WTtYakC/YDSKmrEUnQ
         mHGUVxwNGSdac7wNU22ZOWQoU1ExKRNx6RY8/Y0tHNmi0tIT0muaJ7ugDOwLto4Y5dlt
         9mwfRDZTJuzjnTl9LD2faIZtTV5mkBWs560iWZYLNe8GCe2xepGjpHmGBerf0FsWDSY1
         VZOwFJLdkx1fq+B8ui2UexiE6VdG/gmx+BXJa5wsiW2HJwTTYNaUyaSWt42mEn3c7QEB
         9exqAJBiGsb2qLcQ8GhXBvCNuZncQ3tYv7kKr/sLYE9usXuX975szK1uPnRaUkYpLEUI
         dg5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772211211; x=1772816011;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YnQBstCl1AwhiM2ywlP8p0cFY97sOWrrQ4M1rwGrcGg=;
        b=ciGFn3oTiMs77WZSQS3N0id3jsfC5g/zt75HSuWYr5NrStRFtTzFsnvdCCl/vnjAcl
         ibFgbKF/YDBseIi+Ft+lP3+f6mAvGMO7GWIUsvMKnGnM5SZNWyPWlDBUZIRYSXlS6E9p
         FUCU7TXA9f/KS5PgcVvbd0zmgDstAKGrJ9lAz9CNNGTNAWmuNT7GWhKZo8zxOna6JnzQ
         RptQIyBc0+f1iQ5R/Y1sE+WecwjK8ByCGg29Pel99lpzfV2MNROo/rdFnSUKzDv3QdAd
         CqVL498jhUFe+XMi+GZQGkZsg42mtRgF3jxo1lQjVtcz9odxZA6qGdQLS8LViX+kdDcA
         W9fg==
X-Forwarded-Encrypted: i=1; AJvYcCWN3O60zGuDzm9ksxAzN0js0zSh8kmKaj/AZvnUIzJLw2ZN349XedxCWZESeOHblwvqkbG4Ow0+bddV@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8P9GsbeGshaZp6niug614nPmKeZ6RbcGmrHEB3/4RDk/iGhpC
	PTniyJ7eifP78Lgfw40CORzZ0Lu66CqWz0UVDQjcPdUWqmm+TDyWoxeMH04dpNZmeDvZNF4CC7N
	l57nwiu0I79sS0HZP64P361tSt1GP+kh/Gz86BM4qvA==
X-Gm-Gg: ATEYQzzDNiqjSvRJdFj2NkehhSDLDIE6UjvtUlQ5AK1heGIccSoHaQVWY8tA/7RhVgP
	WKbSuSvNsnx4HOeBepsr4fCaSf7Ij54bW/unLdsLptk6nqtj3Nfi6vPncZ4B2WehTNj0u1eGtey
	IAflcv393tLXnBqB33pMWjSvKFILPJULmqa8Ap8BrhRvfs3TYW34nEx1vIYwP9ti+LYs9n68tc2
	MXY1/O+lf3OTU/KDowO6nWwJ8IEgts73U57f/MXHFiIZ9RXVv2kSzr7nOQV8vZc82qV2ec15/dL
	FI40ZkP2sk5Bb3mOS2BI3A==
X-Received: by 2002:a05:6402:4493:b0:660:475:93f2 with SMTP id
 4fb4d7f45d1cf-660047594bemr437404a12.18.1772211211217; Fri, 27 Feb 2026
 08:53:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org> <20260227-max77759-fg-v2-11-e50be5f191f0@linaro.org>
In-Reply-To: <20260227-max77759-fg-v2-11-e50be5f191f0@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 27 Feb 2026 16:53:19 +0000
X-Gm-Features: AaiRm53V_nRNAsdqihybXB9OG23TzesOAxPFDxCpIlU-WABHWGF_CL5bChRorMU
Message-ID: <CADrjBPpYd+9jYt6ec-VF-ZS6Vjt0Lu0jo2T7B9TO=AQmcjL1dg@mail.gmail.com>
Subject: Re: [PATCH v2 11/11] power: supply: max17042: report time to full
 (max17055 & max77759)
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, 
	Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, Purism Kernel Team <kernel@puri.sm>, 
	Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
	Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269358-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim]
X-Rspamd-Queue-Id: 21DF71BB19E
X-Rspamd-Action: no action

On Fri, 27 Feb 2026 at 07:15, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> Report the remaining time to full as calculated by the firmware for
> devices that implement this.
> Similar to time to empty, the reported value is only meaningful when
> charging, i.e. if it is !=3D U16_MAX.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

> v2:
> - limit to max17055 & max77759, the datasheet for max17047 and max17050
>   describes the register as 'reserved'. I was mislead by the comment
>   and enum ordering in max17042_battery.h
> - report as POWER_SUPPLY_PROP_TIME_TO_FULL_NOW (not _AVG). The max17050
>   datasheet is a bit clearer than the max77759 one on that.
> ---
>  drivers/power/supply/max17042_battery.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supp=
ly/max17042_battery.c
> index 89909b140cf9..770d806033b9 100644
> --- a/drivers/power/supply/max17042_battery.c
> +++ b/drivers/power/supply/max17042_battery.c
> @@ -89,6 +89,7 @@ static enum power_supply_property max17042_battery_prop=
s[] =3D {
>         POWER_SUPPLY_PROP_HEALTH,
>         POWER_SUPPLY_PROP_SCOPE,
>         POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW,
> +       POWER_SUPPLY_PROP_TIME_TO_FULL_NOW,
>         // these two have to be at the end on the list
>         POWER_SUPPLY_PROP_CURRENT_NOW,
>         POWER_SUPPLY_PROP_CURRENT_AVG,
> @@ -447,6 +448,21 @@ static int max17042_get_property(struct power_supply=
 *psy,
>                 if (data =3D=3D U16_MAX)
>                         return -ENODATA;
>
> +               val->intval =3D data * 5625 / 1000;
> +               break;
> +       case POWER_SUPPLY_PROP_TIME_TO_FULL_NOW:
> +               if (chip->chip_type !=3D MAXIM_DEVICE_TYPE_MAX17055 &&
> +                   chip->chip_type !=3D MAXIM_DEVICE_TYPE_MAX77759)
> +                       return -EINVAL;
> +
> +               ret =3D regmap_read(map, MAX17055_TTF, &data);
> +               if (ret < 0)
> +                       return ret;
> +
> +               /* when discharging, the value is not meaningful */
> +               if (data =3D=3D U16_MAX)
> +                       return -ENODATA;
> +
>                 val->intval =3D data * 5625 / 1000;
>                 break;
>         default:
>
> --
> 2.53.0.473.g4a7958ca14-goog
>

