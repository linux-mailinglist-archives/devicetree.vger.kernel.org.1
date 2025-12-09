Return-Path: <devicetree+bounces-245445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5CFCB1029
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 21:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9391D301EE79
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 20:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68CEA305E33;
	Tue,  9 Dec 2025 20:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="goz/AY9W";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EiV7ALW7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCBC2E7653
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 20:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765310888; cv=none; b=bQ2FgQiZHLIVTJ0lF7MK/fZZzRR1nzahxl8hEec8pl4z7j84DlueER+LsZyIIYvfQWGkWdJulYm0PSWmSQOJzYiBtswvWBWf/RbtvDLj4uLJTScrLeoCRd8YU/SGILoyENYkDpsaeGvCkijejj3GJBRGG4JRVnj/zIZWNTFkwvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765310888; c=relaxed/simple;
	bh=wd1/D09aFtkoubefla+BuIbGHSDlGcOOMs2R3N5WJcE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lUAMP+ttW9lidKTJvn7Pv3JqwVxEgyvM261zJxGG+4OiB0C1nQUhbziWvFhkBqqF7ecigXHWHX8bCNIHapdSYjDxh3v+U0LnSPeQ8g7yvhpO8YDzXu2yjNERaqMHt0iXh+iOwI5HbCowcPuW7Hyd3GRKFK2WCi8DLWDeWsRX7L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=goz/AY9W; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EiV7ALW7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9H3K8M801879
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 20:08:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rhsdXjDD2SzcoxNnGzHkJYEV
	oJZYmwyrxp5W0gC1w+o=; b=goz/AY9W/srUmNkmLkRkNh78IL2FIwGuZmFuxbUf
	AbvDiKCYpygbm9CQ5aQHxFYcHers64Xtw+WDOTK+XVlzP8GRQ6ySC2ovrrZkkERy
	CPHYB4E9qYBr2x1TRoiT3DvX7gK6R+gWmyOAAIzGNkF9PMEmOTfNDg3lMk7u0ky4
	79ENYlSk4t4bV0hbn/U4DT9IpTrel4x/3JYIjR3unnCHZrRCfffBpdlMy3z/C/G0
	/DUsirf+EklCbdInz5fLG4/iE4L/QIxhxj9Hgoy5g3pDlTjX7G/OcH21wWo/FGPP
	6vVrBZ3qBVNtm8HEUOTqegmUgBLkJBoJoWJIyvM+82Dq9w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axqu58hbk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 20:08:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee3dfe072dso136766921cf.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 12:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765310885; x=1765915685; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rhsdXjDD2SzcoxNnGzHkJYEVoJZYmwyrxp5W0gC1w+o=;
        b=EiV7ALW7eFlz+5NvTAoTOdH1VH/SYVertMR9yeW58BNF1nNTHTCCRz3dNM+lViY4X0
         GMTkczkf8BlPKypQJXykm8GmSM+L2aguqnzZ2qGu2wMcTXUU1eazS7EdAVFRrB8SABdy
         nySbgh0IPfj0kGZW+dr2NMQhoo2UE5+4PNOSSB+CjNosD0XcXJRZi4uCuk4QRMhvBHA2
         vGJczUuGfn0qrX8jscGvkwF5MrWHZSOJeM/ZdarBk2FINhm4r80xwe1t5FnvMzMPgFsA
         QNDnIJmTmv15VFDDpibvlRhWxyl8+dhUksPWZhg7CT18H/PATf8TzLwPS220moKUvpMH
         LMcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765310885; x=1765915685;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rhsdXjDD2SzcoxNnGzHkJYEVoJZYmwyrxp5W0gC1w+o=;
        b=wmMzegxt5S5DPNep5EaRJRFDsdeOtZI+wC+S4zR1YcjcJzcAmmU6DqAENGoAh0nl2p
         dC9mKrSmtPMmv21+/wy9WPS0chT45hQlTaW3HwrPM5rjLBtdFCNuNzHyUrqric5rmyQ1
         LPyFe3OhcSoz73SB5uuYLxNzSjX77wFlCYQOE2ffKrgV0HZCMy+xLTXUEVyCTjyFUWD7
         TVm5YRK/rAYk1DwM/vQzCtKHbRIaIXMjw8lvs144Z+PLsLvm6AAv4kxnpRVntJYuPFaz
         ofQOfZ8wJKoK/F642AMr/iKQuSD3rd8ZDciBhOE9i6p50HJ90/N4zSOGULP16PrnhVTj
         z7lg==
