Return-Path: <devicetree+bounces-237131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9D2C4D2A2
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:49:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 22AB034EF17
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 10:49:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16572350D6D;
	Tue, 11 Nov 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="afUx8KGU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DVIHF1mo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C8434F49C
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762858133; cv=none; b=n96LZ5CmFyI1xIu5lR9VGs58YcoRpxpzmkkLWp7DELkxpCasToJGnU7L78M11vo5MaAwFzl4bAjVvm00SVQQzzsIp05XP+z+GHIhIv7zrfsQBv71vEafL9CYOMh72JFqShfpOhXfyj4TBljc9PI9U1SDYkq/xADd3eyoVFxURB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762858133; c=relaxed/simple;
	bh=Hw7WEkYyfmolBo/cx/Bi+H8d4M4g/yfHEl5/k5dvLtY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mkF/Zx2F0Qi805puKYPpnTbzwVHZelK2LkRqvde/tSvmLD6PUi/+KRIBA5lbUrxo193YpB6rEUZivYC590UsGh8GQgR86oTx4OwdY3mcOHKE6GtPIRtXJd15vaHvupTbHbkz0IGsD+liZK4YRTVQVElGqzRqi/xYoBH4xqlWFh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=afUx8KGU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DVIHF1mo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABAARMi3985600
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:48:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9EItJ5XOQftBUZ4p28CCb/my
	3CzvSqKQjhyPpFTkDrc=; b=afUx8KGU6kXYU5/rvvCLhu9WrLAUTQTH88aJ5JpZ
	eH8L4xr8lru7SjeZz+wvpJ48WZiqLElbeogEr3n74p4n4QU2MLK3Qg1cR+Rf8dmW
	bnQEwS7Cw4dIdqd7DzHJMoLw/5VYByIKjcPJBhOdf14EHrZIUjc9tCO3tjRi/KGA
	3bgzvfVKCVQ0vwbL2Ckedk2zX9UKtQnsb3rVs/1NqQGRyr733quGqd/LnE5pMlDM
	yG5P7m6CcSdrnRBluTrpGOevABMdON3Qzqncl+V8hrLdDhZEP+5t4Q2DaH0f0eaX
	gGomwojRaLAAAcepDPaWaj3DAIMEomERxn4puMN1/4iFog==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abjxqjxkr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:48:49 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-882529130acso50223966d6.2
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 02:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762858129; x=1763462929; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9EItJ5XOQftBUZ4p28CCb/my3CzvSqKQjhyPpFTkDrc=;
        b=DVIHF1moRtJ5y0CIiFzGIYZSIQAmQ4nIRUbDEJLUN5DghRYsTPj6HI4fg2nSdQ2oZ1
         m2V3rkFRRdqZEFv5mmsSHCJ7Oblzf8rXm4Y6dFqKGqcxrwS0PGEirzMY9SWqCTLT3O9e
         kCu5uawIm7rdM5WtOmdREPLpIa2HfM/tD7tAjKNe7NyDds5h6r6nPdssib7nB1fRD8Dn
         lQCct0gS0GXzOOD8dt3lGLqN0KbNhEEqJJbRMY1xbLO7uGwDBqqn354bhL9by6vHct5w
         JXraEh9XPEDlv5jB6lc7xhcYPaoBukUdcyKLQCv/1bADOOD0ZKXqxutg91rb91lH3cxA
         1Ndg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762858129; x=1763462929;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9EItJ5XOQftBUZ4p28CCb/my3CzvSqKQjhyPpFTkDrc=;
        b=HieFFuySZIbwjW0Dvf/E3CpCorrjoeUyf41ieXNbemGsDma5A3wpqnnz2m1ImWImL1
         tHP/6ZaWy9IgRwNxcn292/WVmeUcGewfJ/UwNpn89zvNj6RlCU9CnoqmT80crAkHb5Kk
         JBGsZH+WzdS19nrYNuKOYKEEy9VSLLMbumt2zT+iw3VXMCGeS20koJJj40jbrV+NSRoP
         AMa5MWxFiWzl6FSh+t5U8qyJWS64WDuz7Vv7EF0JQfAXfzIZFBSxGnTBmDieWxymxaL8
         lQr+F0wePESZcuoz2ZyRzDpQYwoOG0Xxc3nYp2x/H1bvniSA+ic/QPcJOxz5FTQFgRxP
         FDOg==
X-Forwarded-Encrypted: i=1; AJvYcCWQCQgS8fR4j+l2Fp6Yq2YNhPDk8PedEScr42qee6AUCUMxpkMNAOfRCV/lNz9QywC0hvYBE9gWjRQF@vger.kernel.org
X-Gm-Message-State: AOJu0Yytadp3X+uz5VqpNGeO2tAasb29eh0rowwZmlI8UD/2qhQLAjkz
	lNqe65q5A2cacl1JfH64/4l4ma35YeM41zuO5IyHrT0rCHaq4O5wRvfxAbUw4s81VweBT5h9W0Q
	2iKl9uWFpQvv6u3HpXmesjflS2KHpca+CkSlaRFIvzdY6SJxKdFVTNsHIuVaLnw69
