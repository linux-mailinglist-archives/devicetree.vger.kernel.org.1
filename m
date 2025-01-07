Return-Path: <devicetree+bounces-136159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 426CFA04154
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:58:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A07C61657E2
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38A9C1F0E3C;
	Tue,  7 Jan 2025 13:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="MB9P6/Da"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7EA1F1921
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 13:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736258278; cv=none; b=NZ+7Eoi922CjEcmSeOoEYTZAl7LeJV48OyAyxSJvaW4OEMAJowe4c9+DMJw1Rcw378rHl9KIc6EcFAmyqqMRNzHBQaTvWOXgZRx0T8PB5W95udyT/I9u6KK0PO1OSXU1a+e6/s8En4XA2TSQR448sggzUh/057BeDMh/I8Ed7vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736258278; c=relaxed/simple;
	bh=XTyG24D1CeOjSgwkEBhS4J5dOBcU4kH2tt6gva41xZE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=bKptf1O5j1J3pM+PzMYTTX5fBIPEbaw2SrWZUQ9ZA82NJGWMEKRlMQb7H4oMfg4DjrUx7Gw/GdVUzqHZrdSTDB1M9lEXGj7kpKKuRDa0iBZhgIltYagfZO9AR6t5I8AI0/qu4QJ2OirkEY4adouEmkzYIvv2Grtc3cFLBQKyJlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca; spf=none smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=MB9P6/Da; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ndufresne.ca
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6dd16e1cfa1so133929606d6.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 05:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1736258274; x=1736863074; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XfVj6FlFhMc3oiLEFsY9aBgjICEEoiKXKRJpCRloMIs=;
        b=MB9P6/Da0bbATv6+XvNOOfnz3XThggMslU67TwRNaVtKhzl1RQNDf4u+9GR/k+/x2R
         AGsGkA0f9fwP9Q5g5fU1LCEKaUnI59wP1hzQHigoJsVisxXWK8N6T8cdZeJx75kNXguu
         uDMmsshFlRyrOS6nHLAP0JMIJ5G5w1OHLPlK46ezofSgJF+HfNPcmslJRVD223YK4LuB
         pEKDtYu1SVaRTWbfWXpGa1+03bcelqDWYif9KY2PaRnusZFBkSPKgcniVEWjNQHn/3Cd
         Rb8n4ghaKunT2d35VpUsr+F3UfQ1nCPM6lIfIXJR2eNAXqHSiArJJy9ZfjkqvBX/leZW
         NXMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736258274; x=1736863074;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XfVj6FlFhMc3oiLEFsY9aBgjICEEoiKXKRJpCRloMIs=;
        b=Y2ouxolmiEk2+mBSvIfDc+y1ZfQX3ioBkzlg1fjwbT/x6oZ08byJ7C8KPFlkIUCRX1
         JrD6ADsqhHfFiWbnAQaKWsEIhDP6e42El+TUXBUjQXk5+DV/OLQoalDXwLn+yS7O0cTB
         iAIhmh21OFfQLCatV5tNuaTM28nCDZk+ObdzZd5a12Xkr4K/2OFmDN8qbCGzstzygh3S
         LT5dfvPN27ig+RXt3ZdnU5olnPamci8DZ8Dd0dJahg1j/LGeZDvFzYomp7V3u3KAWEjl
         EwBI4mguPlrLCexXhwTKPBFzgHWjQwShHKCJl9JwgYy217y7JfBZz/nWIc2UHsfJMjon
         +0bA==
X-Forwarded-Encrypted: i=1; AJvYcCVnulZaFK88QHWD06w+nAh6gs6BnfxfiDhPrv/JWwU2lqLiHwjokybPyOYrBDmmjNWUv5i+ON0a/SOh@vger.kernel.org
X-Gm-Message-State: AOJu0YyTTna7e2HJc5JLLBtWHsNyuBjWpBhKdA+Jlsw7bXAxmEoVUmBo
	W+lzXFFzuTbxHR1w+ktLIdyPoyPhzxXCRcF33qIZwB0egyZqOmArJzpq2spz8+s=
