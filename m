Return-Path: <devicetree+bounces-169901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D839A989C4
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 14:26:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 137B11B673A7
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 12:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62E861DB125;
	Wed, 23 Apr 2025 12:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H9M+wcqI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2BBD3C1F
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 12:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745411161; cv=none; b=dsAZvkBdYYmzY1wiXpkNXfWaJWHuMbvU3+n6vDu0vyJ6MJrZFhUZkVmStGBDBCzuRKHd0pLSEjayTJLOhNBGXSa0sHLHsmFdFnS2In3fZWUINVKSdeb1J4JvrflHyvHiykdY9QyW5RmtjFJqoPcaw9Syvk5KuzVQKuipbEEXwm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745411161; c=relaxed/simple;
	bh=Q2TQQJx49EZoqt+s+UoqOFRUn9Ry2bGHUuUAHKOsrh0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G4D+aKhRf8XsqqBb19oZM+fm7wGtpMivRxhLGj+ec/PmUk6tf7DZ7HC2rvd3z/9FOh61ww7ujjkx20yyY9VKrdpvKRUH1nTR3XpelVqHMHmZSkORQw9hUFcbomt+wotECuVDOBFzH87bwEf2aRDpo2DsMaFFLCsfurJ9hWGU2x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H9M+wcqI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAFHpD020392
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 12:25:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t2kUl9QgvO/uB6b51hcAn/oawqIiVbquzPdGvE1gnSU=; b=H9M+wcqITMErLoAk
	nCZGjwKmkqvEHEVExGXss+3rF0Imtxhh59d0youCTSamwjbJnF4KWRQ7zUSdrdE1
	7TFGsNEVGYrvgU7GPSAkBGDhcmdGmW2kf7RFQOwCNIVYuHFB/axONCL/Xpu3mDzY
	x5Sc7cM/yN+ay62Mt11+v8EWNlxGfYR7Iiyl7WR0pbqkoeRaFRop8CyqcQg0fBUO
	5rRqoS83uZvcyLewGFkwOjxhZCC5kowdwcsm+9Y2rdMRdGShrSTIn9AuW3YzTmUA
	SUA75r2+1394TjRCzieHwQ4D8c/GDx0lp7SRa45EexVwMcSepdKPN3d6A+Vaiv/i
	QCr4cg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh223vv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 12:25:58 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8fb83e15fso15887466d6.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 05:25:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745411142; x=1746015942;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t2kUl9QgvO/uB6b51hcAn/oawqIiVbquzPdGvE1gnSU=;
        b=WDitORfTgTrqEWiPS6Fy0fR/fv7b9hQoOBM3//FpmdU9Dvt20VfXH7kw6a2A0eze3R
         hPW20eTZxCnocJaGb6KFFWqoM1jH8i4kYvxnIgBxokbono7cpoicMaBOZHsQ0iA6tDJ/
         tTmJgzGlgkdlu2ZTrdpU267Azr1QCupj/CQPchHC5XWKyxsXbyFjI/xtEkZPuPPRb3Dh
         OC2EEfZ7uP7Ih0UQyY+lGmolA9Uxd0mqf9697qBdVOLvYO8Ie9V8oTwXxNREPyhKzajr
         27Caua+5fr+Ry33K2tf27syRSGpoPCcjFEQVMRqRu1JkgiLCkT2P3NIfG07A7Gu98404
         Zlcw==
X-Forwarded-Encrypted: i=1; AJvYcCWy42nnoTNpyE58bFLjemEXNFOb+hLgmvka63ksx18QXuM8FCaR6eqKPsp5z45eab/XnSqP/qrhneCG@vger.kernel.org
X-Gm-Message-State: AOJu0YyBytM5LOsYw20i2jJEgi4q+KlgzN8cmx3MklrE/hycTlAGUGQ2
	k89yqhSJpzCZoKEyUc0+Pcif3NOUKZRxoZ5chN2YmT7xqb6bZDJ1mr+f2HRk37ipZWzZ+ch+7+Q
	+upiDWbahjMEOzbSz8qdn5rT3HWZ3NFJ6H/KaLvs/sqFSRoOhA6poJdTyh1E8
