Return-Path: <devicetree+bounces-187982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 538DFAE207E
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 19:01:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3E313BB7E0
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 17:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75BDD2E7172;
	Fri, 20 Jun 2025 17:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LXIuSAl6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD292DFF2E
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 17:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750438879; cv=none; b=ttpaOfDOb+Ewx1MvUHszaPYSIRmr7JFYOAS+idkUTf9mjv+ZGarwYPqfm4opgK3Od+RxcHvp7OgAdIkL8jtTBfGkXkFpH/iwQztLKFh4Nyb+5Qs0mForUjTCUJ9kWZFYSf7hyioWceaGiUuqNKB4OexLpPvm6zNqhNQNDfz1RwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750438879; c=relaxed/simple;
	bh=XAukmnt5QjBdMQI+xuahj+iBwVBMbadMcYelH+EV8+o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZfwvpnFr57XoR6SWoGDwkNjE/cEhauq5y7JP4rBlXl35yAb1K4ur5z7Gv0/RShdBYun1RV+vSV5ZEuQ3oXDnl5n6HYJZDhrd9oLfKGJLfltA2hBhcmzNqUBOxfIyOsyGxa7d4K/Rba+EsC9GVIvoRQ4sCFZV28NMiXICnBtfkKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LXIuSAl6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55KFRRVM024226
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 17:01:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fpu0l6974H5V385jR1/L6yeOq9JUIfEhJX1r1r81aaM=; b=LXIuSAl6/qDRZB8x
	Rou07E5KSwJ2siNkOf3nRzeATHpXzlQBkuSyYIHUDMWKbO/ceb1UGe8aeHw1tRuV
	+ALWNpKymXnEnJc8yCtBdXL71yc4l/lHODXnx99U3EOQAd/yeavU40JDasmldLF1
	bM3fUiy0kAAIffnJB+O1IZn4sWUH3LQ1XxgIdenwpQ9ryYTqloVOQPrBr8MNlpfY
	X11lR/oJ87wYWKTBtLQIs5+QdYm8dYMDDSKWxDJQMk7VSYu1TdVoOC3rv0YG6Ih5
	7NR0cEOC7gKJL+/PCCh+FSb07j0Fcdsv9kOuohxSs25CEBa75BaBeWCJSDo4lTYM
	K97zFQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47daa4r7gj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 17:01:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d0976a24ceso58624485a.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750438876; x=1751043676;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fpu0l6974H5V385jR1/L6yeOq9JUIfEhJX1r1r81aaM=;
        b=LAtC+dFdZdmv/ba+wlqiEY2KJ1oHrMc9NfVJxEyM3GvlWAjhAZoOXfy8CYtg+vBz93
         rDc9SKqzGIvA4i0pYGuBfuYACX9pREKy7fJARXaja/0EUOQmLuUbarYJYgvRByKAHV5U
         mtuiNmbWR+nnaYeoR5dJPEtcBu1VdtIILKLhd5eUEDGosnD/f02czq1ehW18U3AMkIBB
         raLbA5bGM/NdRjdT1bASkFnZf8otXyGvJgHG0swgsoMNPdfJPhAanHOdkZbr+GenX2B+
         hMt9Kv1XrkdiKbi6TSRNwF56sTfoKd5phUQYR3VNHpT4LLtXyDmqlbUB7xgtLn4rMEap
         m3xg==
X-Forwarded-Encrypted: i=1; AJvYcCX0gCtLMkzmcnIpbo//ZhKX52utuIdjx2NDccaj3JrGsYgwOYysdRC1udyBlWiEYNJaVFsStCiRmuF3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7xRLPCFExG/9r6RPfohccxNZDVG0n8MHZ6ZBEU/hb0Z8gFDF2
	tCU+xmS+hr0Mm2Ypba+YHmTAj9y/Ej506zkptST82H63zFgEZifbsO3jVJZ+qcPfsxGEUSJj1Fi
	O4kRhVB1MV2NRTdu6k8da+R1AH4DbDsZCnSak+xV20yA66UAtn6Tety5eEj/Fj09s
X-Gm-Gg: ASbGncuPbrYJQiSL1SKlWhEoxm4TiGsk4X41Bot9R5HZn0lYjHfKiNRH/G5UOt+XNgC
	puc9flA/OjlVXnuaFaK7V6lH/JZfQd0cZnFbf7ozUWr0p2tLGsGzYnUinecEBLWpVY2b9HlAJJG
	px0Gtr4EGENM51zK5/KjiF0O21+zsW8BCKt/+8CCFOWE7w0uC18Sh8GfSPWSYhvqUmM/BthjyJj
	UBwsqIUNQU87GyE65vdQOpd1u2gwAuvY/W+AmwPzw5Eb9yZlKH0yC9xgi4RoimN7vpV1WBEzcxm
	dG4Th33wL/qUnvDL9us0aAFJ3AKD4XO638oOyRuoCAB6sh6udYtS8UTe9Cq8K0QUympj2tKKo2X
	fip8=
