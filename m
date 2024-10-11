Return-Path: <devicetree+bounces-110398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 843D599A53A
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 15:37:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A7DF288E86
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 13:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64C15218D7F;
	Fri, 11 Oct 2024 13:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RIAZ5Sxb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9879628E7
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 13:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728653831; cv=none; b=FE3FDRWpYnuL2wxmmV5c/VRBKsSDJP+oj4MLu/ork8uhTqgU4E6mwBftfCeeR5VYgiZafUx63WA29PZEUZaOPeHh7v7gd8Z3iceMayy8FstgFg1Rw3D5Ng0znmALT1xoWYXxADcPScy8jaKK0xKVIG9cWQGLm7gne8A4iZmLMrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728653831; c=relaxed/simple;
	bh=cjMGxQOW5XddUAB+/xLXi8oiAJnn8YXWVX2jh465DMk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z3Sye+0TN06ApNkTTsSGbdsyoVGuTmJIQKKPsU1hWA1wWF2UwtQ3DgyNqaWrM1SFs93FTMf5POuuExMBwTLC1aCQK0bTTqyESDbHp1SrjWfdE3/rgNHcsNA3beW+3oKo6Cp8EXKxSL2cL/+j0INFABGp0UkJ1RLPs79/kppX3Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RIAZ5Sxb; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-539e044d32bso800852e87.0
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 06:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728653828; x=1729258628; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XaGfDqX+Jbu8yXuoPx2CqSC4Xq+Wq/cr4J5BmFZrmFw=;
        b=RIAZ5SxbvncvdpKUP/SDUacSGr4cZ76tCLsLwt5IfSN/0xgeENHW5cfkO9eMbep2AL
         NkQ3h22znylJqb5pS24FTBJfjyjfWoVP55Ba3a1sFvDQThgaSdu8uh2jSEsmpHm22pTx
         U+SJ3gAFmqadfOKkQRDTpJP7q2vu1/08KfvbqQAUQ6+eKs1i2VZCTLilzM+PgX/MYGwz
         sVy8s3B6Yv39IYlJfzHnyYYE1iKkLXbifzvu0PnwjmezWcT8F/5M/U7XzJeY3NW0deJO
         7RN2FXoShNWNm580m7agcZ9UkGjkWej2u4XNc3VibZ5wy1Ip0bYqwu3nObJ4ozDSKH61
         mQsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728653828; x=1729258628;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XaGfDqX+Jbu8yXuoPx2CqSC4Xq+Wq/cr4J5BmFZrmFw=;
        b=Itu7Sy3MMFZtBkIUGLXXg7uZKjS+UohOG2EPH/a4sNLP1PL9p9Ns/5zJQvXb3m1d8p
         O1+q50CdBnz3/fX3qug81US6OoWmz4eOwEviBlOFFcom5MD9Lo1XfWQS8z46itaf/gwk
         sufnh0SqMOkEIa+4rwbx11vxK0/JUjldB4dhFROHD5aaeyItDek1JDW2Yn8JoUFUlfVQ
         Vl323EQMkFOcTiVSS9BLNACkEPKDDmX/mjvZ0z9Y/Qip8G/OffAndjIObL9DlJWiA/Je
         ieMSxhoofW/vSpIkplJdNsSkNP9AQEzf51GqQTqqD/Cwx0GeeoL39CGtCSKlyogxsVVE
         kHtg==
X-Forwarded-Encrypted: i=1; AJvYcCU9Rn/vd76kNZYHbVJ0Ci2vzTx/ufObj8+h/vvagrg/nyguWsQlml1DKNmTHFxfcIRqR4sZedLAYwh/@vger.kernel.org
X-Gm-Message-State: AOJu0YwSAQ9aN2VHoFmzSkeT1KfXMi/9HC09FlToOBB7XPQ4afMpeMt9
	zv6g7QXtNX/f/g8KjJXDcPgwfM2Krs3iaiT+tPkSbKethL6ruWG8Uf/vmYADzbs=
X-Google-Smtp-Source: AGHT+IG3qL3pSC1dHQpXFWaYB+Rn07Kp1WBxWezdJxQFyqZIdB2oubsLQBMVJh2zhElcrmtmyeK9EQ==
X-Received: by 2002:ac2:4e03:0:b0:536:553f:3ef9 with SMTP id 2adb3069b0e04-539da4e0b9bmr1361860e87.27.1728653827760;
        Fri, 11 Oct 2024 06:37:07 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539cb6c8c9dsm599131e87.119.2024.10.11.06.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 06:37:07 -0700 (PDT)
Date: Fri, 11 Oct 2024 16:37:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v6 7/8] PCI: qcom: Fix the cfg for X1E80100 SoC
Message-ID: <u6n2u7d3sxcq57hfyrbqri2bqehuogdaof6qe2uh7qela4pihy@7mhyjayiucmi>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
 <20241011104142.1181773-8-quic_qianyu@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011104142.1181773-8-quic_qianyu@quicinc.com>

On Fri, Oct 11, 2024 at 03:41:41AM -0700, Qiang Yu wrote:
> Currently, the cfg_1_9_0 which is being used for X1E80100 has config_sid
> callback in its ops and doesn't disable ASPM L0s. However, as same as
> SC8280X, PCIe controllers on X1E80100 are connected to SMMUv3 and it is
> recommended to disable ASPM L0s. Hence reuse cfg_sc8280xp for X1E80100.
> 
> Fixes: 6d0c39324c5f ("PCI: qcom: Add X1E80100 PCIe support")
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

