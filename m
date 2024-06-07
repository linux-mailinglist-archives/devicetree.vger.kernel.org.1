Return-Path: <devicetree+bounces-73505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DA28FFCDE
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 09:18:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46CA11F2176A
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 07:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 024331514C3;
	Fri,  7 Jun 2024 07:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KRDQ/foL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE29B64E
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 07:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717744673; cv=none; b=W8CGeaIIPYc11jMN/6P3LN29oq69OCB1nJrZHAH4SxNw7hryW1XPz2hlBz19VUi1E0v2kLJHhfpt21AmcL9RZQXQMDXCFKDPdniWdflKijYfseue47AwlsGDsSXDTu6+3Oi+i1ltQJykMb7/ceZGcMK8J3TwnJ8hf5/cRq5loJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717744673; c=relaxed/simple;
	bh=YiEZ3bX0ayB1nOs74MObDCAeLmQirzoQwjpYGOfJuoM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eIICW25XEw+X+3tQeUrLmW3Di2EVqUAtbjTrl2kGCEAgN7WdesxLisBlOTXdFeb4bzWQMETyEsOMbIIimtkDspTnZzwoOEe9qcfPmoKt/EqVBBu966v7yW+BkKRIxU5YnsH9ubn4paow1QA9Nuv0xF1lSVJSkzaQxjtA7Ms+ZQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KRDQ/foL; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e73441edf7so19146761fa.1
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 00:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717744670; x=1718349470; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=goOM+D3enUA/KRbqdIW8pJqTSuZzDywMtVI+QwHEMOs=;
        b=KRDQ/foLT/jCse0O40EDYjLC/D00LU0Q3n5wc1Q7ifXk/3bM0CpbLF6ib54RG2UcAA
         wNddXsbSIceeL1/pPbESdBkwvG2+wzvqwI1W1gGsdTfzF7oatc42sByXxedL1AZYDvTZ
         J2ZeGRKqHDroK+hk0vrJJ3igBm9S9QM8zPdUyGcRDsrXM+Nt1O9IOKbI6yiDWNAu3Crq
         IhjpzVThRyPSWKLvCEgq1PnQHRvQHUld26TaEigFdlmcM8OZNJJ+MyC4YAPb1YuK2KWg
         h6bkHg7SZIb1Y/7V2LmICo84YIyMeWCAkc+UsCZb5KPsNdDPxKRLldx0MJO4LbHV/nKJ
         Vpiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717744670; x=1718349470;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=goOM+D3enUA/KRbqdIW8pJqTSuZzDywMtVI+QwHEMOs=;
        b=U+hzPSrTue0KmZjuLV9K82xpwUAX8Ffq3tepblAES+u5EK0luvSwohZAwudGZTSJmY
         VIkj1tLsZIhfgKj9FvV2zYC/71AMrYMFk2P7v58h5zTWsaHq1IOhzaHBPccOEwhcrnFe
         aKXFf3doSfKs2K2mZGFtKk4a2JgFnPfgQVVfCl/w4t1/HK2c5cY1X5X1mOU+6k6y61qU
         6a2ZhZ/CZS9T3INRakWzMeRaAjVJla5EHY/PgmGPH0M8c1D9tlNOOUNSmJ3bLiVjKYI8
         FL6d0j17JzyxNw+d4kdoF71mnv8UhW4FU0uAXpcc62vGS/jkQwwgC0ZTNK2/vlW3XsQd
         9Hrg==
X-Forwarded-Encrypted: i=1; AJvYcCXADeQDqaHJV65Xz4QAjF7ogmC+LmJ66w2fR4/Oyf0UjKdBXCcAUyjn8NwukAeWNg3GPVgFPJrRox6g1LVIVRo/+yhplbSa6teiiQ==
X-Gm-Message-State: AOJu0YyQDHuofbIAY7ms8NMivmtGl4sg22oSihA2lUAXdPZx/c4IV753
	UoMYuNoZU1HR/jUxg2DPQqQAPiZoocQXv1YG2OBDiNryTqnwMnRCswqbdKTeJ3c=
X-Google-Smtp-Source: AGHT+IFayl6a5cyRp7UrKG/w8IISxueREsY73BBE8MGwS5t+Zc6w/UW44a5gLOBjcSSlpsNSb9jMLQ==
X-Received: by 2002:a2e:a487:0:b0:2ea:7dbd:adbb with SMTP id 38308e7fff4ca-2eadce83583mr10384791fa.50.1717744670594;
        Fri, 07 Jun 2024 00:17:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ead41bf12fsm4287171fa.105.2024.06.07.00.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jun 2024 00:17:50 -0700 (PDT)
Date: Fri, 7 Jun 2024 10:17:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jens Reidel <adrian@travitia.xyz>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: pm6150: Add vibrator
Message-ID: <ckf2kobxwzlc64lulwroo2gkyoms5kzeufu55id75nsm6y26ug@cgyawalr65bx>
References: <20240606181027.98537-1-adrian@travitia.xyz>
 <20240606181027.98537-3-adrian@travitia.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240606181027.98537-3-adrian@travitia.xyz>

On Thu, Jun 06, 2024 at 08:10:27PM +0200, Jens Reidel wrote:
> Add a node for the vibrator module found inside the PM6150.
> 
> Signed-off-by: Jens Reidel <adrian@travitia.xyz>
> ---
>  arch/arm64/boot/dts/qcom/pm6150.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

