Return-Path: <devicetree+bounces-223776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B8287BBD6F1
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 11:25:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A8ED34E7AA7
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 09:25:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB047266582;
	Mon,  6 Oct 2025 09:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OP8VYXp1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B0A265630
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 09:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759742728; cv=none; b=XeEIZLrI8aPliZ86rS5L7dML6TihrgYiZZa5ZvqqFLwCOVG2zqtUCmOwwFo9+it615lrjna1NoxFGyyL1xt66LxtQR6QdfVHQF0kK2SI5VfdWA60Oc6IJLvFJ248Xc/iXALnA1z8487q8D4scqPN+Xbj8KjvWoYDGf1H2Wq9fQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759742728; c=relaxed/simple;
	bh=Edw6e0og8KO+pLnhJlzP7tQrwfS/fTioEQtVFejS+5Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hm9ohqswEnFZDEtOfaJPMGri6/wGShUgQEU/tnyeVNKTP9j7HTigUzV6HpFjQSKb2ggPGihQ1gYG7EiUkbgZliV2FapRZUUYVJvQMN00Ik9WYlIBuXQ5NFHEg2g3Akj7bAeokUACanpb/kfxmx+RktJEp4/MhZmOmGyOlDQipL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OP8VYXp1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5961BbeF031103
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 09:25:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bPnKDCAknnlQ5K1Y7MBqxGeVWc0/KKrFnvmpGWEd/iE=; b=OP8VYXp1NPHQZ1DC
	PZwp1qm8s20FDro5w/TnwQ6vniSCPH1P1DeqqkSveXDbexOPAHUnEFxByrU1F+qL
	VFsInYZ4ZXn9ARWgs9bCB4/o9A78k9jNzDliUyoAhBl+4wVusNHD/R4bNjbqmp2O
	Z8jsHX/SvhbfBX3hZkJ+zndpwEfCFhrVi7ldLJz7RgQRqOYHtymYe8fja64allX2
	0WXsZO1S9HRy1RvJ0HTqfWLDdaOmK3IVchBYc75kSW0CS6SN3sVzauuNrilh1lC+
	C9w3hwv945uGMvLrJqPXXAIbUFHz1cZiFfG4kSzdkbeES1UNycF+aB6Z/slejDo3
	dAQNPg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgkh9r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 09:25:26 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e231785cc3so20403631cf.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 02:25:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759742725; x=1760347525;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bPnKDCAknnlQ5K1Y7MBqxGeVWc0/KKrFnvmpGWEd/iE=;
        b=U6aNMZ0VQfOhmrDVSz9ho+iOPyLg4bOFj0yQ6ABjk+XKBMb1VDH+22eSEbIf6jP7lF
         DpINGuFz7SWCiRuAhRdv1gfAqJAAIvsLfTsrjzGN+ovahCBQDLH2XyP0Fo6CZroCIyQx
         uoq1ckgDEGpcym/eUCCv12MFEp4vpyiaD0ASkfR4VrKoBkZeQRxkehWwQwkDfGmMu1ca
         csRRnUk2SFepbszCSL/IRCFNwONT8P0E5wb+CmZU5Kl01oM9ziyEVn54g/FTRXtxRtLb
         GcklhlFs8+PKC7YNuxlUAB9NKo/hZPIYLcxxYWk+osevAI0INLLgTy5zKOt/bonqxTP7
         rWOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNi5pQitaM22l1FOWbvyCG2S/bSFuYnLnnYfUz9gMNPJTPjq3Wd8BYuCiR9/tKtwa5IZU5Cx7T0ogv@vger.kernel.org
X-Gm-Message-State: AOJu0Yxrh8xlkUyDN5T+csXKezAmNY/BHY9uubkKSPYkObpBxOpvYgbX
	6d9OmIGNr/yihynxNgyF0niNZOypAbqysFKgM2vF9bSgMQWinUd3jJGLkghqcSo25q0XH8KE2AI
	k8j7Kj2TGHQ2jrY2VW55BVb2plRNxxGiBlXJcvIGK4lAhJmbn5PZJdR72TpLmt0Ej
