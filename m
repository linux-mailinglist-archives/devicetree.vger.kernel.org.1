Return-Path: <devicetree+bounces-175734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CB23BAB19B0
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 18:04:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8696C1C476A5
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 16:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D02D8238C1A;
	Fri,  9 May 2025 15:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="li4S6GU1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B69423536A
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 15:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746806293; cv=none; b=DGvCH3qUr27QLUaCGdmelORm8pycllh1kMVad7ojNzoPJjvZXbxp1VahCfhPzEv66/Cdzs8jvks5SoL+1DetEwE/oQ9P0zWo2Koj5cu2RjUrovES+z3kLgmiVqZERc9GWjSTxIKMh8fZox6LqfnEHhH5qhddXof3za3RBhU9L+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746806293; c=relaxed/simple;
	bh=irLWXJPagDXrveAmW0ysal4JRHs3lchHeVAcCzAJ2r8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WHJZOqBjEMNt6mByETe3d87D8LIrS0JU7B2LorQNcdnwXRSXpco3TkgqWO+3HOeW9HCS8S0t/OKTy1VxE9HkLh+TqVrjPBxA8j8szpW1H36UBcPXk7A1RKaBUjhe7MVbY8Nk0LLg83MPxAivm/mCd8Dlk60f/D9JiXSqml+80aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=li4S6GU1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 549AgHut024945
	for <devicetree@vger.kernel.org>; Fri, 9 May 2025 15:58:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	262ZEu3WvDh8g01OaP8GQaXghLw60EkUopSCqASt1kA=; b=li4S6GU1QS8jfOs8
	7tbEPRR+sag5akPfFJ5exwolDAAG/DlVYG6QCOzjA0ZhvlQ/FLXWqEo+R/mML+E2
	uPUS6CxHdKmf+8feDXaTt7ROIKyDb4/JZss+5zgBlO6g/9T3W4otzUD/krzI+qQw
	NW80H/eUvWtrRv1Ywm62MLWqMGnKIubjqGWkCqZll8hGwVDLCJbcG9nUSd6epsL8
	/fZBVqpJVl+AJJ0+gPW2HZGsCRjYC19ECHxe59aXYGGlCp+eeKQM6+VVXURTxQ/V
	KUAfNPfkfQZBcOs6YMH91cViEoG42PhOuewPHrOSkbKouj1umeG8Br/8UUIaK7Uq
	yv7oYw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp1584v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 May 2025 15:58:11 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f539358795so3667706d6.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 08:58:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746806290; x=1747411090;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=262ZEu3WvDh8g01OaP8GQaXghLw60EkUopSCqASt1kA=;
        b=Lf2SH2HlM+NBnf+i0NqdjLn2bfu0wiZpwNrKfPQyFMMQCVxSVyg5fHN/d65YHdVbdf
         GOUpvlhZHh6LvF2o88DceLqzKLhWH8GWYmMzBW1LNKXfEz/xOctsQU0edTCJCobWeUbg
         w0XB1Z46/2R4bG753VVq+IjVhF62EjSINSra4tVzSDwXDnzjacmk4ZyVl2G5x8tFx+JG
         IE58rZLezc8YTpDW1bnMPyUNAQ+Xl/FqdS4Halm69PquZuA62KHnAx2efsDYolumsWhS
         ZHFKPKaqee1HBgNOu++71370mcuinMRZA6MKomeI3WWCnKhIeZuOazf8X9Hr6+oIZQiV
         uNLA==
X-Forwarded-Encrypted: i=1; AJvYcCVOz73rqS/82eHiMAPEduecjfvV/JzbNPKFIBA1CGYjlPTTgtDKAlnD84kCglNrZ0f7dw2wmpOXlwY1@vger.kernel.org
X-Gm-Message-State: AOJu0YyTVSM2XIBnFrYvb2bSEeKwK/SsrsZj/eaQn2kF+hj9V0ZzqzNo
	3MgS+7N+bfGIjbK69trAehFT0PGy95lqHcFARAkRarEI6O+x3gCnomMklw3OZQz7iq3aFhcqJs6
	TVSWfHraeNYWsUMS5jQBP/MPb82wNcWk+RRwnmSL5DvIMDp00K5mbjgf2DzjP
