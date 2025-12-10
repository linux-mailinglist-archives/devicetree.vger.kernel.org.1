Return-Path: <devicetree+bounces-245663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C835CB3D9C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 20:22:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 090B9302D2AA
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 19:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4353132692A;
	Wed, 10 Dec 2025 19:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UH+SgwBr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TtSeIk6+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACE493101AE
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 19:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765394530; cv=none; b=YJ/TmvLtROzbPfwCbpgNKbs/cD/8hjrE6dvkM/lCnpoJ5+Ts8NnnC0/eKReDSRyOOGFGM5DTLeR9sBFbjOXXoLo0e5L3exz2ggz1BLHU+eE/CPPfvnHwuXYdC/gaeKvLe30oFZPzpNfsWGJOhVPTM6ksE6VqSJ0p4hpnXJOUK7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765394530; c=relaxed/simple;
	bh=oe0ikDlQL5bopTGzWrLt1VG+7xt6JUgMFE7e02yEg4M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DXNWXUiwNvcuTWG3ZBc7EXYUEwYjEDaMoq6paiAOCrt4dWy1mE385BlYrF1+dU9iakQlU52gz/d2PSx9X0dipZ7zk/bp2X5sLWFza68pUpl4+C4EglY4HqHIjpsyvd+FFCT9cgippIWuAZpo7FKd9S0dcQV3FIv2UNAnS1pEdQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UH+SgwBr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TtSeIk6+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BAIRJwT3685919
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 19:22:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+ULRL24+CGFWPlPz7XFfWJtJ
	J6lfhUn+g/U4fOUb+O0=; b=UH+SgwBrrGkbCVfU6Q0sryaxb9yjOouEQ/3xnWB1
	qRcwg9STMULjyrezUVms86QZ4JWoRXUPcwDEs1/2ReUbMZcn+CRl4obvD/2SbgUJ
	KbbWUAtwUfWeFtTIEKHh4GdtXdZaltJL/Xn6OQAjnVwcmtNj24kuIqzK3Kmd8HYH
	Y6lyGDu1kcj7BmtWMPYJYXBCCZ6tnUED+8n3gaQXufsSirBEMUY91G5zr3dGyQjc
	jUkACmSIPH+1PndvKAW1B0pzOXpOYW1ACQVtjJLyPtviylXRr8HYdPW45Jq/+zNH
	6QnI3tErufvAL0o948kxUiwRVVk3p2Xm+fBzCMVmaVtFZQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay7pm9hxn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 19:22:07 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed79dd4a47so2496981cf.3
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 11:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765394527; x=1765999327; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+ULRL24+CGFWPlPz7XFfWJtJJ6lfhUn+g/U4fOUb+O0=;
        b=TtSeIk6+wcpYeMOxn4LV90kcmDif7+9rpTz5+YOrTlsaWZo8XrBiHETv2PjizEp8ar
         l5R09qNxrCb4EtIlEaJUsrI3NjX19+or1QIeQmJokNS70x38geG38xfOgRtPJl/8q3hn
         RcxadFD+K7q17p/AulrOs/CRDv7m2LNBwydYVpUq2IVQD4ew8lrsB2VRbu2AZvMPG3Qg
         JmHhO1sceSmXRmidHFys6sd1vQ0oH5GeXZ/OdZfz6F9/ZpmVEMYBQnW/n8CwEzNy9mu3
         hAArU48XvMpZ6ddyJVshYLtfA/cg9N27gBEM5ObYolDiWZ098NiqdVuASpNhG/SaSlfG
         yOZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765394527; x=1765999327;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ULRL24+CGFWPlPz7XFfWJtJJ6lfhUn+g/U4fOUb+O0=;
        b=M6Ts/wI1KTAQfeRAz7biUcR3/vYV94jKVkEf33xFsh9uWby/N8nZI94im3HdJMAeur
         TxYza9ad1JlHotFIrxDGfBQ5aMBRtB93DgYxhNn8Sg2jOltadA1AfvsAqpQml7f6obrH
         eksZvLO6MqqR9K7D4KvpMxFPZauiEHFzoD2xSdAznVroUtlJ5b5atLxpYP4XUUD+Kez0
         oVdXXUFT/J7n9PSpSBuFMoJ3eynJgejPE9IDghq2nMY6ltW1XFlH8IbH0bmCT6Fafwy9
         v41eBcxEz6bAl0j9ShWjBAAbL4WXrojW2Dkg8Ce1CbEDXGoLrAR1CFTwFHo00vlGhmcC
         u8Tg==