X-Forwarded-Encrypted: i=1; AJvYcCVBVhTg9YjyBk7j+2jS4d/WsRflPFQh6jdR5Ym3cZrCQ6r8lGBA4fOVo0Br/vZiKFu13OqOgYnEcMAE@vger.kernel.org
X-Gm-Message-State: AOJu0YxXE45olFMqgDIhu+ta4nBythFjP1s39XoS44Olry4mrnZ+t4hs
	GDiM7YQFNWcxI8zwNuNVqhzvcD0DJc+0WrHDoFcLQW39D9ClMc+daa/AYEexrVFuiOPyp8amd0O
	qPiM0cxJU0jqvaPBnax/7AuV1XIoq7psptbl7fP7y6i9q1bwdKrkPFaBua4pPSs6gXhJcYdXF
X-Gm-Gg: ASbGncsc672eUEb/+pwN3HYvn0CS+40wuTCAxM3q5A2hssRWzKgVc27RooH0zLm9405
	M2pp2hqQsrWPZc7zp21v5+or3dEpI4ceBJI9s8b2vlNc1oTPlOFIuiSFAyOEV6RncEGWeA9cSw8
	XPZIMM3BuT3SM4i1N8RtKdXde5j2abFFVJd/9jOUPUJsFdytmC191Dhrk1kpMI+NGoE3R8Uvz40
	bwSeGZvfmkIgD/V9YiA9VccnNHjp/UOfy7Ma2tT9nyBMHgRdv7bXkqq5JkcEwjab1mWkPvcfFp4
	K/pW9SvIZj5ViUgkzqX7OzRVIXVZ7/b6APdaYNBAkMX7MAuGtNHUaWJCDSt8N+B+7vmvvw0RY38
	YEkF5eiUfUSmdgFvlPdmN6JYyRsRcJ+RRpFViJxHGH3nrEGk3S97scfv6wMG30e65dkCZ15OsfP
	F3OyBB/SOpFoVsLMcUSL4wjcI=
X-Received: by 2002:ac8:6903:0:b0:4ed:6782:12c4 with SMTP id d75a77b69052e-4f03fe31fecmr177539271cf.33.1765310884895;
        Tue, 09 Dec 2025 12:08:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGWX4SoovkEdzKr8A8RkAVsUv0ot7k6WtZTT0c1rlSD6/0b1tucveK93Jyw/VcNUy01sU6lWw==
X-Received: by 2002:ac8:6903:0:b0:4ed:6782:12c4 with SMTP id d75a77b69052e-4f03fe31fecmr177538661cf.33.1765310884371;
        Tue, 09 Dec 2025 12:08:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c2e2c9sm5388761e87.89.2025.12.09.12.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 12:08:03 -0800 (PST)
Date: Tue, 9 Dec 2025 22:08:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: monaco: Enable cpufreq cooling devices
Message-ID: <a3mzhjs3kl7yfrar3gh6p3benvfa5bx22xwuznaqlhyytlyxkj@r5p3vfd3ykde>
References: <20251208114558.2343462-1-gaurav.kohli@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251208114558.2343462-1-gaurav.kohli@oss.qualcomm.com>
X-Proofpoint-GUID: Sm9jhYZBmeLqRHqPQLNt-O8BC79oUw0G
X-Authority-Analysis: v=2.4 cv=Y7/1cxeN c=1 sm=1 tr=0 ts=693881a5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=sdudbG9VLmQq8Pjc1rUA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: Sm9jhYZBmeLqRHqPQLNt-O8BC79oUw0G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE1NCBTYWx0ZWRfX4r/RrLjsx+ZE
 vFy/C31gqBVBJYBjLFr6V+XeXjM8vWS9D2uEs1HJdMcc1xMtLef3TjDYOu//wSJTT2g8qGGNhNG
 WDiaeB0Jkjga2Dp98AFkJmXOglxz5+34Jeoi/GREDaU3n/zT4Ub4383jJiEJo9hFBHNrg6dEG7j
 la7yCzWhS5lUykOcd2EckbJl6kvIEffw5T8TL/kfPkkCGOoWeeL7msNUTrKoBYnCIuDCuRxPUve
 BM9pxFwCOv6WGAaEYEfQscmVgDVmbqJ6QydVk3Bc28BLc0t9c4hKIJP/x52CFO3LJoWMCCDxW4r
 5vDLnxZMMBtnLmtTS9yw1/2gb0Y7jypT0hXP7d4rXdlfAdglA9j5fxkEa5OPV1QNV/8b7UVLHAO
 LZ7+sDm7mTAN4a3KWZtL34j2Rq5p6g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_04,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090154

On Mon, Dec 08, 2025 at 05:15:58PM +0530, Gaurav Kohli wrote:
> Add cooling-cells property to the CPU nodes to support cpufreq
> cooling devices.
> 
> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Are there any cooling maps to be defined?

-- 
With best wishes
Dmitry

