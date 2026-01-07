Return-Path: <devicetree+bounces-252320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E71CFD6F0
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 12:38:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC17F30198DE
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 11:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2C7F30F52D;
	Wed,  7 Jan 2026 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cN0gxQdo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fqxYbHVe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8AD328B48
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 11:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767785896; cv=none; b=ANJJgm8hLBj0ghMSvgpEzkTEMOC/qII+ItV8crxitvzVsZR817T22yUhk/6AyEkdbVH4xAZ+nR+Eh8JlD3S9gmRKeSKqEBK5iP2vR7BpRR6K6tuFDFLkwl4T0BD63zBYCDbpm8kbw7qkIoO6D76weJwAHc2oEb6uok+5xn6P1vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767785896; c=relaxed/simple;
	bh=cx+7EBQM1YTPVpHqKevtowrYOtDFBVJ1EtQHm1epcKM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DQLxu7gIEEPc0/Ey9hs/j2bQ9jF4HeSphqlJ7f7abd3jML8eFcdubX7OIKBPBjaLeAHhb0qVp9oVF84RJrQQ0k6hBnW+fjKcVkNb5/Onmp3aKD3334RXLdRySSk2nohLz6gj3yjtTrAO2J+r+ODNILgTxQDZrrYnfoDVhl92hwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cN0gxQdo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fqxYbHVe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079epnI2988753
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 11:38:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hHrWLmSLNK/AuxYZ0Fr323Tc
	qsIbmfwjvkMStothfTU=; b=cN0gxQdoBXNRBUGFuqRgxaRlBzprukYD5lYhDHbh
	pJCKSwz40xcwrwqkily6uh/EgL6nWBzkttz7gDMRrpeKgjtrl+kIctX4StnKM5Qr
	xE7dqdZXJKpjyP4HNVph54Kvu/feROYEF/2Gp8YsWe60Fx7NzqIOrJnAwe3iGOj/
	K6Q4znLDh1EU8UfdcpxuptPmjlECc5h7m1dhVk+lIbXNBpm3iJZggY+dBSocYQEY
	G5MRM6bFnP8DkR7MTRaidB986Sgmu3O2uHLlrX7hriaJIqu9v8U1HOeWAEMtpJfN
	EoDaq/XTcuPiHUOhd77u1VX3SsZoX99igl7TWD3kNc6pvw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn2nrbmg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 11:38:11 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ffb4222a4eso20629581cf.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 03:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767785891; x=1768390691; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hHrWLmSLNK/AuxYZ0Fr323TcqsIbmfwjvkMStothfTU=;
        b=fqxYbHVeRy75PAvfbrzso7pYOQEDk+PsGMH3aHXnG1ONTnLBFhe7AZyiuK24Qg9FXo
         4Hx9rzwwDn6nvnNCzuC/Ob7FwI8rE6bw54cuucoomkOcejZlnXjdE1VMMd4BRhG0+jcR
         nC9UGKVXHBDY6Fcn/ngBbjBKVatvuQ5jTR7oHX1AtpIqUkmRPX8jSj1VUUAbWRExQAqp
         2V98jG75CBtWlrCHK+SbPwpGTeVO2mIo5XGEgyC9W+lCWqMGyWhG8aIFfD3cYvJ7f/zl
         cKOjX7ACj0z/59lKcmrpWwiitZJ8E0zuta5vZJXzccnLVo5mx714MDoPmTKHbmPEVT6u
         5aNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767785891; x=1768390691;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hHrWLmSLNK/AuxYZ0Fr323TcqsIbmfwjvkMStothfTU=;
        b=SO15zVjrYwjED0dvyNwW6JFWDEyLDFzIzgSM3yk8rVE5/hPQoqGOnfexORwxZjWYs1
         oZufZxqImrCUB9hrsV4oH2Bfz68feRdcTfsoH8QXlYp+Zvl8Iubs2U/FzYzhWNNDUC0y
         AM3LlBGR0fFUqGImvplrGU7nDucANFaXJcLXj3qCdnB61Abkku7H7MkJNeNIKKoI6bkE
         VLTfCfJDVVwRWw0rPhatHv8hgOVZlbKcGA2O2uFBew5I+6Rq2E2A4pct0+ctOJ3dQhCY
         fK2d9R74DgTD8fODPga6BgaoPoJol5FTr5QOd67nD+ie3U/+lt3BNtIxe/cNAD/KHNkO
         Vj4w==
X-Forwarded-Encrypted: i=1; AJvYcCWvUh/WqGFbmRuqSai1lfYKrJgH8z6cjH74ggSSsvObv+9URDWVky9YCVp3/WEzJCzfHhbuhikrI064@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkn+hWIqyOvV614JmvaXPtSrb6Dw3Fg7ig4L/iIbexPP2STsjR
	jhZLdK2MZcF5FZx5rfZakFUt5GgJhwE4c5O3o+4hySW22w9Q6mTjmGZVJpfX/YkXwJu/6rEJkWg
	dT93mUB6i6v1zmrM+AUeI1hUNhPZfKvWz+tT69BQdjp9kCYWPgsRz5XPKrzD4SeFx
