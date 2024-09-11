Return-Path: <devicetree+bounces-101953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 669A6974DAA
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:57:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 117DB1F23F63
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 08:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0C7615FD13;
	Wed, 11 Sep 2024 08:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yJJeMvMi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7581552E1
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 08:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726045001; cv=none; b=ETOijB5e6JvTObPXnlo5Ui9VlutA3W9jN7mOmZV30Wy1IvN2KuDjU+s7J5jLnxVH9nJm0CIxk47gcjsQwBA3OAiRTnmyvsgghtgsB5r2dAAV5Ypfk0WUYnrMCCDr0+QkSeO/SG3CwNtgM4HXyeV6Ndo5ncHeNXiuRVyB1f+1HMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726045001; c=relaxed/simple;
	bh=aP7IhXRVz6iKbZ3mQ8dTFLf6Q7UElVuMGXexy6aKLDk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d8KxafGkTDJKZOnboi7tGMj5TSCxgiFgYX9S3y8MF3ELomYhFSIsMLWozRUD0F088ScdMFTaLVa27MvRmrUOhi6AgF2+V7n6Ne1gGnYoTqlEkJH2onvCzU0sSaFIoYEGz5+9MH9WZlsxrCUNWUIND63zAoKAGbctBVqHHLKjg2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yJJeMvMi; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53659c8d688so593677e87.1
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 01:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726044998; x=1726649798; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GHT6/vvjElcN24XJx2jBathBZNoc8HfAFHwmAmE1np4=;
        b=yJJeMvMiecPse3BnCA+suTfvGoVMUydGQNgrngedYA73jLZJFu7oqNlhA2C3b42jBT
         bhgyDrPta17rQtrvVXhp+k+nPVa//wTeG3RrIcCw7WOH+w0rtPmDui5QypvEZ5stDdvf
         qGLYVi7Q+WAxeJvRj6AqhRij5T74jPDbJzbMxVUhIGGeGLpcEZF6Mthtocwn0MZY/xud
         3tUkEd0cUawUnC+Lwak+0RaTOg7f3c63Fim7TcfUc8+qhQA+XpShTyu1Lw4e4BrRsbk1
         QBaR0sMWv6TotVuen1RVHrhAm4e6LdgNSONScEPikGRZamhqOwl3Bh1VL7wPdzM2TC6n
         D/2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726044998; x=1726649798;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GHT6/vvjElcN24XJx2jBathBZNoc8HfAFHwmAmE1np4=;
        b=C1mhty0xTcyKINp1EJk2BX4d4p/LRBj3v1VIm++2ao73W+IplTb4ChxxX6vDL5BZA2
         fD98riTVsxi1LZ5kMUWF3tIf3z7JfFfF9ULz0ly3KAFO1Z0bRjPJkedhZFAHXnSzvzUh
         yeCC1Q0uAXGN6qt9DGnSNL2EQdOUkj4EfbnhNKySxx1uiy4PJcVDVyUQw+ntERfQEYkp
         A8ScwbDAe7D8a3uY+urccyo/3SaVXJSzw2vKg9Sho+XuKmA3G8jLWXyp5zeCC/tpgshv
         GQLewTfsd2agW+iD/cbK0Fnf4WLgb5JevO4HVsskY0hZkdlwob5I7N8NAtBKL0HM3Zyw
         TMAA==
X-Forwarded-Encrypted: i=1; AJvYcCUYCLsdusq1qbnYSLQiHv4jVStD74OV+cfTHdBsiI5qf47EcSqknrcY+Bm3BKiBdnqjuAgojdrvL4pv@vger.kernel.org
X-Gm-Message-State: AOJu0YwugXFgsEFdIGMtYMNR4YROtJCB6JGMcPedgnomkoGaR+ZTv8FE
	iVhsOHVJ1xzBwe1Nt8v4v3CawyoHSBVaIdK+0FuIKifHAnrAD/1HjXt2zl2xIlg=
X-Google-Smtp-Source: AGHT+IF2tpFKGlAXrKvwxqDPIwjevDQmSakJN0nAUDP6pJ1nObUY+pgWNPR4/mHRoFdNp3Q4T16JCA==
X-Received: by 2002:a05:6512:2355:b0:52f:c281:72de with SMTP id 2adb3069b0e04-5366ba30771mr1919414e87.15.1726044997672;
        Wed, 11 Sep 2024 01:56:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5365f8cabd2sm1527171e87.143.2024.09.11.01.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 01:56:37 -0700 (PDT)
Date: Wed, 11 Sep 2024 11:56:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	konradybcio@kernel.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, robh@kernel.org
Subject: Re: [PATCH v3 1/4] arm64: dts: qcom: ipq6018: add 1.2GHz CPU
 Frequency
Message-ID: <uaplmcbkdw5ol5y7y4odrskc3anoix6ayckiboyrfahantwarh@qxg5vnytud5p>
References: <f3g2tvddqyt5vjt6x7h6oirtm2ighnesu2pmtn2br6jpbxf5zr@tprelogpljuh>
 <20240911021025.17283-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240911021025.17283-1-amadeus@jmu.edu.cn>

On Wed, Sep 11, 2024 at 10:10:25AM GMT, Chukun Pan wrote:
> > opp-supported-hw is selected for all IPQ6000. Please add more details
> > here. Is 1.2 GHz really to be enabled for all IPQ6000?
> 
> The 1.2GHz frequency is available only if the fuse is IPQ6000.
> I will try to add more details.

You can respond here and post new iteration once we settle on something.

> 
> Thanks,
> Chukun
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

