Return-Path: <devicetree+bounces-135851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AF3A027F2
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 15:27:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 462613A5DBE
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 14:26:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 752361DE3AA;
	Mon,  6 Jan 2025 14:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W3j5Qurm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC9D38F9C
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 14:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736173581; cv=none; b=DxYio/22N/FesTGZ681bliD9Y1Gxop4Il1oL5ki2EBxKdasEBnObQ4L4CsYjbsB1Tdz+gC6rSNv6Xs0YSd8+X6cEFh9qs++XzVq842ofwNbRaj9ePyOYsFmuQFhN19cX+WAyh5kHwXOgS8sLdmd7HZW6nEhl9pTHD8JhjAco9j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736173581; c=relaxed/simple;
	bh=dUKOALEI9aeR5s2n5lA7OidVcoOap78G2cp261c2lTU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RSXnp6LQwNV2bpWRvXmXlV9w0eW+ZcPPmNvB+oOgxdxOmlwV14r7Z82LsNUiVx5NyvzlbRslK5ZGPy8rGqICit2bJom4eOsPUFVU2rYDIETK7MfdXZblGiZIoYqOwvqcNwiQZ1HSru7PQq6EeVve8x1lNYrilnbx57vyIxNLblA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W3j5Qurm; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4362bae4d7dso103417955e9.1
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 06:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736173577; x=1736778377; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dUKOALEI9aeR5s2n5lA7OidVcoOap78G2cp261c2lTU=;
        b=W3j5Qurm/RjkD7lz9ZaD4IyMrSPBk8DzpX333d8YZ2e/CBHpKriUJqkchtSbIlgjfZ
         Hzvn+Q03vUljBVoEN5kPz0X6yIB3ShXUXwOrnH4AI2pNLpEyi6Kem0eJ0z6SdE8TvYkd
         Xs8lczQ0DxC0seGAia4tGAbx8ptcm0gLGnDKG9SedgKaHPTh3XBhHFRkg4p9CFs2vpwg
         CFvLTksmRUuaHKsXLtjkLMYWmvDLMwsOwQdlns7Uo9OhsqRrqwvPtq0OVZFziRsgmPMJ
         BdMFb4OQMN6DZBFjmDUcaggPx8e8EEpTQASRXQONGglYwep2R9JOLv2dkhuOGTN4Tce1
         K8iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736173577; x=1736778377;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dUKOALEI9aeR5s2n5lA7OidVcoOap78G2cp261c2lTU=;
        b=eh/O878mM7q9pIaIpWcHVlzzycEcovdN8OPAkWBXkLwCUfPOvYanm8sJtTHnMf4zdN
         /NbXsmnVGtyil+q/w26W101hxza61CANxVAQSZvoB+dZ47H2IKXtslask3aaNMB1FUpZ
         aUGEqqabLVq2jSve53EKQnFNegG+fRWaj7F/ZglMFP7NsqR6l2WKKZLDP7uj6xOPzegZ
         7k0edcykNL071p8u4ek5akV7OgBxSK9OPSsRnWRxaQrQSOK4EoZuNO4X3nPsx36HUZgy
         I7Exyi+ZwzWsKUW8QscWP1l17BtyrIT73TJ0UyV8M4VibTla4GjqmFDhOjYGFa7+NpYR
         kgmA==
X-Forwarded-Encrypted: i=1; AJvYcCVhTJBs3VG37SaHQugujp3TDELux9x7RZWv/FJM4LNhf8NyDLGsrkVn+CKt1bjUpXmU/lJiQi1+0Xa0@vger.kernel.org
X-Gm-Message-State: AOJu0YwZtsBuwzySZ4OFiR0Mm1HcScog/QdalA02BQsHSCictPI2zRic
	vh7C0yt+SrWgjbfBone4Lq9yDBB5JmDWF/4of33cQJDB04elsTUAPU6XJovnba0=
X-Gm-Gg: ASbGnctfhYOFFCJow+N2ddgPmsOvUSmTFw60ir3EwcVyNQ+qgnqqZKWwL+o5oXJUB6V
	bVbsUY6TzUZvZVJgwUQ5oRCqRFPfQzKJFF7iud15s2F18QlNUB4O8CyTvcDsoxc8dFxt0kVWPei
	cFVtOfFkqoJyflPQdL2bVeDDnz7r12KXF9v6a05UyobBBF/SAGHbdx8gaMQdgFT6VCea/NhhUdi
	/CYqdSDg0r3CQHD4GHiG++19wnPeg9L4Ex6T+9GBI/6TvRSBMlIi3Im5h67QA==
X-Google-Smtp-Source: AGHT+IHOkoMdmjm0GLPL83pp6L949p18auYRHzM3lpKZr0E0SW/vsqJg73EGdk1dd+rSaqR5yz1Q7g==
X-Received: by 2002:a05:600c:1d03:b0:434:a5bc:70fc with SMTP id 5b1f17b1804b1-43668642e70mr462080235e9.8.1736173577487;
        Mon, 06 Jan 2025 06:26:17 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436611ea3e0sm576014055e9.7.2025.01.06.06.26.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 06:26:17 -0800 (PST)
Message-ID: <75e01bf815e5f7692d4b7aa261054851a943fece.camel@linaro.org>
Subject: Re: [PATCH v4 0/7] USB31DRD phy updates for Google Tensor gs101
 (orientation & DWC3 rpm)
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,  Marek Szyprowski
 <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Sam Protsenko <semen.protsenko@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 06 Jan 2025 14:26:15 +0000
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
References: 
	<20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Vinod,

On Fri, 2024-12-06 at 16:31 +0000, Andr=C3=A9 Draszik wrote:
> Hi,
>=20
> This series enables USB3 Type-C lane orientation detection and
> configuration on platforms that support this (Google gs101), and it
> also allows the DWC3 core to enter runtime suspend even when UDC is
> active.

Friendly ping on this series :-) Do you require anything else?

Cheers,
Andre'


