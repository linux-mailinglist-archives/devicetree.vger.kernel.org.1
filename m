Return-Path: <devicetree+bounces-248714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B63CD5391
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:00:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1854430069B3
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A14F630F937;
	Mon, 22 Dec 2025 09:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QhglG0sp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i49lVTL1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3E733985
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766394027; cv=none; b=Y6plUj0btxWCCIGucEQoD1X+OVaox6eWIDl8vlQpbGhbecHrxfac51KnInoQZJP1O0vo1RRPJeXmdCxJCfzARkSo9/R5bKzKljxyrV9od44IBiJ7jfgQ1ZlMHgB6ai95+M2M4Apih8UglMe4pPU6Tq7TkL17Z58XOYS0diXsdkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766394027; c=relaxed/simple;
	bh=7nFTwrTwUwJOFwj1vqDygUH4PflUF4uOIMAqrK8X+tY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gL2E5XX2adq2rXbshJ+Bswd/u/oH0mKfEwlq6p+61CZjyXCuqkjH2rgJVLildwZcwRUX8BNDIN4pBBWDoSKBjxLSqX8KvkVC4KMK72fhkAmUIP/3+DNxQjJN53OaQXprAh17J/k6GER3Gb65n969hiUki4lNwluaYX9gFnJrSfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QhglG0sp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i49lVTL1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM7A3me3109737
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:00:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7dzW06QAIiAkc0UiQYlfxr0uMo7Khj7kqrWF0YPuD9k=; b=QhglG0spVm0QGZ1Q
	SZBd/YM34FpvT2X0InMZs1uuuAtN8Sb4WBPnDcJIcemDtm1jUWiLw+E/VKOpuPt3
	5xNPxP9BqYhEJ6N9HxQDlfm2zDM+jhXyGlg6wqjf+4p4LBzVUNjbc6uau2C1t5ox
	aK2z8xu5nKl4jH6qy9eOK26SH1O+50Ax7VHAbzbLVxxsapAkTtY/koq0PZJwekzT
	BiL1aAE5oYkDVOzdFav27lBIP4i/HNl0wmo70zSzunKQvPrcSMP1CE+ba4yIiW5P
	+j7oV7ARwpQrMeekK/5tcMCsSKEP2ejGW3JI3uCkrXKFba3Hm55f6HdZO2fpOcZs
	OkkfsQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b69ahjp6a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:00:22 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1e17aa706so20599421cf.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766394021; x=1766998821; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7dzW06QAIiAkc0UiQYlfxr0uMo7Khj7kqrWF0YPuD9k=;
        b=i49lVTL16F3+StUisdAlEQBu7JL+IV9mpy9xZgpFnuWr2IYEVrBwmdn7LrUFjMD16/
         pMVRC+LYOTNQAtuAkJbCdfwc2J4SwB4Rki8LlCZcrlDiHkM7Eq5HXrOtlnR/lpivXqSM
         m/esUlNvW5XvmwZ036H/iJCk/3zm6uDf+Bo7bdQeRMP4lAxsugNpkUGnWTtihH5BJ3oK
         Z+Ihbd5CD2KEm9QWDo0zOSKJw2QIC/5UZW+dZ4lMXeBNAQQxW1TLIdWDAI8Zi9tW7oWw
         jQKVIHmK2f0pzAb29A9HeDG7Jmit0c5Oh9dxkWMTz7JoD3doQyzxQDfOBSOxQKbdBoE7
         4GAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766394021; x=1766998821;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7dzW06QAIiAkc0UiQYlfxr0uMo7Khj7kqrWF0YPuD9k=;
        b=Ti4WnOW6vx2tZ6siqZJK2fu2uAoCCgloy20LA7oliVOYJnFA2WdnFTGFyv8tkhtuCG
         KD8XN5ScH2JpAcrOf8FnwlwzcxiEgSjBBjkZhxinNMkABE1P+E049wgwO5tin4cI6dC+
         hVIIzrHUURO0LKcp7MrWHFxgFO03/DpOB2wPRQR0mhnRTGbnkTKdlcK4H4vJSCkk7eEn
         FHwDus87tAGDxEUCv/JwNBgR8Wgzm+IVf5ckNCLqyCVVSS6GFsv79OprYH3s9F1Z6F8B
         nBgN0KWTOkTkY8U6j8Iez7yARoam6bdGwQAIlhKLALEQuOp9ZJYKb4kTIx0+j/c4ilwG
         /L4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUAXR+LfGBgCCqicO6LY5Iy2PJ8m19ittcNCyNlyUdh5Gt3Irnz7jrzcjTYjQahrFjrCmhwIB90arCN@vger.kernel.org
