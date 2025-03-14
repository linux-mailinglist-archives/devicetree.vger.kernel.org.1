Return-Path: <devicetree+bounces-157606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44618A61570
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 16:56:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4CA277A4495
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 15:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8828202C46;
	Fri, 14 Mar 2025 15:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DQhFt/v9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC02B202C31
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 15:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741967789; cv=none; b=UEX6Y9czhMvXtgoME54He4yO0MmAZTshtZG8nGJkSKbH2OekP79lFmb/76spL3R34ZYshdC0JE0epDrDLkRj29++YwqqgCCxEJfgOc4I3joIhkJG/PWlnUS7B4G43Vg1FlFsLO7bBRMRJFDvxDSTp3O4mHnvgSIzCZzSsrEMwqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741967789; c=relaxed/simple;
	bh=I7WfoJdrMa7iiui5bCs39L2nw3ehuuL7qs8ypQidpC4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=WMGuqgg0XkFpL7Vrn3rmL6M9zOCDSbrdwIecKIRInYNCwFuIgsQAzqFzpwE7yog1zT5nf+j3P0NDvgQtgj5F8Qf0T9BDm7OI6HCV2SIoP1LsU73u7MeAd9MMkBhZWQAS9Q0G94owhtKlsjlCWl9mcoJg3mUM9VjzyQw7VPaeNxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DQhFt/v9; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43d0359b1fcso15431145e9.0
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 08:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741967786; x=1742572586; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I7WfoJdrMa7iiui5bCs39L2nw3ehuuL7qs8ypQidpC4=;
        b=DQhFt/v9nfss5saXPC3XavcuxWFTs4+kZPx2c6sMgZkJcT5H1QyDCwtx7KfdHdWlw4
         7qQGuMQZgaBFbOCq2rKep2nZXV4jVkdhzAMei0ciuvz5tj9fDVWocl29IQ5N0HVrtoxi
         qZoORn1Upqt4+iAu2iKRBh6rZxAIShrGJhidZC6nKs4+eYBChyJAANDqmDy2i8e+mmlU
         aIeeZP5GQR8SDlhuM80Xd6jvshkKE3kgLExTbc0zSbBUZVkXxInQW4WCzayYI03RAXmY
         71cLUcY7kYAXNLd5nXtNINmE+UDyQzVZvkH/8xkOVhBbjKkm0FSmczHgk65WUzsUnYhA
         zMxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741967786; x=1742572586;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I7WfoJdrMa7iiui5bCs39L2nw3ehuuL7qs8ypQidpC4=;
        b=PMGtX1BM7kEDCuUL6R7nZfRHbiEMKYNuZRjEyQnjK3EY00mRLtkLxPuRyHg3N3NKpz
         aPy+C4HJYjAJVkY/BlVTEY2M00GyHkAwrW2ZuJfLCjHToC0REigzvbLWaJpo4HVB4z3O
         SwA14WPIgDhfpH8BSXlgSXS3ttxPfaMc+Hr2aRGtJ84KlEYCMCGsnpl2MZwQXf2uPE0I
         CjBmYiCP+gTvsPDVD8J0ayZosNbiYvOEfCDq9om1m1mn1YGOwhMaffYVV2OgpWlwe991
         F5jic13iseNTUTG3g9RMf73E61VILb6HskvOzIPhMyRn7iiP9LTvSuo+sz7ZPaWswMr1
         K6yA==
X-Forwarded-Encrypted: i=1; AJvYcCWM7Z5x5s31WAy9Zoy+T/Ls+YcAlKN9/vc/opQXaZUbP5U0ubl95GJHO6/bn4LVqan4IqccmYJHgjNM@vger.kernel.org
X-Gm-Message-State: AOJu0YykZ7ZmW0vJop0hSJzDZISkSIcpAlu8PMQRf+GG5DBfJx8pHtZr
	fdNYPi2ojvYOLUI4enYIXDAx5G7DNs9QcSepAnIKZayMh1tKM5Bt+0/BsN3W3is=
X-Gm-Gg: ASbGncvG5ogSudzRX7tbeJnKvTUa3mHzSNJjx/HL6jsiL9I2OWFss1Sh1nyvdtmrkdr
	zGXydVXEe8yq0tTYMdE1VS+xTY7IWRxkDB1xsob0fmSl1bJxH5FJxnhKIPDl5TuNXUTjByfVDHU
	Lva4ZTtyWXhVZ9zVDVSv2qZ35Fx51Zeiwj8EDiniAMznxTFMEO1dwNbwWVqUuyOQG/hcOZGbsZ6
	M1KsUWfLZyg9Mgj1SBdLikp7ptFPTLfGM9js/N5OPexx/9epDFeevL/hdSvwqKZK5hUoUKzt0rg
	3ifTNYgSnxzkUsr8y4iKFJ8N4z+yQchqu4iz1Fq+wq0W7aDFAys4qRF6yb4=
X-Google-Smtp-Source: AGHT+IHCF3yVkeabT3o+pvpbobh6GwFZochyn0C61kckJRZQkd4Gy9mZ0YDU7EMFdvPBpYowc1DQVw==
X-Received: by 2002:a05:600c:4f87:b0:43b:c6a7:ac60 with SMTP id 5b1f17b1804b1-43d1f235e45mr40033045e9.10.1741967785964;
        Fri, 14 Mar 2025 08:56:25 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d1fe60b91sm21467905e9.31.2025.03.14.08.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 08:56:25 -0700 (PDT)
Message-ID: <8ccfdccefaf0cd651a3f085aa78227907f03a478.camel@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: exynos: gs101: ufs: add dma-coherent
 property
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alim
 Akhtar	 <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, Bart
 Van Assche	 <bvanassche@acm.org>, "Martin K. Petersen"
 <martin.petersen@oracle.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org, kernel-team@android.com,
 willmcvicker@google.com, 	stable@vger.kernel.org
Date: Fri, 14 Mar 2025 15:56:24 +0000
In-Reply-To: <20250314-ufs-dma-coherent-v1-1-bdf9f9be2919@linaro.org>
References: <20250314-ufs-dma-coherent-v1-0-bdf9f9be2919@linaro.org>
	 <20250314-ufs-dma-coherent-v1-1-bdf9f9be2919@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.53.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2025-03-14 at 15:38 +0000, Peter Griffin wrote:
> ufs-exynos driver configures the sysreg shareability as
> cacheable for gs101 so we need to set the dma-coherent
> property so the descriptors are also allocated cacheable.
>=20
> This fixes the UFS stability issues we have seen with
> the upstream UFS driver on gs101.
>=20
> Fixes: 4c65d7054b4c ("arm64: dts: exynos: gs101: Add ufs and ufs-phy dt n=
odes")
> Cc: stable@vger.kernel.org
> Suggested-by: Will McVicker <willmcvicker@google.com>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

Tested-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>


