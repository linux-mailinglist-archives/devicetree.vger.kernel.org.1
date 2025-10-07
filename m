Return-Path: <devicetree+bounces-224182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA51BC177F
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 15:19:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25FD43B6292
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 13:19:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06D922D97B8;
	Tue,  7 Oct 2025 13:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QbpAp+MI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522082DF6FF
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 13:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759843161; cv=none; b=fAxgcGgpy3jsixblaVKw7eZIjSSNatM5PoMIVdXr+VuUqKjNSh46BJjtrRUeDEkMBylcy24Nn54KHbD7HFSIl9lejbj++HGcqw/iakZjBhjB4ryGwWiJvyA9jzhOaU9R1zGGk8iQjWU45O+09uRB7PMeH/vx1TIqUrZngE9Ioo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759843161; c=relaxed/simple;
	bh=LnAHJdfLE8ObSWvVmW7FhZfRtelieJ3PBtAew1HGBgU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RzS/65kzukSfGNscBeola15Q1rDwmGZLPLeR5uCCx3eIe0JqadJZdGt9YomQlRKam+3BiZ/aHru1+/ycsqAC93N3MJbX9uSSNzMMg1Wgemqq/bIgHMK/DyiTgL72xBmDSqqDQ+QDkUZTXC5wLr9x9e9cEfgZKQYrt8K6ev10+JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QbpAp+MI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597CrYtv001489
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 13:19:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zDMLEOsZqI7VKYWstweTCTb87X62RrcGaFnWA3/+hWk=; b=QbpAp+MI7xUz/fOg
	3iiwHwfmofszZ6uUvzFeWdiG2oZVlhmgKaiIxep0GNjFDq/qdOroV7IqbQwL4SNB
	JJdLhSBFZIf14r1wuL8CtT0fdWdWsqjRzFY+Cya832F1iFBvSLUrUGXes/JJFHcU
	futz7zi6UaMygj9EDJY2oqO45tdLXThKm5JXpXMlg/CdkvAJ1naAuTas/1QyU5ow
	r7w3a9ZIBcpIUQlwvngr/C6mkofSiuZI7EAGlNWva7aLScmtaI3+yGpRbLHFBo+3
	1gwV6cs9G6jjrUBBaoe0JxvTvCR58Lmpw0kfgJLeUmhvPwa6heJfS27Sl4wbeCmH
	n2oiqw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk6ybqs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:19:19 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4dd3c89ad67so4894921cf.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 06:19:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759843158; x=1760447958;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zDMLEOsZqI7VKYWstweTCTb87X62RrcGaFnWA3/+hWk=;
        b=w5oirS2mG6Om5ERiZOdY9vCr9+dX7ogrAiBjLJb0JLvqYoPA4lalkeBaR3xLbvQOad
         rloIcbhvWV9aHw53HUCp4d2Fy+JCccHSGqvIyRZg0bKFg24+FDxDSoBCmFDIgfTlRCBm
         AGDscGZ3X2kKkypy+75j8Pe6BxPOPDiUv1GsKc8QTS4MUrXL51BKbBbNrJwmvKrFPLlx
         /2lf1WLv7NnwQ9YHHSL3KWMFkfDv3pdnduYf5CdKRF2tv5FXYeelsqStow5WOI7PJvKm
         vmUDkJQgXlyGiuN8ore1ScQ8z3tBI0XHCpnIG8esHIXvYEo3nKi6wkYDqkt7Y2TpR2uf
         B0nA==
X-Forwarded-Encrypted: i=1; AJvYcCXqhCfIhSwMlvZrA8aR3GFQqwCTDgnqIMgBNYdeAc1xBOFO0RBGgUs6B5DTcfczgG5+lvOQRMoD4xfp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1U4dntqGpXUZr0NSX2SgVu/Yzj6oT23gOEBiOCQa89Dl2dY3N
	OdRSFXIHH7RM4uuGGvMPsPwmH8mWC05qBtNX5FTMLN2FU6M4c2WbvFdsQDm1VvzSAV+M6NL784E
	Y9dD8+VooI4wQaCdRuCaR+KUbiRdFWfvtpI3qFpOg6QXl4zScq0kFTRs9FaT/HOGD
