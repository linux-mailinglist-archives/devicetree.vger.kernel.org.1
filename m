Return-Path: <devicetree+bounces-243448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F4AC97B9B
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:52:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7556134225A
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4524312816;
	Mon,  1 Dec 2025 13:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WUxGGWty";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iGmK0ZcR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430E9311961
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764597159; cv=none; b=uVTVw9cXR9cF1ijWlHgf3Y33e6dQp7sfUXi2ijf64d8xTfcFIx9DJA9VHiHq7ruI9/fr/tMByYw4PptYy51bxdv4E4Bxl0Om9uJktw1oGBMS5t+hNxrbnWiVj5BWvqEggnK8nZpMgehpdDyhWMRbDEhgWlf0M+h+6ohi8cV/Tww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764597159; c=relaxed/simple;
	bh=LJIjxIwLC2/Z7nIDj8v8nVaC/uJg9U2BzThmKdqEf7s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JUFPrQG9Mg5Kz4o/HadJVP5fOqw0WAT2q+ybeOVC/ihQjTkPP2JUHJFYGt8/lCZwN0FssKEh5YEwy1kvLtlUVsSroqwVQmzthnovUX3aIg2VGRrDqF2PnqRnUL8SbgmHjd1fvDv2syBLsjUknVxIAOJgRs+iyPXPMGRHic10QqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WUxGGWty; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iGmK0ZcR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B18gcEs3433314
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 13:52:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hKjoTfmK5CNT1ZxbXv4duZphnPk0sq4/C0t8cEXPU+Q=; b=WUxGGWty6vdy17gn
	NFfDSGT3YT8lS4DjT9HIbzpYLLKkqgK+TJidMYT+MAHV/7c5EnrsoUEocmD5DHOw
	2odreJDS9aDoJgH8GCXCDGPTdWOi+8iXteglDSQh5h1Hg8emrLoX4umN4HTraD9I
	K3pVEdBkM+dxrdZTpxAbD4yrcCepz19IIUFn3VmUstCNceyEgelPsr8h/YuP7Lgy
	AbxtABKcoZwhaG6EwjBdOym3Xn2F6CK2b96t55wgTlijTUEZIredQlV09015+N+M
	WCqOLuqntQXMcxjyGcvz9D9YwSMRmZFGmXVo6kQrd4l03dYZpOJMbyPfH5e3pJnP
	6IhSvA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as7re0ua3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 13:52:37 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee409f1880so7235721cf.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 05:52:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764597156; x=1765201956; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hKjoTfmK5CNT1ZxbXv4duZphnPk0sq4/C0t8cEXPU+Q=;
        b=iGmK0ZcRDUhCfrjXb8N6+WBjG0FEbNN91S8T/PGazTOBu54dwNDL/WBdOMrfiku9Xp
         caZCSBt0hyGR+l5u26odbro3jLX0FILoPLNVF12NN/ryMP80Kq805leeK0xiXHfDvkBL
         yfsJxi/S8NqPa8zH7JD1PX4NbXMjPUWjkr72/WhKdUvwq/8fH8aOhZ1TUD+OOsmiWOaW
         +AA8yoIWU5mwr8r6kaIWMnOuZE6fq6uVue4Fa9RJHwNaAXMmxatApTztfvVnUBkw+T8z
         nlYXyyCC5mMNfpKv6CmAjMkM2COm7/SV6L6nObnUo3TZj3A3KOtX7uK2xmiYlRwa9IuO
         wL+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764597156; x=1765201956;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hKjoTfmK5CNT1ZxbXv4duZphnPk0sq4/C0t8cEXPU+Q=;
        b=YugpLPbAYeoBVpzOE8SRqisXPqNQ+WomDnNqXJzpg4WdZSEJlno2jnF2Y1pM/GcxyC
         IlQQaQJ/wTg/SnpWKAaMt0H8xhoqXTsy7eRAqtTKfdvMAp74J93PesZ3Ek4Yp1vzf42q
         J47j7aGChJwfJbAjhk2PRrWqPpphQ6v13m6NmZ09aZWnHtw5GhLX5krjvuWqULMPYd1t
         yGgo1R8d7/mmpTsrLfgT25iklBY7isJ/eoFA3B/1yVh5fneYfvZz66hjt6vb3M0aZ+I2
         IULYrqanvhvtNWmflagLNLwtlXrExPptrfkJip8YQv+USj+XN2yxNaQ3UDTaY+5Y6p4Q
         JuNA==
X-Forwarded-Encrypted: i=1; AJvYcCUbFGpdxKKBTd0lLl3b/n99z517mV5IwmA4rvuq5HkbDw1MZjR4B1vBNsI3xaDBwbNItfbV5x4yzDZ6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0wdUcL+9mKSuAjFHjEPhIW2RORDlkqjMb+VBAnDvtIj74A5jB
	VmSghq8/Y8fPvRUF7Lt/h5GB085dBw6GUqIk2Z9Z2InNUqWkLP/Izf6YKkLeQrUfnPN+v/eFlew
	DhR0cDtL3L48ORljoDfBrhhp8uoDuWwZyLzyFuMdAgvWi1BZJ+PNOFX7ydCc7Q/EL
