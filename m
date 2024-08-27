Return-Path: <devicetree+bounces-97099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE2A960B97
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 15:16:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 352531C22EBB
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 13:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D67A51BD00E;
	Tue, 27 Aug 2024 13:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eLm/3AN6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273591A2C3D
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 13:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724764591; cv=none; b=s6e8DBHMNQ/qi/RuMkQ07mmNtjZ/G1Ih+em78undeTsMhvXfySNZVehqq3kkZ/7dp0T6mY3mQxSTKZKsVxAJj2TK4DkFDPfABTyBiApV7maBu+E/CTpCAXTR/YAQUgttg+T12250ElA1Bj2FOf0yIIGq/JLgJwcKMCS5xppiTIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724764591; c=relaxed/simple;
	bh=zSDs4BUV3METdXmko0hl60ogxseD+zNrseh74ORAvDo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cT07uQtOvWh2fmWmCnLvBQq2tlkf8jmqyroRZAhYEmxjastXSUD26ntkNjCLYUGz3ssQ1kA9POH+AShdGNVUChDueKclVPDt+9+aWzaw7aRtVBYGp8bx8GvcoFxiA/GxScHkgbfQbP9H9qWjHoBlyoOdoq8J93B0Nkc5QD3i7Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eLm/3AN6; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5bed0a2ae0fso6835888a12.1
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 06:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724764588; x=1725369388; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GrhMuYl4d9v0h/UP5/GJa9EJkPhfXO+uMjBnq3JFZdI=;
        b=eLm/3AN69Jm7eIp6BT7VIJGvq9JewO7/2i5AtUByUlCzR4/dlanauEgn5vgc1xCBhS
         GNs5E2bOWHE2Ys4XvahjpbdFEb1uQapcqiWYcnDHeFaRI/NuSB3XbBN4kj/OTBmrIYiy
         Ffomrz5FypB2WDKR378dYXD+/r8+FQhRHVWWqa+dWm47IAqQD4JK4/Eq3VOke+2xPFyE
         zUhyiILR+IKt51PClTjTYsktm5faNHgO/pMRpNH02b74M/OesGnI4DVmB/nLM2vVk0Bn
         gnZRWKVwnbFChNi1CY5bMTHkYJ2WXJinpNF/MAEeiRH/WviB8Mf83xqefhJYZ8HXRkkI
         o/3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724764588; x=1725369388;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GrhMuYl4d9v0h/UP5/GJa9EJkPhfXO+uMjBnq3JFZdI=;
        b=Jj4ey1JEHoG/HrmCX0s2ddldi9yaAGbh5m6S3P8EjnlD2V3/35w3raRwZeaEUPIwgD
         5wKB3weowavDL1q0yeYAOXqgx22ZOSAN/WYFFSILA2jfXJKxcUSPQ44shnNGrvJOVu4s
         3qNmtj5dyal7s4/+inOfBeIDEE46ocJh6PzQiy3aRyMYwdjsMqyS56qnfBgbRBy3BDXl
         azqWhIKjFVaxWmGRzq4QoaE0jyz/THyI4vIezF5v3mSyB1eg+hqUnsvrUY8oHKeAPNVw
         NavPy3KfHmkveoR8ePldG8zNhlnW4yaCvGpOO2J/2wI4L/WCuI7x8TY6F5y1ReBQV+Kj
         h/Xw==
X-Forwarded-Encrypted: i=1; AJvYcCWk2LNsFuPCDdKxR653DFXIHcL2Aixq5EaJX9ZsuS7TB6ufnEZwUpryHR1TnW0qCUUTJMLqTJOmM4KJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzfdqvrEQf7vRK0WBnNl6wUy1v2hmUs0rfbd77YrRlWb0hsXwj2
	WczY0DpcrButiS/uN2lMNmKceWeSrW5qWW7AhGxNKFpTkkACq5IXKAR+xlttHOc=
X-Google-Smtp-Source: AGHT+IFnrrYt1pcEShR0jArLWyB07KU328muSxhdaWUNjW24ILMrZgVMlT+ASlmP8Ql2d4/j2jfvkg==
X-Received: by 2002:a05:6402:42c7:b0:5b8:5851:66cd with SMTP id 4fb4d7f45d1cf-5c089159d17mr8851171a12.2.1724764588304;
        Tue, 27 Aug 2024 06:16:28 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c0bb1c2b8fsm1004146a12.1.2024.08.27.06.16.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 06:16:27 -0700 (PDT)
Message-ID: <63844f8e-4564-4528-b81c-27e973fb36c8@linaro.org>
Date: Tue, 27 Aug 2024 14:16:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/13] media: qcom: camss: Add support for VFE hardware
 version Titan 780
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@quicinc.com, Yongsheng Li <quic_yon@quicinc.com>
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-14-quic_depengs@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240812144131.369378-14-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/08/2024 15:41, Depeng Shao wrote:
> +static void vfe_reg_update(struct vfe_device *vfe, enum vfe_line_id line_id)
> +{
> +	int port_id = line_id;
> +
> +	/* RUP(register update) registers has beem moved to CSID in Titan 780.
> +	 * Notify the event of trigger RUP.
> +	 */
> +	camss_reg_update(vfe->camss, vfe->id, port_id, false);
> +}
> +
> +static inline void vfe_reg_update_clear(struct vfe_device *vfe,
> +					enum vfe_line_id line_id)
> +{
> +	int port_id = line_id;
> +
> +	/* RUP(register update) registers has beem moved to CSID in Titan 780.
> +	 * Notify the event of trigger RUP clear.
> +	 */
> +	camss_reg_update(vfe->camss, vfe->id, port_id, true);
> +}

I think I tend to agree with Vlad here, that this is a needless layer of 
wrappering.

I'm not sure that's exactly what you guys where talking about but, I 
rebased my x1e80100 stuff on top of your stuff

https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-next-24-08-15-x1e80100-camss-debufsoff-cleanup?ref_type=heads

and anyway the above wrapper didn't make alot of sense to me.

---
bod

