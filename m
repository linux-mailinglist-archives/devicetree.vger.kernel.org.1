Return-Path: <devicetree+bounces-248759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 462C6CD594D
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:26:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 429E830A954B
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8AA032E131;
	Mon, 22 Dec 2025 10:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EC9x/eFh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JDDmqV0D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3831632D7D8
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766398455; cv=none; b=AQK+RbWdwEfq+Jv2NFDb8jaMQ5d7GZI5FJLlQNgWE94inNPdeI/gTcm0JeeeFnN+8FrxdiyyymbhjQ2//0yy7BFiyCVt2XpGIbFGhcMv2wFxThlPXx7k+4ayZFynYUEjp+sqIiSUKeF107brHVer2nXmf+bHQwUGRCRJis/fqyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766398455; c=relaxed/simple;
	bh=La/brog8yeZT41fAJUkpi2KYsALtGufhwQWZsXNYNas=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LrAuILjoClANnuuWiwWDDlaBSM19WgFnv4fOPrPikp+mp/XgWRUFap5Rqvflvv4iATiSOYhHgTbgL+H8VJmv4NGWdjYIT6XThXve30ec6kOxzI0E7c+Z/60QRF4QLfEcANkpoS0g2mNwmH/A2fZC9s26mgoGtutUjLb9gGWJoQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EC9x/eFh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JDDmqV0D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM8J9FA072612
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:14:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3V9BlQkZLQipKWuaG8qu9blXB9mSR0ZfVvmqlvjHZJE=; b=EC9x/eFhqo3CQZ1/
	M+Mu6ztAmnwIKUed0FrzOWQe/tn4hgX0JrFpaz3BgZ2s5x/V+eaeBgHaIyjIbk4e
	eNlIjr/qgyGcvrAz1Lps6GqFKUqkEYAySpXncopbZWwi/DHrdZiGBQbOzTG1lDGq
	sBqvszwQcDfg+mScte6SeGjFER33g/fojAb1lj/jPdUfLPKrt68kKeHo4H5nyjcY
	ig/hlU3cPB8MW1p1tmwKhkHm61gXUcW0nw7z7rdYAM/oc0X3+jQNipUinjh4Rl2Q
	DikNUtTQeAgM9ez3lRNwKP0qBKehMwFshBf76hmj8okL2tSWXJ6+gV3PtiUYHPZ6
	3PrZLw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mracmb4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:14:13 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f1e17aa706so20814341cf.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766398452; x=1767003252; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3V9BlQkZLQipKWuaG8qu9blXB9mSR0ZfVvmqlvjHZJE=;
        b=JDDmqV0Dbta7PHAeSRHjCR0vzFO3ohSLKpqPeEcc4JczODmrHJ21crTzZfYLCTbj9t
         FnqBuGqYV0s2pkEZ3AIjE68W0CI8jB7QCkhulLXYgwyZIHktOMalDjy3IejjzcwxpPLB
         +I36b4esBcCcNMs8YGFWMZNq+nAEBZIShKrijgrLbi+TPX4vwJdtmp7E1ZUrdTIoKa9l
         0hiDBFoqN0mg8UY9fY99ARRTEcxNVyUCfqhZgn7nHTP9DCnhpKY9QNSmmG+sXCkkiGL8
         pUJGsk9o91GQZPHLTizTFbaJOCeqWp9uTObCzJ4GZ/8dLszGdawM8JblxWfB85TG72Qi
         gdkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398452; x=1767003252;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3V9BlQkZLQipKWuaG8qu9blXB9mSR0ZfVvmqlvjHZJE=;
        b=lQpWlj/vXdjLT3WhMrqucPrfVxZu6GnhtpZKe7FVIgyAi6BSiZsW7tnSXTbTQw6dQ4
         Ursbc7FwrFI2/o3WQyvCIfFWHJgxwfGg/Tw5Yd6UEl/raZJwratM5DGtNTs+v+aIs3If
         LHz67d7Ow1ahM5YGab4uh4sfNuDChgEdT1eQH7j3q+ZDsBv+D0cjXWw8LEuUZ8+XIs1C
         9Ia/C39hhBv4Vo30de+gS6qKlu7y+cQahZ6mhy2e/EyYb+8xKckqBbZNoZHK4cpmLl5j
         8JJtNHS8icEfRctf3QRouc33tquegW7leAOZg366lJyBAQB+ivPACfxHI3IpqEcth4X+
         5Oqw==
