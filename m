Return-Path: <devicetree+bounces-75513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A731907899
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 18:46:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB1981F236D5
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 16:46:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64F741339A4;
	Thu, 13 Jun 2024 16:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pRfjDeHc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433B817FD
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 16:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718297189; cv=none; b=r2zETp95pm9SH2XV1AX3g6CGu/AePF5bLhV3GtDqEcRasdzqEMkYnNJsSCfclZyDvZffvwC3YsSXQSNrbcaamsXmOSNUytblAL4OBG/7omwOuiYc1L5d67mVWrXIqpEsxtBpPmz+b9s0AlNGHA+VNtYWUJNs0mqOTEvIAc+9jeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718297189; c=relaxed/simple;
	bh=TFEvxYcNR2odBoLIfY4a1a6Nl0oUBXtJa4V4ZxBU50E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XoHEK7wtSa0A7qCagx165q6475P8zWxJk3CxSI5MnPPPkMvjLdKY2ireAevwhswWJmy1/Y5IUMkXi6v1aSkmNW19Iay04InhOvlxt8ssWIcEX6vYEN8VSWSrMkQxiKptIM59DaECmXmBkXIg0iMUSynlBs4epn0ApqBcO0aQCoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pRfjDeHc; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ebd95f136bso13754331fa.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 09:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718297185; x=1718901985; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IUUMBBqT6Gf9bC5hMdhrVaF0TX1ZKnjFS5FlotLCl7c=;
        b=pRfjDeHctdF+BSjZJ4XOhHTVhks5G4XPiaTqCrR4HFhpH/f7jnMoDtKmrs4QXivdUO
         0uzjZoW3dT2zpKV8Z30VYKTlMjl4mwWBkOx/fpUTzNwEzbBvJ2XPM1oxltYTEg7ekrwA
         8+A3N4g2POHKYe5FtVdFQchgWYCIfalNcPenwAPh0qoRrUoXluJ8Qj8wOVvhyKrORg2u
         DSW/YamJZvnVoMQUkp1MCq5WtH+d/IWnE+94dDzyAKkOeoztmJyZcq+uwOe3+WSs+3H/
         hI07U+Ve77rR12tyNWmsznkjP/3x9RXDMULG0sZKvDE/Y0LNVASqmXZAUE5iReT8fE0C
         M/pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718297185; x=1718901985;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IUUMBBqT6Gf9bC5hMdhrVaF0TX1ZKnjFS5FlotLCl7c=;
        b=bc94u2IiSx6Exoj7TTqM9RkbkLDjvV/9TdoCAJTt9xLviXGGd0/7/6O/VTwyV/aYmI
         clo9ibXA5nVIfCQw0uqTUh1kfnqVcbBHbpVQwrC0vrzo0AGtQMiNIqgZYNhhiLF7WlHu
         Ntjz84qNf/NPKNPqPkspCI51sf6ynCju+YQq++o73d0G/B9iVA7Lk76T3sMWl+efN4v1
         u6l6bg2+1z8hIg0QbwFmN4CkbgHKmVLW0f51rosWBqfHqD/GigC8Myq1L0eCoVM9Y5nA
         DlEWcC2B5h7SFuCvAhmq4ersb21qOgvsxw6kYj79sp1MOVCQekbYjio5tL88vbqEaIII
         lqbA==
X-Forwarded-Encrypted: i=1; AJvYcCXkt552g5hbqHiUcY9PFnvv/Q369bEt/NabLNlhV1TQ29+oHDSWkNaYcQAGzjJPHA1Om67RAd0i0QiRHbuPcGG8nLhBLOA2+7yeBQ==
X-Gm-Message-State: AOJu0YwrGaPXTLmWJFv3rHrkoZf2CEfiNqgNMiLftBgBEX4QRrRLtolP
	CpIryYQM8RYjT3aza8QapR5u6mk1hOX0EW4MzNDS4dXv92rVkhKOxYRQsRkE4zU=
X-Google-Smtp-Source: AGHT+IFK/Ou59KJA6mFFlOVvHyKaDlrsRRSxR711OV4rnimnCh5lAVZoVqvG8OEh4SHCRj92/bKX/A==
X-Received: by 2002:a2e:9593:0:b0:2eb:eb8b:738 with SMTP id 38308e7fff4ca-2ec0e5d1345mr2240711fa.29.1718297185476;
        Thu, 13 Jun 2024 09:46:25 -0700 (PDT)
Received: from ?IPV6:2a00:f41:900a:a4b1:9ab2:4d92:821a:bb76? ([2a00:f41:900a:a4b1:9ab2:4d92:821a:bb76])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec06519289sm2881781fa.2.2024.06.13.09.46.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 09:46:25 -0700 (PDT)
Message-ID: <37bbd466-742a-4a23-b3f7-97f8da109608@linaro.org>
Date: Thu, 13 Jun 2024 18:46:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] clk: qcom: Add support for Display clock Controllers
 on SA8775P
To: Taniya Das <quic_tdas@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_jkona@quicinc.com, quic_imrashai@quicinc.com
References: <20240612-sa8775p-mm-clock-controllers-v1-0-db295a846ee7@quicinc.com>
 <20240612-sa8775p-mm-clock-controllers-v1-6-db295a846ee7@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240612-sa8775p-mm-clock-controllers-v1-6-db295a846ee7@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/12/24 12:47, Taniya Das wrote:
> Add support for display0 and display1 clock controllers on SA8775P
> platform.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---

Please merge this into one to save on boilerplate, take a look
at dispcc-sc8280xp.c

Konrad