X-Gm-Gg: ASbGncuLpYXnTWRnk0Hpm/2UugPvcghwxs05PpGTQSxCu6Jpmvd4PlBK2jqLCg/kCCZ
	jrUDJdA2/NBEzJso32DJ/A7UxjxuSzXt+9bu4SA02WiNrK4p5S9HBw6Z23C7QaFtk8e6HfwnUDY
	FH3K/tA3UOC4Ha327JX3MSG7Qg0yHJ4c01KQfXgLzWxUACljIHjsu8Jm96vh/L9XYloHbsoOu3h
	eG6WE94fFYyPTfX3uIqalhlCybki72vWlkIxlYy9lIhaQra6Q0X9Ri+zCvQGgL0kravwbeqjoJF
	4RuXGS+AIvSFl2y54RikPsi6oBLk9SMjnUkh9ybbIcNPNE8rg9LZhorTiidOcHWq+pw4BJ9ooko
	O5oLnlPcftEiRNbIUJJfVvXIsj144WCdSG6QgMz81vpafDCX2RkphWx/1EcZ50E7Alfeo7JgKdx
	4e6ONPXlOLKK8i
X-Received: by 2002:a05:6214:1d0d:b0:882:4f53:ed3d with SMTP id 6a1803df08f44-8824f545e1emr99089146d6.36.1762858128902;
        Tue, 11 Nov 2025 02:48:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF6DZK5HRkqdWLPvPXUjGlUQbBYjLyUgma8QBrsQcOxkXJuIWMYFM67iw5rk0NIzOjJScMNWw==
X-Received: by 2002:a05:6214:1d0d:b0:882:4f53:ed3d with SMTP id 6a1803df08f44-8824f545e1emr99088906d6.36.1762858128460;
        Tue, 11 Nov 2025 02:48:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a5f0dd32csm45345661fa.35.2025.11.11.02.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 02:48:47 -0800 (PST)
Date: Tue, 11 Nov 2025 12:48:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, jingyi.wang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/6] clk: qcom: Add support for Global clock
 controller on Kaanapali
Message-ID: <vomgxeiqctbnezwunxovwznbepmhxbmixkcpi7qkmic4xhhm3t@fwc3rp7r7ylm>
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
 <20251030-gcc_kaanapali-v2-v2-6-a774a587af6f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251030-gcc_kaanapali-v2-v2-6-a774a587af6f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA4NSBTYWx0ZWRfX/ZJ94DM+hCho
 Lxsu5sR98gd8alid9Xat1R6tlyUsBAo8x0XVJahzlLX5csjuT63b61nHvqm4Hh1eV9imsS3J0FO
 NxrLhYg7Uy3ruJqgsdWAtl6TciwEZ8OJLPAy+jXTkK7JVampZ5gH7QN8TQ2KVH+UZDaYTmmPLR8
 ybd5SnBy6RAFLZb+oM+mcBmdcv7Fjp9b73gBiVXcsXtJo3plMvgMv6JgE/VfeD7HezWvIKtcxA6
 KssoKQn1EydKcsRXJpUFvr+OBVF8rcM6OqD36LpZXuw0dZGEveOzONasE/0CYBLvX7gFWcwX37W
 fCSNGVQCwRaBThmCoEiaeAzlgRC1rnW/rm2Na7D8YCGzEgJlaFatDfObuOQZ5uJc1FEDnd0sd5D
 o2eMTX1XWKAgSMETIpRLW+xkxjSvog==
X-Authority-Analysis: v=2.4 cv=CsKys34D c=1 sm=1 tr=0 ts=69131491 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NTLD1hAujTJExawGBKAA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: qAOUWcn3G90HvY8X6jQXTaFe2n1DFdks
X-Proofpoint-GUID: qAOUWcn3G90HvY8X6jQXTaFe2n1DFdks
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_01,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110085

On Thu, Oct 30, 2025 at 04:39:09PM +0530, Taniya Das wrote:
> Add support for Global clock controller for Kaanapali Qualcomm SoC.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig         |    9 +
>  drivers/clk/qcom/Makefile        |    1 +
>  drivers/clk/qcom/gcc-kaanapali.c | 3541 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 3551 insertions(+)
> 
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index 8ec1803af76cb87da59ca3ef28127c06f3e26d2b..5289a3f07379f3cea6f6192bcb0d73117fe51a5b 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -46,6 +46,15 @@ config CLK_GLYMUR_TCSRCC
>  	  Support for the TCSR clock controller on GLYMUR devices.
>  	  Say Y if you want to use peripheral devices such as USB/PCIe/EDP.
>  
> +config CLK_KAANAPALI_GCC
> +	tristate "KAANAPALI Global Clock Controller"

Kaanapali?

> +
> +MODULE_DESCRIPTION("QTI GCC KAANAPALI Driver");

Kaanapali?

Is there a reason for keeping it in CAPITAL LETTERS?

> +MODULE_LICENSE("GPL");
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

