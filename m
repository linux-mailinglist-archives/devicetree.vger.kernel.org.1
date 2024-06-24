Return-Path: <devicetree+bounces-79226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 627D491469A
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 11:45:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9B0B1F243B6
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 09:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C06B5133406;
	Mon, 24 Jun 2024 09:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NgvfWOkm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCC35380F
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 09:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719222332; cv=none; b=fhyL/MeDrXk70lA9ep/KSaynG4XtWj7bvtV5PRS6p4umR8FXC6A4azLGqrJrS82w6yJ9SD+ompH5bvzENYSh4RnZLwtfEhee1R4AzUeIq21Hj8XrIhMJkmivO32ikbJ6o+vwP48erM9r1pR2BS7/dP5sskpytVEo0hZn5GcB9EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719222332; c=relaxed/simple;
	bh=KN6Xy95DA/76ttyjaLKHOHB4qSMJ672x9Oas7+ljqL4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lt37MLsErUFipegBY0nlq4q/b3AEzuzUV4NAzIO1zkUw7LFi6HQ60NFiXdAgDLbINbeRJbgfAfS3BvWhZL6OtBFqxb6yCiy62IMB1AgrcVoS4lxWOp005E97OI8zmZhjI6rfw7etJMuztvV28BSFvkLg2SF+QRcWplf5klTE9WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NgvfWOkm; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ec52fbb50cso19962531fa.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 02:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719222328; x=1719827128; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R2T+vB30li/O7omHwMEYULiIVM5Yoc0a3cav+xwX2TM=;
        b=NgvfWOkmDjCsKMcGA3jmGKn850a8PJWa3z17+DFU7VGRRj8a7S3WOaNFYf4qfAugxH
         EcgHYwYvfFA+flOgytHVOPhnFTRFtq6cd7/OlWfIRyDjJuyIhuwhgGU4XVlBfGhpEDVs
         djv47AzgB2d4LhfyoqxMOE2Hj9Hc47lQsq5irMCshUkjSSCZJyjMnZUPMp6VqmSY6Pw4
         DGqlvupucKVTBfypvlB1nvLy9XrhTzaY6jcs1X5uqj4N3yfdLKqZi9tKoIM00Qlk1rCr
         DDio7ksusP7cJJf8sKvh4Js8ZowZDMkJBQjUBiiEIuhPjZVR/8lYdGD5yCRfbx83sniv
         L6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719222328; x=1719827128;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R2T+vB30li/O7omHwMEYULiIVM5Yoc0a3cav+xwX2TM=;
        b=j8yDj1mL20Gli5oYM3WYnm7uqdYoVXVWMzt5nEonw7k5cA1JeseGaN1d1qb1UzkOzV
         pkaf8JCcdMw0hX5npB0ALUxRkyPWWhRLGKL8wb4c3w1UPvFj74q3OyJqgmeRJD2+7AuR
         WmT3g+pRi8GLTbQO/B+F7IW9mVFTZjuX7hROv3lyZnPeQCJWbg/iTtdJq+m8/oRuzll3
         06HkeBGryCaOuNFFhZxtMo8yrqNPlgs2V9Hq9qTuFZ2JStCfx9xATDnZ6F65uBKapTBX
         9HDyCbyPzqnyWOYbJABpyCMeDsj4rBYAp8eEMbW/Bdx2/potRAJcMAfwfD6rD1eiJS6z
         5R3w==
X-Forwarded-Encrypted: i=1; AJvYcCXfB2xsrBYGeWmkOMn7EjKFOI09zVkzUiVL/PmSknsIwDbbQ1TB3iHsRrlPITgc/TaXUUinR3QeGFyruNo0rFRF/vl+J8v5zcBLAQ==
X-Gm-Message-State: AOJu0YzgLVtlr4qgNPcVGOzw+JNgLh+EyPqYMFwKnv9B8aQrsXN7smlZ
	ttGymskeNDdAkHM5dzv+oWdHK5YmYT88w6Vr7mh/ghIx75O2gpeqOfxyTtSu+Oo=
X-Google-Smtp-Source: AGHT+IGs0sNNK7EbrMz9guyDVqQqxo6nu9BzMy8MfIzoVO8+KKxTpquIJqx9InsStNttCSY2VbCeIQ==
X-Received: by 2002:ac2:4c86:0:b0:52c:deae:b8fa with SMTP id 2adb3069b0e04-52ce18321afmr2477186e87.3.1719222327875;
        Mon, 24 Jun 2024 02:45:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ceb804334sm42225e87.183.2024.06.24.02.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 02:45:27 -0700 (PDT)
Date: Mon, 24 Jun 2024 12:45:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, djakov@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	srinivas.kandagatla@linaro.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org, quic_rgottimu@quicinc.com, 
	quic_kshivnan@quicinc.com, conor+dt@kernel.org, abel.vesa@linaro.org
Subject: Re: [PATCH V3 3/4] soc: qcom: icc-bwmon: Allow for interrupts to be
 shared across instances
Message-ID: <qld47ryqxciamnz6jmdqtad4s4cemcl2r6kpsd5gst5ccwa5ma@4ej2gzk2vce7>
References: <20240624092214.146935-1-quic_sibis@quicinc.com>
 <20240624092214.146935-4-quic_sibis@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240624092214.146935-4-quic_sibis@quicinc.com>

On Mon, Jun 24, 2024 at 02:52:13PM GMT, Sibi Sankar wrote:
> The multiple BWMONv4 instances available on the X1E80100 SoC use the
> same interrupt number. Mark them are shared to allow for re-use across
> instances.
> 
> Using IRQF_SHARED coupled with devm_request_threaded_irq implies that
> the irq can still trigger during/after bwmon_remove due to other active
> bwmon instances. Handle this race by relying on bwmon_disable to disable
> the interrupt and coupled with explicit request/free irqs.
> 
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

