Return-Path: <devicetree+bounces-224844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEEBBC84E3
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:28:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2D071A60096
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF1F82D7814;
	Thu,  9 Oct 2025 09:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fLp90TnJ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E69E2D63E2
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760002108; cv=none; b=D4auDnM1bUC05TRxNtD9t4lqrUzAwwMZmeDz4wR2Edi1KNs5GNoJLdo6vy/7e2QF/VwISroG6c5Xl9eXOJf59d/urWTkQ3Y0kt2W/pyHar21UngBMgmNb3csnvSrFSMxp256HAC1yeOPbbQeSKFh8OBHN+xi/IE2jnStQNvOw0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760002108; c=relaxed/simple;
	bh=BQczyE5Zdk5A2N+2sEJ3+Qj9fhfLVuv1k6SDtzvhgwg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aVaTkt5bDlWVXPnkCRtKgNa22dDji9tVttTCmBnOXMBmSFbOvYoUjd98h2HSNI8/TV1llm5k1f76Lma6oUa2ylWPv719szD3xQOeg/SEwZdLFu3cuSUscq7Ml3p/QNvLhLe2xj5WjqRQQgO7/wpkslgMO8qouMk9nPaX7dwH9E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fLp90TnJ; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760002106;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BXHkdfv5tUm0CpyurnPpmySUCFcyGseszzZdpVNrQUA=;
	b=fLp90TnJSr6/ejQ7Br84aAUvDY6VNZv/L90CsE7moODzzmZ4+fft613zgS80JJO/T8upBu
	HVqbqXbJKCFut32hyABTt8EtnNxfcx6RwHgTTklK/X/DOZz1SyPe9EHpC+NZ/yabD6Jl4E
	Rj0Yzg11I5q2mSSZHV3tMKPUOl8fk7I=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-407-CRudLT9lNKSIEsUzIeqIHg-1; Thu, 09 Oct 2025 05:28:22 -0400
X-MC-Unique: CRudLT9lNKSIEsUzIeqIHg-1
X-Mimecast-MFC-AGG-ID: CRudLT9lNKSIEsUzIeqIHg_1760002102
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-46e46486972so5644295e9.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:28:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760002102; x=1760606902;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BXHkdfv5tUm0CpyurnPpmySUCFcyGseszzZdpVNrQUA=;
        b=A667EU7fLZ8GFsx8VQveGkDOkBTJZVVFiB6Cle5Df17XgBtJXwUdTN1FtQz6TyhNQg
         SpAWGZJb66aSpWeinOBL2n1l4EKuD2foNXp3DoknPQATQH6UwSLEr1GiMEWsNv/NeMwq
         Oyh6QJYNbEvAsHZGFuUOFJyAm97Fg4982m9crvA69M3VIfx4JnljVHid598TwqhrarrE
         9lukCt5p6f35XQ4AVePIRFTw1BGJQfv3uN6TuRk83uIHr7WXK9GCPSkexy5lxeMT2jnY
         OWwifcwJlLUuXZxX4GYoN3N+FeCLd5FCT5eD3475WKxvOjhnFhat4KBoHO84Z05jC/XQ
         WPFg==
X-Forwarded-Encrypted: i=1; AJvYcCX3IuTAORx4huzEYiArJuiqTbhb/xiwKYnHh1nyh2mnkYgk9RNVU1cWB+UwAhJKi4C6crXF3XYqsyXe@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8r5BzeWZ5475uAZTJrsWJCiTwb2ZS/Zvzpjzx8fa3g6kgPmAO
	BxdYH3LLOjSj6dJCPf90oezfacBX/P4GmkEeLQAo3lB3uXyLP6r0Io4f4wFWDMUKL9fK7dS0c6o
	chlUZNdiKeESc6vATmkpQgOaNZiS8cUGcopub59BXLM23R1TG23m7Yg8ttiaGxqw=
X-Gm-Gg: ASbGncti52oo63/toxYfQJ3L3LtTXNvJcc2JeG3mGeZn1QGyMnY/g5mINOM3Y8cppUg
	EXBNBgh0GQ+Kc63mM251wyBtwGbnw37CR1ok4Va3WsaDp0rgNtcqX994hjIMqh9MfcdKGGbZvJW
	CTFEhD9DETLtVTfx2eyuJ8SBisD0oQHGHtqSkhyBBa7vObJPonOJIzF5IN85V2y8m4Aql23QtMk
	7q0b9VMLgMm6NfF2+j6lFjvRLlXl4xsNytswf8jN1zCNpuBodNGkhhT5DjpcqDM544RRqffhAiv
	vKDkl32vTH6FX7lkHw9PlbH1Mr2HBv2y8YLJes9JP000xfuRa8N3cUEQtFfHrbuScGeflldgdIF
	kPVoapSnyx33QUmlfYg==
X-Received: by 2002:a05:600c:4e01:b0:46e:6a6a:5cec with SMTP id 5b1f17b1804b1-46fa9a8e5e9mr45746425e9.2.1760002101721;
        Thu, 09 Oct 2025 02:28:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEY3/Xon/8eow6YV6te1PVIUeQNsTPhTN4xL/Kc6c75ZTtzIKnnqNPMPgFzo3E/3FgK5+ApKg==
X-Received: by 2002:a05:600c:4e01:b0:46e:6a6a:5cec with SMTP id 5b1f17b1804b1-46fa9a8e5e9mr45746105e9.2.1760002101274;
        Thu, 09 Oct 2025 02:28:21 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2712:7e10:4d59:d956:544f:d65c? ([2a0d:3344:2712:7e10:4d59:d956:544f:d65c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fa9d7f91esm75339585e9.20.2025.10.09.02.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 02:28:20 -0700 (PDT)
Message-ID: <3184d938-5100-43f8-93e8-f88549ea4b72@redhat.com>
Date: Thu, 9 Oct 2025 11:28:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/8] net: stmmac: qcom-ethqos: add support for SCMI
 power domains
To: Bartosz Golaszewski <brgl@bgdev.pl>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Richard Cochran <richardcochran@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Vinod Koul <vkoul@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20251008-qcom-sa8255p-emac-v2-0-92bc29309fce@linaro.org>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251008-qcom-sa8255p-emac-v2-0-92bc29309fce@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/8/25 10:17 AM, Bartosz Golaszewski wrote:
> Add support for the firmware-managed variant of the DesignWare MAC on
> the sa8255p platform. This series contains new DT bindings and driver
> changes required to support the MAC in the STMMAC driver.
> 
> It also reorganizes the ethqos code quite a bit to make the introduction
> of power domains into the driver a bit easier on the eye.
> 
> The DTS changes will go in separately.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
> Changes in v2:
> - Fix the power-domains property in DT bindings
> - Rework the DT bindings example
> - Drop the DTS patch, it will go upstream separately
> - Link to v1: https://lore.kernel.org/r/20250910-qcom-sa8255p-emac-v1-0-32a79cf1e668@linaro.org

## Form letter - net-next-closed

The merge window for v6.18 has begun and therefore net-next is closed
for new drivers, features, code refactoring and optimizations. We are
currently accepting bug fixes only.

Please repost when net-next reopens after October 12th.

RFC patches sent for review only are obviously welcome at any time.
---
Also please specify the target tree in the subj prefix ('net-next') when
re-posting and possibly additionally CC Russell King for awareness,
since he is doing a lot of work on stmmac.

Thanks,

Paolo