X-Gm-Gg: ASbGnctoq8VuggvhwELNvmdRKLY6SH175Zlg40xdYplC/CkCd7NSftdlFRohrq1b0Wo
	Za24ImbDJvpG6h0V8iHji6FV4ijw6tUI5W9am+XyC5g1dQ4ZVPWaUr99FLQkNHtFhPlr9B/2NBu
	hlbyQV5ZYtbvolVfxj1F3rqe3+CYSG8VxCHWEWm0kMPDGptotS5viuuMm/28/fj1SRQAX/Q7gIe
	a7jeUrmxDA9UqpngIKZh6Ivpa574MQuqdp1PLpNJzJRm6Dr6AKfjDZysMUKiWt1TGo9hwrvtTGi
	BTbE97tGV9R/xn4IkVTO128krD1doclQbUyN7U5gWYLzWfncCmWOTp0kD5wE+S4yzcac8s5Ssp/
	lN6334if2hROUkO5cMe3KgNcTdtA/f60O+MXeEloUJmuW5abtdNDjRwjgxFmxWgB6660=
X-Received: by 2002:a05:622a:144d:b0:4ee:2638:ea2 with SMTP id d75a77b69052e-4ee58930d72mr408055021cf.9.1764597156507;
        Mon, 01 Dec 2025 05:52:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZHK7kWIJ2QSOGzFsqFDmFbZyxcExJNrXPc3ZJA23eiE3fEzbc0O3NQFEGjJy6sHtib7FH6Q==
X-Received: by 2002:a05:622a:144d:b0:4ee:2638:ea2 with SMTP id d75a77b69052e-4ee58930d72mr408054481cf.9.1764597156020;
        Mon, 01 Dec 2025 05:52:36 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5a21cc9sm1218462566b.58.2025.12.01.05.52.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 05:52:35 -0800 (PST)
Message-ID: <11056c3c-452c-444e-84f2-318f9dec6831@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 14:52:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: ipq5332: Add CMN PLL node for networking
 hardware
To: Luo Jie <jie.luo@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
 <20251128-qcom_ipq5332_cmnpll-v1-4-55127ba85613@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251128-qcom_ipq5332_cmnpll-v1-4-55127ba85613@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZCo8a3eVHhq6kdHapQX8buX3BpYGAeD8
X-Proofpoint-ORIG-GUID: ZCo8a3eVHhq6kdHapQX8buX3BpYGAeD8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDExMyBTYWx0ZWRfX5ojPEM3wqNim
 lo2xGj+3a5fgnLyD4UlRM1gqAjJyENv7CilDjWtvn9Ph8oQLC4ssfAo0q2yOJmdRFTpDSkRSGzl
 HY08zznskrYwXQsJnER5EYbejnqdw21j5cRO6CtQzAlGeH1C9gDT2omSfnZS9eNdoR6/dpWWgZh
 6cbSMq57ytWDbDL47yfgxUzjl2/1O1y6nthMgmpNjE4YOgTtfjRRFk4aNxXQ+D9dkqx8aprp/8R
 yG2LtH41hdPhYW4EyZ1GqC53s8iB/ALZYF2V+8lVVtjpMhsnZycIeMNNYRziIj47JrbNI6kuX/O
 pCiTD9KA/dogLk2AJLy4RWfkZ1vC/eSbiB1lQKjxT2rzOGF02L2oxqdtIa8ejD5Ydr4Gu4etEiK
 Gv2lx7+OplJERhfAzLAJ2aYCYrK20A==
X-Authority-Analysis: v=2.4 cv=BOa+bVQG c=1 sm=1 tr=0 ts=692d9da5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rMzbURfg88p6aAaFaPgA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010113

On 11/28/25 9:40 AM, Luo Jie wrote:
> Add the CMN PLL node required for networking hardware operation on IPQ5332.
> The CMN PLL core runs at 6 GHz on this platform, differing from others like
> IPQ9574.
> 
> Configure the reference clock path where XO (48 MHz or 96 MHz) routes
> through the WiFi block's multiplier/divider to provide a stable 48 MHz
> reference to the CMN PLL.
> .XO (48 MHZ or 96 MHZ)-->WiFi (multiplier/divider)--> 48 MHZ to CMN PLL.
> 
> Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
> ---

[...]

> +		cmn_pll: clock-controller@9b000 {
> +			compatible = "qcom,ipq5332-cmn-pll";
> +			reg = <0x0009b000 0x800>;
> +			clocks = <&ref_48mhz_clk>,
> +				 <&gcc GCC_CMN_12GPLL_AHB_CLK>,
> +				 <&gcc GCC_CMN_12GPLL_SYS_CLK>;
> +			clock-names = "ref", "ahb", "sys";

1 a line, please

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