X-Received: by 2002:a05:620a:1707:b0:7d3:c69d:ed69 with SMTP id af79cd13be357-7d3f98ec727mr193721985a.6.1750438875911;
        Fri, 20 Jun 2025 10:01:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG16STpHVdEHhYbxIqd3DOFgM6T+wJ9+inbvmdt4Ws0DP1ihUKEnE1P7W/LjHT61a5uRN3b1w==
X-Received: by 2002:a05:620a:1707:b0:7d3:c69d:ed69 with SMTP id af79cd13be357-7d3f98ec727mr193718585a.6.1750438875323;
        Fri, 20 Jun 2025 10:01:15 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60a185797bbsm1647747a12.35.2025.06.20.10.00.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 10:00:46 -0700 (PDT)
Message-ID: <2d3ff07d-1cd8-4eb6-8b3b-2d0d6f64445f@oss.qualcomm.com>
Date: Fri, 20 Jun 2025 19:00:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/11] power: supply: qcom_smbx: program aicl rerun time
To: Casey Connolly <casey.connolly@linaro.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Kees Cook <kees@kernel.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        linux-hardening@vger.kernel.org
References: <20250619-smb2-smb5-support-v1-0-ac5dec51b6e1@linaro.org>
 <20250619-smb2-smb5-support-v1-11-ac5dec51b6e1@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250619-smb2-smb5-support-v1-11-ac5dec51b6e1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: mUpdY8UtPVWIlHVFIgN_tjhpLNPBZhf3
X-Proofpoint-ORIG-GUID: mUpdY8UtPVWIlHVFIgN_tjhpLNPBZhf3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDEyMCBTYWx0ZWRfX3W61idACPqHX
 Ej+ZW0QnZD+iv/6gaYj/g1hduz0pXu++xVR1RzkKl1+aivXK4H/j3LI3+CZCeW/5XYuvK/erwQ7
 AWTkl4FutJ7fItIEvyYWn3AkuQHNHpRGJVYn+8dRdqopUloFrk0ZSk+LnGIqth36Ip1jVImkeNB
 6Fa41GqxF5O1HeIhvyJv1ktzpz3y1KdRL80RyaT0LUQ+gucYzcVtavkVpqK7iLK86hRtnwUMzCQ
 WJOmLyioEdvHt7jitxbutZjW8i+oVPh6uCVxxgVb99vyX6QYTxkK8RZ0m/0z7KtrGpjNlAIZNpQ
 fYkviYOocndSzQwlUrl80NXG7sdADaWMydJCCxhwbX0QHli/wm328XfUXpa3c1ygAizNsmrfmUO
 aTniREG6sZUVdHVnKkaAHcqoYjNYk3MaKHbhNWO+JTh3/T3QK8lHWNNTeXLP/bO9fWjrq2W4
X-Authority-Analysis: v=2.4 cv=KphN2XWN c=1 sm=1 tr=0 ts=685593dc cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=tPfAkDRKdS00ijgZXEcA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_07,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 mlxlogscore=999 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506200120

On 6/19/25 4:55 PM, Casey Connolly wrote:
> We don't know what the bootloader programmed here, but we want to have a
> consistent value. Program the automatic input current limit detection to
> re-run every 3 seconds. This seems to be necessary at least for smb5.
> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---
>  drivers/power/supply/qcom_smbx.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/power/supply/qcom_smbx.c b/drivers/power/supply/qcom_smbx.c
> index d902f3f43548191d3d0310ce90e699918ed0f16f..b723dba5b86daefb238ee6aae19b1b7e5236fce3 100644
> --- a/drivers/power/supply/qcom_smbx.c
> +++ b/drivers/power/supply/qcom_smbx.c
> @@ -1091,8 +1091,14 @@ static int smb_probe(struct platform_device *pdev)
>  	if (rc < 0)
>  		return dev_err_probe(chip->dev, rc,
>  				     "Couldn't write fast charge current cfg");
>  
> +	rc = regmap_write_bits(chip->regmap, chip->base + AICL_RERUN_TIME_CFG,
> +			       AICL_RERUN_TIME_MASK, AIC_RERUN_TIME_3_SECS);

FWIW a random downstream clone I have sets 0x01 which is claimed to
mean "every 12s" instead

Konrad

