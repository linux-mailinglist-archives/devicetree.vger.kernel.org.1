Return-Path: <devicetree+bounces-190042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FA6AEA64D
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 21:20:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AE351C27AA4
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 19:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9DBB2EF9D5;
	Thu, 26 Jun 2025 19:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WRwBVy/B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B27D2EF9B4
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750965635; cv=none; b=AV/mPqBVADgbxB8UeLH0PYyStqQGLuEZ7rpjWSu8INBeaf/Ddfc3LnnaUJRRwQJ3BMfeQwPfO2tI8Iha8Cv3W6Xyablk6e6zwOvrYivcM/tJu/WdM2TpJ2MHUI05yWX4Zkj4yvPCvX2oweyXYVKghtwpNC0KHQboesFp+04RFxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750965635; c=relaxed/simple;
	bh=5r6q7+0wAzu943Z2jyQlPtPeKr7oOGYM95kHKprWAYg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MsvrUTP6fL9bNsrSU5Gek2ApdzrItw5PjAV7fyPhFcqRjQJsKQkgfRYMrlbMlVI9J3D8ZTivquPuWUSyPk4/nZ0ZkgwYM1BBkth4dIz+PqYeWgxIkce4+dsxfN8reCC745h3BZbLjCnQ/Q0M8+HuYf2ZPfpCefteWrcGQLnR1oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WRwBVy/B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QIs3aR018890
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 19:20:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0zOww6azj3OZ8n4+GX4w7Xx36kLdO3U5ZZUI4FQRwdg=; b=WRwBVy/BtSis8QCO
	+/YTVUH4/AFeUJ6+bhVkZHelz1uZGyqE4xdOZPVNtH8jZmnVxa5jGJcxnCWamE+7
	HBd++lNOOkubJ+YLzLbZcMWIdzkPpq7QPqFRvvPJVwh6BYgZrNuM2xle0Z8tun1C
	yvsn+g5n3fjdpFdpQPTHsxFXBNTsVLhq08jQCrcsrpUjc8vFIWlDVP2arWcJZpBK
	pptfx20PTEbhP45gUMvi6QsCL+wT7YrhHLesFWt3+MJpaGZIb54m1Qe4WmD05oRS
	doqv2ikFoLKbJMvDoRnPaxogFK3s/yDNGGZPAZ3ZcdSOMdOtOv/mivXnwLy4Fb6v
	11zcVQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g7tdec81-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 19:20:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a7767c5df7so277321cf.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 12:20:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750965632; x=1751570432;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0zOww6azj3OZ8n4+GX4w7Xx36kLdO3U5ZZUI4FQRwdg=;
        b=QVuFPZmR4WX5KWhzj0dFc72q6/6Zh12ailyA03SMuAea0egbq5MIlYjIV2Q995ggxQ
         kpPREVgyoW7q3QbHMo+9TmoYw5t6m+oonuMtZ0DsNWp4Y1FeX2yshRHd9XwKd46EKVp2
         xIjWl546cKuCDpPpfVEW0VboweyydjkkySXLSSaOofAR+R7i/HmFkBk0xaReuJaqm5s0
         BHnLg2ikzwFCefA6cYJunY1gRPj1qx8i8ThCSz/wWi0sC7IDfFTMhhaBxcckqasEiYxH
         RSmr/tqdCEhP3+Az3pjHtO8PiHe02oewCucNEtbiGyVhuA8rIkM/oKvrTc4EwyocZcXx
         IJeA==
X-Forwarded-Encrypted: i=1; AJvYcCVh7BgKRuFtzfQ4cu8g5KTNDaWWtFvymg1qAYugDS9suCnl6quRJ1TT2EFNV5pC3xpdOrwim/Zgy7Qi@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8DZk4KoxkeBsju4xHPNl+i8Yff0rzrSK4MnOk8pxVxtSDdHno
	cIgeau/k/lblm2Un04kbtIZq2LHYw/I5EXPnrnYlnH35pMmiFVaPiCf1XfI8hm/QQkF242hYTom
	pGrSMsPun6Qq2DMpWWAFdR0qeJ9oLMpPg3aEjaKdsGiqZda91xnBAKiUWSTOdCB371gAQh8p9
