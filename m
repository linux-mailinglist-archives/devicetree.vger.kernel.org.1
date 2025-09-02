Return-Path: <devicetree+bounces-211624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9C5B3FB9A
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:02:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DD9B1A81A75
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 10:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73DA72777EA;
	Tue,  2 Sep 2025 10:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hg6usMRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B653220F5E
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 10:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756807288; cv=none; b=TqVfWdRM81L03iG1eR+IfZYDPt1U0SVhdHXfO9V1P3DBWWC5xAbWfimdD8udSETqFWyq84XoEeECW51YYpm9PWdGII5YJBiLTGH0P2rKSWfV/MZAb63pe8p6pRC4mefhVH2j8F6xW7aMjMqSopBD9ETdY4EcGZxAS0AcXG/adOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756807288; c=relaxed/simple;
	bh=b6S9aXJNB9FiVBmBPI0rNYFgxKArdGV25PtMwNxpkC0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VQv7QhnJP5FMzM489Gv5ZmlFFru1dRK94IXrv1bSI+Ks8wMdS/hkoVqEcvtibIQ2sJxOvJWl+whcQbknj99rOYFdCOkZAhJMo0wPlTTpdTxsOe/QgFR+k78chDd8F/kJOPcttEywoyn5vXxe4frI7SM14KkXn0shpGY6UNAuK6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hg6usMRP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822RvCl017489
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 10:01:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mnQNdYjKaImdUhh2EuI5V2L3ZbgZUQIXMGDK998UTcI=; b=hg6usMRPaHWKB0j2
	HP6v8tvSgV/t3chlAA9i/5ahJV4ZWkb3gpjRJ8PizQOE7mzt/l8AvFZHdYYzKVHs
	+JQ1GxBaFb9wB9+koCx+8rFUzObZq8WgdmMLzEV2+/IG1wbuCuwNm35AU3YAHgpA
	HTq/i+W9lwkPtNOLXFWfvwV/5YGPnTab2YtDy8kip+ZyoiUP3edCtUf8OdEYxfwP
	RwfT/nFZaoaROr0hdz4R1sxSZ/07I9QLPahXlfdhxhoJDvN+XBQzrxL4xvi80mk0
	7AOT8DHsEKq7QOPJKsF183WDH7fM3NqSmSzjsofX0AiDrGdec4eDzbXr98CafUhy
	cOBkBg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk8y6qd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 10:01:25 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b109af71a5so20144051cf.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 03:01:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756807284; x=1757412084;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mnQNdYjKaImdUhh2EuI5V2L3ZbgZUQIXMGDK998UTcI=;
        b=eWgq8jMvfXYOwRbaxdTcrZoGRPMx/gfuXuiPb+nMg3oZVs24R1JKRqtZ59yUbA1C9S
         3XK4JSS3dVIJCkqZbaLgLBzNsappVBRz89wHyHwejovGkMQ8TQt++ouRuwDRkI4erkDB
         CbZL4wQnvvNd8P4od0mTYp2xfhVwIKphYJ+xDIn0tYdg0VsZALUkIu2ukjTTkGx2Bj9g
         xs0T2cbhPyp+zVmmAiCys3VZ6Kr1o/sq+hDwAnv4idtfPlGJtXC0E453enpned7jhikb
         O0gfhSNnXrdye8OnosGQtPBRRLgNRgX2rL/XMo3Pwcarsd/9si3Q+9GrIPw3WyKR8xoi
         kOVg==
X-Forwarded-Encrypted: i=1; AJvYcCVYmkXla1GqhO0xNncn+K+b0xWeNvjqsRZrqdT2JczzEcJTBhukHSYZ6pbqSOnolM7HXnYn9ab3o6XO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9Muylq1p3uY5LrpEIN/KwfZ6DXluUeubiciiKGeHdg0/wj/8K
	3f/8pUsws/0jyWGQet1C2uLuL+Nhgsh5a3ddvQpAEtPvMfqMaA2bZ7ls481LCmZ2yYZAxJIQsEO
	WVw0NYWz7gPH0UYWrqm6ty/Ed+JFZ4tvoqX5sg99tgQCoAFg/G2OZG0uxUZUanVkl
