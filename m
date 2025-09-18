Return-Path: <devicetree+bounces-218850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6753AB84A66
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 14:47:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C549A1C21D08
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 12:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EBC1304994;
	Thu, 18 Sep 2025 12:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rtn7nfEp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7738F30217E
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758199619; cv=none; b=VdtcYPTM6wj1IoNPgoAxDOLEBcBjrlkHzYzF2e+W9O/quSPmv781Q+bVKh1qQPfFXsH/nanbfRxBvZlj3B9TzYBEiK2I09W6vlK1RNcIyysyjiydN9P2puKboAOkVEhDT4V7v9N+RHwzrlnwWgh0H3PU87ykdGoSgsivQi1yMCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758199619; c=relaxed/simple;
	bh=QcDU0S/gGtyrDJoonhlOJQKmYDHiNPBGxqw1d4DtiHI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LNgENB1xSmrUsHXSgA+uNdcyHFqaaOQc6072cyaDKkfo5tNcDAZVDJRZGzTMfhChozu6xvn+EDUBT8zNtq40sP8q1poYY8b1fldRRsGlj94NV5g8VNFv97mvsELg2XrLRoc6UL4E6+6R7Swn1nh5pbFy+Y1nNzZ5xkm5Ib9QSVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rtn7nfEp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I76oZX009469
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:46:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FQi6E6p9KLnZzlas4XjllmXc+yprtBYyqANSQeumeng=; b=Rtn7nfEpcgK1qY2v
	cgDmu2IVJTGkcyD6haMQgdNdKYiZ4OiXURc2a5BOfNAm67kRCYHsUgZ67lRIDFUP
	YvWmDhfFE5yBPLWzh3FtHByfwVKGHkP63RVaCOv0K7qwsj1l+6SibBWe5o1aw54f
	fqyOzLeuF5BtTopwtXMJRNlTsCSLtVKxFVx1IfOAF7NQn9Mz3V8safHrvI/LbQwb
	0+DsfzBRFP2/MUVapsfLzn51C/K0dl1E/g/0dEbDJVgMxHTkwiGwIT0+75TOwSDD
	rrFRDkwTQIcYIA5NUelBVuFBvG/vIZxuBCl0b+Togc/NJ91K/YNWD1DGJ1iB9oZo
	CSgCHA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4985wx29vd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:46:56 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b600d0a59bso4531741cf.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:46:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758199615; x=1758804415;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FQi6E6p9KLnZzlas4XjllmXc+yprtBYyqANSQeumeng=;
        b=rCgb6Ow1EQ3w8PEwMEop1uyyCq98iTDC6MXuFGzdN868inR2Sh4133rxc8jn6GTMLd
         +Ce/C/TVMZk+QxMZnHw3zRd640trWxKdkqpKf51mqLVeloBI2twdmhTgtLzRYm+fqa+u
         GTbTrcK/IRNjwefofKoSOOXQ7OUcJHIkFmw9cWpzI0wymkszFZaAT2zlM+iaE/9w/6a0
         YpY1JVIrXhLsxLjnE6QPmxU6McnjQ5xS8wljehQh0KyDB2C9RPEBMs6H3gNiDKbnmG4a
         VD6If0jT/oom3g+PEY11i9A1k8pTKgnQCPoDXd8HrWhqSnlFnEsWmwR/q8erQhyqkdid
         DPgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVf55Feg7YLk/X78B1jKXRRGn85dFIMp55HerqcTVkj1iSZfbX+oQIimDcfKVkQXNpVyqkT11FgdrGG@vger.kernel.org
X-Gm-Message-State: AOJu0YxlFgxbP2hXCyyv5WMInMqGb2uL3qW1CMxMfiq/NmZbAEJobWed
	9DKiyx+t512c2+R9kC8AJ1m8dgKcOxLwmUzRR8rfLtbmDHSwoDOFm3Fl/x4VJE6ZHEqdLeb0zax
	hoTp92gkW5VB/RgNhLA92w2xIgPbArf4ceCe71YtySf9fM4v3YT7oNwF/51P2vsVa
