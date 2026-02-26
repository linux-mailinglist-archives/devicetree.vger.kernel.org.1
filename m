Return-Path: <devicetree+bounces-268614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EhPJVTtn2nYewQAu9opvQ
	(envelope-from <devicetree+bounces-268614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:51:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 415F11A1711
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:51:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CA6330530F6
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6698E38BF8A;
	Thu, 26 Feb 2026 06:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cx1qxDPH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DDB3876AB
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772088649; cv=none; b=IsFxYYVX0kBoDuP5AO1mnIMcw51Vzgu1MHtr66pTPAfYTrdecv6dhMqHYt9ay0t5FQao3CyczBF0MI/aoeueptB+LeO7QmV3Ge04PP5NOiwQe3WZDmnQUtSSpobCEJKQV9pxG/FQqxTT3QSKYv3cYUVzTQ6nbTs/iJ+nOE1dmNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772088649; c=relaxed/simple;
	bh=tzgM7zmQUR0Nygxy2CGjYQcMUHvYZw/GgfIvFJp40ww=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=EI2GB2sjSSVC9ojVqTkWQAfpebZSGj/szh4H6nsaWNSWezUSdy1s0aR1xwQweK6H5Yy42dUpXkK0KO2A8o6PgFBtrqtQ7zPKMv77daWK35g4vNaXeBYiLC1lPk/STTc39zb8+gsKq8WaNVlHYzNi3jFiQ4S1Po9ug6QAcZN8sPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cx1qxDPH; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-483a2338616so3334975e9.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 22:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772088646; x=1772693446; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tzgM7zmQUR0Nygxy2CGjYQcMUHvYZw/GgfIvFJp40ww=;
        b=cx1qxDPHxIYQwea0jTUE/AQk/hbYKDBDV74+wz6Zv2Ux+oyNbp7nYgeGDnDu2/hELr
         SqzasT38ogd7nDKaoEp2WygRMX82Lv8vARwVhcvQn7/e1QvTw0YvPwkZpAQAb/5w8tEh
         qozt61WiVLUL0+BBMqEfXwagxT+1Ddy1rnG15MFO2GI/tY7y2Zz1zgnJAThj+x05IIF7
         wo3ivkJlXy/iMhgQvV7hAbBJchJ34EdNJ/Fst3uaC7Zmuu4Dj+koxNFpECFhQTSxWQu+
         DWyyBtz3ir0aQYcP7735s+oO1CLBv99R9XRSNu4rnpA8jsul1v2cyAF1LTvW1V02rbd2
         dbLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772088646; x=1772693446;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tzgM7zmQUR0Nygxy2CGjYQcMUHvYZw/GgfIvFJp40ww=;
        b=ZBBstMnUYINZ0d4/9gdNS8qSFO31K0uBF/Y2cjqBKL75pHkcLDZFYl03yQTUh2a0+H
         YL8kqolqX+Izd4QP6SulDzz7GkC18ktjWEy+w8r5DOPwl1/blLW1MbcoZ2SgeD40Xw26
         251jYtn99LTSdRELGCeq/IpF1RCMPI/oU2bhpmJ+Q3K4hG4nNpD0X6E+W3i28gKifMO7
         LWq/xJ4QWrYlhO0cbVxyQ+h918S9o7SUjy5rQjE6mi+NIUvJPS2l+xryOGDD6xVWUjVc
         vDjtCoVdOHf+GFQ5sQ6FrtS3ODpIdcVzqafbsWGFXl8tDoRa0YE9i/Tvlog8FZ3bE5Uf
         bEkA==
X-Forwarded-Encrypted: i=1; AJvYcCXcNR/1hR8fVrVPAOd3vTu7y7DZ6Ga+Mz7vYJGtz1yWC5nhLSlzoAv/gtC1YMcqMbvrStmk5pztlRBy@vger.kernel.org
X-Gm-Message-State: AOJu0YwbAEcXlZo4l9BqjR8vEWRiwJgxYR2riZrrH7S0DxLubYEOUApa
	GR6FM//qNPIayBeIEoO2kBvcKDHdvTSEbxq/dQnZI2Nx1FJbX30DYv5Z6vNpZn+MK3c=
X-Gm-Gg: ATEYQzzDoaDrUGRhKTgPA121ra7REragFQDzlsxAhFvnzouQT1UgDpyxNu5WUswxSER
	Kvql0p3XGYtJbOtSXQ0ZloOb9se985gbj+qk7WnEhslwSFikvTGedsyJtQE4rRAtz+5QiLK0SiC
	E1w/T5u89W0p9lhBl5Tokvcxkw19CdNY9pBCOWtVI/1CA/NT4EZZQQayThnx7gmzhwyUD36r9KJ
	qRSu8wR0xRpGiER/1hrhMHbkTUquu/GexQVARzCeJyge2Cd1lSdGnzLssY/9WOGAIJVC+GXqr4q
	l6ODoT5mnslgByaqw4On3g1Uxe6Vwg0JJUKaAgZyWNKd+EabB5E0X5uhdm9rRWhdoANzdFMrSIG
	GxMm+djLVzXNvvUYmMfL3XoqaPHg3ywdD8GrglDmxs47plhP9Dy0JDPEQ+sOyFDQW8KKVj/YF14
	E2NUj2QILS8aSlUD9x/JK+Hz3rPVol/w==
X-Received: by 2002:a05:600c:4f11:b0:482:eec4:74c with SMTP id 5b1f17b1804b1-483c3de3a31mr15029275e9.22.1772088645594;
        Wed, 25 Feb 2026 22:50:45 -0800 (PST)
Received: from draszik.lan ([212.129.82.143])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b89c99sm22518055e9.15.2026.02.25.22.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 22:50:45 -0800 (PST)
Message-ID: <d8fe362e12af7a4e076babbca8a8be9b51f58ec3.camel@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: exynos: gs101-pixel-common: add supply
 and regulator properties
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: amitsd@google.com, Peter Griffin <peter.griffin@linaro.org>, Tudor
 Ambarus	 <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Badhri Jagan
 Sridharan	 <badhri@google.com>
Date: Thu, 26 Feb 2026 06:51:32 +0000
In-Reply-To: <20260224-max77759-charger-dts-v2-1-983265ac8e63@google.com>
References: <20260224-max77759-charger-dts-v2-1-983265ac8e63@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268614-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 415F11A1711
X-Rspamd-Action: no action

On Tue, 2026-02-24 at 23:30 +0000, Amit Sunil Dhamne via B4 Relay wrote:
> From: Amit Sunil Dhamne <amitsd@google.com>
>=20
> Add power supply and regulator properties to the MAX77759 pmic. The
> usb-typec device will reference the regulator provided by the pmic as
> it supplies vbus to the typec device when operating in power source mode.
>=20
> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
> ---
> This patch depends on the patchset [1].
> [1] https://lore.kernel.org/all/20260224-max77759-charger-v8-0-eb86bd570e=
9c@google.com/
> ---
> Changes in v2:
> - Added a line between property and child node as per DTS coding std.
> =C2=A0 (Krzysztof Kozlowski)
> - Added the "power-supplies" property immediately after the prev
> =C2=A0 property without leaving a line space.
> - Link to v1: https://lore.kernel.org/r/20260224-max77759-charger-dts-v1-=
1-b443545c04aa@google.com
> ---
> =C2=A0arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi | 8 +++++=
++-
> =C2=A01 file changed, 7 insertions(+), 1 deletion(-)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

