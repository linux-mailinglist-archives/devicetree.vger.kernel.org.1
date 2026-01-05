Return-Path: <devicetree+bounces-251618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43865CF4E49
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 18:05:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C2E432D3C9B
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 16:48:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C36630FF3C;
	Mon,  5 Jan 2026 16:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hXQSiz1I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C5C309DDB
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 16:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767631647; cv=none; b=eb+L8OfhWaRM7VZUfRf7o1dq3BvkEzyW+gmDKfnLbvI82OtQCJ0vsNMxe/Dr7YIASG82bNuWTdpTXnLyrJi0ytyhs7DDpxBRQtIjB+EPE3bXzolEJHFvdWDcBTBPge6g8+aVW8duuv/0w1KcuBYZsNbtcPWGjdsSON6JTArlfLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767631647; c=relaxed/simple;
	bh=ERyjgMpetsSV7HmNF4hsqF0bdrmrio7r57PRd234Lqw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=U5cmfN10JTNT32KB1zyKmy3d8PSMfx7m9c/Kjlf6w15vI83M4jCourR5rTSlOhJz1MUx+0yyAU9wNMmIthIkTUdz4Sx7dXn42d5XW6QDHAmEpxn8INuvEMbHO0TSb5xGDrA+COhnXU8fig1OeLvDxRj62iGGi8wnvfjPHatDtJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hXQSiz1I; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b736ffc531fso32025366b.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 08:47:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767631644; x=1768236444; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ERyjgMpetsSV7HmNF4hsqF0bdrmrio7r57PRd234Lqw=;
        b=hXQSiz1IbgYsEUmS8z5i1yZH/6aox1AulKzNjsOIcwLeXzKFL8WYcNRDbje1eKtLu7
         d0M795RfyUcvz1hZnCS0HR1MK9lXhNgtrh08XBh8SEGeJtN6+zuhFu8FTKyV1Wn80YdI
         sbSjd7QtQIArli8keY6GmS+GgpUkT9EpqCuDU9jVVogmarmZk3YK4mM+rF6KDTuors55
         buWUKbbtnovQTnZ5lIVgSMW6ngZHVU/IMV9leuTQtU1y+MyWkh9KNFXKhG6PgTwTIlej
         uYg+FbrbY6v36jSRnQmouRcitZZB4wJjYA/oI1h6YgR2NPPHcJ30HIYx3h75eSJpQ4z+
         oVwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767631644; x=1768236444;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ERyjgMpetsSV7HmNF4hsqF0bdrmrio7r57PRd234Lqw=;
        b=SNqfG58YHsriHHpA23HBKvRCnGnaFKUGTmUEyVG0mqbiVg1QQ5duQFW/AnN6+OF2/d
         AYuQWLdwU+e9WIZ7hzLMjVjDMihv4r10ZrzzP7omxophxSc6Tnk9WxT/7/i4eIY8+OTt
         ExKwI5EJtGw9CNadzcap2azYFyIsfwsbR9jt17JymxG0RcCk6jE0c/CerPuVLNgIkIgb
         ZBK6rjGmmqy1jMDrZZGKKo83ljV2qfygU9g7NPTkuHt1pJYE2DAI0AQqomiNBE0CNEnE
         0JlE5x3Z76zyhMetgjoQPRX+Vr97YZPVwFT+VafmzTzKYUUUBqXpHGAWPEePL2mrEoLE
         RsOw==
X-Forwarded-Encrypted: i=1; AJvYcCWhHjJQQ1rWLaiOei10AIjZCjuo1exD6A/2/HKd9ymppMo82WGrCLDD/06zeQPasT4hAgY94bnGju7T@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn/J+yePINKpFnAKjMMER/l1nrvY5Nad3Cu9woSfIwndrWEjOj
	EN9x+YU0uh7/8AlPFGmWvT2/hFw2nUmtzZeq+Z7pLCleY+3xkJ1kCKkOt7tKyFajxoU=
X-Gm-Gg: AY/fxX6WJOqrH8QIGg4vZ5LXq1ZfUBXzusNR5ax2hsKbbMMoP6CyqmWCbb9AMszjySc
	eb5u8wyaVdh3mf9sE/m7DGm0aTuYls90UBM549I4ub5ZfRO1kMqUJ4n0XbIoxqbIuj4AdINPoJA
	CMyf21RkWDj9th2eWFWBgiebWKjXdLo3W8gP9078feOf0Yc05RSVlVExB2gLwFBPisvbQZrPTl7
	u/l+bEXHv223DD6k5+NTe4vvOgsKEEcivFQIby/IyvB8WaJXev0RzlRB6hLoO4wOUCWxgLKtr4p
	Z2AmxaOP3v3TCFbng4QPff8uU+eA4cQHUiQ31frb4EVUJvg1FuU3qkx27whrc/59ok6cXL57CzD
	B2H1eNOijx2AncsEMjDwP71l7s1yYMCSrtTu4w7xLNRtL6ls1HOhaNlBdhGB4BblABijdAxNFq3
	vlCVCNYru/CNybcHM8PQ==
X-Google-Smtp-Source: AGHT+IH8PrChGbBe3ifcPMF0XNauYBYKXVAb42mE0WG2Oe4GF884wrbNFmqGeNp3hqqHYpAdiAIsJg==
X-Received: by 2002:a17:907:706:b0:b77:f4a:ca1b with SMTP id a640c23a62f3a-b8426a6c79amr36443666b.16.1767631643937;
        Mon, 05 Jan 2026 08:47:23 -0800 (PST)
Received: from draszik.lan ([212.129.74.225])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507618cc59sm255498a12.28.2026.01.05.08.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 08:47:23 -0800 (PST)
Message-ID: <da028427208fc4d515060375fc95f1cc0f64e2ca.camel@linaro.org>
Subject: Re: [PATCH v3 5/5] usb: typec: tcpm/tcpci_maxim: deprecate WAR for
 setting charger mode
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: amitsd@google.com, Sebastian Reichel <sre@kernel.org>, Rob Herring	
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, Greg Kroah-Hartman	
 <gregkh@linuxfoundation.org>, Badhri Jagan Sridharan <badhri@google.com>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus	 <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, RD
 Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
Date: Mon, 05 Jan 2026 16:47:58 +0000
In-Reply-To: <20251227-max77759-charger-v3-5-54e664f5ca92@google.com>
References: <20251227-max77759-charger-v3-0-54e664f5ca92@google.com>
	 <20251227-max77759-charger-v3-5-54e664f5ca92@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2025-12-27 at 00:04 +0000, Amit Sunil Dhamne via B4 Relay wrote:
> From: Amit Sunil Dhamne <amitsd@google.com>
>=20
> TCPCI maxim driver directly writes to the charger's register space to
> set charger mode depending on the power role. As MAX77759 chg driver
> exists, this WAR is not required.
>=20
> Instead, use a regulator interface to source vbus when typec is in
> source power mode. In other power modes, this regulator will be turned
> off if active.
>=20
> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
> ---
> =C2=A0drivers/usb/typec/tcpm/tcpci_maxim.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
|=C2=A0 1 +
> =C2=A0drivers/usb/typec/tcpm/tcpci_maxim_core.c | 54 +++++++++++++++++++-=
-----------
> =C2=A02 files changed, 34 insertions(+), 21 deletions(-)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