X-Gm-Gg: ASbGncueGJk1cIftinkisbV4+crWRhSXC+SEj+N5ida7wBpNsDWL3o9DPBy6LqvdOPx
	Co+xL3SXFUvUoj9Um/JK+IJ9RTeXuvgcP4bA1ceH3c41HT7D8D5w2dJcZ57CqeZTr3dwgCZ7fq6
	wg2OQ841BYmEkVySGDC4iSMftheWGxYe2npAvyP9LnOuBL9smm9nuUTLTsP85mzNWXSMsJEE9ME
	FP/TKNv2OZZsZZmQ+n32A5z1OSP2ltFn5kGOJHC7rBSVZBvU/6kDD9jrF2rKvmXX051O3hsIiIJ
	vwhZJa86+l+N7cRG0gb0qu+rmjx3Jz99MZOl01b4KwXHO/m4l2y9k4C0HbA5C4RqNgI=
X-Received: by 2002:ad4:5d68:0:b0:6ed:122c:7daa with SMTP id 6a1803df08f44-6f4b4715783mr16544166d6.4.1745411142460;
        Wed, 23 Apr 2025 05:25:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8oXZ9JnKtVNQzSjdw+36R1Viqv7RB6F1PrfW3UoImxkzoWPf3HA1/z5215kcW7wchhdalKQ==
X-Received: by 2002:ad4:5d68:0:b0:6ed:122c:7daa with SMTP id 6a1803df08f44-6f4b4715783mr16543846d6.4.1745411142040;
        Wed, 23 Apr 2025 05:25:42 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f6255778b3sm7388108a12.19.2025.04.23.05.25.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 05:25:41 -0700 (PDT)
Message-ID: <8671d7f8-0d41-4574-a0de-aa40c1ed3c0b@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 14:25:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/7] drm/msm/adreno: Add module param to disable ACD
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Anthony Ruhier <aruhier@mailbox.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250419-gpu-acd-v5-0-8dbab23569e0@quicinc.com>
 <20250419-gpu-acd-v5-4-8dbab23569e0@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250419-gpu-acd-v5-4-8dbab23569e0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EtLSrTcA c=1 sm=1 tr=0 ts=6808dc56 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=pGLkceISAAAA:8 a=b3CbU_ItAAAA:8 a=EUspDBNiAAAA:8
 a=T2YAUAM4dRpUgQIxx5oA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22 a=Rv2g8BkzVjQTVhhssdqe:22
X-Proofpoint-GUID: eJZDgFgICCwJOMkV_CIFD13mGSS7cjGd
X-Proofpoint-ORIG-GUID: eJZDgFgICCwJOMkV_CIFD13mGSS7cjGd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA4NiBTYWx0ZWRfX49AifnADxJHz +jCrW4eIbFd1Phtc/vOL5tGtRc+r9NsKHD54nhjrhmBOk4u7QPih1UMgliV0ZKH98z6+XjN+Aex QQsdWLuXPqEN8+j3jE4hkXMJLXlI6Rwne2eFjesB+pm2EpvFTattAFhnyw37kMkiXkcttfb0Xe2
 Hy/2FV1mEaWyxbZgDeUyU6jO6/68+poyEkIJ+Zmno9xvHFLoB7Pl1R4gnA+4W/FYcUzPwWBXF+7 L5vrpqTN08QxV4pZrNMI9ZWDd2zzAlQLpmdxN38zqtq1AKLj1eitEG5lzPnycU2ytrtOTAPNlyr NDkSN5hU3Arxnq5k+YhYTjbUW8NjUeM91VHE+eNovyEXglruu6wOTYkVvQqWotOQZ1y8VmTslqB
 WwypVoUN8yMxUByRRfRrrS/kC/Xy41O60LZvQeVjWagJq/99evMKpizp+eMT6WutVEaDQPsc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 suspectscore=0 mlxscore=0 clxscore=1015 spamscore=0 mlxlogscore=999
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230086

On 4/19/25 4:51 PM, Akhil P Oommen wrote:
> Add a module param to disable ACD which will help to quickly rule it
> out for any GPU issues.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> Tested-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Tested-by: Anthony Ruhier <aruhier@mailbox.org>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c      | 7 +++++++
>  drivers/gpu/drm/msm/adreno/adreno_device.c | 4 ++++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> index 48b4ca8894ba38176481b62b7fd1406472369df1..38c0f8ef85c3d260864541d83abe43e49c772c52 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> @@ -1670,6 +1670,13 @@ static int a6xx_gmu_acd_probe(struct a6xx_gmu *gmu)
>  	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
>  	struct msm_gpu *gpu = &adreno_gpu->base;
>  	int ret, i, cmd_idx = 0;
> +	extern bool disable_acd;

'extern' in local scope is.. rare but sure, why not

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