X-Gm-Gg: ASbGnctYzPY8cIT5F4msPCdDqb7NMIxm+LEmWFg7YSTHycHO5YxlMx6apsTvFjW48wR
	ZsTelZmXkwdXQKjJ6oHeJwuzWGvGdZcJ+AgRf1XpvVGeWdSqMoWNxq7i31xNmGUzUJVcauADYIq
	miN3LdcZbECbCotBvqxkqqMsOKyK/cHl6JiEo734q27vc9lilXdJ7PSX/H6+mFxoJw223x33mkd
	qJ3rIi01trSy0cC41Upw7T+nCBq5uuuF51uji6HRT3ZbjlNRDBjHwtCyA==
X-Google-Smtp-Source: AGHT+IHPU1lCWtFpHhYsjCvkXWbXGnqexw3MD2VVfwbeG1yis8bUAo6lsxnfJ7XG9nLeGPhxmdC3Fg==
X-Received: by 2002:ad4:5ce9:0:b0:6d8:9c92:654a with SMTP id 6a1803df08f44-6dd2331e946mr1072703606d6.10.1736258274045;
        Tue, 07 Jan 2025 05:57:54 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:862e::7a9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6dd181c05f7sm180854666d6.90.2025.01.07.05.57.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 05:57:53 -0800 (PST)
Message-ID: <635ce4ed82aaca422b869f467300b0eccf9c8703.camel@ndufresne.ca>
Subject: Re: [PATCH v9 27/28] media: iris: enable video driver probe of
 SM8250 SoC
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Dikshita Agarwal <quic_dikshita@quicinc.com>, Mauro Carvalho Chehab	
 <mchehab+huawei@kernel.org>, Sebastian Fricke
 <sebastian.fricke@collabora.com>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>, Abhinav Kumar	
 <quic_abhinavk@quicinc.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley	 <conor+dt@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Hans Verkuil	 <hverkuil@xs4all.nl>, Bryan
 O'Donoghue <bryan.odonoghue@linaro.org>, Dmitry Baryshkov
 <dmitry.baryshkov@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?=	 <u.kleine-koenig@baylibre.com>,
 Jianhua Lu <lujianhua000@gmail.com>, Stefan Schmidt
 <stefan.schmidt@linaro.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 07 Jan 2025 08:57:52 -0500
In-Reply-To: <fbe0d935-a3cf-dfa0-aad8-56834a0a002c@quicinc.com>
References: <20241212-qcom-video-iris-v9-0-e8c2c6bd4041@quicinc.com>
	 <20241212-qcom-video-iris-v9-27-e8c2c6bd4041@quicinc.com>
	 <20241223113027.21b8f7ab@foz.lan>
	 <fbe0d935-a3cf-dfa0-aad8-56834a0a002c@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Le lundi 23 d=C3=A9cembre 2024 =C3=A0 16:21 +0530, Dikshita Agarwal a =C3=
=A9crit=C2=A0:
>=20
> On 12/23/2024 4:00 PM, Mauro Carvalho Chehab wrote:
> > Em Thu, 12 Dec 2024 17:21:49 +0530
> > Dikshita Agarwal <quic_dikshita@quicinc.com> escreveu:
> >=20
> > > +	.dma_mask =3D GENMASK(31, 29) - 1,
> >=20
> > Setting a mask to GENMASK() - 1 sounds weird. Is it really what you wan=
t?
> > I so, why?
> >=20
> Hi Mauro,
>=20
> the value of this dma mask should be 0xe0000000 -1.
>=20
> The background for the same is, 0xe0000000 onward memory space is allocat=
ed
> for IO register space so we are restricting the driver buffer allocations
> to 0xe0000000 - 1.
>=20
> Based on the comments received in the past, we are using GENMASK to
> generate 0xe0000000.
>=20
> Does this answer your query or I missed something?

I'm not sure it will do what you want. (0xe0000000 -1) matches ~BIT(29). Pe=
rhaps
you wanted to use ~0xe0000000.=20

Nicolas

>=20
> Thanks,
> Dikshita
> > Thanks,
> > Mauro


