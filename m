Return-Path: <devicetree+bounces-249041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F19ECD8ADA
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:01:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2B629300EDDE
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46290234984;
	Tue, 23 Dec 2025 10:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RrjYxCcO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45203597B
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 10:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766484096; cv=none; b=iXN0lS8qvG6P+XSIjAF5Enos8lBhrH0ccTCA2Pp/5q0iFqyhbTgnV2leBwL4pTPH0ScYxMscV5utlfHLSmsiEr7x10FulPz39fL7Qm7VRWwGktYCdVSwWQ/jXfcY4ovNTHioaZ3T8/zIHcCsF5vJmL9tkEl5eV1DhZI6uGlYhuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766484096; c=relaxed/simple;
	bh=HpBpI/8wSHF7t4KFhnjlrnK8AhfjX0W1uSniYzs6/yA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=WbsWYJo0Ucxt3Tj6iLgDA5TylbHUXRuPGa3YqXGamSjluoJ5v66MIYz5NP8MpzuZ5+8xfV6i3BTfH6qbA2osKMfLJ7ynNfC0tDVhu4FbxbPQkCQWlVEXVUYquB+j2k1MLSwLi90wHR2iyBU3eGltkeFZPsrJeoRleN5BxLgJY2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RrjYxCcO; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-bbf2c3eccc9so2197501a12.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 02:01:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766484094; x=1767088894; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HpBpI/8wSHF7t4KFhnjlrnK8AhfjX0W1uSniYzs6/yA=;
        b=RrjYxCcObkg8TXURFXJB3x5sO39XyO/8c7fauM7C+LwGjzYYZDQmn9GyY3JnASZP4K
         nQFgvStgfV3nNtyLMQPREmRk48hryawTu0W8CG8HCrp6Dwv8nIrOGsIIBxlFfHvwYA6e
         4p3wi1T6pzeeNPYspEgkVsSECYENKP7ptOcf4MEWOUQmmE7tpxlw7TKMyxhNO5zytrhx
         G3A/2TBcCF8ytWs9LJhqdxRsIAtQ/bJcPTzq+4o/q8Lr4Wxe0owbnW3m7bFEJ5TeMFJf
         Ub/zdCedld6QTtxaFpulLRyV/RRNE/ynSiRT0u+RS39pNSlLQaAPRjqseD+c0fCvJ81s
         gWKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766484094; x=1767088894;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HpBpI/8wSHF7t4KFhnjlrnK8AhfjX0W1uSniYzs6/yA=;
        b=ZxmnYdbKvqZFQX0LMOJsQ1QkrT/Avz4pCot9FPPSDzEtlTI1FhLnkjIeMl1nd+gpUC
         15T6m2VvqKSkveC1d4cqj/E5hifGetQWKXSSwjYR8be/F1LX9HcmrMYh/MpmX44SDtVq
         fbrt4DHq1gabWTlv8o0K7CZHdGVFiRQcBZ67flviQbXUw2IUXDzBNjCo9yPKbmywol8j
         G+m2/it74t+SUhvoxObCx6Gt5XFVERzhaZd698XNIEdDg6rGDjmbyqZ6fsOFhN5iV6/u
         jZ4+5113Svz+zk+mF9i21AbYvUO3g004BCHcRlNqz0Nx5YpVp+nu3MP/ml1oHdXEGgnU
         CDPw==
X-Forwarded-Encrypted: i=1; AJvYcCXD+Em6vfV6dWnYDVXxjet+6/mdpX1+fObDWs1QCeYERvEseudCdvOk68b86RuaBFrMawq8+sstifl+@vger.kernel.org
X-Gm-Message-State: AOJu0YwUX7Q76IGEavfIw9S997/xnEG3cLz7Rnltuf1X0xFLGAz7oEOf
	q8HCm/jxRIzKKyVtKuJ3hywA4QCwLftrt3kQXQVimG4ejZ2Wov3MYBSalQOC9wr8tZto2QelP97
	02auTASYGJg==
X-Gm-Gg: AY/fxX5CtCJWpintOOsr2HnsaIg6x0WS2CROjGFRXr87Ps09w2ZTRZoPYDfcmI9dNw3
	eU40u6MVKdBfg0cAOCVePH5YiLSHBYn08AIClgRd/aLBhjw8shwweuOQpRneZAJ8Ur3KDUZm96S
	Pu4gEYpeiLYVG4TbwEUAtSvRTOKLDxrMQdEDwuC2cMoa7kxTsirEoYV+6mF3rPC23Nn4PGZHKUR
	YvIc1AsTuVoNy9GRJg7ErqVK3kQxWwSlqPruT4USUW5VhsSEk8BSDZw8WLE2hnct1FGH0lnF9Lw
	zOcI9286GFIBCk6SE9aFhpcvCWcAWcUA2NkYgZcRhRa/Shb+6rE1fdL60WXMdW+WC8Tq+QwiBMV
	Ezml2QxLLsVaOJPQzdp30DSdffcsfOUT/zxCgTfmFd2rJnVh54I76Kb06ZP4wsaISg11EVngUUY
	Bceg9XkArhsl1t4ULK
X-Google-Smtp-Source: AGHT+IFXuV7GadqIyPi+nPYJimRq9WoNp2FQ61ILnYC43nto17QpxsN8ikiDj+xBUwBcc1gocDeCbQ==
X-Received: by 2002:a17:90b:2e4a:b0:34c:9cec:3898 with SMTP id 98e67ed59e1d1-34e71e29544mr15068089a91.13.1766484093988;
        Tue, 23 Dec 2025 02:01:33 -0800 (PST)
Received: from draszik.lan ([212.129.75.63])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d4f7ffsm15451480a91.1.2025.12.23.02.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 02:01:33 -0800 (PST)
Message-ID: <28ead866eb9a11fb3f20ad49839aadd3993f3886.camel@linaro.org>
Subject: Re: [PATCH v4 5/5] arm64: dts: exynos: gs101: add OTP node
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Peter
 Griffin <peter.griffin@linaro.org>,  Srinivas Kandagatla	 <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
	willmcvicker@google.com, kernel-team@android.com,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Tue, 23 Dec 2025 10:01:34 +0000
In-Reply-To: <20251222-gs101-chipid-v4-5-aa8e20ce7bb3@linaro.org>
References: <20251222-gs101-chipid-v4-0-aa8e20ce7bb3@linaro.org>
	 <20251222-gs101-chipid-v4-5-aa8e20ce7bb3@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-12-22 at 16:30 +0000, Tudor Ambarus wrote:
> Add the OTP controller node.
>=20
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
> =C2=A0arch/arm64/boot/dts/exynos/google/gs101.dtsi | 8 ++++++++
> =C2=A01 file changed, 8 insertions(+)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

