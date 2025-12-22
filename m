Return-Path: <devicetree+bounces-248897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1699BCD6658
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 15:40:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D527D3064FD5
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FBFB2FF651;
	Mon, 22 Dec 2025 14:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vzHhPvaG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AFA299A81
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 14:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766414366; cv=none; b=tv6LefJjuPj9tYV/T8dI4we4IQZfsVGiZEcNtkFHhwALtKnZEL8blNVi3gUwM1KK4tIWm3AwUmDGduSsxZv9RxIZCTi7qGUprL1dpLskAK15htiiVYW1r21MKvpj/o1k+FUV3wWS0jWdsASGT39Cb24vyBgifOk8iiVUSYLcC0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766414366; c=relaxed/simple;
	bh=DoUjpY5UCM+p1ACxy0sD1JEJ5bi7jqykWMV8BytUF/8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tPzuHvPfNa5RrM7JEG61B/0uTC/mY6OukDmbof7417qXQCgaAOKLsOfyT1HcKCwc5wPecozs2KN29LxA7LIRcPhL3BOve5kAqx5JwXYoqFxn+FdalWOI3kSByhW+MKiCG8khlfqg2xODth1kwU2CJ57wI7PlLffJL7TtrKmlzD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vzHhPvaG; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a0834769f0so39632135ad.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766414362; x=1767019162; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RDtdE0Cxu7Gss8LSXL9OkFlTQfXFyy8lzvBUAY3ZMaw=;
        b=vzHhPvaGL0IE+etY4rw5s+oEEaTQqL5/N4H/7HCXgPCrWNvCzN7lqQEZ7V19j2iKlV
         49S9juriNWf/IstxIOe68lRRdNiUnKaMjCExydPIZ5WauiGxqBYq4s1qFnsyp2nGcljI
         p+ftXYy5b+/oiVF/0/F7vF7IBT607z+lxmSCkJw2coStEyhordXIUtoKwQH+MP4dtzw0
         RUdR0f0AgD+54XTbg6F5QXg4zNy+UCwXL3tG/FPiLV3u3YkGELEid/X51RECPxK0uiL3
         C3SXyuRd2JSPhu1qoYW9pSr/4sfFUvOU1U4Re5UA/rEOrYLnCz91aUcjerJBWbGX40Xl
         OoMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766414362; x=1767019162;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RDtdE0Cxu7Gss8LSXL9OkFlTQfXFyy8lzvBUAY3ZMaw=;
        b=mfbUquY7MXhGEqrHrkAed2nXj4RiDTIkq/LK1K9DT+kzRxGqmJ6zDa2OYOiJgo3dQ2
         iUxRj/d6Qz8wY1mPL1kRWAZPejDZSGERESJCqs8MBLcLpd0n0JLay2JaIbWRRMp8u0Lt
         2zrrtY2v5AdDiKCLSfdMDiG6DScbPrB8y6MOmh3MilxD67zSG1bRRx54oiSyr4fn8o0p
         s1k61BhrB9Wzq50wJR/R8xo4k8eIH3jw918DYi/EkTxLSuxS3NTbs2ndenGzweCSGxfL
         drr+vS4/3JJ5dcUU4TIPictFxBbIae/YKLb/uRNUpGtDi3F1npS8qC3bcNN/AZLDJXIT
         tu6g==
X-Forwarded-Encrypted: i=1; AJvYcCXE9icBfgg54SZCkw+9E/+EV0NPgO0fy5dmJS0kapyuC6LmaZAZZl9Y9xU4OqFb9mtmgkvKJWJ3tO/8@vger.kernel.org
X-Gm-Message-State: AOJu0YxUspPAUBwDod83sfRXSmYiIZVOmHJVlEwPryz5GXEoK2ScwgdB
	9jfck+kSVkjh4ZqW2D+i9J6O7Huu+gSIsCbmIKdwYNQpB6zOQ003D+b7HtFh+NpfuIw=
X-Gm-Gg: AY/fxX6yOA4F16EiRUVvFcslMGUcj+FUqX8umb4AJ5LcRahL2irRcAC+iv1QQb7KKB+
	omTNGiXeU7B+9DJmcfDNkq98lSo8+KAQJad0c6p+CpKJdUmJ9pRde/GAL+LfIEjQR8oLN+qiOa/
	C9SXtH8BJy5MxXZh+ADtGXsIGCJkr7UC/YTLDa1Tyb45JVk8N4K8bxcYhCGG2sXdi/pXioQ0eoa
	BFbxYuXlgaRr/2rW/gg407iAttBrRjgehL3pVhNqCx6obFc7gBkLkQeD8yiQa/Sl87zHqMkiG/y
	l1o4NnaLoBi635PMkKMx31Gq+qLJWv+pGRPd6/FZukaGN/1t/IWoFLuljBl1Pn2jD/gMaCq8DTd
	JiW6pRDr/+8JZKSp5t+Dv/qgNCaMzuIMwwT5KlKAJ2ChIgak5zXnqjFbwM56jNSdET/LJMgxpVs
	8Th5ulud6ev/4dmPwUVw==
