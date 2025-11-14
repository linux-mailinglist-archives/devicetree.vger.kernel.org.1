Return-Path: <devicetree+bounces-238907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D09C5F7D7
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 23:17:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0E7B3A0753
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 22:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1808D30ACEC;
	Fri, 14 Nov 2025 22:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="miU/a84C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aHZuM8mQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965602FFFA6
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 22:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763158618; cv=none; b=fpNPk5aBB8+Rxks7ZYOojHNqiUO0Z9R8K6yizs5eA0moAHt98wX2Ct1Vpkx4gyLWKkxG28tD5k44f7x6L3K3r463kFEEFL3p4e5vSjrHld1cAGFYCz9eir+eeZ9bpaZYpdbsQh2gDEXGekBHgV7t+3X2B1Z0zaVPwVYXUk6ZK0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763158618; c=relaxed/simple;
	bh=Euo3aYyIiS2EFzYRpUBRUMp9JkSwubI8mtwHHK57FSs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LFROjWM5ZMnSmttuvvLbBH2CrNc117L7QLDqEV74yh0dJP1hOi5+ZedhKp33DccznIUp4tU+UdSrYJVSI3CMbTGYdyDrBtPMvY6vyEJoVoy6E5bwzjSOp89tiMlpCEuOVfPqtuNQJSm9tVR7GDYf8tQnwZBsa6MLrRfYFEDPNDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=miU/a84C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aHZuM8mQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEIQ9MB380829
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 22:16:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ztuYyaE22UQpg1VtA7huflvbOJvFMCvZ8dxISGtSh34=; b=miU/a84C32DqdD0z
	21baSOB3AveoQhq+vbZ6Az6dl9OJb+X8KQneUyh2ZOvFuIuiHUmeltvI+DUV8/ke
	rIKgEctqhccb/sV/CbW1zYMTYBnZaQsD7rC5OJ5hIqdZXrBnJanVoveR8pSN+D1e
	N/okcizq4i4lmYM+AZ9DgS9fOKNp5XeK14jI7XhR8QbHRIA0KRyKkQ+R31ueaSF8
	FDZlHuN0qJzoxNNueytjycl6T3gK5qjLUTtZp9GaILFNs2MYNxP2ng48dOaLAQAt
	bbmSK4jQhHTmcN96AnxBgyvmyryI/s/NOSY9K12oZ0gg2VV0EMVYhnzlwvo9nc1B
	0hZuPQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae7qh8yqt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 22:16:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edaa289e0dso9143331cf.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763158614; x=1763763414; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ztuYyaE22UQpg1VtA7huflvbOJvFMCvZ8dxISGtSh34=;
        b=aHZuM8mQYsCGtM8wSsktH1odDnq5QjK/Iz3GtPHVAO0+/dZHGCSiAXqtzHFmBPrKG5
         NeDPVeMAijHBU2rku1QxwXC16Tw26G2OqlbvoENZSTAXwD148c1wR7kYqxNAyfbnXExu
         xKz/W96XnB883is0phBupiKK8I1CXttqDwbDldJ8BAVfqVuRSExzpVeVSVhzX26dKYh8
         dxMOkS9xj7JzcdYVe7sY+sh3TmiwUxWYfic0iHwFU99VOE6w9jSlm07FLOMbZroAKUgF
         EZ6KU1BG1rYuccDkoUdY75NvbpK0akDw5Rglka5+a2rxoK1oUMDi0cbwqj9uIXOvYKGG
         SAtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763158614; x=1763763414;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ztuYyaE22UQpg1VtA7huflvbOJvFMCvZ8dxISGtSh34=;
        b=kBwVTWQ+ToulU6YkqYtWM/GAgCb62xO+t0aqhvqieseKqLO22RvrCuAoDMMj6mm73X
         5IZMameqF+UXkhBw4eOjPG3lCqkS9sEfKfxUv48OH9QioHUxo9VdanXdyZR2iDEY3htQ
         BZyBoyO1vE5ltawRCM0wasJjVjIOrkLKgKV12HXMOtY3TMDBoLtaf7ngJFNHLzKdm8Pe
         YIn/mfhF+VuYfd+Jiq1XZlXdfbcd29Fg0T651m53XnXnxesTkh6Jm+bdKR0d4LcPMrQo
         N/rl0GPZRmb1KJ1C9gjP95LYfz02FwqcpqoN6ZFK0CtpSqgC3TBGaGr2jskNqEI3Dqa0
         5spA==
