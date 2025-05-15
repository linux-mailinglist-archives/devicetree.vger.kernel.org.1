Return-Path: <devicetree+bounces-177722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D19AB8B61
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:50:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97B84A240CB
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 15:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F1A221ABC6;
	Thu, 15 May 2025 15:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P78DGP8h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC62421A42F
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323777; cv=none; b=fTKScKF5QcWnEaHWxB2Q9qb3kiKQGlDiKn5fzYvPX4uOGX94wu6+lSw/Z9hmlBHSzjddR4i3N8+ijPtUQeLrw9HriTNgb13LqNEJbsO6aa0+2X+OBnPfCS0mAH4u1naDy0mpvCduSYgrbk2zj/MtXyYfoWuZaFl8zhE3sQ6sHII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323777; c=relaxed/simple;
	bh=JVbvGVI7vr7SKk/Dz3SUZ0JXpDRQsX+JcZVvFlgYb5Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F4Y6JW3j+UEHx6MUKCvEHIs/aGQByoU2p8DREEulAqtU6U003lDqLS3kNK7n/6nNYKBfymwx3E1G5j29FshMJU05JY9vNqm/JX52C7JSSF833jXMkX3l14xAqESaD0IAzUNmEDk8EW6dbOhrTV0Gtk2Oau/fWUuOzTKs+vuZK8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P78DGP8h; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFWcc002119
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:42:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XA2Ckgb1A92R72wK/xiF3TiinHUJne130PivAkUoja4=; b=P78DGP8hI4UwuJsM
	9/31wNhbDcv4OGgarg9AGfZR9+i6tbOYdRa3ANCne39ds6UHtjWdnZJVgjfwbC0j
	SPMXPa/iMqhhTGQiZrHYKHAlyfjOq+Bo7kRXu85gOgCSEibkA20rdmGJxaRNARVc
	u0o19mrWhUYdiovADs4v6PxDVIc6vzx8vRqgRAVs/73pft0FjqpnOdTk8DkYVxsT
	Y20dwHxi9urOnzI8hKTBm61SQBxg5j7fIqdfKQlDF98DlZ/rILjHa1i7DOv7D0XD
	ahlblFFtaBI0mr4ilXdNbxpHxLjwLb596XZMCY+/RNY1esLMonq1KcGTmxcHYJHV
	xcfq1A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcrekde-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:42:54 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c76062c513so24930785a.3
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:42:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323774; x=1747928574;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XA2Ckgb1A92R72wK/xiF3TiinHUJne130PivAkUoja4=;
        b=pX+ExC2zIXeaPrFXAQI11pEoAQFNC/2Ziw9yhdY7Co0Mv5ihVbXsui88r4tT/ncuOT
         i1otZDCo5/Nj5SQjnB9MTCO4tEO7Z1W49lBq52X7RyxCuIL0IMD/SvhxfuMSi/nW8jXA
         cAWC+NpnAGFRF/OvalSwpo0zVgkWo0zo3SuN/WGhVJNS2iW0Wgt8BxyO5T59uAEZyS7U
         7T4d6QCoq/WwbN04fb17LM6GwB+m5FoiLc5tYN9KQHO9oScWuSsz5OoaICK91+2DzMEK
         60RStP1YKPANu5yx/szAMVHVR7XnrO0dcMQOOBE4n8pKCSBRYn7wXBW8+dFUp+UwqFty
         /8Lw==
X-Forwarded-Encrypted: i=1; AJvYcCWd47GI7GkW9I56GgEQHsm7cRXdM3F9zZ8o8JOKnJ+sKCnceHm8qZaqmOmqq3O4AGNm+jDFCe0LaiC7@vger.kernel.org
X-Gm-Message-State: AOJu0YxKOA+DFVrH+XBtiIK1sTfmlnb7hL7s4ZynqCvpFUyc/zUShJIr
	ITd74Peg+FKxbhDgBOzzcEupTX0V6qdwRbiK4xHoddafCdXCHa8QeMx+3RET/a8r9+JXAyKRP1R
	XNNyPeu93piR8I2Tl+GXhyKhzQeHKMjft5fH2I12rQOT0m3ohqfNJ1VJca9ja
