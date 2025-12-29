Return-Path: <devicetree+bounces-250304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D653FCE8344
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 22:19:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 906B53000FA1
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 21:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40C202E6CC5;
	Mon, 29 Dec 2025 21:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mzw5rElC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CsIzT1ji"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18691C8626
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 21:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767043171; cv=none; b=NQ+n8lDZxF1Bf62UHCCtMt8QFS0oTpPiZVekOWKUawLk6ISaiOVCI3fui/zmafoNJ6KeLj/ZhI01SOSIayKt/n2eN21QWSQGkB4OZCwCuuEYWe9Hj7OWCeqqPH87bUpgu7BBoPbTf4YrgeyfJhMKVfMeU587PgnQqUFUDwBTzM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767043171; c=relaxed/simple;
	bh=c8EiYmorLs+G661FSCFTCmlYAUhOd2R/PoIs7O7M+aw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qAeuoFG5AskI/xH4cfu+DZxm9r+s8e1Z3l288WcER/gteMsd44ExkXEx28gbZ1CK/UmY4hZUXBqRdrTqG6T2nqI5b3U6LTw9p+SxALwFHgIfOI/jSvZYZbkgsSYhvQ9ArhbZkLUKJJedzu+XmGORuiV0zg/AhctXKptICOhfdNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mzw5rElC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CsIzT1ji; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAspIM3840442
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 21:19:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZpBCIZzQrlhqAZnvW6IzAsAlvQ2lYCsIDcnMGn3xCmM=; b=Mzw5rElCstkRJJ4y
	RJzTKp44R/e59QZKa1rMxyP2CVNgkr2hgTWKUHlOm8SWpDvdGNKAIyYeaMd/UELt
	7DTIO9yNc9c4rsUBbH4ZdXIZSiRacLwma6j2unUJl9cljwMPIU8a2m2CYo+lO9dV
	lwt2HqCQQOCPxHVwiPWSxfgZCjsMgHbsXmdSOEta1OsDVCnZfTZInm8uOtPcRwV+
	HBJ26yiMA14VjdYVCKQ3uHN5pSHNux5uQHffKm7xxR53RJ83fgzG1LEQ9wx0h8u3
	W5JSn/xeZ+bT93liCayUoTU1E3BLQ8mvnV8izOqB+C/0ucesoLeADEKUs/dyNlcT
	Bc8nXA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbc8ytnyy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 21:19:28 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7aa148105a2so9072627b3a.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767043168; x=1767647968; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZpBCIZzQrlhqAZnvW6IzAsAlvQ2lYCsIDcnMGn3xCmM=;
        b=CsIzT1jipSUyCgH5XdnGPUtOkVmeEhF32cLcgXmwYm/h2XoZLyZyYFSUkdqp24UFYo
         pab2dNWo7D3TByo+LYE2/szelPWX7dtx0sK5rvIoMSGgGU/e1pn57Nk8Zyacu3ruXF7K
         h2FbWIzLDysyEQBOr8fmLpuiNGPitAypDoxr/DK4NIbKZpMgN0j7RZMwaS6bEbAy0pbu
         AEO58YYBS86yXfQOX2cqpczOmG74H8kjSphjIj3ub2rNOWLd94gBKQQRbGcD6K8d2iXd
         HRBevOlhGiXw6EyXx1urYLtcY1W6Vnm0iVTStZ9L01d1eUvprXR2wWV1cpnTKRu+xze+
         rTJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767043168; x=1767647968;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZpBCIZzQrlhqAZnvW6IzAsAlvQ2lYCsIDcnMGn3xCmM=;
        b=eELZpFwu71gg+8mGSsMx7yA84oepGMx2alZUegPStMjqIILgYAGDzGOWIlMaJ0h7hV
         TfNJ8Fter4mczgb8uEyTabO6gynkskWx/hsWN7KZZLl03a1daxmL4xUOTO+uIy/VDC1e
         tw+obibqn8anLfyeJszxxM1QdKU1IvjgXP7Mum9EeUR80mvSPZj9m2v/Zmaki/878brj
         54b3LHYC67wXZchgwjDmrHKWqt6ZtJvirSUw/PzL9mOEHL4JqipBZJ3782RY0YqVNzay
         mc8hZespMYlqqZ1WICzx/nFuY8+KatY8K+1NOOK33ST6dPagTzSs50BzjCs2kKmQN3Rx
         RpqA==
X-Forwarded-Encrypted: i=1; AJvYcCU8sr50kQWdSKCymEF3S+o1mlExyGvUsjEqAv7yxkNeoE1TyTMdYHuBoK/yc6PL5b9NlJk/UDGXmEid@vger.kernel.org
X-Gm-Message-State: AOJu0YxHsSJrquHKmsmLIdhlYFvrHERtffPOqD3Ew4W9kOcqelz2QCLB
	CmWnUhX5vKrw4/mdU6782kMHDQmdlg+0Iw0z6XAHP4IWVdekScQEKH0AfICKF4SkhkNvucVF9UU
	T7DgtXCWH4XXTFDdWk8K/N2R95SYGGA5HvODmODNIKMO6G36YotdnfBCHWOegKSrs