X-Gm-Gg: AY/fxX76CsRbkDOvoSdrTG18Ir/cH4vTnfIJFkFMMJWahUfLuxJO1h17ggCf1uFU7x+
	fmQckHP0J2nQKwuunOHPNR9trlpb+ZC0hVNzpzgRrU/yqr1YboYkh/Sj2tkJ0Y/jJsZOt4i9n+W
	fGXfvHgDOGHiIXDaJpMBzsuvDq7Ys1sPRpp5cMiD1zqe/fel3dTSBMaTRY5m8+c/EMRQ0p/CF/X
	3H0VFevKc9zNpYf383qPlsmx5bBIznrD9g5tWkNwNN6tJUM5E9oF8Fk/Bd7/mE7yDiDY12LeEfJ
	Um7VD3K2xKNXc5qH7KWYJMjugxAyOwPgCDcF9vNvStmK8qGYBeyKAn6R4xuyl4XC9E+c9L/IB1i
	EGPLtaDRHgGrjOS5euJt7KePHVpj7pfilGQPvAlb7m06ga/hT7kaLGkD+u/cCerxkiKs3t6gPkN
	YaeTMyhrHi4beLuXxEGrjJ0Ek=
X-Received: by 2002:ac8:6f07:0:b0:4ed:2ec5:acbf with SMTP id d75a77b69052e-4ffb48a85c7mr24563501cf.24.1767785890939;
        Wed, 07 Jan 2026 03:38:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHssrBbLsPN63EAqbkxOs6z7YlYy0fo56gNVYCJ+4TuA8iD6IDnXJH7V/amJMkJBpE+nIYMmw==
X-Received: by 2002:ac8:6f07:0:b0:4ed:2ec5:acbf with SMTP id d75a77b69052e-4ffb48a85c7mr24563251cf.24.1767785890529;
        Wed, 07 Jan 2026 03:38:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b715ebf53sm343531e87.76.2026.01.07.03.38.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 03:38:09 -0800 (PST)
Date: Wed, 7 Jan 2026 13:38:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 03/11] clk: qcom: clk-alpha-pll: Add support for
 controlling Rivian PLL
Message-ID: <jffkujjicjljsyqfzu4hotjetlfcextw4vmmagjxya22tshol7@buvtkrkmttos>
References: <20260107-kaanapali-mmcc-v3-v3-0-8e10adc236a8@oss.qualcomm.com>
 <20260107-kaanapali-mmcc-v3-v3-3-8e10adc236a8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107-kaanapali-mmcc-v3-v3-3-8e10adc236a8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5MiBTYWx0ZWRfX5SRKAfpLbRvR
 M+TYFbjtAlDK5EfzLvYtgFGVIVQTdsHHp4y6NGcZdSeEWmCuZX6fGvYRVQIaMoUDdCknmfOiDYn
 lwGGDBngWpBiDsfSimprQ+jEqme4st14bLbLCrFyw6PwIc6DiTQcSwAsAVNaY+0xZgLwzhAVRIU
 EZRcdxn9itZI+eRDZZ7KAmVKACCoy464HIOehPtRmcyZNiXwmXV8sR7hGrWuAqo8qG14wORf9gS
 nGsLuvZhhvrE/8IyGD1XEgjXKXjqQ6yrugruUfPX5uWAbYphcMth30vbPojkuN99YvXh97JUJZ/
 kZIC6KkPXB3OtAjaocU8h734UVoB2szl4a4NggtKGdb34E4mu/ydeyqFNz+OR3jkzAjNWeM3DFy
 lkq58XIENevyfRtuWh5wd/VjwqLBM3W4+ZRSEG6y12SRV11WjD8EBkFUK0DTFX3aUyd+mNEEGUF
 uq5VQGPCAoTso8H4jLA==
X-Authority-Analysis: v=2.4 cv=CYEFJbrl c=1 sm=1 tr=0 ts=695e45a3 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Rar_LHnIVK7gKg-YXgkA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 71oj1rmL1CerBPON4pPlpJCF0nhZTmY1
X-Proofpoint-ORIG-GUID: 71oj1rmL1CerBPON4pPlpJCF0nhZTmY1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070092

On Wed, Jan 07, 2026 at 03:13:06PM +0530, Taniya Das wrote:
> Add clock ops for Rivian ELU and EKO_T PLLs, add the register offsets
> for the Rivian ELU PLL. Since ELU and EKO_T shared the same offsets and
> PLL ops, reuse the Rivian EKO_T enum.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 14 ++++++++++++++
>  drivers/clk/qcom/clk-alpha-pll.h |  4 ++++
>  2 files changed, 18 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

