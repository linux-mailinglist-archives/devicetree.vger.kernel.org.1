Return-Path: <devicetree+bounces-128236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 294EB9E826D
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 23:08:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E11C2188480C
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 22:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D8C17B427;
	Sat,  7 Dec 2024 22:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VxQUEnyV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347BF1547E3
	for <devicetree@vger.kernel.org>; Sat,  7 Dec 2024 22:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733609274; cv=none; b=f65QuL2Dl150XAVIrPM15lKrMu7Rtid3mz45COWk5+Zy55HMLfRu+TqqqbylKG5c5mFaJOuQqcvbdrWU5d25YyscND8HjURT1hOJMDLSVDTJrOsxyTqphYVnYuvothXYbBuQNVwb/6fsv/tT7kBZcbhOtGc1FCfNS50O52/mo20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733609274; c=relaxed/simple;
	bh=+bQHiNZ2m2WhrSw8sdxwTUuPMItd18DX+vXFIh54PpI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jOgiW7is3iAMfcG6WirNFWX090osRFaMlg5rjT6zmbVOyc4h1yusijNnu7A7Jv2Uq0WVcOCqnXrSL+Ngyu1SoonfCOdrSjzUHpt1xmiHVNGcEZ+Ys3pa0rgDpGw32TAU9QnnloqymHF55JMmCczwvX1emEQjqHVhlotTgdasjeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VxQUEnyV; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-29e61fcc3d2so3067648fac.2
        for <devicetree@vger.kernel.org>; Sat, 07 Dec 2024 14:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733609271; x=1734214071; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+bQHiNZ2m2WhrSw8sdxwTUuPMItd18DX+vXFIh54PpI=;
        b=VxQUEnyVhStEzRe3BP2uro/RgtxpNqBGlNsTZDc6x4FQHtRZXiCkt1oKHGNPoO9SV7
         tP7vyVZSYdpdul3cKecu4J8wKSsFCcOfvgh8QCAI8+wTZBXzHwHGom0OZKzL5MYRJu28
         Inv6q37C2b70yFK0cVpsIPvLfcWRM8yP6eEOnzkN262XfknerypnzDAAUUrqPxtIg/KT
         VV7m90ZxAIAK/YLlr6OnPPp91xhU8CkTFoq8fUxPRC2MlGSn01+2RpujSM4d7l3J2bYJ
         NETMik+xlTscTBeAapWuuMmoTZ9f1uJMShjP5cx/Lzfl5i7M1vVZewJpmEq3E4/FEeF9
         8uJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733609271; x=1734214071;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+bQHiNZ2m2WhrSw8sdxwTUuPMItd18DX+vXFIh54PpI=;
        b=cBdx864CsHO4si6ZcTRL92Us+GxKc3TfQJB8Ij9dgY0GQPqRWIEwKHeen09qmyfbBk
         j/NXK5jaQqRx6dB8FaJzV7r7459sLSu64j5bhKs/+DWqNdoA8cAmZC8DTeGiS3hDnd2f
         pnMmBlqFXLEEcgmb7Wunp9QUEq9dNEEh7uVMXRMENRA9GxOAEqD8ZaAoV+awMoIBjzjM
         aZdwau7QrVzclFAq/ur8E+CUBzLMqpP9gLabx7pTU2soZZpZWs+6jnAK4NXBi47aVP6S
         98GSSNC/Cwej7XH1laICV71FdBIf0Es817H5RaXMDF2lgAIwrR6DmhNEg18lJcOclREi
         BJdg==
X-Forwarded-Encrypted: i=1; AJvYcCU4YYgIlRCYA6c5vyVE9uNyc7Psx8CFIPIMhvcAtGaIZayyanE69b9UdEueRPdMQSVBBnxf21+GRxAJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzRLbGId29RtivoCT6QHLY/kRje+lhkOYbzxWgpLdgcCj+YzVt+
	FBVwaPE5hPc5DxDAUojQXKnU1GrpcUtDM/ifZbb6PJhYGtnUzMdt4bsxWas1QHKnufk+ay1qZD8
	bUjD0u/epl1k4HIVxAEet6OsZCHugJu/DpEhrVw==
X-Gm-Gg: ASbGncv9XFLGsKErUx4zebLznxNvxybAge9TdFDd7sIiP1PipNw0uDnvxs58XilpYHH
	vcdX7AxvLK8tvGc6eZacxHbHeWPQ7lbE=
X-Google-Smtp-Source: AGHT+IEDdkAGz2pPoVWiLs3MzVT2xuohkvNwg2NzDEclu/+M3ZXg3PNHTWshr/hQKka4Uc30sPUpjOwYgYxK7wfFjvo=
X-Received: by 2002:a05:6870:a546:b0:29e:3c90:148b with SMTP id
 586e51a60fabf-29f734e7640mr7389656fac.26.1733609271371; Sat, 07 Dec 2024
 14:07:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
 <20241203-gs101-phy-lanes-orientation-dts-v2-2-1412783a6b01@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-dts-v2-2-1412783a6b01@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 7 Dec 2024 22:07:40 +0000
Message-ID: <CADrjBPrzB6H5GCN_NWcqcGhB0D31xF07bRMmoKyeZji4M2CXqA@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: exynos: gs101: phy region for
 exynos5-usbdrd is larger
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 3 Dec 2024 at 12:40, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> Turns out there are some additional registers in the phy region, update
> the DT accordingly.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org>