X-Gm-Gg: ASbGncuPWJ83MRqx35IJMKG0Q0OoNFS3wkBmdw/xeROTdrN/0IVlVrOV1v8UOGHzin4
	hr5EAtKunm8QPAosZxZEHdemsBoqkqrs17okkQI+48xSNExz5AYPLrqXBNMaTkLh8hRbvVGA15z
	tirQ4MGfXiVwCeBseshu+ys4gHV+9eIx57ta3ixZGzBGxER2e0HHSwNY26yvhJ8SS73zUvEMroi
	ZBLp2lKSCSzfKe8HiqfAkw9USqU+Mwlj7cpDtfqLmudnEx6IcFaV9tmSCWCpZof7+Y696tA9b4R
	xe44u8b+9I8hucmmG/dw3jDqBVH90EJqN6ExgPsWls8LvnBxDlqtE5S/mja8IkGLayrVWh6EApb
	N3U5HHEufKGnvO57e/okuL8ntnGs=
X-Received: by 2002:ac8:5f91:0:b0:4b7:aa56:c0f8 with SMTP id d75a77b69052e-4e576a4b14emr132692881cf.4.1759843158087;
        Tue, 07 Oct 2025 06:19:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/NXeouDxTbHwgWa2d0D7fBgPvLyWgqaq7L3tSbrQ2CaTdY9AOHfPVIWwQCrEHUSq2nA0hqg==
X-Received: by 2002:ac8:5f91:0:b0:4b7:aa56:c0f8 with SMTP id d75a77b69052e-4e576a4b14emr132692161cf.4.1759843157313;
        Tue, 07 Oct 2025 06:19:17 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970a4bdsm1396017166b.49.2025.10.07.06.19.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 06:19:16 -0700 (PDT)
Message-ID: <1cd3fdd3-af27-48e8-8bcc-aad7262b139e@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 15:19:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: pmi8950: Fix VADC channel scaling
 factors
To: Antony Kurniawan Soemardi <linux@smankusors.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251004-fix-pmi8950-vadc-v1-0-3143ecab99e9@smankusors.com>
 <20251004-fix-pmi8950-vadc-v1-2-3143ecab99e9@smankusors.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251004-fix-pmi8950-vadc-v1-2-3143ecab99e9@smankusors.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfX899KZNYvhacP
 7PHy+3fh9dMG/q7QMJRNnwgd6ZMaQRj9H9zaByIRuAOQiGYGTCuMtzNUKewZ8KqMpdVGZiodUBS
 eXmrR0QRgItmMI56itjHCKPxV+i7JRirrllFwNytLEr79FM74qpOpVlBz9MFEQZ68lQbnUU5Lxo
 TlXOaEwlK8nDsW0fxIehWRJONrCHOz8oTu8dUY/Aw+x1f0ZYYSxr5+f8AlkezURzW8fYqwpANEp
 9k9nvS/bzrX06xZaEv87fwMS6YqkBn34zMmJjRSpGzR5Zln8E+xCrURLiJQP8ONQyMQcvcHw7jw
 1H+LAMbgozAPAQ1emn57ainbtEsk6FqJkjhai21KVBndB+qHbkV6Sue3rh6YXGYE/sFkIEg9HJf
 QR4KDmgoyAM+DrZdP5AQLqkMEiae3A==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e51357 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=NEAV23lmAAAA:8 a=wxLWbCv9AAAA:8
 a=EUspDBNiAAAA:8 a=jy5Z_zf4QHJ3AEBhBnAA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-GUID: ZUwGipoalICOMHzSMZy-I_8KkpQeNbuk
X-Proofpoint-ORIG-GUID: ZUwGipoalICOMHzSMZy-I_8KkpQeNbuk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017

On 10/4/25 3:12 PM, Antony Kurniawan Soemardi wrote:
> Fix USBIN/DCIN scaling to match the downstream implementation [1].
> 
> Downstream defines the following scaling mappings [2], corresponding
> to mainline pre-scaling values:
> 
>   <4>  ->  <1 20>
>   <1>  ->  <1 3>
> 
> [1] https://github.com/LineageOS/android_kernel_qcom_msm8953/blob/e6b46fc6f52e754eef5ce6265c7d82a3622e0b0f/arch/arm64/boot/dts/qcom/pmi8950.dtsi#L55-L86
> [2] https://github.com/LineageOS/android_kernel_qcom_msm8953/blob/e6b46fc6f52e754eef5ce6265c7d82a3622e0b0f/include/linux/qpnp/qpnp-adc.h#L342-L357
> 
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

