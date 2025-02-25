Return-Path: <devicetree+bounces-150671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 886C2A43386
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 04:19:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2E73188D341
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 03:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CEFA245006;
	Tue, 25 Feb 2025 03:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GEsheRDi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A8923ED5F
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 03:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740453547; cv=none; b=H1oq5gwk3cn6ppgbnvRADwUIQnAzM8gPqRFbnDgVL6JKPkHTeVSNKipbaT3x7y7YnJ0YQvFrkqU+1IEjzliFDoWSF/cMqAhOK9uQIubGAYNnEEmr3b45Fan66XgA5aGNr9B077/Y28sJrSQtNV6x31ZGrVVgWGT8CWSQ1/ILSZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740453547; c=relaxed/simple;
	bh=LXriQkLQBqACs+UUX231RySTgvUDN3sB/8WC0n+zxv8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nUQXD1zR8lKc7dJ9uGzxuiUygW3cvyLb6Nww1RPHAOqx8XZ87Qnkw0CaVT+EPQTW2L5TSJjbkxeitfiql3UBvmiej+nYu0/F6Zf3l7MLfeITzoIKDHtLd9gcKIxhuT05qye3vvQAMnCQ6mYM7fTKOJfBE/+2gUZ76NeZ9LU6+wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GEsheRDi; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30613802a6bso53517151fa.1
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 19:19:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740453544; x=1741058344; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3wJvzg+EU3gQmUwHBxZTu/YhhwWOTXDIc1qEOHLA1GI=;
        b=GEsheRDiKvTW5UGY5oMdD4j3cHWZmnuGXfH0WdpEUui9ziA7gXLoxUQJtoVct3cby0
         r8xpUtzNXHibZj039vrElDkLfM0vHoyBnw4+MvoPDUTcV+wTNn+1ti+BEZQ4zcVsQwYM
         XT1+/UnwHj3o36ll6REL9yjd9yZooS8M/JKNSdsKXOlR7pXxllBy3FFruBDurBgYvv9x
         G5UQO1CuFTVLBHm94X1PmI70SWEWsKYimpp190r0sDci5NbmXnynD6Y+2S54goFOB4oy
         6wVhRr+h0V3A9CxpfYS7d6euFBwRULhXghSMdwtI/5ERQ05utH/CaRNGT24af5VBPz99
         +8CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740453544; x=1741058344;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3wJvzg+EU3gQmUwHBxZTu/YhhwWOTXDIc1qEOHLA1GI=;
        b=KV1kB+BxEWfe2jzP8FwlLIFIFcOmRnWOiJH4Vkvu9lYGZjbxvYXB6RK4wFKTmOHkru
         WdFdal6BRv6Pzw64ar8qdKdiYhmK3RoAt+88g4t4hyo/hKIbBgLumHbjl93yPlRMONA8
         Tx3LKOK8lF15a1qBRzVCKFyGkdBbHpVqaGXWKSL0zPBwUNfJR3AjCcrt9VsZ5SwlUuqD
         zLcKFGyCd2Y9lwILgI+SwMtc9EXuvc1QhNjD1+pUW2O4dkd42FxIHg9Z5GXddaCqRyDe
         sAu/og3gR4fQlSQCzY75qEw6KvOJcjkjsKjAcWgqvKhvSAarkPJfIaLnqGHAdJTrbHdV
         YNPw==
X-Forwarded-Encrypted: i=1; AJvYcCV+93Fg/585ByQOJbMOiN1r5js4chCG6xUihhoI1OIcnHRF2l/jEHuBSdptc3uQvW2vL9GK6VUtgCcA@vger.kernel.org
X-Gm-Message-State: AOJu0YxDJdjqE4/UFrUcXmACCmiBF8Bd21Vi39s9TV8JvyWKEAHGpKEi
	ZohIXZfXglTH2NuvH9JKWGMYteABdTGw/eG3TiuDxKMck7DjG/Dcm1XK4Tdlqlw=
X-Gm-Gg: ASbGncsQop11hCulRSB+2ZXxw3DLvakwtR7MS+nmGFhDTyeFr1Do6izLSy9tfIBWL39
	ESjSZjw+nK2ceQSvVfxyrhg/UC7eU/EH7FSLvktIygCU4090d/kRc82hpwZcl/mpONPC8rpkeTs
	bBFz1rI/HEQ9PrWFF5SIz5yUCTZxB+F3eFsiKHfin/1X6yDCj7tEuWcU8K/vnm8T3qjxoL70Q/g
	0ibMSEySagDLJN8Ps5awepUP9vMpLzODl3VAJR7Y5HLd/GZCOTR7YnmADF5hD5hV7joHPkfXjQ3
	6jKHf5v840RnvlUGRpDwFeM3p0jyjnEk/qBUjVpAdFqiPqKTM9y6F+TrSpgKnKhz9TKgbGOdoSK
	eP2FGeA==
X-Google-Smtp-Source: AGHT+IEZniH1FzhhvKaVQCy4ZQVmyCCKtfOu45L/HvpfS/1QY1oCFaF/I7jKonrJjG/ygY3iYBxiKg==
X-Received: by 2002:a2e:8891:0:b0:308:f84b:6b34 with SMTP id 38308e7fff4ca-30a80c41a74mr5593791fa.20.1740453543984;
        Mon, 24 Feb 2025 19:19:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a819f48e2sm971371fa.48.2025.02.24.19.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 19:19:02 -0800 (PST)
Date: Tue, 25 Feb 2025 05:19:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Mrinmay Sarkar <quic_msarkar@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/8] PCI: qcom-ep: add support for using the EP on
 SAR2130P and SM8450
Message-ID: <au4nvnszoqx6mof6aqejcbq2viosqfzb6pj3lf2t5nzogsywqf@u4rrx5kgulm6>
References: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
 <20250222143657.GA3735810@rocinante>
 <20250224183620.GA2064156@rocinante>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224183620.GA2064156@rocinante>

On Tue, Feb 25, 2025 at 03:36:20AM +0900, Krzysztof Wilczyński wrote:
> > > Update the incomplete SM8450 support and bring in SAR2130P support for
> > > the PCIe1 controller to be used in EP mode.
> > 
> > Applied to controller/qcom, thank you!
> 
> I updated the branch with "Reviewed-by" tags from Mani.

Thanks!

-- 
With best wishes
Dmitry