X-Google-Smtp-Source: AGHT+IFT0I8sDRtDf0BsCDJnVlRiRHCTAs1BEHb9zVVMfBwunpVujshPU39ZkSJmVXwxlUzcoBFaJg==
X-Received: by 2002:a17:903:1105:b0:2a0:f83d:c321 with SMTP id d9443c01a7336-2a2f23289cemr104685085ad.23.1766414362089;
        Mon, 22 Dec 2025 06:39:22 -0800 (PST)
Received: from draszik.lan ([212.129.78.214])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d77566sm101023635ad.97.2025.12.22.06.39.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 06:39:21 -0800 (PST)
Message-ID: <a7af16e25ad6403e867a32d9d0f26931ac40199d.camel@linaro.org>
Subject: Re: [PATCH v3 5/6] soc: samsung: exynos-chipid: add
 google,gs101-otp support
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Peter
 Griffin <peter.griffin@linaro.org>,  Srinivas Kandagatla	 <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
	willmcvicker@google.com, kernel-team@android.com,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Mon, 22 Dec 2025 14:39:20 +0000
In-Reply-To: <e9a39590-39ce-43ae-8f44-1edd137d4ade@linaro.org>
References: <20251120-gs101-chipid-v3-0-1aeaa8b7fe35@linaro.org>
	 <20251120-gs101-chipid-v3-5-1aeaa8b7fe35@linaro.org>
	 <653202f78f060b7e001b78604dd26d0f18ab76f9.camel@linaro.org>
	 <e9a39590-39ce-43ae-8f44-1edd137d4ade@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Tudor,

On Mon, 2025-12-22 at 16:12 +0200, Tudor Ambarus wrote:
> Hi!
>=20
> On 12/19/25 5:10 PM, Andr=C3=A9 Draszik wrote:
>=20
> cut
>=20
> > > =C2=A0static const char *exynos_product_id_to_name(unsigned int produ=
ct_id)
> > > @@ -93,19 +99,53 @@ static int exynos_chipid_get_chipid_info(struct d=
evice *dev,
> > > =C2=A0		return dev_err_probe(dev, ret, "failed to read Product ID\n")=
;
> > > =C2=A0	soc_info->product_id =3D val & EXYNOS_MASK;
> > > =C2=A0
> > > -	if (data->rev_reg !=3D EXYNOS_CHIPID_REG_PRO_ID) {
> > > -		ret =3D regmap_read(regmap, data->rev_reg, &val);
> > > +	if (data->sub_rev_reg =3D=3D EXYNOS_CHIPID_REG_PRO_ID) {
> > > +		/* exynos4210 case */
> > > +		main_rev =3D (val >> data->main_rev_shift) & EXYNOS_REV_PART_MASK;
> > > +		sub_rev =3D (val >> data->sub_rev_shift) & EXYNOS_REV_PART_MASK;
> > > +	} else {
> > > +		unsigned int val2;
> > > +
> > > +		ret =3D regmap_read(regmap, data->sub_rev_reg, &val2);
> > > =C2=A0		if (ret < 0)
> > > =C2=A0			return dev_err_probe(dev, ret,
> > > =C2=A0					=C2=A0=C2=A0=C2=A0=C2=A0 "failed to read revision\n");
> > > +
> > > +		if (data->main_rev_reg =3D=3D EXYNOS_CHIPID_REG_PRO_ID)
> > > +			/* gs101 case */
> > > +			main_rev =3D (val >> data->main_rev_shift) & EXYNOS_REV_PART_MASK=
;
> > > +		else
> > > +			/* exynos850 case */
> > > +			main_rev =3D (val2 >> data->main_rev_shift) & EXYNOS_REV_PART_MAS=
K;
> > > +
> > > +		sub_rev =3D (val2 >> data->sub_rev_shift) & EXYNOS_REV_PART_MASK;
> >=20
> > The above looks a little fragile, comparing register offsets between di=
fferent
> > hardware platforms and macros, but I guess it works for now and isn't r=
eally
> > much different to before.
>=20
> Right, I thought we'll get this in faster if I keep the old style.
>=20
> I can introduce a drv_data->get_chipid_info() method and add methods for =
exynos4210
> and exynos850 before adding the g101 support. It duplicated a bit the cod=
e when I
> tried it, and I chose to keep it as it is now. Happy to switch to a drv d=
ata method
> if you prefer, just say.

The above was simply an observation, and as mentioned it's not really worse=
 than
before, therefore OK to leave from my pov.


Cheers,
A.

