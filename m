Return-Path: <devicetree+bounces-194203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3FDAFD4A4
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 19:07:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E6CC17713F
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 17:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52A1A2DC356;
	Tue,  8 Jul 2025 17:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Elv9pl0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7344202F70
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 17:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751994357; cv=none; b=LJrKppdox1RExjljO1zwgrYL4CiATs5h9+pCzYKlFdsa7FKhKXA8ZEyz9u/GlVzLToUAie7A8nQXjcya8n/iEQk/5QuaCG6txqruQtcCbzYxsSLO/IwbaSdZapRItpAzydA74PEYgphovg2866dNdBUUsT4poxowG3EZDaxO57A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751994357; c=relaxed/simple;
	bh=JkkoRasbjut5jeEzMBbaFs/deflEAfLkvWph7zunias=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CIRVr69xWl3KCdv2C8ZfVS6p7PA1trTprtUwcMLM+UVyfMtD4QmBpK8f5kLpziYK7CpfhFY8ccGb7ynFwcXrBWk7KiHX5rv74QD+qqZUvF/wIY35bYY25XJz6o3Wm6o0mLsJcUoIoWq/X6/hhy5mEfTJpVH6Rb9CjqkGKdsym2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Elv9pl0o; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAFTN008233
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 17:05:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jO475jfbdZtuUnAEEFejjl9IeIhw70hd63tcQP0evVc=; b=Elv9pl0o+5MZFAaR
	LAVj+oBZl/wr4/pN4jBlBNCmyWyV4dXEj4GbqpPXQ0DpXNR4JB/2NayF4qwXjZyj
	AoAbzxEbSK4TnNPCwDrDYc8ZciHU294JmiV+wQTNqDve5Scc/WOJkq6akMzqUrWp
	FaO5lkfSc3ubII7n8tLipOuf7h9n61BnGN+JIR6s3833dDbMMr/AmsPv4TQ5ypiE
	thOYe8ZI8bUYTpqX/yRnOJ0DSPKJxKLlIPnbQef35YHjQfHlVT0rhXNgxGeB2B2J
	jVOk8XvXnMQ41+UYieWCFF4K41r37iWcbJa7Z75kGKyH3SxK4V8uL8B8ZpTfhges
	HQbTHA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pucn0jcq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 17:05:54 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d0979c176eso47365085a.1
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 10:05:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751994354; x=1752599154;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jO475jfbdZtuUnAEEFejjl9IeIhw70hd63tcQP0evVc=;
        b=HBLNYWXfmcyKggq8WTTq/SeiWoFwVIOxJo0CX5B2kWctrYKt68opa137PHS0TGGZKZ
         pgIAjww9j4NsNnvD9hqZDrhaqxbypqt0ewXJJ4Z0NGDdw3s4uB5rJVxbBydoify1veW/
         QTForqB/xxPkbW+QRI7SeEAERp/pWaIqDO7QVCy3B3GHspGy1oSgDXJ+pzlYAvfkNQ4T
         Hkmt8PFLVzAvp8i9H+4wZcEfIlnQkUS6AmusYisu2vWO7Uz5l9rXbA3lcINWSR6Ycbh+
         cTMfk7l1K0ZsGIU2dMCileWawyX0u45CGV4Q8l9MXBn5H74+PywmfbLnA7TaTHFOCoQe
         FaXg==
X-Forwarded-Encrypted: i=1; AJvYcCVbog1lh6PpQ0QdmJf5XbH/JApwM+hOqZRY00EuUvwqbyNJrrOPvlCHAiKCu16gNSvxDyCa1aucp8rL@vger.kernel.org
X-Gm-Message-State: AOJu0YwxmV/uWx29CB9J+tXljGajlxoUqRzVKuTEoRg+UzRG2L9ZXtNA
	HPsNrMQ5/xREcAraRzjjIgWas99FTCFsFoB4pPvUYPwR0/opfIJ30xHW79REDgJOJsclsxmx9FT
	yafwYkq0+zm1QB3otf0CaYuFekvKiGohMF7mdEJAFljIi4p85Px0T71sTzYT9Zul9
X-Gm-Gg: ASbGncs6t0c8H9/gcRx+L/9unZbq3kkUTP/i81anLJaGNxvXD2c9FmHi8R4ec330CJl
	iC0lPcuZOZsy5cWBpxSF9p52q3NUPakgfGiQobXhBeWdzBzfvXzHUX/hlmrova6CWew7OJ/k4CS
	IA6g83MGcBQtCv3nFJCcw1wudpIAXYt/ZMH8/anshMmZzAucjDrQ/i1rGb7Qt9UyGU8HLZBpOVg
	IQf3WWDUCf+MCotyXrhXELjsE5bZ6O6vpcQs+c2gNAnS8HKoP9bSq6wK840MMNE3NhmAF63yuMx
	GMTDSM3JRNAGAK6qLqSreI5ZruSeJwB/eP9sHa8dpeGWo60VpiSmwtWiqawIWZv6XNgeTw01Y3Y
	2GDM=
