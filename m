Return-Path: <devicetree+bounces-61875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3348AE7B4
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 15:14:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0C5A2873BA
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 13:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96A4013541A;
	Tue, 23 Apr 2024 13:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g40wE88u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ADE1353E4
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 13:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713878066; cv=none; b=DzoesjWrBSI5emAbUzOCNzfS2ajcciSHHIaXt809QzKXnrLDEdFXJ3CSpLfjFrXL8fKoDP7Tv2a2nS0GJGIlRfrWbp7/Oa281+7g1g0T+lRvKpCDFuUAovxp7ciCfuatuGzgPwGVMVYLVuHdOmshyVtyojfZHP/Bjk3W1r+oRV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713878066; c=relaxed/simple;
	bh=3ALgL8+QCMpbphZi9jDeommUnpU+m1JOIjWutRJPBnc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eiCcBqTnm2jIgtQYIP+sEkSHcwREG42ttSpOxqvtcbltbXFIZRnTe6BRkuiF8yTe3gvWNhRfJPJauSSZVRND/vlDzOVgxDP5DEvpEDw6bL0lX+R6WCpgqY2Vfn8H1JvExhOu52IZLw6oqCZ87ZDvJ6rUH8wAGCwPnRhudk+WH/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g40wE88u; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-51abd580902so3837275e87.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 06:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713878063; x=1714482863; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NY8T4CeaWeTNiGVIpd/ngSSzwEcWRKriqXE44ze7nRQ=;
        b=g40wE88uQxY0l4tLCWxot1MkG3HUzaH2E14UQDggtk5ZH7fI4QJb5c7cWAnMZDwvxV
         64NtYyCRhpIUMAZ4NdQvd5SOEJNyQ5NbHFjk6idOe43CL5r6/pmaWkaMTyn8U6pfE5en
         O+lmvKGATqso2lkkqrQktxbTol2X2DD9np7e2c9MBaMBBihgaM2hiW2+LiK6ayLPu78N
         eeutCVc1dH8dYxF+9TvJqt/Q4y7k3EtLC+zK6U567iI6p8l5/jA/E4fDh9jRrGMFKyYA
         lM/2U7CwZj74n5eX5NaxTBMBlfJVoiV6fD9OC+COxehw0RpH5ik8Npm1SMp+7yc5Cfic
         YHJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713878063; x=1714482863;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NY8T4CeaWeTNiGVIpd/ngSSzwEcWRKriqXE44ze7nRQ=;
        b=VkV3A0dts8Hs8LCDHfBrjo+tuyL6EJYNsQckLGmfnuSj29JlkkTOhByMBk0VU8coRC
         wKElVlfvEMmztywODLkdjQl79JxbGJ2EpB5JAPhOXyVg3tz32X+wYNC1PMl8jfb4URRc
         4zLldBQHQj2sl1zeGUAnMlOvy8U6fjP3yogO6SD6YW35ctoOvEvWEVYNrGrCxIRY1Wtz
         CHJQTPHmNaMCdVBLThRhiRJ0aqiyBh3SnzedLQ2SeLOCFGI/AO9YHc1ZOrLJTc9BEB9J
         cLGQNivWrRyJGfXFkruTOj0fqf7BNYclNU7/YeZxXtKS8n9+iSxO3ONiajZIJeEGzbtj
         SwAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlgKyUz7CLH28qEUOFi1Uhp6ZDtBLhBm7B2mPLrCfQ0yoLc1WXRHDTf9j5EK2QH7FxeEuy/6nao5Dpfa5Q6n2KGfLBRwip7XT8BQ==
X-Gm-Message-State: AOJu0YwEZmBi1DIzBhOmQ5kY4TKbw/aQRdb9ieAbfUVzyAza0+h29YL3
	fHgElCtApRTtYDz3HEUYruaQMEMUSU3PDkb34ANkGhOd2YYKVhV+6iIoTy948Ks=
X-Google-Smtp-Source: AGHT+IEApX48gy5u+zDNEfRdmXEQyc0oJRptbKDpcZL1/iM0xpsXEJqtJwc/oKoRbmR3KY6hSGXJlg==
X-Received: by 2002:a05:651c:215:b0:2da:6f95:2826 with SMTP id y21-20020a05651c021500b002da6f952826mr939409ljn.9.1713878063336;
        Tue, 23 Apr 2024 06:14:23 -0700 (PDT)
Received: from [172.30.205.0] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w17-20020a2e9bd1000000b002d8e42c1b5fsm1732618ljj.42.2024.04.23.06.14.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 06:14:22 -0700 (PDT)
Message-ID: <9adac76c-a1cd-459c-a5e5-5f3daad6a6ff@linaro.org>
Date: Tue, 23 Apr 2024 15:14:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/8] clk: qcom: gcc-sc7280: Update force mem core bit
 for UFS ICE clock
To: Taniya Das <quic_tdas@quicinc.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240318053555.20405-1-quic_tdas@quicinc.com>
 <20240318053555.20405-6-quic_tdas@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240318053555.20405-6-quic_tdas@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/18/24 06:35, Taniya Das wrote:
> Update the force mem core bit for UFS ICE clock to force the core on signal
> to remain active during halt state of the clk.
> 
> Fixes: a3cc092196ef ("clk: qcom: Add Global Clock controller (GCC) driver for SC7280")

You describe the solution, but not the problem. Please state why it's
necessary to do so.

Konrad

