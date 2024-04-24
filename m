Return-Path: <devicetree+bounces-62487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1D18B1459
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 22:16:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D98F1F27310
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 20:16:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F398D143888;
	Wed, 24 Apr 2024 20:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lxbN6s5l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BA3143860
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 20:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713989710; cv=none; b=Y+LryAeEPYCOEkLjPTHAAfFczIMB6SXrHayU3PRTb7KybEIPRfhcnQkGHSJ6ukD4nDFZZY9rKWmsFQMWjPmt5+NOcXTC3Qoy0rwICmNnCciyjqhNrkqfuJUUTbocZ2Scs68RpzazLt5GmsOhzcT/wEP90AN4fq346SfUYO3r4gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713989710; c=relaxed/simple;
	bh=zEHff0kOsNqcnD34AolsEJqJZojJu0lF4ekytQFs+Js=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BAX9XznjDe++MWkSSu9KLmmH79RbJlH8DVQsAiWCTcBtIMu88+aqVUOIBdWX17MugToLXAEyuk8OaWDWm7Hydn561uEPlQbwXsveuInyv0zirhz4annkm1F4d4Lzlf6y4N61++AcJlc4Pk+SdkcsHFqxbq2RLjlV2J+8HaRyBzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lxbN6s5l; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-518a56cdbcfso322346e87.2
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 13:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713989707; x=1714594507; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QOIJtx4Ury2crgPtbLFjxKxDWX++kac+S04qd7LgELM=;
        b=lxbN6s5ljSve1Ichjgoqi2LaG+dorhRe4KiloLTj7LVTOuPuQ3ZOAW3BniFTb0mLXw
         0adCocSFLZZiBiWPQk8dfH1hQGIMPM4/pKBRgAt74422lWdpDXHkEn2rJmTXameaIyXI
         qAi1v1eGGbsiVgJCL//wMbMrU189GbGEzFQ0lWhwmXMiayTtFpWHev79N8xvg4MMSZkE
         yztxffG3PpQ+Yxel5wB/Ceh+899uRZ7+9gedzgXnUnG8zrmxI+4bEYwrPzoN44gsGUvL
         fY4DzTNApuZHAX+CTv6FGVr/SRFjrg1Z5cOE5ZjoVfPA6ONRIr+DxWhGRSUNd3OWgNkk
         HU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713989707; x=1714594507;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QOIJtx4Ury2crgPtbLFjxKxDWX++kac+S04qd7LgELM=;
        b=NogK6UJNIKRu9bXCXyRooORr6D8CGOHRI+zZoImovKbN7MnaKMR4DQrfntdfi3yyTk
         oFQL94d8wkdbzEF7WHlo6CUfDjDi3bpMFeEuNkgskVPX3+f373VtORUzeAuprEfPl/5f
         CX5wGcGNNWIxHM/E1BDOdW/+f0afsz1tiY777snKYf77wYoJMdojl0xol+Qc/ro7FFpp
         hbZ1n/NUlluS/1qZf9DsbXgBtd/Zhva7Y2VwFN3EBnTF4Ojo9kyk9QUAbTCQYO11QyRx
         Wpz+x2c3HnKDjDKiPZFeYsdvBwrDPoqB/F3Mnox9aoGoUKB34R76cTvxXiyF7cgoX1Bs
         2yyw==
X-Forwarded-Encrypted: i=1; AJvYcCV9SPKmAolYFMs97WgPhybcojfgAgHH+o90J/rdvxtyjGI8PCQnUpjw3H6q+YginERLGGoopELn796ptXkNh+9LgP5L30pjCYEZag==
X-Gm-Message-State: AOJu0YziB9FYgw5PC6Nj7y5YSm2Mryg6lJN+r7KB85Jl8evRYpVRtq8u
	Nibx1dz3JEulCAXPdupDNRcxufOtj5HqUZHhGg2OXczpGruMJX5uLPGkdPW5xog=
X-Google-Smtp-Source: AGHT+IE4P39FwK1gddpY+oonY04hW8avKhbcxviyDOHns1JCsuXVHceDCisUKHEX6UzfzyJbNMg7vA==
X-Received: by 2002:ac2:4e66:0:b0:519:3cbf:f734 with SMTP id y6-20020ac24e66000000b005193cbff734mr2943564lfs.49.1713989707645;
        Wed, 24 Apr 2024 13:15:07 -0700 (PDT)
Received: from [172.30.204.223] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id h24-20020a0565123c9800b0051b5efe5985sm155830lfv.255.2024.04.24.13.15.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 13:15:07 -0700 (PDT)
Message-ID: <9e3eb1b4-fe3d-422e-9076-eaea6c78cb32@linaro.org>
Date: Wed, 24 Apr 2024 22:15:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] arm64: dts: qcom: msm8994: Use mboxes properties for
 APCS
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240424-apcs-mboxes-v1-0-6556c47cb501@z3ntu.xyz>
 <20240424-apcs-mboxes-v1-7-6556c47cb501@z3ntu.xyz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240424-apcs-mboxes-v1-7-6556c47cb501@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/24/24 18:24, Luca Weiss wrote:
> Instead of passing the syscon to the various nodes, use the mbox
> interface using the mboxes property.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

