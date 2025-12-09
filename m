Return-Path: <devicetree+bounces-245478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB02DCB161E
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2230D301D1A1
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 23:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89E1F2FB962;
	Tue,  9 Dec 2025 23:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ezP18clr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XAKdgJRN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4382749D5
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 23:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765321549; cv=none; b=mTsyJu/WqTDRBn9LfJ7lR3AjQlY0utTYdUsoaCp7Nlk8f8vwy6gIV8ri0+Ny4oK5HS47Ugy2Og6aYyYJYNRfncZXqyzjZUKkkWlVkpkz9lqaaWPtRNEQRwxxkvWw4mBAg+OZReGV7EMvEFe3zLm5vl5w/zO4uzSNafdtXqkqBCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765321549; c=relaxed/simple;
	bh=q0h1d2KI1fm0NF8femw8QdAMFDQvEM3gheRjiZ0ULDY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C33jXhNJQ/73vcdvjyZlOHqQ0QzE7NoW9HIfCUNmnJjdbMRnf6odrKGgsa2GqVv33FfWtbw3OR8bfpGdmBWsxoe91k3plaJkJg3zo//SvJZhy6QNpxKfWcQEBt5F+iGVSRBDtu8888WgwIhi1mlSrbDMzupLXFhBOwSuKO6aZyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ezP18clr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XAKdgJRN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9MlvPN1228770
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 23:05:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AVI9wF93n1X8Uqw9LmWETu6o
	asd45DGG3c/yuwCb5ns=; b=ezP18clrupm4bROrTLc/dm+30H0RS04ueFHB/O5M
	veEp2Y8aw/mGmDGr+i7S0DCAR15JxOUGXrSEQ2+I3zaBRQ4lSzW2lSUlnBAftFgj
	jjLX2oKDEqUt/so3crvlcC3ph7VCPCNGjgKT7yrcxKX+nPo8hU3Ng7lCaLheoeCN
	0JEXuc+um2VwoRbBdhhi+xZJCth55EDrMw5AvQ81qm6bel8q+qyGy8QUH1kqEF0d
	pvldVt6X8EklEqnRygtx6KS+8l0w8StPm9Qupx7eAsADa7T8RPOrqgrcMGN4vaV9
	SABkxnhl4sM78128Y+SeVGYJXDgZpRiNUt9XJ5QbLjHQBQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axm9c9vrn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 23:05:46 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee41b07099so75954411cf.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 15:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321546; x=1765926346; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AVI9wF93n1X8Uqw9LmWETu6oasd45DGG3c/yuwCb5ns=;
        b=XAKdgJRN/OOMzewQngUCH3T4JeEPk82vgveNqeqGgMJ1Ye5PtwOjcDMcACtJDJLchz
         lx2ULbue/NyGfGuNU4U+a0I30Vx+KrNXWcPU2pa7ADqKQUP3/xfIYgV2Z59xsnOyAam/
         uw2eR/5fkHxoKfaDCkEhE86m9z558TOwXUtH6yfBBepZo7tpPmZlLINjx1pP9LDgRcTS
         L9q31FCD81MwnErJjziwffIaQfUEhNCcH1mQsWh4FC4uhpERXTQmF82n9F2QxWNU/UV0
         xm7cuknZD2HmNvvs2ih4oqRE4Zg5P+HL5Vh83IYYd8aMDcXhaw5slW1CR9AZCMZwdh+C
         qXuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321546; x=1765926346;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AVI9wF93n1X8Uqw9LmWETu6oasd45DGG3c/yuwCb5ns=;
        b=X0CIoLflCowJWd3sbNYha21Iv4AY3IWWE3dnWkd66lCeSscKdb+pcEQtxECLvn14QT
         Meq/K/qLY848SeRF/GDLWnaE70pmolSXNXGm2Gf+CtYq2zOwOu3xIdHZ6RqaoRuR3czr
         bG93YIrZT1fbc9EnJeWvd7jhtz56h+NfWASdMy61RV57hGwo0bqtvUArQClpQMkFa3Ql
         Y2jgD/5fkony9YqcPJPtvb2V4esOIO3gky7oTfBQZl8EkizK29J6wTHSDLrbSrqDmnGQ
         E0PfBz/0vQR4YS9eYHqP5IzFoaLc0G6BWBAA6jaJSJ4FveWZgM8fppZMq/x9/+FfAy8Y
         DovA==
X-Forwarded-Encrypted: i=1; AJvYcCXgChnTlCy9b4hk0w1deRfnobNjJlgtGzfsNCnHPS5cFCdao/35e6EGresHwK+EeWbwOggg78GjgqxC@vger.kernel.org
X-Gm-Message-State: AOJu0YwvA0xuE06DnlhKdmFDonpr9Oy+KQFFOzFOTCZDp8LLTXIzGfsk
	ie7+2aQVNL5iEpGgDNv2lOD/IuXHzhQ3ksCVAGftlU2gw/P/acOizaHCGujVmmwJUGV+6no6TrA
	OiI1foa3lET32WRMfyR+ZX497Tc7vX+dvaUjVBWvCdkYWLCMD8KcnMQTVJ00z+Bj8