X-Gm-Gg: ASbGncs93b0r3BHbQhtjGCusM1ZdFL6530b7IBiGiyGM+hDjOao4f7eM2jwPTcnZ/xj
	euN+re+u2EdyywOyL/EMJlwGz6QaZ6pKx3Zel3wKg7cil2M3S/rcQQbo2fPvCg2CRzuArIAlM5B
	gaDt+tcgG58wYCxmN12D08Ygl5yPBMW/xQw15mAwi5HFo9puyAHhcm7RFFMpFSrU/1i2QFxYw2e
	jaC1u6WV6V9zEXZ7v7c3+Zzdz+crTJjxytOSusUR9hrzHr0/9AachslQJyfFCbaS+EDLs7gNv9E
	M4eRsaTVnV+FctGbK2srtQcqNgAdlVbLPNlav6HyIHgWi9IQ0i/kyEkLR/kZvL3ewaw=
X-Received: by 2002:a05:6214:1bc8:b0:6f6:d4a8:1a6c with SMTP id 6a1803df08f44-6f6e479559emr25148456d6.1.1746806289926;
        Fri, 09 May 2025 08:58:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvG0eBziMbOZ8EBGHmv1fc6XD7+4vLbKGzjZd8J2ynq1/rKSXEFQ5tVK2pqkSnfFcXnm0YbA==
X-Received: by 2002:a05:6214:1bc8:b0:6f6:d4a8:1a6c with SMTP id 6a1803df08f44-6f6e479559emr25148116d6.1.1746806289370;
        Fri, 09 May 2025 08:58:09 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fc9cc52937sm1637448a12.48.2025.05.09.08.58.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 08:58:08 -0700 (PDT)
Message-ID: <7347ced4-980b-4630-9b5b-4810df249b89@oss.qualcomm.com>
Date: Fri, 9 May 2025 17:58:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: sm8650: add iris DT node
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250509-topic-sm8x50-upstream-iris-8650-dt-v3-1-f6842e0a8208@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250509-topic-sm8x50-upstream-iris-8650-dt-v3-1-f6842e0a8208@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDE1NyBTYWx0ZWRfX3ubEQeXLlN/G
 ZzDhWdSNLd91U4U813lK+47L5QDjgqhuy5lo0PA9Bju7yitcmdx6jnxarUlhgd1tN9DqdVXntXc
 XsVmEDsNK1n086lbHHiFc0/eB3KBAB4s3SDpu9W5ibeIN9yK7f+IZaeWDaNbDcYx03WnrmKs+YR
 HGwSMVWXKjQzSWARawwbGTw8D+rxpaPMlRLB0BbVMg04bZ+teFsJUE8A/kTBd/T5Wtj9RgZnyr2
 Gu2mohfSfqTm+2FLJKsTiL0oxZfXXuB7LQ6ngObtSPLjFtQLUSEOoL/qFAqzlYY4KTUpzhEMStO
 XV3ohwztQLAwBpwwQSyobV2dinQRR9RE2AHoyiKRXDjRce6Ns4HwEow5d3za7VEpFwHKPhRuIFZ
 DSZi1+UkV7z37enRXf5MY395LR0l9JTO9+9aMwanmlQasporzULpwIA/t2URJnSRXZy/M9Fe
X-Proofpoint-GUID: hEHhiLJZAf83hZCrtzImElB8YqgLNNdI
X-Proofpoint-ORIG-GUID: hEHhiLJZAf83hZCrtzImElB8YqgLNNdI
X-Authority-Analysis: v=2.4 cv=W4o4VQWk c=1 sm=1 tr=0 ts=681e2613 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=rgwGDv9o_da3FyMresgA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_06,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=959 suspectscore=0 lowpriorityscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 mlxscore=0 adultscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505090157

On 5/9/25 5:28 PM, Neil Armstrong wrote:
> Add DT entries for the sm8650 iris decoder.
> 
> Since the firmware is required to be signed, only enable
> on Qualcomm development boards where the firmware is
> available.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

