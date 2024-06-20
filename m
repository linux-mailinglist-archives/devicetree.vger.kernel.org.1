Return-Path: <devicetree+bounces-78145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A688911389
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 22:42:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D68EC281EE8
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 20:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5345F7407C;
	Thu, 20 Jun 2024 20:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pGOqHizD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D6C379B87
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 20:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718916122; cv=none; b=RogH2AxkqxtWrkmoYGJnQSIzWnghBWIC/MsMkD2q8zB5VuATFelt5epqCXoevdeNB+hg/lz4Nz9y7K44uoQIqD/yPtv8Sy9+YDZ8xd5DLi0GeXQ/qfDWepfxfIO9NnHBASNKSzzBZo6VCS1upzKkV5jEcKOyBdtsu0NZHN8M1/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718916122; c=relaxed/simple;
	bh=STh/90eMk3NBXI2lNFEtFDudfXdIZLwimllATDz1Snw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LT7CZezjUavtB1Nz6FMCnrNgWIFaRuwKgmao8LJSJyOo5Q1khXdjdj5qC0iabRs+b1SOz0sMW9RQb+4eaLmoBXifTR0U7XY7hskHSuYwYMf3O90gOdDyxEU3D1QVjJbfnkNSNm3VY7y9bW7f9pUh15qIOseOGtwzLyubYXrQXNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pGOqHizD; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ec1ac1aed2so14995931fa.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 13:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718916119; x=1719520919; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0UDba+xJOloimcJU8oqa5SsgqIPBhxJOEST2VwSWACs=;
        b=pGOqHizD+8IyF2CDvSZvWam4F+yi77z0oG6UJVMRE2LBzFevcAwCYKytnWZNjPa+kX
         4ZVXKHDRBzDITl7P+oVDZRAhq1BgTSrNZzHwLp0+sDeqKfSLqIFgMgKVf6Fl6huL8jN4
         3CP0NWaa7QpsZl526MtdA6svs0v189ms3SqdXBK6NbGAwwvnYkuN37b7UkC8gvKyYPz/
         CdS41E9cAMeFrJDnqBxthVHvYeg8ktDTfCvxIMNwAVlqQPBBaqfb2usoaiWZ3pcsq+fK
         9haD7di8+6O2JcHUTKLEBs0VAKve3QSn8nyUdB/JCRhceMIZ49itWiAzyNu1CrNLudo2
         Jv1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718916119; x=1719520919;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0UDba+xJOloimcJU8oqa5SsgqIPBhxJOEST2VwSWACs=;
        b=kcfU9Nu+4Qg/plUfyfOQ+zPkgc85UUTD0W5SDR5wW0QgGX5gWZs1V5YHSvrH+rR7O6
         5uWnaZRpwCz87xU8nkb2aJetq2h8SfXEJ/I+Y2zyUbjlO0/98LTEXgDilXvziGNO7XoL
         xcPDtwtoGSp+OtLHFR9xStXVr3xgocXBpfiuRZD3o4QOfe00HekmH2BmK6dbFNrV6vQm
         ZV+f8KayDPuyM5G0lEBF8ZUwBiBKWUL8DBUGWtxu1PICe9YabbzvU3GE5VRY1mAGLXwY
         d29ueO3IlDEI6Jy6w8h67bzc52q8gCw40gXCwl3ykoelWjK1XGqHPTrZVJ+w/Rn8RJtP
         EGvQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5KWnPJjkZbh9SBesExQTCl+GWAxXXomJP14Oc4cr97Vz6dSKCgJ83EFNsFUkYc1DITxwoKgWoCcuAUW1CMykNiLGeoODQS6uJSw==
X-Gm-Message-State: AOJu0YwOH1eFckwdl/lMoREWW4FZwKkss7iwyf3XV1TFZtG7s8B2g6u0
	FRokPIYD2Gu41ZlTEljx1jIMZ4BubSTZZldWYTfOqkB57l80M5B6xGK0gUYPHJA=
X-Google-Smtp-Source: AGHT+IFvDEBziAChv29W9y+hlbHpRWjQtdeBZlkVSappPVb9YfmbDmaebeCTAlFW7AujfRDaP7GPgQ==
X-Received: by 2002:a05:6512:3b23:b0:52c:ce28:82d2 with SMTP id 2adb3069b0e04-52cce28854fmr3654990e87.23.1718916118870;
        Thu, 20 Jun 2024 13:41:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca779db82sm1912644e87.176.2024.06.20.13.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 13:41:58 -0700 (PDT)
Date: Thu, 20 Jun 2024 23:41:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: msm8953: Use mboxes in smsm node
Message-ID: <tx5hi7sb5t2lrn5g2atp3pugusaumifnqateu44h42funftybq@nnfsim7c4xkp>
References: <20240619-smsm-mbox-dts-v1-0-268ab7eef779@lucaweiss.eu>
 <20240619-smsm-mbox-dts-v1-4-268ab7eef779@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240619-smsm-mbox-dts-v1-4-268ab7eef779@lucaweiss.eu>

On Wed, Jun 19, 2024 at 06:42:30PM GMT, Luca Weiss wrote:
> With the smsm bindings and driver finally supporting mboxes, switch to
> that and stop using apcs as syscon.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
>  arch/arm64/boot/dts/qcom/msm8953.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

