Return-Path: <devicetree+bounces-35184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDBC83C840
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 17:38:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F130CB2597D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:38:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C15C6130E31;
	Thu, 25 Jan 2024 16:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DLlstJhy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2226A129A63
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 16:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706200722; cv=none; b=j5BTosQTtXjvqqRoFZxgxGY39VKhNpKQpqJwsl4ph6DC1jp4PmgpuGuruYbErojWA4Sm+qb/aygKPvERxtrnl45fT1IIviwsxGa8K9OIlE8XtnjqXrze/wtS6yXm2S9tVLCU/uJxAy5O4pNETu9dAn8ZdiGGStC06ac/D1fp/MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706200722; c=relaxed/simple;
	bh=5lx2+dSs0FMQGMLiBW+T0/UBigqaeZ5EOebPUCOOgUg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qrjQp/BpuvhdKtqVKw7w9UPuMCPHpoRu/iAvn2qwjRGKaIyzpRt7n0slhjQmFt8WmawSLnNbKA3dcSxu7eDD78PjP8VcacapwpOE2V17Qb6yWFObi6zBZ0OLRDKVXwSM2QJWbVV1OL7Nq2/LphuAJWTB7kdShhZTLSalSPDrMdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DLlstJhy; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2cf2fdd518bso15445091fa.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 08:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706200710; x=1706805510; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IhABjKgOtT9AbmHn+Gmx5C2HUss9NC99tFpVdZ7ZxOY=;
        b=DLlstJhy5BWuad2VUO5l1an/gNmFG4lhmeGs676fAorhl4Ie/mJjY+ar1qKhwlCglM
         Zv2Bng76bSLKJ3JC7goahg7thgSh5KlcZyGnHsiAqK6IoShNb3Q1qrcY3ujd2m0bFfMY
         aulzg2SQ3eBire8rJlzvmu4lLXbq4+xcLpmYb54SpJQecAtkbiI3SBNA2k+72On+Qaog
         LIqDNt8rhl6ChfwRTjTDnvR2CAQo+tNlNStMmJ0fWChq9qxbZRwk6zdCq4vB+gQSeYxC
         OgYJXjAUJuJjDM/RXnkqntFReAHQnxFVwzYLFxcEdvhjFmRIPZt0hL6JN3kB4Q+rBLyZ
         oXHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706200710; x=1706805510;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IhABjKgOtT9AbmHn+Gmx5C2HUss9NC99tFpVdZ7ZxOY=;
        b=uCyxu+MSFPjSso/hT8w6jfiee3Ow03j1pWTUIkInuad8s6Y/Ea4hEXTdYVOGwnFZTd
         M7elbJDrvcfBXriaDjVt72+8DTngXK91Bf1Sdyk82RoEhK4aPxlSXHlgG3iNaVTve0xb
         gQGo7fascu/XjlpwMuRKuCv0mYBkUihooK07kL7drkuflyRaj1Xj/yg/kDMktu1+Q4Wt
         sLybqlYUPdW/5QNRgVqT+Qo612rdRmlkfB3Oc6aXI9tY1yGFdTanh2Wa1cwHD19lsXUt
         LgAgK6pAfVUZE2qYF5LOb52WX+2PecHvMYqTv6iuFbFLe8jZydKEpFgts39lbe5VkOJv
         lw5w==
X-Gm-Message-State: AOJu0YzG5VUYQTh6ewtNPZLKxNQzlafyWiM34lhh3SrFz+N/wTRm7/mq
	yYhx9ekRCgwz3O/aa3k3mZ7UxGDPWKyBs4gGqDx9RwEt+FRhM1Z1lli4xvil/LU=
X-Google-Smtp-Source: AGHT+IFNccxqYHzXIw7zLWJU8tgJZDpMxDm+VX9G2FradyqEG90dlYltr6l8KL3XmViw+NyR51QxRQ==
X-Received: by 2002:a2e:bcc2:0:b0:2cf:1ad9:e79c with SMTP id z2-20020a2ebcc2000000b002cf1ad9e79cmr792452ljp.0.1706200710277;
        Thu, 25 Jan 2024 08:38:30 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a9-20020a2ebe89000000b002ccd2d688d8sm307401ljr.107.2024.01.25.08.38.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 08:38:29 -0800 (PST)
Message-ID: <918d1d55-e95a-4b00-af59-7b5d7057b9fb@linaro.org>
Date: Thu, 25 Jan 2024 17:38:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8550: Add dma-coherent property
Content-Language: en-US
To: Ling Xu <quic_lxu5@quicinc.com>, andersson@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: quic_kuiw@quicinc.com, quic_ekangupt@quicinc.com, kernel@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240125102413.3016-1-quic_lxu5@quicinc.com>
 <20240125102413.3016-2-quic_lxu5@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240125102413.3016-2-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/25/24 11:24, Ling Xu wrote:
> Add dma-coherent property to fastRPC context bank nodes to pass dma
> sequence test in fastrpc sanity test, ensure that data integrity is
> maintained during DMA operations.
> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---

How can we replicate this validation?

Konrad