X-Gm-Gg: ASbGncuPuLjRVGB523Dxn77icLSBZ7gWn+33uTBAiywcMDVbEocFtJLZFLVq3NRW64P
	HmgoIQwBmAKg2EQoWY0xo+Mg0MiaK3cvxduLB149xri04CR2Yv/w+EK8GGBC9JlohbTmeW2xuNE
	aZZNWQTGOZ8WDkVSwCnYiZVumghodyrp8q7RPz/mhHWRVj8+S++7YVysLj5RZhfNxFzPlID0hCC
	zzhZbuB5OYha1nNoegFGCl3w9pCuvG/7yetKNLyvhqjoQpu/vq6bXpJahi0brTWukZAW9D3ODK/
	TpN68DjRyYY72sUEUa1jqJNjVfergVVX6wSTxJS2U812Qp0X2iEe7uz/O5JzRfhGKk7q67m2kjh
	WcfPx9yv9kzUBmOnDiftAOw==
X-Received: by 2002:a05:622a:3c8:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4b30e906341mr107308891cf.2.1756807284289;
        Tue, 02 Sep 2025 03:01:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqXLx8JVOaMKleJHkt/Tpo2I5yJcV/rljW8zQPxddy/yHMAylistjFE8GUMWq+nIvbZOF7NQ==
X-Received: by 2002:a05:622a:3c8:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4b30e906341mr107308451cf.2.1756807283676;
        Tue, 02 Sep 2025 03:01:23 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0432937d7esm398015266b.17.2025.09.02.03.01.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 03:01:23 -0700 (PDT)
Message-ID: <bd11cb82-d8ad-40bf-8bed-82f9e8710117@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 12:01:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] soundwire: qcom: remove unused rd_fifo_depth
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org
References: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
 <20250901195037.47156-3-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250901195037.47156-3-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: KXviWxwjhTXBByMRo8-M6D8ZMAD27gqY
X-Proofpoint-ORIG-GUID: KXviWxwjhTXBByMRo8-M6D8ZMAD27gqY
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b6c075 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=EBKaaXEv9MviPiDEuogA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfXyX41/jVMvoZI
 k5ODlqeCQoztqNIV9V/0j1E4J51WfdjgFcZO1jIH55CFwzS4Fw0BXPwk9rSpsgH3XuMkuIW1qLU
 jo8EBrZbQTfr5Rs3rwIdbgl+XKAHcwXWdcGtLFKwfchSzem2aSjafCcv/CeYsvcnhISzbfv8TKL
 /GJs0TQAyRRwDsjTRGDYk8GyHwJRA5dwYQKYbtrbr90AmfhpPaZpOBNTBOIg3PzTUkvRgV+Oqpx
 IRCK5+50rIZIj/siRZ9EADDeOtDhFvWkraCPq8oVsIycXtkNwckYc6LsqiPIMgZM1SQwQTQ+1ny
 MEQA5kMH4MvknfHsKn7k9oQ1DjkeUZSEa8PzeIKlvuvpfpM8MlP4wMsJjLzvVHhDoPYL0mJzk6O
 cE5AgHVh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

On 9/1/25 9:50 PM, Srinivas Kandagatla wrote:
> remove read fifo depth field parsing logic, as rd_fifo_depth is never
> used in the driver, cleaning this up would benefit when adding new
> version support.

The last sentence is mildly confusing> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  drivers/soundwire/qcom.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
> index bd2b293b44f2..7f19ebba6137 100644
> --- a/drivers/soundwire/qcom.c
> +++ b/drivers/soundwire/qcom.c
> @@ -209,7 +209,6 @@ struct qcom_swrm_ctrl {
>  	int (*reg_write)(struct qcom_swrm_ctrl *ctrl, int reg, int val);
>  	u32 slave_status;
>  	u32 wr_fifo_depth;
> -	u32 rd_fifo_depth;
>  	bool clock_stop_not_supported;
>  };
>  
> @@ -898,7 +897,7 @@ static int qcom_swrm_init(struct qcom_swrm_ctrl *ctrl)
>  	swrm_wait_for_frame_gen_enabled(ctrl);
>  	ctrl->slave_status = 0;
>  	ctrl->reg_read(ctrl, SWRM_COMP_PARAMS, &val);
> -	ctrl->rd_fifo_depth = FIELD_GET(SWRM_COMP_PARAMS_RD_FIFO_DEPTH, val);
> +

But my grep confirms this remains unused

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

