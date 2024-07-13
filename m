Return-Path: <devicetree+bounces-85527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BB5930620
	for <lists+devicetree@lfdr.de>; Sat, 13 Jul 2024 17:14:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D53351C20B60
	for <lists+devicetree@lfdr.de>; Sat, 13 Jul 2024 15:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9D1413B5B4;
	Sat, 13 Jul 2024 15:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S9bcQSKj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BD613B280
	for <devicetree@vger.kernel.org>; Sat, 13 Jul 2024 15:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720883648; cv=none; b=E+7W7J/Hu7k27BWTjqzAyFpaYPjO1hSuPgzf8B68+hZkaxIKNGsjMh4QlsFJ3uNyXRxYu9kGIXj5z0KDFrmxXauqiM44ZlxJsPJBKAlfctoUObglQ2upA+6qCJTpCnZTDQo15xTIt3ZAt41LxV91x7EvfWPsScV8qKqMtRUrSNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720883648; c=relaxed/simple;
	bh=0zdSR7l8Y5hdwHCfvdLcTSAk427t9D6VXoB/FLM/PAM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZZ/DWcAZ6BOHUlVp9emeQSP5aSUkCiXorKC5AxPc7yT4MKMnxe0jehNuUNFYYWH8uWHckYTaeFWdD6uhMsUQmYPZzOgTAW7KkA7Q082+yPelzmjHdtLvY+ISMFb/Gl1WqTK0Aw+nO0MXqHBSBF1liUqWOTfvTSEZjYenJe8dAl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S9bcQSKj; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52ea34ffcdaso3298880e87.1
        for <devicetree@vger.kernel.org>; Sat, 13 Jul 2024 08:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720883644; x=1721488444; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SYfPVmxm0REv9uCaEdee+9qY1y1tGgOQ3u+6wJAJ6So=;
        b=S9bcQSKjAb3iqv6qARN/wCssAEo9sy3jhN7kOqsxr4ij/kOlePdj96DOygvLy9HKf9
         4jbKlucik9BF14Y3Q164RPOOcuBZamuwrjnOjLB6ZT3UVLaoh9eCY004sQxFtFjOyrSD
         2d2PMrQgEm8lpsv2GqyHirZ9y1oeRk12zz7xAOyQ1sI0uPzxUFBkc1A0D5wszIx+4hLU
         k23B0cmMU7e3Cxs/YTsrFhIgU+b77eoBzl+Y6hl61gDNkk3R32L2+dSOCDMyNZP8J45y
         HvzHwH7rxIhEyoxrDLAzDZ4krbRXlnG5Husqm/hwAwk1zJGQVvDI9oMZBF/07qPALQho
         mZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720883644; x=1721488444;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SYfPVmxm0REv9uCaEdee+9qY1y1tGgOQ3u+6wJAJ6So=;
        b=qmi8mtD46+b4akqJNx9wCbKvQyA8B8RqTUNIhDvZeHyQHYuNM0s7YyrNgMANssLn56
         oJVmITnrV3pFo0o/GNZ+ZQ+6dry2AfMM7cvr+2KXn5Muwj3NMeajFHn2f8I82vFY/TNn
         0b8U4CKf77/GClL5Wihl3KFuX71qTXntsY++3K6JNpLJH/PcEAH9APsaSZvN+foAuZgM
         INRe3jpO+SZ4g8A/cG+Os864yq9dPtKq+EhHiPaCv4PAzKu1ePxL1p0kNjt7ATLvGlEk
         9Oj+N6f4HNheOJxZLbSt3LT/pJw2HhAcHD18Lg9YgDv/s4uaNOhdmOJ7b+TBt7Qezhc/
         s9zQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsoF/20iIQ0DAn3eOQPzLSZr5PBSlrrHYZFDcBfh1UPL0hzHl51DAw1Oy1FBMcmFU4nJHt+fSXN0YZ3/pI8bEHxSpevGF/nGUn8w==
X-Gm-Message-State: AOJu0Yxh8M15WXP0gtoRB+Xt0BB/DjlpknP0VHXzuUY2zZncYnYyMoWl
	Bh7dG8f+Gl73oHeluQ0zvhPgKPLrnnp6pWPgaRpur7X9kfm5zYNrZtrgF8QUHhxUYLNzApHyYKB
	s
X-Google-Smtp-Source: AGHT+IEZoAswyQNFfESQdiC11PY4tsA15nguHBt2DDuthdgGYgJGvLQYMpauCZKxWG9fNaC7qkB+AQ==
X-Received: by 2002:a05:6512:3c85:b0:52b:c0cd:7312 with SMTP id 2adb3069b0e04-52eb99d170amr10472300e87.49.1720883644433;
        Sat, 13 Jul 2024 08:14:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed24e2ab1sm218986e87.29.2024.07.13.08.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jul 2024 08:14:04 -0700 (PDT)
Date: Sat, 13 Jul 2024 18:14:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Naina Mehta <quic_nainmeht@quicinc.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@linaro.org, 
	manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/5] remoteproc: qcom: pas: Add SDX75 remoteproc
 support
Message-ID: <c2lf35mlot2z646i3jmbpevanhs3cqa2zx3cqjbzzq4w4d5flj@j2l5avnslsot>
References: <20240709064924.325478-1-quic_nainmeht@quicinc.com>
 <20240709064924.325478-3-quic_nainmeht@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240709064924.325478-3-quic_nainmeht@quicinc.com>

On Tue, Jul 09, 2024 at 12:19:21PM GMT, Naina Mehta wrote:
> Add MPSS Peripheral Authentication Service support for SDX75 platform.
> 
> Signed-off-by: Naina Mehta <quic_nainmeht@quicinc.com>
> ---
>  drivers/remoteproc/qcom_q6v5_pas.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

