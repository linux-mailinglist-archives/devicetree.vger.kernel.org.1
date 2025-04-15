Return-Path: <devicetree+bounces-167210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A22D7A89A83
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:42:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A56D617AC94
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:42:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 114D228A1CE;
	Tue, 15 Apr 2025 10:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="maSGuzDI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930301E0E0C
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744713746; cv=none; b=dkyjFtBapIZZpk97XOs0doJTacTLkIupQGhtx0NW+kwnwtrvB9TS+CvLJowpMs64a/b4PynyZ26/tLhh5lXFpagGNHqce/lCMf/hb1oY1sICekXatVCJrZ4zBcnNts+aIFGRFnp/IkY7uoBxHMW/KWvLyo6U5o3hmkFa/4rA024=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744713746; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wq8CO81ViVdJoFH7SJg/1swCH5KtUghCwYexTjoRMl4K3wf37D6oC/F+6IKJ5P8EOAo0I5HK+VVIZw6Hh1b21S+w7rpy62IhDrhF9X5MzVsBPPfTt41/hSEi06DhjoQ4Ejo9Umk/2tioYhQ41EzoYpduZnl+ZPB+w1+GuL/0ukM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=maSGuzDI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tEvx025107
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:42:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=maSGuzDICpKBrtd5
	L84f7kovllrJ2iJ47Ej8kJ0mSAkeEoSUEEIrL5Ue9wf9AQKlR6TCimMoGphPL5uh
	Cqkt7EK5jkwHJ4c/vJg6VhR5Y/oH0lb45zAgeXPZAhDMsTd6OHpYlfJqPfEIZGt5
	U5ZC8RZOTMjZLDUrxGzTpJHMP8MNaCroSodFA+4izxMDZbjPrZCWEZVbP8scxhhC
	PixTQVGGPo4TwKW7oY8HUb1d/rebiN6qiIFQqULOpJE+SciRSsnD6BTJc5icRTbX
	vwaTuB3uGEtJBMK+gCpw9AMe0WHKu70sGmS6PjASJH75Bekv7XK6+YP5BVsmtM2C
	ZwE9NA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wfqbc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:42:23 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8fd4ef023so9627566d6.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:42:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744713742; x=1745318542;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=qykUei+eV6IopkBZ37ty1G43BdobGt2LppdacURQm7LDE5eiPCtFXhpJoe0ARuTlXM
         pSDYmtH5LUdhR/H9EYppO+7n0Azcrj0+FT47bl+8a0eCUyNQzLGfjKP0Yv5C82jMehGP
         RctrVjrjFnX6XJS64lA7JGyAIf5zX1sBT5FAtfN29G5HEOzoDE2P35/n7zPsneUKMNMV
         3qLu7dT1/TnqXbFpSWceqNpuXGNp4Pw5Fah36aSv5v78ByyYDEBwmhm0IxxdK47H6yRW
         PAr+XjgicT3AQHKUi3XHuJS/ZBcVAyXZdofngUBRcMRvhzU7aHm7sTapVaYwuPkdhMZD
         rI4w==
X-Forwarded-Encrypted: i=1; AJvYcCVC3k95fQphM2cfi4sL/UScZN14FNK5cjjaBNpd2HNcfj1eST4j63WlkuqY4jl935PWiscltOSLQP8z@vger.kernel.org
X-Gm-Message-State: AOJu0YyI+4r6w80G9jIzv+nhfyjQROqbeneFVo8jTDwcJ5uB8l8JLdIs
	VSbV3qRLniOnwgHeKZcCHXgg6J4uoxJ0DIAer0xLZpAXMKqcQDJnqA93rymLHIojZ6rZfd3XPvq
	gXyUzt2uV2CPSUWUji22hAEzS0x05pAdCnolNKEOuc2OiwAFLmxbv6+5OPtvH
X-Gm-Gg: ASbGncuX5BYiogxvADRFEQBX823qB5m6Y9JjKBW83qs4Ox7RJR2Fmb+rYh5U0ljzylK
	bve9tQLwTnEgM6kxiZIC/mrn5F0GO8qe5EyosIkaUrScCC8SWi3JbSylHOLQr/q35ZjV0CJTisu
	8MUAAKuskL6jINzaWgv4wRrzgeYepy+2GfiHEOvQv7+rUIItQpbAr+D5U9ksbn+u4am7LFVFrtl
	Fp5IRPreyglwvWDidJenHbaLqfLOCAXRkMIgekqPZ12B6PqcpmFw7RgzzD4w/pHmiu4gLUW3Sd6
	acPwXCZ66aOq06sCL+hJ3eB1hU2bA4hKEAUxh4sQWfKAlhwihtEHgGInpgpd0Ct0fpE=
X-Received: by 2002:a05:6214:e61:b0:6c3:5dbd:449c with SMTP id 6a1803df08f44-6f230cb6fb8mr99131996d6.1.1744713742650;
        Tue, 15 Apr 2025 03:42:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGelcEtBJf3FeAECtvsA0IW3XDUNMkLauB3LmX7jlbzYLrgC1yDR59WjCB5y4K46faIx3ogRA==
X-Received: by 2002:a05:6214:e61:b0:6c3:5dbd:449c with SMTP id 6a1803df08f44-6f230cb6fb8mr99131926d6.1.1744713742367;
        Tue, 15 Apr 2025 03:42:22 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1cb40e3sm1054619066b.122.2025.04.15.03.42.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:42:21 -0700 (PDT)
Message-ID: <6d462775-fea9-4583-834e-37b9ff4f7b04@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:42:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/20] arm64: dts: qcom: sc7180: use correct size for VBIF
 regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-6-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-6-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67fe380f cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: 9Sbz9yBQve-9iH9xhwXooH3hStso8AKa
X-Proofpoint-GUID: 9Sbz9yBQve-9iH9xhwXooH3hStso8AKa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=607 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150075

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