X-Received: by 2002:a05:620a:4620:b0:7c3:e399:328f with SMTP id af79cd13be357-7d5ddc6a375mr819209285a.11.1751994353644;
        Tue, 08 Jul 2025 10:05:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBQAgQK/OIkLhExQIO7Vx5N12WVddGC+qRYQISOisMxT+bNVcjk5L/dx/BL3EDDSLrEuk+UA==
X-Received: by 2002:a05:620a:4620:b0:7c3:e399:328f with SMTP id af79cd13be357-7d5ddc6a375mr819206885a.11.1751994352952;
        Tue, 08 Jul 2025 10:05:52 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fca69657fsm7480922a12.26.2025.07.08.10.05.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 10:05:51 -0700 (PDT)
Message-ID: <cd48db9d-109b-445d-9aa9-06f20efcbe35@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 19:05:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] clk: qcom: gcc-x1e80100: Add missing video resets
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250701-x1e-videocc-v1-0-785d393be502@linaro.org>
 <20250701-x1e-videocc-v1-5-785d393be502@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250701-x1e-videocc-v1-5-785d393be502@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GdQXnRXL c=1 sm=1 tr=0 ts=686d4ff2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=tov9PLxJY7Hhyj_3EZwA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: JYe7QmUuIodxgftlzHtn6w6YpsC3wIMK
X-Proofpoint-ORIG-GUID: JYe7QmUuIodxgftlzHtn6w6YpsC3wIMK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDE0NSBTYWx0ZWRfX+RYHZI0ssgEY
 M92vYgkWuCjXDSPauuptK7DzTqk+SenC+Oro0RL3C0BaBXDbt+kTezkp7lFKJLbIEb3Us65A6XL
 QKs8qoxA1h4dp9D+Do8Ud7TtZXW0DaOYlQG9GRa1GmnJKBuOZYNf/o0S/WbVhGsJMKh6G4aqvDc
 SP2DFCBCcLHDSw17DtaCVXnFf64IX+sFF48xqy6UYvfAQOKDweHqlYH//4UKTZZ/tFzEXlmje0A
 wDKPMhzNnGvS8+T2w0vMOrFu1KPiGrN08AGpXZZfNwAg4hmFD9RUlAu3lXrTUQLLuKe0m+YSagY
 Y5RkO7GIQe6n8p8U2K8CION0TPmSWKlbr6E5xUlI9/mMa8ROZqvxvDRyFBTKCOuxj2dmAVbtFnv
 aBkEja8Geh5yw1tB8LzsfMtjqXmE2EyJTYHUEsu9TNxkq9q5dTWjmTjjuPaqY0ZZHZmmbqIt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_04,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501 impostorscore=0
 malwarescore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080145

On 7/1/25 7:28 PM, Stephan Gerhold wrote:
> Add the missing video resets that are needed for the iris video codec.
> Adapted from gcc-sm8550.c (with adjusted addresses).

I don't think they changed

> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  drivers/clk/qcom/gcc-x1e80100.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/clk/qcom/gcc-x1e80100.c b/drivers/clk/qcom/gcc-x1e80100.c
> index 3e44757e25d3245e455918e9474c978c8dacaa5e..301fc9fc32d8e6e1ddf59c1d3350d84f6c06e4b6 100644
> --- a/drivers/clk/qcom/gcc-x1e80100.c
> +++ b/drivers/clk/qcom/gcc-x1e80100.c
> @@ -6674,6 +6674,8 @@ static const struct qcom_reset_map gcc_x1e80100_resets[] = {
>  	[GCC_USB_1_PHY_BCR] = { 0x2a020 },
>  	[GCC_USB_2_PHY_BCR] = { 0xa3020 },
>  	[GCC_VIDEO_BCR] = { 0x32000 },
> +	[GCC_VIDEO_AXI0_CLK_ARES] = { .reg = 0x32018, .bit = 2, .udelay = 1000 },
> +	[GCC_VIDEO_AXI1_CLK_ARES] = { .reg = 0x32024, .bit = 2, .udelay = 1000 },

Hm, so this is actually gcc_video_axi0_clk (same reg), but the bit
indeed is described to pass on a reset signal to the hw block on
the other side

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