X-Gm-Gg: ASbGncsuglWNMVfNicdR0Sh8cC4HklkXibo24NW14nwtUj6uXNlV+qv2raVU++Z+Kq+
	oaIBP4CUso2OkynJcMHIpE4LBP5tka+RLXnk/6GFKBtt4LgQjeOlhiEAot4eT1g5ViG1JeuDDGb
	5cblNpXw9B2+c+mnqamy1sI9sQy2Jq2OaGHSzUaDIWk5c7uDsZb0ECx7mICXdX0d216Iozn/hTZ
	Igjf/ULknaMsIv6S3paBjBls0ue/pZEra9DytStTJrkaW9hnCvvHGWqSvIqddQpxXZkisilr2Tf
	mPdCX6+zdGRECL0uVUBFUtpcsmtRr/Xh42Flmhrhd6NDw/yrI7BW45NnPvq2Fg+cO+LitanKPSc
	bIi6HdfnG1OOlp+KY0+tWqQ==
X-Received: by 2002:a05:622a:1a22:b0:4b4:9655:9343 with SMTP id d75a77b69052e-4ba671e4f25mr47444051cf.3.1758199615441;
        Thu, 18 Sep 2025 05:46:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgBR0C+dAzCLmJ+hmxln+f5FlQgcycTu/DhEnyDBQ0nAkbRMwAhB+7lqoqPXh2Ubt8pkL/kQ==
X-Received: by 2002:a05:622a:1a22:b0:4b4:9655:9343 with SMTP id d75a77b69052e-4ba671e4f25mr47443731cf.3.1758199614793;
        Thu, 18 Sep 2025 05:46:54 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62fa981284fsm1033537a12.14.2025.09.18.05.46.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 05:46:54 -0700 (PDT)
Message-ID: <3c42a3b0-b8b3-4c37-963a-e9cec2d3d025@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 14:46:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] arm64: dts: qcom: ipq5424: Remove eMMC support
To: Md Sadre Alam <quic_mdalam@quicinc.com>, broonie@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20250918094017.3844338-1-quic_mdalam@quicinc.com>
 <20250918094017.3844338-9-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250918094017.3844338-9-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Ui-wAJaFOwD_h6LYl6FYSJswTzaihj3G
X-Proofpoint-GUID: Ui-wAJaFOwD_h6LYl6FYSJswTzaihj3G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDIxOSBTYWx0ZWRfX0TgYq3dbgkjM
 5io3WeIfkrJN/fLU0JCWjlNwUxBclpAkMZIuMSdCB09r6dJDMlhk0xaZUbb4HGjSo2ccvo+KomJ
 A/vDIH5m+YoLPgBVkGqB6JfLzloFmdmK70bb/ELvu2A8s4jjI+2pjwwreFcEU2qdla5krmh6eB+
 eeeAf7T5EqEA1gKr+ULd3XrGGyVBz4VGmx/xDYQzVdW54M3vFm2bw3C2B4jfjWvUyK7b+OBOvHT
 wCHUicFlMjWKD73+V9/xGk2wczuQIt5p+ijhEy309Rg7iXY4eU0nHKXK75pQlWPpsFVxBVmZBOQ
 /IW9uPoEz3J4tA5742T3Py+u8Ydn86EhBq56aGfJH13UfxG4xji4Jpj+JHeg4HXlBqEsAbnY+Wi
 sB4Ys25y
X-Authority-Analysis: v=2.4 cv=Fq8F/3rq c=1 sm=1 tr=0 ts=68cbff40 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=be57XhxKj-X5Z9eHZJAA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 impostorscore=0 phishscore=0 priorityscore=1501
 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509170219

On 9/18/25 11:40 AM, Md Sadre Alam wrote:
> Remove eMMC support from the IPQ5424 RDP466 board configuration to
> resolve GPIO pin conflicts with SPI NAND interface.
> 
> The IPQ5424 RDP466 board is designed with NOR + NAND as the default boot
> mode configuration. The eMMC controller and SPI NAND controller share
> the same GPIO pins, creating a hardware conflict:
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> ---

The subject should contain the board name, i.e.:

arm64: dts: qcom: ipq5424-rdp466: xxx

same for patch 9

Konrad

