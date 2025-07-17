Return-Path: <devicetree+bounces-197400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AB1B09027
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 17:06:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 684CF7A64CB
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 15:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D24CD2F85D8;
	Thu, 17 Jul 2025 15:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NXko+c0B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD4E24EABC
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 15:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752764757; cv=none; b=YfNIV0S5QzRVGg2kDm5UBrBwCeSi/S3Ljw17iqS0QpO6g0hNxqjhEXrlK0v82A5KaqIJn5f0vz6q/YzVmkicGDb7vOpw84iomTBOFupoV75uFGZIGbGJLuYtVhBJybb873DZB+W0mwNByFj/vzVxyiveRxtG7M8hb/0HGys/NBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752764757; c=relaxed/simple;
	bh=PiEt0WUNVAcC4VA3CIqOQac/Mlmo+xQ0LJdAMNjG2IU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wvr1RLudQmqEf0jv61g+7gimJERTnhXqUjiMDS1myD7GGAqL7DJ5i27bNcaVfzX3dxUiBPqLWxKyngLfabyWmwbgUMROqr8bl3xyVQQ79pxVeumSPz3+xIF7HUXkAavfufMNrKwj94To30bb839lGGs6x4HfykvXH+HPHRftj6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NXko+c0B; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b31e076f714so1564347a12.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 08:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752764755; x=1753369555; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GRGgDk68DjbbOF0Mf8ErVPDVdO2Wa0CpF/l7W27oV/0=;
        b=NXko+c0BXqe2mNYCjOoRu3P+zDaiYKy7KENsGEQUSTH5g7nR1PRInb+ewpbXWGlvTE
         L9QTbKT6Ju/wuxLEGyk6k7gIfTPy5f/auTzaZkei7DwkNPdXL/tk1YimCCh/e3nioVvw
         jE0d2NGJKjT2nUFPxHMY6oe6wksdpszNQWFcpqG2/y2FXVr4qBuFaEKvGsi6859bqASi
         FSsmHZ8H68/YdSRxXkVPRrHKz9arw+MDx04+dNIqAqoIKwA/A4hQFiIacgSxdN5zV4R+
         vLZlkBxzfGr98U5AcRcnMouxX4EXY5Vi8BlYZPAbSW3uoVn26ElRs6NPSsvGupfKkHFX
         pUcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752764755; x=1753369555;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GRGgDk68DjbbOF0Mf8ErVPDVdO2Wa0CpF/l7W27oV/0=;
        b=aFNIeBXlIiCsZRApqO4OIQGTQbRHukFddLtM7LrTST09uDUGyCT4THBwCBDTUjsI29
         6I0gZ9wpldT1zLedxZeXiYmdXuCliRQ+3CA6Mm0Z+FKJ74f4DGsZS+EeV2fw9T2UJhfY
         ZaZAa4hyXdpFhbP1AVDsXlodnfvxmaW1hTfkF8oqragd6sIhFlB0lBfCwd/vR7S9SC9t
         kfndTWuu3syZ9CDeh+Oc+tpz6Qq5/8U6mq3VAyz/OivnQR19Y5vSpFKsXExvxekaKVL9
         5j2Zl7ca258aNOM+cZMfX5UsljDGQ/HZ/jnju5Fy0cVfbJXTa4ZJv586ue9XpUi33JFP
         D3gg==
X-Forwarded-Encrypted: i=1; AJvYcCWUx4p6FQ4k2whGuYfsdszwNA+6jrUzyn9zlWDm7xlFqnK6RazzULtaXUo9euvZuBs2yObXD9a6HulP@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7YpPuBchfgdooZI0LqQRNDnTX3KjOvY/sb8KUnxZqQkFr0BC/
	od2ihS6i6Bx+0dbdRk/NEZq6oCs1Fo4B6Ar20YLZah9wARxeWfgmDRfYGKP1Lwumnmw=
X-Gm-Gg: ASbGncsyDYT1sE9caN4bF8KVkf6MvBmTYZuRC7IjZVCKpd6owEkBlEgS8I98H6NRnE1
	wShyz+CwiwaaJyPG9MLq4xPPfrig5pDwTQrfbDhtF1bGkmX3zZE6x0Pj9clH6TbUHQme+WIXU0D
	4rWKqlh+9RhvQj/zQBosRFxN4GZgU1H+Bz3GyiET7iQlBHuoPj61mkIC/rQv33DqjWPAz5YmppL
	Etdc6FGI0o6xlD/4w86Bk9+YtMZ2ndNLTXufQHaeO833tPQT4ccxpCcCihw58kG5Mh64fmuoh5C
	K5P9vuqv3nj+HDYqK9LYi4NmyyS0HiRWfOq9rWRqEzOvBMg/p6KToZ4ZdITJIjd96pkwdcltDZc
	8ukLE9MLaaVNob0yGl8fRtYs=
X-Google-Smtp-Source: AGHT+IHlh4bBfrPfyZ+HtoQSqJqUSTaWT2KGepkcnD7iDpNKpIyWaajI2q3Ei5DglAzRDFNmmwxtvg==
X-Received: by 2002:a17:90b:2804:b0:312:dbcd:b93d with SMTP id 98e67ed59e1d1-31cc045a7b9mr187971a91.14.1752764755374;
        Thu, 17 Jul 2025 08:05:55 -0700 (PDT)
Received: from localhost ([122.172.81.72])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c9f2874f9sm3475334a91.24.2025.07.17.08.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 08:05:54 -0700 (PDT)
Date: Thu, 17 Jul 2025 20:35:52 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Viresh Kumar <vireshk@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, soc@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: st: spear: Use generic "ethernet" as node name
Message-ID: <20250717150552.6kj6xqksc2xxpxli@vireshk-i7>
References: <20250717142245.92492-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250717142245.92492-2-krzysztof.kozlowski@linaro.org>

On 17-07-25, 16:22, Krzysztof Kozlowski wrote:
> Common name for Ethernet controllers is "ethernet", not "eth", also
> recommended by Devicetree specification in "Generic Names
> Recommendation".  Verified lack of impact using dtx_diff.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/st/spear1310-evb.dts | 2 +-
>  arch/arm/boot/dts/st/spear1310.dtsi    | 8 ++++----
>  arch/arm/boot/dts/st/spear1340-evb.dts | 2 +-
>  arch/arm/boot/dts/st/spear13xx.dtsi    | 2 +-
>  arch/arm/boot/dts/st/spear300-evb.dts  | 2 +-
>  arch/arm/boot/dts/st/spear310-evb.dts  | 2 +-
>  arch/arm/boot/dts/st/spear320-evb.dts  | 2 +-
>  arch/arm/boot/dts/st/spear3xx.dtsi     | 2 +-
>  8 files changed, 11 insertions(+), 11 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