X-Gm-Message-State: AOJu0YxF0AGCYXfOZwcYKSpWSPWOq6HRLuFQ20ZeNyHmm6Q3PnRxyQHa
	/a9jpaCkOZPCoYTZCmvniFnBGEx9wUOy934UdavFSuDFNwaRrDWjR+4QJ5rAvZ137oECatlLWIZ
	Ca0BlS4YDZ2+Ud1Ci1P0SA8a4N0bdkj2RPE+5qcMjVHxhyi221HPb23G9jqYoOJtk
X-Gm-Gg: AY/fxX55++9gw8Qz+vK51ogl7+PbGzJ2fXeXftGYZiOPHUrJcQOS/tmOn+3QK0ZMGs8
	VUb4nfDAbZfaAUZcOMV3WD9N397bVrMR0pZjVFCCQcI832irOQui0i6T6ZQ9OHEXWvGv7sEjek3
	wIazwWDfhQAa4vsE6YMkdbVtt4QEfKGoxd1m2BFWid7Xb8ioDhw9lVaWxmafcg7ykwN+qxkDdqb
	OaHui7XPVCcH/rCXTPrb/guHgADiDoBkKfMY3JX8xkA16Bq5RYXx9+LEqeUHBCwfhXUd9fFcz0v
	rki0N2R+fFacYO4Oq8pzIog5GeUs2I9RizAouVsl/Q3k/sA5l4BsAKCN9fwoOo2uy/u/L4M+MtO
	o7KwPmLT7Gd9VcQkjxAwz3hw/ZLpL4nutemINxIG2CCtSfUz4AhAvc1svwXRic63sKQ==
X-Received: by 2002:a05:622a:290:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4f4abde8b40mr126852981cf.11.1766394020877;
        Mon, 22 Dec 2025 01:00:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEJ3sa2cwix8pdUL8luSbRZkdo1cW7juRVDsscaa4ncFyVB+MukCKD119lgajVKKUHQrCA2Sw==
X-Received: by 2002:a05:622a:290:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4f4abde8b40mr126852221cf.11.1766394020083;
        Mon, 22 Dec 2025 01:00:20 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0cc52sm1005945566b.52.2025.12.22.01.00.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 01:00:19 -0800 (PST)
Message-ID: <0d442547-db12-4408-a0cb-b3d2bbc723d6@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 10:00:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/6] soc: qcom: ubwc: Add config for Milos
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
References: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
 <20251219-milos-mdss-v1-1-4537a916bdf9@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219-milos-mdss-v1-1-4537a916bdf9@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JuH8bc4C c=1 sm=1 tr=0 ts=694908a6 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=KB0s8L93-oSB63ZrkccA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=dawVfQjAaf238kedN5IG:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: ooqSNbfEpzPjkk9hojzFtIkbkbQYLYBa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4MCBTYWx0ZWRfXylXYYw8r9Ncr
 7Z6grFFDtPlhxn8x1lxl1XlBOc+2nHzExjC28SBQkiWy4ll92q5IAtosvcHrbBD/x8RgYXB3HQ1
 enMR/1WO27mlgchXYtg6AK9Z1WpssibF0HQBQPFiLDVr/9rZhXWRZDbiG/GCW0zlLPX7tX0WLtj
 nMzQBv+CtRLecQOib1fXFubGeOJiLXyQvpwFVlE8SZzUpOQP5OcM0lfg3jH0FImKvOW2vC2KnCC
 abAE7eP3LlRJsh+KDZ89j4MAgwkPITjHYlesQaE4z76KUiSYyYuGcmq7dniqTte2ptWcmaFayY1
 B7gIKOKmJoLSVkOZNTPbneBpTjQvb11KCA7O5oMdA0O5tiv75XSPmZSzfc6yzqz9Sk/aZ1fWSNB
 0W3U1O7lbi8agLdDH5h6CSNBo40Lavc1kJ5Si6Ysv45IB3wM8VtRHsSomC1NTaKj8gJfa2+7CRA
 CGb8bAyMfawzfIGHAcg==
X-Proofpoint-GUID: ooqSNbfEpzPjkk9hojzFtIkbkbQYLYBa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220080

On 12/19/25 5:41 PM, Luca Weiss wrote:
> Describe the Universal Bandwidth Compression (UBWC) configuration
> for the Milos SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

