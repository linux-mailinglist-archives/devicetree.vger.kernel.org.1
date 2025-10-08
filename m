Return-Path: <devicetree+bounces-224418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F9FBC3BB6
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 09:56:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0A75A4ECCC7
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 07:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 832972F260A;
	Wed,  8 Oct 2025 07:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FgKGoOFH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424432E172B
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 07:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759910195; cv=none; b=PpVBRMksTVVXue3S9hDksXTU2yN6ZZFfvdTsbmFuMbdo+DOxeXtDElpYdrqbh9CGeFKnuhjhcVqlDWqBFrQpQvkRRF6w6i1xMgdLhIZs4VRO75RZ3sV4IkdOqOy5keE8NPCOEJ8tvsXQld8r8wP0qFyz03XL3r5ZWj7jlz/UpsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759910195; c=relaxed/simple;
	bh=yY6/uGBggjr7DPOeg8CZY+oS1HkBeSOBG2tcETPEWsE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=sMGAWKug38BcQimVIPgAv0ozPrzAWB4c5O4EFuCq82sjwomnRDvavUE32ib7v/FEN5nX4QyVNzfEz+0fSVk93Dd9w38ID8cABIYtuGVedhFWro8oi0A2++EpqRIqYAiglX1TeYGx/avB+o5vIOeWJVhCoQ2cNZk6yqnjXanlOy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FgKGoOFH; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b50645ecfbbso220613266b.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 00:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759910191; x=1760514991; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yY6/uGBggjr7DPOeg8CZY+oS1HkBeSOBG2tcETPEWsE=;
        b=FgKGoOFHGZDoX2zKAwtxgvU1mPSAuFxSpRZkUpacp8RjZuub+9h+v6WL1ArT1GCdDe
         qLjWoW2xLCkVfb1xyOSkNzk32/8q3/uoEUwSxQLEKADoISWQ1kZ/3Oq8n5deKKMFV+2O
         6rkiUKMi7gR090cPNDiGhEbd8IcXJa5OfHq8VtPF6dFm7/wdYmbxUNYiiv0sXAwP2rqs
         vRiGNlMETRM7ESdmiLZdlPD6XodYPCQyxag+d0eBE474O2HDsTaaXx/wtSZozBx0yDa6
         vsVhTjBhLu0XQO9qd0YK8nhh2EnRcS3aC9bx+BT8imsVYTBqf9rDkQbhxvUkjyN2PSHI
         Bafw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759910191; x=1760514991;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yY6/uGBggjr7DPOeg8CZY+oS1HkBeSOBG2tcETPEWsE=;
        b=XB9l4MKSukiyuoQd2g/WxGDYXPJdbuDk66noZinVBqlPZrtPKLa2uwgUlqS62L6VVF
         qL0RFhgsXXldupVUjN9wqKw3BqgPr1R4inNwo7KZxk6Wl2l4RPcWQzZlNS03n1WAs8bt
         qtCDzwNLi1lbS1qxl9te7TZpK1DxFi5/2XhINS9kJTKoRrQYZNrcxqjgIHMbZKhP3Ji9
         j5RQuwVYavAP63EnIJlTyPwDI47EBP0W1OG7vXIKLvYZpMb9g8BTY0GDikvI/gTHQh9Z
         GiXBM42gnOnN/nPv1oiNM7g/gZPwQPzyE9eWNsYLeGubVA0SkvYSXuQ8KdiXT4YUQAGd
         hbzA==
X-Forwarded-Encrypted: i=1; AJvYcCW7QDejk16r/vGB40KCxzoiRSCLv7t3K78DUfoo/FLnAUHAbEc3B62nWmg8rsXAXZJAvmFxi3TnIPbR@vger.kernel.org
X-Gm-Message-State: AOJu0YzepN/CT9W+nWBjrYpatDR+47Fz6s7lWCe8RLcWsi+H6ADSsYU3
	sHnE21smO1PJb0GTGnfDlcNpjm+17vFlQPqHGC2vrFvAbgTL7n1Ur7kpUBWACRfh9zQ=