X-Gm-Gg: AY/fxX4aieFIYtktC8Iw346+5S/XL5SOHnXhnN4mRRuJcDZpekmDYgKDW35ENXM7HbP
	Qf4sJ5iQa7LRaamM0cesuyYdi4qqdZfre7zMpkbcfW62PrHhPrIH6rGcOXhIGDazdSmVZ9d18EN
	8MuCRgpbGBbp4CfM/l9I3Snz4YZoH7irzYKV8RaGKfd8omRumSrFdZ8gnfB2GSn/UqI2L+CoE60
	o0BlEpy8W5+YOVzjjQPU9YvE83n8BKxs7KQccq8mycseVW+HV1VQrCkTz67azHBXNEkbQGCxrwm
	9vF1fNNXcLT20tx5IkuWef2YnCGDJWk8+XnbfcJHBAWeZJzldUR6ZQcx1yYNvMStHKQV0P0u297
	EPJ3lvnb9AsQcRZSyKHjMHaQFIj7h8QRSPw==
X-Received: by 2002:a05:6a00:90a2:b0:7b8:10b9:9bec with SMTP id d2e1a72fcca58-7ff654b8185mr29097571b3a.19.1767043168171;
        Mon, 29 Dec 2025 13:19:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHObsOyE0pNTP9yuvY4xceFRRd+xJwU6ZcRdjs/f/UrixkkJEYeWSKVBpetD5YZmRKunrqPzQ==
X-Received: by 2002:a05:6a00:90a2:b0:7b8:10b9:9bec with SMTP id d2e1a72fcca58-7ff654b8185mr29097557b3a.19.1767043167701;
        Mon, 29 Dec 2025 13:19:27 -0800 (PST)
Received: from [192.168.1.5] ([106.222.228.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7a843ee4sm30860986b3a.10.2025.12.29.13.19.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 13:19:27 -0800 (PST)
Message-ID: <cfa16bc7-9a27-4fd5-b1c9-fd239f529dc8@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 02:49:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFT PATCH 0/3] Add missing CX_MEM/DBGC GPU regions for
 SM6115/QCM2290
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20251229-topic-6115_2290_gpu_dbgc-v1-0-4a24d196389c@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <20251229-topic-6115_2290_gpu_dbgc-v1-0-4a24d196389c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDE5NSBTYWx0ZWRfX7XofPkcUilYl
 JOhKDlP7j+zlehixEa92EAyv4ZaayBRpVna4x9YCa1XG9zdyon03VSjjEOHJY6rdajtYVurAKCb
 lrTbM1bpt1t8ptNcXdqgwLsWawjaQvkBc2yjgkryPMQFPB9/zycC/rp0FKzGMYMUj6BsCikJJjx
 SVGAD3gY0oNviNSHkj6oU72p0+eO/hBYKo4AIEDWTTsKyagMV30nA6N9Mm1IwOQN4rQhgyL9+Kh
 gQoDmadlF2e/wxw4W9QMAx+Bib1JyW1ifEROh8rB5PdZFjqyH3IXXGrrflZTBM6WKa+54sWrY2N
 /rTMSuNLUjwYlhh9M49KeKmLiLccDuFvQbs59y15fmcYhZkG9D6E++9/G1yge71ruDKB1eqRKUa
 +v2XaB4aJCWLJK7yG6KRKYZzI/TLmowUsBA66pfUOaZMjQQvHdoXrv8vjPxIvdBf+UQd2H8aYLV
 w948MXtMz5UP413HZ8w==
X-Authority-Analysis: v=2.4 cv=cP7tc1eN c=1 sm=1 tr=0 ts=6952f060 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=DNOyb6/IJtREwcjsjFyOSQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=b3iq9OUVpPj_UNejB_kA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: -8N7TQZ-c9y-luHBGzx-ii8M6Dtn8vJR
X-Proofpoint-GUID: -8N7TQZ-c9y-luHBGzx-ii8M6Dtn8vJR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_06,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512290195

On 12/30/2025 2:17 AM, Konrad Dybcio wrote:
> These regions were previously left undescribed, fix that.
> 
> Compile-tested only, the driver shouldn't break though.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (3):
>       dt-bindings: display/msm/gpu: Straighten out reg-names on A619L/610/702
>       arm64: dts: qcom: agatti: Add CX_MEM/DBGC GPU regions
>       arm64: dts: qcom: sm6115: Add CX_MEM/DBGC GPU regions

For the entire series:

Reviewed-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>

-Akhil

> 
>  Documentation/devicetree/bindings/display/msm/gpu.yaml | 6 ------
>  arch/arm64/boot/dts/qcom/agatti.dtsi                   | 8 ++++++--
>  arch/arm64/boot/dts/qcom/sm6115.dtsi                   | 8 ++++++--
>  3 files changed, 12 insertions(+), 10 deletions(-)
> ---
> base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
> change-id: 20251229-topic-6115_2290_gpu_dbgc-79822622b58d
> 
> Best regards,