X-Forwarded-Encrypted: i=1; AJvYcCW5qe0c/sTZ4Xc/i15VEaXTX8fRkNexhQzHGWY1J6EkoNRNZz6odrjPACgYhNEbvDEl5gww/ie+6uSB@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh80fRsYQ6TFZMGvuXmKV4G7YBUisnqUnwgu4HmwwQ+YJHJ+rr
	Z7DGomErFKi3sikT4aO3kQ0qyknfgr4VvOSHNgRrX/VYCQ4vcXK+LlbgHXFE9zY0rojmvTwNTEl
	9v1fIHreQr0oXDXe8bOmj8xqkqi0C4azfbyL4UdcrnXTDdAGrm01DWd5EwrF/Orfqowe0YAjX
X-Gm-Gg: AY/fxX6hbNPVypFVwogU3tbAax0KcbmWcnm6cj2XuUNMjlrA0DxsiINEo4DARjNCw8X
	r8KswgDrlXx8iYud0k6ZhqSWwPFuWftHDcdIVDRAGLrvjKhWKF2A2qqNb5WlYEMTr/ZQm2F246b
	etIUKnQVjhPaZgZdsoMA0RszPzlzcgmL5PH4f4sxg7e6M7TYz0nr5KVILZTC9tO/yZluadxlF5b
	zGxDt2a+xsxWjiaoGXuCy/dyOoGBG6MXI/l+XrTDXW83wZzpgHLSHmr5/mcdPDmfVGRNKN9fuJ5
	rB5xQVzEEGSPANNZrs0azAXKgP4OG0DxFevi2SZQ0jfOQxgEeQO9zusT8WG79FapMQ+TikWOpdy
	1+eeboGmSIWLJC0ubH9StBvY2yQg0xKARhBForZXuMD8cycD4nRJPfl0e/AWsm5UxHg==
X-Received: by 2002:ac8:7c49:0:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4f4abde36bemr116179771cf.10.1766398452437;
        Mon, 22 Dec 2025 02:14:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpUW/VkwoTMh2B420Zn5LwR/JNf5B3JEYqbroYu1Ar5nKTjpDAYc/M+WvypJlROlgMf697dQ==
X-Received: by 2002:ac8:7c49:0:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4f4abde36bemr116179621cf.10.1766398451958;
        Mon, 22 Dec 2025 02:14:11 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de1421sm1051847666b.41.2025.12.22.02.14.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 02:14:11 -0800 (PST)
Message-ID: <e9c484b3-5c4d-4013-9d62-83b3c7c61ff0@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 11:14:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater
 tuning parameters
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-4-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219173108.2119296-4-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: MXtFyqNDsGsTRIL4ItBnniMDd_41aCz5
X-Proofpoint-GUID: MXtFyqNDsGsTRIL4ItBnniMDd_41aCz5
X-Authority-Analysis: v=2.4 cv=e9wLiKp/ c=1 sm=1 tr=0 ts=694919f5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=TQMmuo1XrLmmHmFwc4MA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5MiBTYWx0ZWRfXxxrlO8BnU+mu
 xoDmvOgp7RI4GwKspym2TwyS48uH4p3B821sz4Ek5NuJoZLYS4np7dvgL5TeEGcJifQAY0U794c
 /2AJUgxq5uBgb3xZ+nswRzKB9BbR+XlZyHEzvPcb9SGOF1t9en4T/rubrtdAjwx+BKsrtfZZ0mg
 f4laJ+qhDz1s7m9TBH3DJLRe/Mchs6HZwMCk5CPlIRr4Zhx7buUp2YDkh0tfcwqfmVo/CpOw18f
 lIdJlrKDBWp8rZjN5UHlmPsKiOtjTD6a7Y8Sr7x0lkPfvKvG9EaSC+q59NJbMMhR/dzbG0ooVpc
 Zd4VmEVM9Zr6IQIQzOxJ5VIjn/qTdvONvRz+jDldlK1K8o0pAfzygQBdnZTvS/AWKx7RHQgEXSD
 25nUjX5z/X2+QMAeK1vEDyBPk5I7p7m2vMEID947WggI/6SreYvGQK60+gRFK6Q15olM3M/mhH7
 mqnxGKOQpp0AGqCDmAQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 clxscore=1015 phishscore=0
 adultscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220092

On 12/19/25 6:31 PM, Krishna Kurapati wrote:
> Add eusb2 repeater tuning parameters for MTP platform.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

I don't see this override in the random downstream tag I opened,
but I assume you're adding this for a reason

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