X-Gm-Gg: ASbGncuvXIiHYafFZGidTDhz/ogxKUs85e7lIO3BXKmBf1Y/4MSMInE5ElU8pLiuIxQ
	M/pJ5m4ZlE5oGd1K1eUYvUTJaXXL+/OJlsRw02M+XT7P/k1g5Tr61jWEl+FKAKQvKpzmGkMdfjY
	4Djd5KfHOs9gTmWNGMIpZwUc2KZPGC0QDO/GHKZpPJIxOc40lCIjE5AQpLktKHCj2nYCKwdVK3Y
	pLF++USYawwm3SaoNlugu0wJbkbk6Vvkf9EV9PCH/xtaVUrFBkNBdJVKlYhyJVqlmieh1wFHzIl
	tbd22xB51y5nRZDUDhZJ+6fh6mqSh2uEqr988eXVmDb0xhmDzCeP6pav7+wkbYtHhA==
X-Received: by 2002:a05:620a:2811:b0:7c0:c024:d5 with SMTP id af79cd13be357-7cd287f8075mr543663085a.8.1747323773899;
        Thu, 15 May 2025 08:42:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGT4fxs45M5zKmI/an/xseNIdZWlRHxwm3i9EJcr/D08ltlthN8UWO9YUVu81PT/6ZHnHRi4Q==
X-Received: by 2002:a05:620a:2811:b0:7c0:c024:d5 with SMTP id af79cd13be357-7cd287f8075mr543658585a.8.1747323773413;
        Thu, 15 May 2025 08:42:53 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d047c30sm7074666b.6.2025.05.15.08.42.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 08:42:52 -0700 (PDT)
Message-ID: <7f167ba1-5367-49a2-8d00-08fe7a44a022@oss.qualcomm.com>
Date: Thu, 15 May 2025 17:42:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 15/18] arm64: dts: qcom: sm8650: Additionally manage
 MXC power domain in videocc
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-15-571c63297d01@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-15-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: -B314nJzl7_FQrBTsuqvak46UN5T-jRc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE1NiBTYWx0ZWRfX46vrAH6/Dkt+
 t5JhlXgVKDKOot5llX7HGeJUKs36wjjcvlqGGSO2ULHZaQmnf1x29U1MKZ5L/QauhrwQX2MWnp/
 2afhH4zziOXt8btnhhYAq6cyL1nwg9ciXj/4USPWzIJhwy+2Ay4VSoh9axFpU2vIZYqzsybEW4I
 JMb65Ce33tSboFDjrqA95RsmfzYcHm9aN2BKranpiqMjxIx/yLwfl3KTDRl72mW+IxKXHUTPZnE
 i7sz59mEGlm76AZQkQgnKUJ3tYwoKJSmVzWt337JKeF/Hd5dgs4ITAFaZ6RCL2lkkiPQu1CVQ37
 0HwoOF30DodOqMe5YZ8+f3n2et5Mzzrto8fzPYa3IGnpCG+AtaWa7uyQFuil9it8AMbXaUVFCCB
 s7vTTetGdENY9QE9ieHmnfOf5Y2TdXUl0bPcBSEoFKrThjdXOqrSfxJrDVW4Fo53wUmIhB+p
X-Authority-Analysis: v=2.4 cv=K7UiHzWI c=1 sm=1 tr=0 ts=68260b7e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=fvWm4ETZ9MensVEMrR8A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: -B314nJzl7_FQrBTsuqvak46UN5T-jRc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_06,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxlogscore=701 clxscore=1015 bulkscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150156

On 5/14/25 9:09 PM, Jagadeesh Kona wrote:
> Videocc requires both MMCX and MXC rails to be powered ON to configure
> the video PLLs on SM8650 platform. Hence add MXC power domain to videocc
> node on SM8650.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