X-Gm-Gg: ASbGncsd6RyZH1A8XXTpdiXSKxmXGsEqynncOwtZTwrO268y0fbn5bae8n05LA+QVGk
	jZc7cqz3lkslbiHcgLEWMFCxHD4uHOzSqLQzSlo9R8PSrU2y6t2kOMwBXIVn35T9MGCmsCtcNZl
	nXVx46m9qawa3+iHIT61D9ldKaBQv7AqqyP8wlO6S6rNAzf/tdGabMAWUCWDYtvMDOA++lYeEYC
	imRyWKpGRJEJjGuRW2j14s+D2tOrCQzQsuZokRjuYsKr3eEFAY6pd5Jq5eKBER0ALfN2J2hwcMV
	e8jIJzmbgODueK0wU43a7kdaoTCAtwANJPt8bw2ZP5mO9LG7A79yiecjtDApo2kncZsGDY8swfy
	qM65xzGBJgMl5FtXGsd27unQjzHz4BvUJUXHZR+53QN/6k7woMb8sREXdx046uq9ngkWDKP0l97
	R00es8q09QX/pZy/nJQ4rC3I0=
X-Received: by 2002:a05:622a:244f:b0:4ec:f403:3019 with SMTP id d75a77b69052e-4f1b19f344dmr6486331cf.21.1765321546344;
        Tue, 09 Dec 2025 15:05:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGCL9rywt2jTFep+9yRXX+5D6xzoHT4jdpcI0yH12tN3os5QNF5ys3Ky14TwvBSy5Kwds876g==
X-Received: by 2002:a05:622a:244f:b0:4ec:f403:3019 with SMTP id d75a77b69052e-4f1b19f344dmr6485821cf.21.1765321545870;
        Tue, 09 Dec 2025 15:05:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598dedf4912sm3415347e87.76.2025.12.09.15.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:05:45 -0800 (PST)
Date: Wed, 10 Dec 2025 01:05:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingzhou Zhu <newwheatzjz@zohomail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm850-huawei-matebook-e-2019:
 Remove duplicate reserved-memroy nodes
Message-ID: <zi5o53c34hvttkimw6covy5xonw43g336jpwecmnibqihsjoyx@lcgyw6ia7xez>
References: <20251208031511.3284-1-newwheatzjz@zohomail.com>
 <20251208031511.3284-2-newwheatzjz@zohomail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251208031511.3284-2-newwheatzjz@zohomail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MSBTYWx0ZWRfX6IePb++nDM1C
 x4brsRHflenRtzSq/gHNetHtxRBQRse0138rLP7+bDbJKgvlYuW8tsjIN0EpRpF8hmk17XnZYiv
 LRcMrC08crE4OyXRh5PjL6eqBf2o3Sgd/gxeKXvMfVW25yF7f6pN0kaK+c7eXdLnk+3mQJbKzpf
 FrniB0EroAIdUsdKP05zrcRyEOK1po+1E2NBfE5aK1qiwCnvO4O8PLG7Vk09UioMhasg8T+lccF
 nadJMY3nnfuFdVy9CaznasaqHb8UjFKI9UUi7wZdOU5JhgLvU0s8UfoDzQ+b0qpudicudkNdhTV
 RFOm6qCCXyxC7h0nFsAiGXdSma5GT22BIhgZoQ2H+lCoeBXP0waCM65jOWV/e50caJQZZZ3zjcq
 iU/KZ2yw4XYnygA0uCEw3lI460Bn/A==
X-Proofpoint-ORIG-GUID: i6NClHlV2lqr6te-WMYloJkjUN4076wo
X-Authority-Analysis: v=2.4 cv=Vcj6/Vp9 c=1 sm=1 tr=0 ts=6938ab4a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=WV1l7McVAAAA:8 a=EUspDBNiAAAA:8 a=lsgNkOsxYjTd2OvFC_gA:9 a=CjuIK1q_8ugA:10
 a=zZCYzV9kfG8A:10 a=dawVfQjAaf238kedN5IG:22 a=ly-PvpxawfTmY1UqWLBn:22
X-Proofpoint-GUID: i6NClHlV2lqr6te-WMYloJkjUN4076wo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 malwarescore=0 impostorscore=0 suspectscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090181

On Mon, Dec 08, 2025 at 11:15:10AM +0800, Jingzhou Zhu wrote:
> The adsp_mem and slpi_mem defined in sdm845.dtsi work well. Remove these
> nodes here to avoid redefinition.
> 
> Signed-off-by: Jingzhou Zhu <newwheatzjz@zohomail.com>
> ---
>  .../boot/dts/qcom/sdm850-huawei-matebook-e-2019.dts   | 11 -----------
>  1 file changed, 11 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

