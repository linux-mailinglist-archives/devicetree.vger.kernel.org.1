Return-Path: <devicetree+bounces-125270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB1C9DB600
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 11:50:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17C5916137E
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 10:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4795A194A74;
	Thu, 28 Nov 2024 10:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EMkBem3L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F2A15B984
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 10:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732790995; cv=none; b=UyaipNTMpglC28nyCdb700v0xMp5xGnhhMU9jrpb1kUv33+dMTdnhLfHG+4m3KlkMP9wakQO3mvg5+BToTdubapgKolJsMSQYxU4rEuTp3BGW6/Z3hgPhzvBD2H7JxaNisW5g6U9Q1NzT9ENvirCpR6EHXOXlERS8RHJJFN7Z9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732790995; c=relaxed/simple;
	bh=S+6oOaM0s6Tu6ZxZFSf1VxM7YfIeZpwsBu0bRCHSjm4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QYU/WifkF5hasy5auKPfgV6TEs9vTwaqLjc5rVAZHiPtWiNZ3S8Mn2KuuEIQAImlUpsa6zzz/p5ldX2TkvotMpJUAmic/PHkgECwj1scH4ymy9VOGuPer37dObhqWPoOD4qsg58Dy9Kh9M1yQYrnK30rhpVV4KQz/Zj6fPwZVPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EMkBem3L; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-296c184ed6bso459186fac.0
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 02:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732790991; x=1733395791; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S+6oOaM0s6Tu6ZxZFSf1VxM7YfIeZpwsBu0bRCHSjm4=;
        b=EMkBem3L6R0fo+5kuXSurd2vWNU1w+wY/pQ3KTyRC0sZFTY76LPLkMOsNvpw+aUPXx
         4fwNg0Zg6vHfjXXluu9ChGYJKlt3nc7P/m+GaKthL3Qw25SyzQC26MHqYJZYq/6lFTs+
         rpYzqo6Yt25Yg6xYJ02qcxCO6ypxE78Ff34efkqpTwFZ+ildJcDMGh0HUp2S/aOdr5gb
         k10l+KhNiPjWTACWY14TpIvejNNZj1pxugwVxlIezhH8uwYA6XlmV64cSm9L2gz09WJ+
         B1ijILoIOPg3OKLrdvoGXpSKmsqlf0PFxkBT9J3RAiFwJ2teAcV37S/erZVp+AAzCzYv
         UOeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732790991; x=1733395791;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S+6oOaM0s6Tu6ZxZFSf1VxM7YfIeZpwsBu0bRCHSjm4=;
        b=V34b3HbVH6787KZVU1zjFim+KuR+o9jA2kG+17o3LODY0lcYxTWRhmyi1o2K3+BJZm
         zEqXGbzdRZdRnxdi6BoX7W3GZerYLybvogQRzb+fHfLU10QfZxiH//W6fFE3859yKhEQ
         drYD4m+pksq80/GHI8a9irLj7WFRDlmDT5o1+agyJZsbrpjhYdft+NJN68Ih3zqB43lb
         ZYSbZBqgTYIDgxgHWHv1X303T+krfQm8RROpt/SK+7Q9gkMl5YNzF/Q81QZFPJWpL4wU
         2hGI1LRNlyHGRFWmPN6izmxQisYvayUKssNyldmSW9eW+Hvt+ahZ5/lVei381XIPZxxm
         HGeg==
X-Forwarded-Encrypted: i=1; AJvYcCXKa4iAtWx1RZMOjB5wkQdIZ2C+TCQYcdi5oq5Qs0k1vvO61cX7KPb2buqjVFh8/jdZF4bhdbOXihsj@vger.kernel.org
X-Gm-Message-State: AOJu0YzKmPRuggTu/zRSl5zBj/TaOVfNiti7aNQiJg1qboFTmxJwk8kR
	kSYxGRqIiV3GYWGVMYhZBQvR31flB7b+sg0KEhzouC6k0ADmAvqZ4jeybNwVWEBwk660BKZNovn
	rRCyq/xxr5oU9IiddvNRDD1Sx36DQWmgK4BcqVw==
X-Gm-Gg: ASbGncuFGbMiZ3RQlj8W8KPkIloEYUutfMecQDhQaDVB1ZavyR5emaZzLXmoeJNXKC1
	0A8TRMNaKxXmKeK8rUjl6+MVjofDksySV
X-Google-Smtp-Source: AGHT+IHSW4AauQXzPQcYvXTGYQGOqaCzi/aJx5YRC8Z2JJs3/8I5KClVLNxBsZmq2QaZI74lTF4hFwtZQD27MqcFr60=
X-Received: by 2002:a05:6871:e7c4:b0:29d:c8fd:cccd with SMTP id
 586e51a60fabf-29dc8fdf378mr5912643fac.2.1732790990078; Thu, 28 Nov 2024
 02:49:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-dts-v1-0-5222d8508b71@linaro.org>
 <20241127-gs101-phy-lanes-orientation-dts-v1-1-5222d8508b71@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-dts-v1-1-5222d8508b71@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 28 Nov 2024 10:49:38 +0000
Message-ID: <CADrjBPq3vJmHh9bnS0u=d_aTeaRH8Z00JqgBfkqjQQ_Fv14xxw@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: defconfig: enable Maxim TCPCI driver
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jagan Sridharan <badhri@google.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Wed, 27 Nov 2024 at 11:01, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> Enable the Maxim max33359 as this is used by the gs101-oriole (Google
> Pixel 6) board.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

regards,

Peter