X-Forwarded-Encrypted: i=1; AJvYcCXo2E4w033FvLnuIFUtU1yc1tJDdd6Hd3FZtwPSfdY4R8MzmgPTh06CqaMFoNIPxXAfHh9Iv5qACZIf@vger.kernel.org
X-Gm-Message-State: AOJu0YzFBc2Fb8+rHEOO1sIKgTJHLKWNmA3GMmmQDzHBM58HEQD5tgwr
	T/1XyBP/nCux1mGkdHroCcVu0Ktyt2UKDAqUhe1tGly9S9LylSbTKSVieifxKrJQGYqnN8OlKRg
	ufftgDzhAmRGsrpqYuZopB7N/GHPtDnUr2eItw6BLi9CgF7iFCny6nJfB8fICPLk3
X-Gm-Gg: ASbGncuE/Rd9wiSMBlFPI4eKsVKW/j9sIFJLZiKodBeQC37brJ/Uc4OC7wZcHgaeqXw
	+3VatUnUeXXPhT3z+9FB/snV1L5HztttefdTcywqiVbx96/qiRUYITMg8e4ePz5QNoCcAfNEZHD
	9CsPfI0X6kXoDoxe7zM1Nk8EY4HQ/kyAtqvpwBy14NF8UrG5ehdSbaop8nvsXt/LdClZL//4aA1
	bovRNA1wLiy3mLPe3B1MCtV5/7bqsiSZy3SdFAvg3PZwytnyB9gGxhyXJbwx+HZdeW8pS+EDDIu
	9o5q8edG60VVtLDpwr6FRYC+K1sGUsLyRv1AsWx9siqwLxB1/qqn17Qsr+9sdj2vlaz6yc3QwRz
	nzFLUWGGLFFea+5RtqQY8nEk2SWWSvMT0KJIS0mfs2n3uEBnF5gQUd7qu+Ka/nWkEwLmNRQ3cWs
	US/dG19S4+osrjCgmUsnIatGo=
X-Received: by 2002:a05:622a:316:b0:4ee:bac:e3a9 with SMTP id d75a77b69052e-4f1b1b6cedamr47953691cf.68.1765394526905;
        Wed, 10 Dec 2025 11:22:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0WlKrRbiz1bgd5geeM4IgW8G7fHVtBYUl0TqwUi0xGuXadXsl+K0/jc2lOlX7+ZBfvL6i4w==
X-Received: by 2002:a05:622a:316:b0:4ee:bac:e3a9 with SMTP id d75a77b69052e-4f1b1b6cedamr47953201cf.68.1765394526362;
        Wed, 10 Dec 2025 11:22:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f3199e7bsm89696e87.97.2025.12.10.11.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 11:22:05 -0800 (PST)
Date: Wed, 10 Dec 2025 21:22:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: SM8750: Enable CPUFreq support
Message-ID: <4cuvkuf4tsrt4orx7um5pcscy4ynzc73up4sukoun24eijhoag@4wld35m5rfox>
References: <20251211-sm8750-cpufreq-v1-0-394609e8d624@oss.qualcomm.com>
 <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=A7Jh/qWG c=1 sm=1 tr=0 ts=6939c85f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=PptT_Mh96ff8s3TZVEoA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: mMYwkzp4PYbO5biz2WTa1iRja3k8Ocb9
X-Proofpoint-ORIG-GUID: mMYwkzp4PYbO5biz2WTa1iRja3k8Ocb9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDE1OCBTYWx0ZWRfX+eMzV/WrM8W5
 xEe/qfJV6Ts9HdQh0Jq9Kgt1Nt6A5iZImNlfJzXt86sF0lpkawj8McavOPVGxi5XMFOsyylzxiQ
 C/hQ90f4Rw8pQxpcRuwutxBxYfg/WutXf/AjVw+pqesd9LxH5/tYhmCXbDARlRhyhdgysGV6i+R
 hg+ub6BlrXlDLRJ2MZBK5A/OMj0jgQj72tTKa2v4ttq+PG5AIOzvjf5uDAmej4xSF22gt7y4O3N
 VgEdTu7BMZNzNdtJCA43K7uLJAYSuqa6F+NXfunJg8wAfGS8L3+3auusDIHrqzTMFNl0SCkjtAM
 JTls04nYKPDiVO/P8Awh+Fksv5CvPE/rcW8Hc6XvxdC15KWeBSohH99/mPwrjYpcuQKReSfCIJs
 w30/wOcJMjSRkMtiNTldYDtq7M4Z+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_02,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 suspectscore=0 clxscore=1015 bulkscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100158

On Thu, Dec 11, 2025 at 12:32:24AM +0530, Jagadeesh Kona wrote:
> Add the cpucp mailbox, sram and SCMI nodes required to enable
> the CPUFreq support using the SCMI perf protocol on SM8750 SoCs.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 73 ++++++++++++++++++++++++++++--------
>  1 file changed, 57 insertions(+), 16 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

