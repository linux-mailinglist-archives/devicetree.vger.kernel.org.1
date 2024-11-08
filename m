Return-Path: <devicetree+bounces-120089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2349C1778
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 09:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C1921C226D3
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 08:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6B5A1D356C;
	Fri,  8 Nov 2024 08:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ct4C7n03"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1BE28EB
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 08:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731053282; cv=none; b=ulfebPkevyId31MOZ/yGV+KliV/dQoACXCY7Qv5QK18s5Yn1qpnA9IQEiV69AGsFYlUDZGc0LSXTOlvSztWf4EoVG/erAGYzF/Rr+PDCgUzuZmP7MGvE1ZkSHLVxaJOOLcrAiceQ4ouefaoB0WqKTB1kuxTEUR+qsaJd98pB5ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731053282; c=relaxed/simple;
	bh=BxCAif6wBpfReu8TvZw3mVT33TIGWApsV+3A+vA2nTg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fpmtyHRcDuAQPdhLa/sPsCnNgXLR2P+tX9zSgnBxTHFBHjSeH65ypKG5/eRIwyXSbD8Q4Voi2tSBJRDdL9BUOlL+MCsFpMaEAhPc248Dn3crxpwQlBLUhA6FLontvIbQ+HrtJB3/zX9K4aKhiQOwsaUacfMSY57r152zOpolfLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ct4C7n03; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2fb51e00c05so27701211fa.0
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 00:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731053279; x=1731658079; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BxCAif6wBpfReu8TvZw3mVT33TIGWApsV+3A+vA2nTg=;
        b=Ct4C7n03xwW94PDgpvQkF+5YOyVeIkYaZwLrR8pRkli26DXB9U+Hy5l9Sd/oVyICIP
         PyYN+L6zFhdKaybMwISi3RQ59YwTUX/cVHRaoA5Mbm5R7OSQ7N4OnmVViWdTYTUNazf9
         GIO45C8LSdkO336imguOwIRxHnmxukTiBYUQaBG7llcF57HW44z6f8Ld46meaDcC7r9U
         a4sJD7r7GCuKn5BtrEKiaAOkFadablpcIkIqAi95oxeVH2PzbYYYxW0TxFWsmK7Xa7Fm
         gCPfw/ryTSqe/b5R9RL0gBft/gge+a3x7aCcpvSop8MBOT3aDmNwOZW6Gqk6e22uiM+Z
         43vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731053279; x=1731658079;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BxCAif6wBpfReu8TvZw3mVT33TIGWApsV+3A+vA2nTg=;
        b=rhmGLYIbQStyqzQpIbBNaDBA0XwR30gU5BVCcvULv8dBn7ODSZaghyA3hRCS+SVvTA
         EkofukGbuMHMw1b/Hf03IDu8L2u0Snf7JpAlHlBTlqll7/CJIeI3yKOn9rlMUlg0U+Ja
         MhEyTfnkaGUCkO6oPNY4Jol/FPKE+i8o6ePjS8AjjCIl7qBharwXUbjTMrnSYCRyz4MJ
         /eeyVGx/Yerl1xkXpUqHfZ3HlTIJc6UvlBQjtB4fprZjV3nGf7N8QH/9ZZIk/vM85B4j
         oRUYZt+yyFxIqZmoK5NEbs2yXb17m1aaBtfPJ/QUCbwa2yof8bSXer1+UDEahjo5lpLb
         w+sw==
X-Forwarded-Encrypted: i=1; AJvYcCUpeFhW2IICZS30QPS0Qrm57Bh1Z8NESj2n4l4RfbtOII/WeRd71WDpo+xFvPmtV2pGv7jjRCVw2R0t@vger.kernel.org
X-Gm-Message-State: AOJu0YxH5iQ0goltR0p8eO/5yXEulnF+oalf1Jxb2IvM96csPVXO+lBT
	vJwX/gwohXyCInxXfjGNVo3yP4rilfTg3iyR+NoBLdQ6Yo+WHH4haT4KhlHoOhd9bqMf8IVLOcs
	FpGzvHoWkHaBMkjBvSLfpERZ5UNd1q7DaIFcmDg==
X-Google-Smtp-Source: AGHT+IECFYZgmqXq90uc6fU+GhsZFrNHgfgkpCoMfSI20MKSS84Aidx6qe2DptwPr7H2EP4ELmSvQSeK05aPSJkA+5k=
X-Received: by 2002:a2e:a10e:0:b0:2fb:510c:7237 with SMTP id
 38308e7fff4ca-2ff202c3c9bmr11587911fa.41.1731053278604; Fri, 08 Nov 2024
 00:07:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241031-msm8917-v2-0-8a075faa89b1@mainlining.org> <20241031-msm8917-v2-2-8a075faa89b1@mainlining.org>
In-Reply-To: <20241031-msm8917-v2-2-8a075faa89b1@mainlining.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 8 Nov 2024 09:07:47 +0100
Message-ID: <CACRpkdZJmetNUHhBOfoZuygEXW7VO0Go2bmngxciVeOoyzVaxA@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] pinctrl: qcom-pmic-gpio: add support for PM8937
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Lee Jones <lee@kernel.org>, 
	Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, iommu@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 31, 2024 at 2:19=E2=80=AFAM Barnab=C3=A1s Cz=C3=A9m=C3=A1n
<barnabas.czeman@mainlining.org> wrote:

> PM8937 has 8 GPIO-s with holes on GPIO3, GPIO4 and GPIO6.
>
> Signed-off-by: Barnab=C3=A1s Cz=C3=A9m=C3=A1n <barnabas.czeman@mainlining=
.org>

Patch applied for v6.13.

Yours,
Linus Walleij