X-Gm-Gg: ASbGncty0mA3BWLuR9Mz+1sDhG2nBTpBIYspVs/Gh77UUJs5S50M1mxkn9pfjjFfglX
	GiXNfmUL6mCAjFGJr4h6wv7VnexOKNd4S4cNLRtuXBPSuoTxQnl7z7LaDU/v2PHglAO94aaI7zk
	ItXesUXMIqbHyOH6i+3IQ6hurIOnfKd45sNtNofN6SiiQpOy7ehVRnhp74iCygj+h0vGeKH11Kk
	LhbF+Q3JK/IgIrSdfVXncBNbt/fQQC1bZzVhwkq6ifBH3u+9ourFBiY+Jy81V93aV6iFJwG2FxK
	UBVZ1m718KUMfMb0Z3Vt9pgD5WwqmZJYGTg+VTeUrO3iGhxwt/X4WNRSCBbzHBoiUhcvHwegWPu
	u9Xu9ahgokOEdwGKlf32jeXd9dJUOVMe36PyM1HJyqouFXvK65EbRPw==
X-Google-Smtp-Source: AGHT+IFp07FRs5tCn/Ul46jxxqRkTyRGCpgeXeTG3+gc53OiL7gYrGNYmAqkEff6f/cTzyfRxNMOiQ==
X-Received: by 2002:a17:907:72d3:b0:b4f:4940:6a23 with SMTP id a640c23a62f3a-b50aa899e80mr258485166b.24.1759910190618;
        Wed, 08 Oct 2025 00:56:30 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869b4d9f5sm1618847766b.66.2025.10.08.00.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 00:56:30 -0700 (PDT)
Message-ID: <ff3a0b96980669f326ed02ed81b97d34c104b09d.camel@linaro.org>
Subject: Re: [PATCH] scsi: ufs: dt-bindings: exynos: add power-domains
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Alim Akhtar <alim.akhtar@samsung.com>, 'Avri Altman'
 <avri.altman@wdc.com>,  'Bart Van Assche'	 <bvanassche@acm.org>, 'Rob
 Herring' <robh@kernel.org>, 'Krzysztof Kozlowski'	 <krzk+dt@kernel.org>,
 'Conor Dooley' <conor+dt@kernel.org>
Cc: 'Peter Griffin' <peter.griffin@linaro.org>, 'Tudor Ambarus'	
 <tudor.ambarus@linaro.org>, 'Will McVicker' <willmcvicker@google.com>, 
	kernel-team@android.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Wed, 08 Oct 2025 08:56:29 +0100
In-Reply-To: <001501dc3815$601ec450$205c4cf0$@samsung.com>
References: 
	<CGME20251007155631epcas5p2cbf4c7b52bd217128c156bf6f5f1ea82@epcas5p2.samsung.com>
		<20251007-power-domains-scsi-ufs-dt-bindings-exynos-v1-1-1acfa81a887a@linaro.org>
	 <001501dc3815$601ec450$205c4cf0$@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-10-08 at 11:05 +0530, Alim Akhtar wrote:
>=20
>=20
> > -----Original Message-----
> > From: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > Sent: Tuesday, October 7, 2025 9:26 PM
> > To: Alim Akhtar <alim.akhtar@samsung.com>; Avri Altman
> > <avri.altman@wdc.com>; Bart Van Assche <bvanassche@acm.org>; Rob
> > Herring <robh@kernel.org>; Krzysztof Kozlowski <krzk+dt@kernel.org>;
> > Conor Dooley <conor+dt@kernel.org>
> > Cc: Peter Griffin <peter.griffin@linaro.org>; Tudor Ambarus
> > <tudor.ambarus@linaro.org>; Will McVicker <willmcvicker@google.com>;
> > kernel-team@android.com; linux-scsi@vger.kernel.org;
> > devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux=
-
> > samsung-soc@vger.kernel.org; linux-kernel@vger.kernel.org; Andr=C3=A9 D=
raszik
> > <andre.draszik@linaro.org>
> > Subject: [PATCH] scsi: ufs: dt-bindings: exynos: add power-domains
> >=20
> > The UFS controller can be part of a power domain, so we need to allow t=
he
> > relevant property 'power-domains'.
> >=20
> In Exynos, power domains has a boundary at _block_ level. I assume in thi=
s
> case it is BLK_HSI, which contains, multiple IPs within block, including =
UFS
> controller.

On gs101, there are three hsi power domains:
* hsi0 (USB)
* hsi1 (PCIe)
* hsi2 (UFS)

I have not looked at hsi1 so far.

From what I can gather, hsi2-pd affects:
* cmu_hsi2
* sysreg hsi2
* pinctrl (gpio) hsi2
* ufs
* ufs-phy
(not sure if there is more)

hsi0-pd is similar, except that there is no pinctrl (gpio) hsi0.

They're all modelled as individual nodes in DT, so we need to add the
power-domains =3D <>
to each of them.

> I hope you will be sending the corresponding DTS changes as well.=20

Yes, of course :-)

> Feel free to add=20
> Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

Thanks :-)

Cheers,
Andre'

