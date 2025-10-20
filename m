Return-Path: <devicetree+bounces-228985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD0ABF2D25
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 19:58:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B14DC18C12A6
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 17:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B975C32ED59;
	Mon, 20 Oct 2025 17:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TB6sa/bx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC93A331A79
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 17:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760983083; cv=none; b=dvKTsappv82HKJ2yvR5IneMM64HKTiFFWgp31xjoX73tc6Ukf6qXg46dyJpu4/IxkvEu2GYpxwL4qbvi8iEBXtsY+ypKODKL/UIG63AztAYZ2MB8Lp9yOuIL/s7HRnTKr5vqs9tUq+izoC33erAmzpvBBTy/otCMUg5r+fq3PzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760983083; c=relaxed/simple;
	bh=iJYNXDViBNg9H23IU+cEG/iUlaVVosMhC4bKdCUk1To=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bDn33FF0obxYwj54Xbk5aoPs1VZp8aDlvR8sYegukbeV/OR4dxxBoBrjcpVUqhnL7vIWn9ucncUogCXT+sxzAyN4Vx05yE1wCe/UQsVPdUaXAyt5XFlFbCmJsm/r/TYqDdmw5AZXffRm3+Lh9BHi7xiyZdsbj4TAO/a7FRC/Qpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TB6sa/bx; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42701b29a7eso2114587f8f.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760983080; x=1761587880; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iJYNXDViBNg9H23IU+cEG/iUlaVVosMhC4bKdCUk1To=;
        b=TB6sa/bx5bkTjJ5MaRhcpoj6Tf+mFleUpkzyR1LtkRSW/kXnqrrcGWLQ7C9+UprhCu
         K1XY1qd1HVhm3OvgiCsqJNj0FM4j2JMbZEDSRepw3+TdidZRy4/ZurPhN5XLQYdrbMmO
         Lsn/gkkqUQ/7qMWdk3UfjUTRMGxLLUJTKxihy2FsmjW/5+zCubXFEEs+/IaRPFEzQzEJ
         wJ7pyfU1HWpXxsuNJTR7E9RGoDFMVintFSrrcBougdWmQv/+YiDsKLoHahosFgX35b6R
         9i4JyJGfT0SlDNxpF2MpizZ67ZIo8q3L3+faAIJW6gXLbFpDbZUvzsbnJ8bJjvb24p4r
         LE7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760983080; x=1761587880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iJYNXDViBNg9H23IU+cEG/iUlaVVosMhC4bKdCUk1To=;
        b=m48OfMQLEgxWvjIO04KKBpLMa2r1bnsUdP9KWDG3pdWqVePDdYzA8+CpZHUjRuj0gv
         SX3bJskhRMOvMqRl6dYZs3fYNs1hpcuvW/SCt5HmjRV3hR4rBfxtIk2mrMhd4Sr+udaV
         0o2oEOL4PsAwybHyzp3X9+xUfuYqQ0DXRV5IWex6vHOJnBkIOGJ3kuuPOr8ggVOyS9E0
         M/6nmHrMNBOX7JW3XhsJHorwBapxhZuTgcUv4fc7a2FE2XENNSDGqlJE0PqT6dWIqAzF
         mujHdf0pZnoHVLw0ohCAMKislEMHngVAziKTx48hkjn5E9Mfqiy38pXAAiz6BDkYA5w/
         prig==
X-Forwarded-Encrypted: i=1; AJvYcCV+SDHpX1WqM9ot/U3UyaFMoFKJcZ9AsjC2WWSpMTrgSGvEealWq41FQMcPAHsH/xHcJlM3jaW96A0j@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7ULqeK3FcTJtdOlx8nuUKXICY70Z+JsQ3YqR2Ik7HvqhvrHlU
	oz9g3P26tKZYS48pdGs5ByWwNpNp3Co5w3eaa+8XgLeAdnoiEAvIH9UH
X-Gm-Gg: ASbGncvRPHIieVbsoZLZwRHIJdgKFVDbTQnJP3oU2coOrMrEBrOrNir1dQta+IbdRrc
	7ztVEuFWYR7iIXAslnWcPK4/pz5bOdUKJsLovtMai+lAz3qrXGox5QwuGBlD5DdmoUmC0XnjeL3
	bdQHjPbPZ+SypMiJQKhxL6jAnljkdP8B3smHw41FTLs7GJlzkjAgfSW8PuJHwz40kVTeSvgfw9z
	EwwYig9A3inBbCWOV8BbSE0N5okukHD1Ob/usitccJu2x/1Wmycjzhbtu8pO7fZpN4aNo+LhkGA
	PNZAjZO5Hvka/n/SlxJmeqJeOZdvUb3smGgz+Q/5ZdR9mfreFY6nU303tlL1Iyuc8RZWVpIMrO4
	yj98QsfgvXvp1DlPmWds/TTC3xQAqsELF9e0dRzCGkgYkPQjfH9mYqbjRWfkSUUsbCRHQFNhQce
	elDm5B1/sPTJQAWaI3cqX7uOBSIpBHpWzJEJQm24NuvEnp2S5QtV0UydLXLs0Ur4xpIbfc
X-Google-Smtp-Source: AGHT+IEQQl9YZkR1BgzZ6Z2Nufpu9HBikDewEvyF4EuaS29j/RILS2DM6SBqWX87g+1TkKzsAinQ/A==
X-Received: by 2002:a05:6000:705:b0:426:f9d3:2feb with SMTP id ffacd0b85a97d-42704beea1emr10367539f8f.23.1760983080172;
        Mon, 20 Oct 2025 10:58:00 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f00ce08asm16294878f8f.44.2025.10.20.10.57.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 10:57:59 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Mark Brown <broonie@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>, linux-sunxi@lists.linux.dev,
 linux-sound@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 07/11] arm64: dts: allwinner: a523: Add DMA controller device
 nodes
Date: Mon, 20 Oct 2025 19:57:58 +0200
Message-ID: <2324646.iZASKD2KPV@jernej-laptop>
In-Reply-To: <20251020171059.2786070-8-wens@kernel.org>
References:
 <20251020171059.2786070-1-wens@kernel.org>
 <20251020171059.2786070-8-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne ponedeljek, 20. oktober 2025 ob 19:10:53 Srednjeevropski poletni =C4=8D=
as je Chen-Yu Tsai napisal(a):
> From: Chen-Yu Tsai <wens@csie.org>
>=20
> The A523 has two DMA controllers. Add device nodes for both. Also hook
> up DMA for existing devices.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