X-Forwarded-Encrypted: i=1; AJvYcCUJvgm0Z7tc5dM+xVj8LXctjfx+gpL7Om7znAUuFd88h2p95SEh+LnKjBa7Ve0GZN2qcAvM/n+hIV5Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxzZKej0qqZG9XYBKqtigHWOUxhaXYYh1WzdZJ5AOQtSLtehXS7
	FdIC/6aqDe9dsGfAhDZzlf3OkDMm/+SJIrQqsFmyRJhILRfDM5Pj0pHxHfsQ/7GWInC1p9bicri
	WkNNpG+y2bgS8fPX+q6kEb7eL9euEkK4fmXzyuJhZsrrzkAjN2U9A6+eGXzdOIanO
X-Gm-Gg: ASbGncsTx+ixoEl3XvaKxTX1gxq9ERmCOoSxEr5c6/jsvzAvi/avvVKTpLP7W/vXRJj
	Tp+B2L0AduBCJStlFtizsfGZVEPeK0/n4a9SoktoIcJUZ5ios6eUczqEc0p2yPDmWo0uVjIe4Bg
	N/E6X6aEIlNn/PL5iKekfEUDloXjDLzN2g3w80m2YyxiRG2C5+NfHfqTxGYzMwRPgKj4Hb1AbsF
	Ri3grJFEZFne9xeNwrTixV8RCJ9okfWc5W8+6TYDgIDXi5/hT4gRk3p4V+tQZlN7p2GTdQPGcns
	dFVbyBiqFWLA1ylZXkTD0MGj6dSpMKWzd3T9JFDOE9kKyCHkDsl+wenP2h8vd+ah6bGj+ccoakL
	uT4LE4SWqiQjgiiyrbQB9WZ+7eNWyUJtU/CzNrGkkdHf+OlWPWtzKhh4V
X-Received: by 2002:a05:622a:1820:b0:4ed:3cfa:638a with SMTP id d75a77b69052e-4edf36e5099mr44152401cf.8.1763158614246;
        Fri, 14 Nov 2025 14:16:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0nd6c/kzzPXZC2X5wHVvvmNWn5NWPaIyzTQSgkf9L94Ds3FA9xJLXbYLBIFCtp2rkNjJ6Mw==
X-Received: by 2002:a05:622a:1820:b0:4ed:3cfa:638a with SMTP id d75a77b69052e-4edf36e5099mr44152181cf.8.1763158613803;
        Fri, 14 Nov 2025 14:16:53 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fb12c87sm471442266b.31.2025.11.14.14.16.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 14:16:53 -0800 (PST)
Message-ID: <5fbb0239-7f8d-4e47-b035-4de270b6a348@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 23:16:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: qcs8300: Add CCI definitions
To: Vikram Sharma <quic_vikramsa@quicinc.com>, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
        catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_nihalkum@quicinc.com, Ravi Shankar <quic_rshankar@quicinc.com>,
        Vishal Verma <quic_vishverm@quicinc.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20251114064541.446276-1-quic_vikramsa@quicinc.com>
 <20251114064541.446276-3-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114064541.446276-3-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cIvtc1eN c=1 sm=1 tr=0 ts=6917aa57 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=MC0u2OBjPC9q_JU67CwA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: WtQgM0maaLJ-oFo7qBEPueov3g-ERXpQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDE4MiBTYWx0ZWRfX2+eZhjTOAdj4
 8RwqTe66pjseD9YK0T4oEl8NS/dbk6vei2LNe25jN/r6FDUdOlraLu3Fh3pYMIGiFVFBiUAUjxQ
 FYnOcOnX01+f0lV/EfXKZfEm6yh11ZuVpEuHkw58S7n0lLLYIolyRH9FXcDGFFMhG5MxlW4BG6m
 tvJnrRutGIZkjj3c054ViIHmjPTeMRJSk4/8e/Xy3rUyog9Xmvp61jEI6skmnbDp15UtiZBwHBB
 LHQiIuQPfNVv0lTsGi9NncPWErcrBCwyF4MB5wqXyjpu1UrYErFgpFR05ftljfFieLNExhh4Toy
 bEtnlSD8WacKCHnQwf+rYMEayI11Lu/wSHJr6Z7/kBPXhuUrvv1VPMwv+Y5d4/AMI/SkGujBnNS
 SxUXdiI91uArkk9euUFOm2mIk+CGrg==
X-Proofpoint-GUID: WtQgM0maaLJ-oFo7qBEPueov3g-ERXpQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 malwarescore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140182

On 11/14/25 7:45 AM, Vikram Sharma wrote:
> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> 
> Qualcomm QCS8300 SoC contains three Camera Control Interface (CCI).
> Compared to Lemans, the key difference is in SDA/SCL GPIO assignments
> and number of CCIs.
> 
> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> Co-developed-by: Ravi Shankar <quic_rshankar@quicinc.com>
> Signed-off-by: Ravi Shankar <quic_rshankar@quicinc.com>
> Co-developed-by: Vishal Verma <quic_vishverm@quicinc.com>
> Signed-off-by: Vishal Verma <quic_vishverm@quicinc.com>
> Co-developed-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

