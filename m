Return-Path: <devicetree+bounces-117399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B02AA9B6169
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:26:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D7A92843D5
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 11:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E1C21E47B9;
	Wed, 30 Oct 2024 11:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nSg/orIa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DA01E25EB
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 11:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730287554; cv=none; b=HPOexOf6Cs0qLitW9MvCEW838CndN+EB4/mUlcgFxbltwxIYo7cKUzSee/mOPmLkDoSw+YHxRdEjsXsIbB2NLeFeLmVdARnf/4a1Ax1GEo0IlhmoBvVbP1/DebqhstPDgMKIjVyOZOFza+8wzz0gOl2I9fXsEidL46p2Ogzg8fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730287554; c=relaxed/simple;
	bh=i/1lFAiCUmr8MozzsQANkNXi63EHwNpndZyFrvfM+q4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VFo+uI/3vVEi/gOk1zyZm2kQabLZo+J00XzjudWlr/wNINMh2m5ytfcmcsG3uNE24ItA7pgKXNAeRTets1yuEfbF2q1j4Xc2hQheGuxomgTD3jVhlFRdLE7PvSSnIQBM8COuJ1Rit5yVz4lsjeGxGcE7YSK7uy1/Kwia88J9djs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nSg/orIa; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2fb5111747cso61559981fa.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 04:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730287550; x=1730892350; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bMES1QAhfgu7bIQDYk1EUlu+RGSHNt1/K65I4mR80e4=;
        b=nSg/orIadb2AFsxHM/8a2bnuVpIJtpt1I/jLdUgXg0ikJ2Zb0/6vlOCt6wm3RwxvBd
         qp6Y8NKmPvGa3Ecd2LaIsO+9hiuVcCvgyreLqivSq0BASgz1nhVgR+DTxNyGp+fLDCGE
         oBWSaimrzi4dY04qOAjL91JsC6l79yiVc2g8sDy0VBDzcHCxp1H0krMx+++MW2zcT2Kw
         F7RNKOle20XqbBP8YeZHblRDncG6VgqgjSjTlN3kEPMAwFXHkySUjA0Aftj1nFiqJYp9
         NONH3uUgLzsXeJpm2Pf/hGsBwu770BsavmjDpF0L/9ecMmfwqZ8NiDRMXeTwYdwC6NUU
         2D/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730287550; x=1730892350;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bMES1QAhfgu7bIQDYk1EUlu+RGSHNt1/K65I4mR80e4=;
        b=fQ6jNdGpIQTOM9K1NiOM7jEqTSmSRFrLOA+LvOOGVgx38TiQdl7LS2CG9dF8x/Ei5K
         7rNFxzS8UPaYrWQ8zsHxH2e29ZPl7VSqhk9P6IX6QXHFNhWqr07DKQLwjapoOTfWR6fY
         fzp/kkodwn9euIrmo+asiJgqvxJAT8lfHz8BmoKOsa6WLSu+dPU96hWvBtL9HyEIJ/CR
         4iCUByKeyNBd6bduXQObrmjIPSfMJ38gi7OajSY+hD2i3hkVzk4Z6gjgIXeR720j0d21
         a2juuBDmS7MIaBdgNwHJNnMF+LjjU9WU9Bx60HK9GkawlU+eovhd8pRBmaPIFOFlwhH/
         YERw==
X-Forwarded-Encrypted: i=1; AJvYcCWPzxgd6JuCBWzMFDh+Q05gOODfQaME5IKvG8RX7a4YAtDP3Lgb83fR929+Mmr4hQZuKEsEzvbN1qpu@vger.kernel.org
X-Gm-Message-State: AOJu0YzbrJ5V/43AMDNT3DQcdXxD6xy2hU/pKq0o++OmY7vRYlCRZqha
	32RcukknHS4mwffvUeYRzMRWxezu75l/EBQbTM+gzz2jJVYd3bLGk32RP3ab3wU=
X-Google-Smtp-Source: AGHT+IGY4OdrV2g1gR/OZMrvjE/lAI6jJHYq/NY61VEtXYCuq6a/kfZIDfbwe86CLVK3+WjNbtSP5w==
X-Received: by 2002:a05:651c:1508:b0:2fb:6465:3198 with SMTP id 38308e7fff4ca-2fcbdf60348mr75079871fa.5.1730287550241;
        Wed, 30 Oct 2024 04:25:50 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd9207d4sm18412585e9.20.2024.10.30.04.25.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 04:25:49 -0700 (PDT)
Message-ID: <436b02c6-a262-4015-92e3-454d444e877f@linaro.org>
Date: Wed, 30 Oct 2024 11:25:48 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/11] scsi: ufs: exynos: enable write line unique
 transactions on gs101
To: Peter Griffin <peter.griffin@linaro.org>, alim.akhtar@samsung.com,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 avri.altman@wdc.com, bvanassche@acm.org, krzk@kernel.org
Cc: andre.draszik@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ebiggers@kernel.org
References: <20241025131442.112862-1-peter.griffin@linaro.org>
 <20241025131442.112862-9-peter.griffin@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241025131442.112862-9-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/25/24 2:14 PM, Peter Griffin wrote:
> Previously just AXIDMA_RWDATA_BURST_LEN[3:0] field was set to 8.

where was this set?

> 
> To enable WLU transaction additionally we need to set Write Line
> Unique enable [31], Write Line Unique Burst Length [30:27] and
> AXIDMA_RWDATA_BURST_LEN[3:0].
> 
> To support WLU transaction, both burth length fields need to be 0x3.
> 

typo, s/burth/burst

