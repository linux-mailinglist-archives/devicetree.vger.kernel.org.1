Return-Path: <devicetree+bounces-187837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 96263AE16E8
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 11:01:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D1B51886DF4
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 09:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF26227E064;
	Fri, 20 Jun 2025 09:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="LGsGSgIV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5B727E050
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 09:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750410085; cv=none; b=LAyjJ78pN1j82cqL+kqGFywQYdUWvV6l8j475vNouCeb/Rb9E+Yb3JJMJ90p0vKMfyYPrddeJyUtdf+MZVmgjQwqcIbKcbNviEmJxpuNNjChj6cNVNHlZGbISjiE//ZopwPx8daQE2r6jqkQhUTuNliAbTVf3GxeNxZehlsVls4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750410085; c=relaxed/simple;
	bh=YrP2gC6yzF7+01sD+adEWpkCL/eUCTLHQ55D7CZnBEA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=tjQu4hnKOEJ8Oz1XVSMPHnUJCe1v98DMG5KllSYh2VmOtijncg9NguoB9lr626Q1y4vEfN7aUPHevOeW4oj/lYacbVBgTpjV9Zr31uJhdsrcWkJjP7wkZcFt2XB8wX/2XVVhDiH/hmXjcGjjXUBK0XC3a0WHQq4kk2nDaBb8Boo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=LGsGSgIV; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ae04ce9153aso207806766b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 02:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750410082; x=1751014882; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BSgGeI6RPkNX/6Nx7o+CdwyAntQHm7sGCCxVWOem2w8=;
        b=LGsGSgIV1QOsEbm4P8phGCqfn54CXCS2MA4qCKXCKvy1D+ysntkeA6eUfd6A/5Ub0J
         SiS5GSq1elwhdOwPPSRAF3l74NdM2iq/v7t5LfHzhP6SoZGQ8QgcGTwPF84dCmeqCoVh
         arvmepCP86SAv3phx/hBcXy9RFKLBqRRGU8MKAKjIXlUljB+UO/riQ+7H1xOLMItb4/f
         VDdgI/qCaVpKvVKlhQav5bscnPapHoX+LMfLG4yddlLknU1YY4sOswuZbgDmRmNROqi5
         ZYMvN6XvaZakG5yNZt8q7f2chKhrp4LENsWJcj56Evi0nj3vIJmBQlO6tQkoiYNKn0ro
         MM8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750410082; x=1751014882;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BSgGeI6RPkNX/6Nx7o+CdwyAntQHm7sGCCxVWOem2w8=;
        b=il1eKSE42SBDh0CfQZjgvIf6mLeXQnXZ9e9pMhqzng1nYMG1Q33nRvG/UIiLGf0vsx
         GFYO82IjIXIC3Khrn5HwRtrMtjoD75oAhzUK2D2Ff1LD2JvosDBnT2F1hpQQcLD2PTNq
         J4Y1zgBXA+OQrGwKohYuav0h1cTtzYvb4s9U8fxeyyBzxM+83stg4/VAhQznZjdJpUA2
         XNBRtxBFeXZgfRd0a4fK89bk2hAYjJdMdxELqL/U4C/H13GVYovWVlfrj7Qn7vXo3uCn
         gRt3Wcx46bIHXhbRkY595yrOtzi75KFWPMKlS1qQfXZFRL8TPlIitbKnFKWj9fICc93k
         o9pg==
X-Forwarded-Encrypted: i=1; AJvYcCWvcvZCuHxLO5PVSPxCexw9DF11uVD0zvCog/QCW8IzUK1hiWis+4/eVgHoAAx+FwtoKDKaHXgWTTv8@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4Q4cAmPGwBnAxvc9Obhk+g9xPzsU9n9kJdDgP3oLKPfdGvmlj
	z0hIih3/YcNfHkoKM5LX8F6rFDByM+u6FzgbNejmbijTic0XoRRpDije1Jlr2GCULrE=
X-Gm-Gg: ASbGncvrtQIgnj6AEyx4J+0hKkG7HYkkTaONcBpCNlDzj5EAfsGyrFoNNg2fXwSXl6B
	eupo2Knqt+vB5CikAdiqfbACZNt4zkG7WJj3/QhpZh8Bc9Pele9EcEIAoOLnPGncM9ucO02HVZ/
	hqbusO+Ot+LPU/2jjVVhzkBvIvq+Zg8TY+5V+Unukc7PibXCPo1t8YQ64R6cJTIs11xV1IvLPQL
	/WtqlQbuXircxLyVH3LOPscoF9FyJxSyiuuZ/p+V9NJ/P/vH0t9YFqic4oJzM4SEofdR9W+WKxr
	IxCKBn1sflWXPHOlLFuTrXOG7J6RZqmiIbkXH8faNzL6sW1NkCJdNCEMnf8UT/G5aI+8h5HEkWl
	/mw4Jkz+tvFyXBzDcnPPd4GOlUnsAwBf5ZSZT0NGAvg==
X-Google-Smtp-Source: AGHT+IEhyS+3Hkk2TlhfDWZUPUo2xBTpBDeJOyfp0vYr2FDqO4tGaGom5OMtaz2UPfLrKxD1kEZb1Q==
X-Received: by 2002:a17:907:3d16:b0:ad8:959c:c567 with SMTP id a640c23a62f3a-ae05ae211a0mr151097266b.10.1750410082254;
        Fri, 20 Jun 2025 02:01:22 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae05408300dsm129887466b.95.2025.06.20.02.01.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 02:01:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Jun 2025 11:01:21 +0200
Message-Id: <DAR8L6C8LIOH.A6EGWUZJ2NN4@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-pm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Sebastian
 Reichel" <sebastian.reichel@collabora.com>,
 <linux-hardening@vger.kernel.org>
Subject: Re: [PATCH 09/11] power: supply: qcom_smbx: add smb5 support
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Casey Connolly" <casey.connolly@linaro.org>, "Sebastian Reichel"
 <sre@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Kees Cook" <kees@kernel.org>, "Gustavo A. R.
 Silva" <gustavoars@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250619-smb2-smb5-support-v1-0-ac5dec51b6e1@linaro.org>
 <20250619-smb2-smb5-support-v1-9-ac5dec51b6e1@linaro.org>
In-Reply-To: <20250619-smb2-smb5-support-v1-9-ac5dec51b6e1@linaro.org>

On Thu Jun 19, 2025 at 4:55 PM CEST, Casey Connolly wrote:
> Introduce support for the SMB5 charger found on pm8150b and other more
> modern Qualcomm SoCs.
>
> SMB5 is largely similar to SMB2, with a few register differences. The
> main difference is the new Type-C hardware block which some registers
> are moved to.
>
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---

<snip>

> +static int smb_get_prop_health(struct smb_chip *chip, int *val)
> +{
> +	switch (chip->gen) {
> +	case SMB2:
> +		return smb2_get_prop_health(chip, val);
> +	case SMB5:
> +		return smb5_get_prop_health(chip, val);
> +	}
> +}

This doesn't compile for me:

drivers/power/supply/qcom_smbx.c: In function 'smb_get_prop_health':
drivers/power/supply/qcom_smbx.c:588:1: error: control reaches end of non-v=
oid function [-Werror=3Dreturn-type]
  588 | }
      | ^

Regards
Luca