X-Gm-Gg: ASbGnctiVaIocO/PlUhKkLelYU1jv4NZDbJRthUiyY0D1c8e2EFX0dkUI8MyIz91lVH
	/st4N6i3SdTQFekFary9vCTE3XQ3njA/apuE5lLVvrysBVPRkCNHna8pvQQhuabSj0u0SNZMrY8
	cjL9iNwYSHNCuUhagVGpIo+XcjA+9LIze88GCZcZOsNSSSno/t4jVH/325f5U7xCDBkO5A3Ri6B
	Mg5UfRYEBBA2mcRkVSnKBRvu4XN2bkgorN17MY7ee54/lMUb1n4XPXdRYj8IYyFqDGo3VUssTBs
	5LOBa8qa8nVh8nMCH2SUTSSRhzQLns/q2XyJrs5yEotBtlmU4gyZlnOV+M3Y4ZmcKC2RPivQ6ih
	nDK15R6Cwhy6IKT7OPUN+H9kIHLc=
X-Received: by 2002:a05:620a:2808:b0:878:7b3e:7bbf with SMTP id af79cd13be357-87a35ce66c1mr1023296085a.3.1759742725288;
        Mon, 06 Oct 2025 02:25:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvRfoZ03L6zTgPa9LKXYBO9blV6+FdfAe7dQyAmQoPVuIdAmyD2DdczNNxPH7bp8ruibwQLA==
X-Received: by 2002:a05:620a:2808:b0:878:7b3e:7bbf with SMTP id af79cd13be357-87a35ce66c1mr1023293885a.3.1759742724700;
        Mon, 06 Oct 2025 02:25:24 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970b422sm1113154466b.54.2025.10.06.02.25.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 02:25:24 -0700 (PDT)
Message-ID: <fde00935-6475-470d-bfde-4341d15c8441@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 11:25:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] interconnect: qcom: msm8996: add missing link to
 SLAVE_USB_HS
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>,
        Yassine Oudjana
 <y.oudjana@protonmail.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251002-fix-msm8996-icc-v1-0-a36a05d1f869@oss.qualcomm.com>
 <20251002-fix-msm8996-icc-v1-1-a36a05d1f869@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251002-fix-msm8996-icc-v1-1-a36a05d1f869@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfX3zLBIW6oLphh
 GEQaZeJDw20JeIqOM+RJyne+n0ylOIAJApW6kE9NICMItEVnI0d6mvy8gdgvyYzA4ZdMAwqMvAS
 dOQEhXFbdClEsL0HSHcY0pFXF1dTHRt9KqcgsGkrEMbReRZM1WD+Ik/6ilsOdcbwB1et3eGhccM
 HL4YKkY1tjo3TB55zZSDXvepQ/bIEtp5bIAfSglpvMD6pj79t9AcozYY1jfTDpxPRbggNe5BtG8
 bWM4Q2KDz0PY6ChdS2aBLwSBJ8Wd9pYE+m/6WMddj8Y/yayRIJ1nK8OTa3uVbg8G7GZfw5AvSJr
 1+r049Cs+LuLeWeTBUx8TTZ4uu7Wx7p8Z7Z3fC/jPbMXA7+3LVEBt9yTueG0m4y1JZO4DgA2Iin
 fep8eyAeR+Z1sDyOaZbQ4rA+yiFwJA==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e38b06 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=WPDsOxgxYxYm0iCLz50A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: UNlMnnSweerapyzEVzOGkAYunl7R_NSq
X-Proofpoint-ORIG-GUID: UNlMnnSweerapyzEVzOGkAYunl7R_NSq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 10/2/25 10:53 AM, Dmitry Baryshkov wrote:
> From the initial submission the interconnect driver missed the link from
> SNOC_PNOC to the USB 2 configuration space. Add missing link in order to
> let the platform configure and utilize this path.
> 
> Fixes: 7add937f5222 ("interconnect: qcom: Add MSM8996 interconnect provider driver")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