X-Gm-Gg: ASbGncuH/dy4+I1miL/lCiihFfavk/VmmS1HVx2l2KXzTemgSQ+tyomhZJPxjuhoueM
	FuU+59N9bBy3sf77ERIphTS/JU6kYwd6L4BtZPzeFgxyRI4hoxIxPM4QYgN47xirw66SzxCJI7P
	CaUfHZieE18cs5WJAvfY7BOywicCJi+28lGnov/ueSGdol6q1reDufjX6GcDu45jSEtsWHzna/x
	XH9GwLZHTsSp+frQxwbjZHcaXcEbINeAishn2M/xMK2nYP+Jh56sLDU81c5VStIH/BJ/h54YLp2
	oxrH+iT9hhkdl8lSv8FESVZXbSMzgTx/AgDwaRVWdsY1LpL9pTtmaYWx04YKdsDW92n6MjFQ+eK
	Ks/4=
X-Received: by 2002:a05:622a:178d:b0:475:820:9f6f with SMTP id d75a77b69052e-4a7fcab375amr4100731cf.9.1750965631718;
        Thu, 26 Jun 2025 12:20:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpEZc+VDoThophGjf8eCV3b76cou4xRyhNwgBBJqRGzQLg/M6WUxJq4j+uB+jHeRoCTB1C6Q==
X-Received: by 2002:a05:622a:178d:b0:475:820:9f6f with SMTP id d75a77b69052e-4a7fcab375amr4100491cf.9.1750965631159;
        Thu, 26 Jun 2025 12:20:31 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae2140d91aasm44338966b.64.2025.06.26.12.20.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 12:20:30 -0700 (PDT)
Message-ID: <3dd39700-4fa7-44e6-8893-b46c601d772c@oss.qualcomm.com>
Date: Thu, 26 Jun 2025 21:20:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] remoteproc: qcom: pas: Add SM7635 remoteproc support
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250625-sm7635-remoteprocs-v1-0-730d6b5171ee@fairphone.com>
 <20250625-sm7635-remoteprocs-v1-3-730d6b5171ee@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-sm7635-remoteprocs-v1-3-730d6b5171ee@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CPYqXQrD c=1 sm=1 tr=0 ts=685d9d81 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=qm_u-Z9MdHEKZBNG23gA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDE2NSBTYWx0ZWRfXyMB31lIx/Dwv
 5amuc60WG5oriEytwrb7QTk2oBXMZw7aqxv2KT/5mbpNvToL7FLX6M2cd3v2dNVTSFtG4NR4R/F
 DhpKQ+vV6TcGchg0tpZGX5RKFEMGzJ3c5IfLrHMKAuWNVxT7mNQy6l5AKyclbrsl+vnb/kC5hS/
 VTjzDeySwfPXFi/29dHf/8LEhM60LsT3MsfXl8XhE5OLqPbxncXMRglmw/y0L5WykikzmTF3/ha
 bTIDRefcGUsCibX0SFVAmYFT/33RnovO8D5c9wHPxCpmJyqmwGjLjB3vaqcdFOVNb3yYOxyrs53
 BUzMf7Q26PnIKo4W23VnsnIJd96ts3USBzuhuUPnKMCI/SCMc1WGYF84IyLZMFUQtNxyjakW2Nk
 u3NiwxFar7ICjKLmYlWkiw8mNYaE0s7w7ch12vEO3G50nWRYI/qCtwp2nhXsqWQxpq5RWJw5
X-Proofpoint-GUID: _RhtRZzHHCwBYaSJG4rrApI5PVx4dKs1
X-Proofpoint-ORIG-GUID: _RhtRZzHHCwBYaSJG4rrApI5PVx4dKs1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_06,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506260165

On 6/25/25 11:15 AM, Luca Weiss wrote:
> Add the different remoteprocs found on SM7635: ADSP, CDSP, MPSS and
> WPSS.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/remoteproc/qcom_q6v5_pas.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index b306f223127c452f8f2d85aa0fc98db2d684feae..6aae61dea8d0dbb9cf3ce84b9dbebb77b5aa1d52 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -1261,6 +1261,26 @@ static const struct adsp_data sdx55_mpss_resource = {
>  	.ssctl_id = 0x22,
>  };
>  
> +static const struct adsp_data sm7635_cdsp_resource = {
> +	.crash_reason_smem = 601,
> +	.firmware_name = "cdsp.mdt",
> +	.dtb_firmware_name = "cdsp_dtb.mdt",

I wonder why we're not putting MBNs in here..

Konrad

