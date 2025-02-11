Return-Path: <devicetree+bounces-145225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E170A30B16
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 13:04:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A0B13A1525
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 12:03:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 429251FCF45;
	Tue, 11 Feb 2025 12:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mpFkwPJ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73EF31F417C
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 12:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739275334; cv=none; b=R8zJ0pIJUTwgfUmldoEXimKeRfJq69+17I2AzQpI9vMI+zVR54xL9biQDZuye2kFACjUiINGXaXlv8R7kDIMf8UF0PTAgrjO2qu76U1DgIj6O/NdLeUnjEUZcDqw7TqsutsUAORFDnEsOpMZ7JmYzlctUYjYSsVvgem2bIkRXE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739275334; c=relaxed/simple;
	bh=7d1Icmn2h5Xxh5nmwHTuvBMLWdYe0yLTSL1YV7Y8f1c=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QDYmFCVX4qD/ODV9Oaugj1uWiw5nlGG4Q6niJTmr8/PlFJDHo+8O1aO6ZaWgp8IytG5HdblUg7bxgCFPl6HAFP0gdLhhVizpxj+xc5vIZYgxVrngfDG4MPX97j8ok1boVJlqO8D4Vxv7TouHBVSXP8MZs0fdC/jYoUHUd/Ec1+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mpFkwPJ7; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4394829ef0fso10528915e9.0
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 04:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739275331; x=1739880131; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7d1Icmn2h5Xxh5nmwHTuvBMLWdYe0yLTSL1YV7Y8f1c=;
        b=mpFkwPJ7y20a6lPApLn6SzITArBSsaH5pBArRBOEefk8y0P5Wv9W7mmGjJ06nyXYA8
         J1Y1plBk1jexaaMiexzfKrUsVEUbKCRPMPtlWS3wsn6hoieZQ57VR5TccuEzL9AT/kH0
         BGjG4CfnzPyS/FV9l0ZZ4e8RBvHYqS1UwnXu+IC8ufmR2LIe614KLHNeJqYjTK8PGs79
         Rvx29Rg/Tmm3SA6D8QAt1Yiq5O04BpiSz57DPxghJv396rdzdq+V1l2hoxJT2H8pvA2n
         /ntCbxtHyBw5MuU6OZDgrBLQubYUUMLPQZ24gs+v796uKYvduWwDtjZSB98lR6vfBHeX
         gT6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739275331; x=1739880131;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7d1Icmn2h5Xxh5nmwHTuvBMLWdYe0yLTSL1YV7Y8f1c=;
        b=R82L2mu0umcrm7ZJgqM3Y4M3/aqzGBQlmTn5W7XNb6yRcIeXHK5JKdR3fPjHywL1Yg
         Ds3xWbUaY35Of2DfLRYXM7zy6CLKIOT6+YR+okxBMSVLtaMKYX0CgfZNy7a4TaaHZn8D
         bQYhcMyVtkXVyi9VQvAHzXUN5ytCMg8sOKyGaCUvMGD6wBcqlr7Ojl6e7ZrUBeDyyfGN
         3yrgPfw9NjMGnJ4syGT7Y+EL9q47PcDLZnKWU85HoU4bmu6UobKcwUE6JbyXll7LFQ4b
         bnBcH8IXQ3jdKkBGMVPZpGuqeAm22j0fXABB7/5JsHwLW6FOA19X+21vmud75bds7PBS
         mOBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXVpbkbOR8SExelDbjWepF3hLW0ml9z+CZBYJ6mINdCAhkACj4DDBijo80ltqSLWAwuFloEd03yaWj@vger.kernel.org
X-Gm-Message-State: AOJu0YypV5KPPkq1iqa1wJiEeKeA2tcF1WoG5sajjR0DNRguhQhGsaH/
	PKdWi1VgQckKnfCBRhwUiXZLvtkMTEHF2qwXv4MvvjED8HE/1IXHHvFqD7kp9CU=
X-Gm-Gg: ASbGnctcnRTx+hiBVIxmJk1Woc9Z+ZXZx4QxctuQpp6tlDpljifY/+maUo7oLpiDrI6
	2Ej97kC45alI5ISRUhoLOpYmAR8zYsA8a4mA5072GRlTDrAWlD5Y1lHrpi90NUoek00HMIlnAQN
	idwvhpe1eKLsatzbf6WXGRrgA7C+pOvJ3el8oI/I4GLHSgxkDoK3sibpRnI+QMiVq2/pghjkOo2
	2PU31cVlQLADL/RB7eUZ2iByW3fqLdf1J9GGiE8HghRjxqI5ASsUuDi73Df8q8vnT6TzzAgYC2j
	z3m0yyd2LIZTdrybEb0=
X-Google-Smtp-Source: AGHT+IEpNALrmIL66un9ZFpaSjUj/Foh/XSYreR+C2qRnL/fyZnSvShvXFiOPXFezhCRGB+4CDDdQA==
X-Received: by 2002:a7b:c7d8:0:b0:437:c453:ff19 with SMTP id 5b1f17b1804b1-4394cf0825fmr25778995e9.14.1739275330727;
        Tue, 11 Feb 2025 04:02:10 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dcf35b15bsm11149599f8f.64.2025.02.11.04.02.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 04:02:10 -0800 (PST)
Message-ID: <a740a0211c82aaaa55940e2f07e1d1b53c23ddd8.camel@linaro.org>
Subject: Re: [PATCH v8 1/3] dt-bindings: firmware: add google,gs101-acpm-ipc
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Diederik de Haas
 <didi.debian@cknow.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Krzysztof
 Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Jassi
 Brar <jassisinghbrar@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 kernel-team@android.com, willmcvicker@google.com, peter.griffin@linaro.org,
  daniel.lezcano@linaro.org, vincent.guittot@linaro.org,
 ulf.hansson@linaro.org,  arnd@arndb.de, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Date: Tue, 11 Feb 2025 12:02:08 +0000
In-Reply-To: <bad87f30-0483-48c1-b263-02cc752c77e6@linaro.org>
References: <20250211-gs101-acpm-v8-0-01d01f522da6@linaro.org>
	 <20250211-gs101-acpm-v8-1-01d01f522da6@linaro.org>
	 <D7PJTD3PSP78.27N2S94J2CNZG@cknow.org>
	 <bad87f30-0483-48c1-b263-02cc752c77e6@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.2-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Tudor,

On Tue, 2025-02-11 at 11:57 +0000, Tudor Ambarus wrote:
> And then I shall s/MODULE_LICENSE("GPL");/MODULE_LICENSE("GPL v2");/
> everywhere as "GPL" indicates [GNU Public License v2 or later].

No, please don't, see Documentation/process/license-rules.rst.

Cheers,
Andre'


