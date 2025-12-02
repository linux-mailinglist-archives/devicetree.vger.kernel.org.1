Return-Path: <devicetree+bounces-243713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BB3C9B979
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 14:28:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FC293A4A00
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 13:28:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B18314D3C;
	Tue,  2 Dec 2025 13:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uh2B1dnl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="edaX3CSg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D5A314A74
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 13:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764682088; cv=none; b=TEI8oZa1hb0H8Km2wsbouHQNNzhUbWeLyWdlz4EaEUvX2Wd5wkl9oW0y6s6S4cvod6HF+La9UoRkXPBZTD0aQGxSNEz0RwezPjSTxn7UxF0pyoixf/eM6y81dYB/aZT8qZVUnT+5bnmWCXFJaRNCSaglviLqkD1yCZPP8lKcpTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764682088; c=relaxed/simple;
	bh=omEADPEFpCtodFUgCY7F/Xae9OmSA4gE2tWXlmUU05E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CSpP6mIpsjGUlbp+JbVk/krcHWHEyG1UfkqiCqOShOBrv2Q53h4Y9Uv4d4b0uyh5I6kIc7QxTU9gsY9GHxkLqYrOGU7DCeb/PkqGjAoGhcOEbwhGpjC8FpOvW4J8W5bMcaAdZ5qbK80qTEkreYbCeBjZrAcVkRyUsZ4QmXqYOBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uh2B1dnl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=edaX3CSg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B28CdpE1491744
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 13:28:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cGSZe87CZjxr7Wk/kqndn3Caz/wNBKP+z4zDP6I+8Jg=; b=Uh2B1dnlxaBY9yux
	5+X68KQrLjS/X35pJJMt19asVdm4bvm1I7xG91QmYyTzuqe9KaFZpcMcA9r8fLfm
	hSKZWHLwVjx+7bVsUYuIm4by0PXSClfqXM9wr1rsMP8c8jmV87AfEWTOsiFlPWg8
	tqF5EcotpU4Kkyr5CCDfbt00krB2542m+ccxd65r0jstIlp4kNLIPj9dgIJ08NSo
	30+Bfa2THF5jsS92wLUmYe+v38GeVd6L7fsHTFr+m64vEHYA+j2BNM/Uj8pV5K+Y
	ql/F8/1rOMlrvfY2nbN3OXZzQlT2N6roPxeM/VK16xm32k8tmYSNq2CreeUSkWbs
	FuRYsw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4askbd2gw3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 13:28:05 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b10c2ea0b5so183464685a.0
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 05:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764682084; x=1765286884; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cGSZe87CZjxr7Wk/kqndn3Caz/wNBKP+z4zDP6I+8Jg=;
        b=edaX3CSgRvvL7x1QiUnh7I58GH0Zi91PqOdiuvQSCZuQopkxjbpwphKOfvqxfBwUP7
         J6/+NpANZDbAyDf4qMwDbt1teg+AlVZ9yW0FihC7wpwHIz7Ejnkev87SAJjRZDSLwtGp
         PGW63GWQgNLw1wxZt6GQass31VwmaOVZETS7tkMWtxFpzC1Deae9wDlUWYW13W1FmIk4
         Rwk7l1GeMReKGVgV5Mu1hDaCY/qtDPla95DUwUD86U7RccmoHkjtSh2O86ay/C0AxnxD
         OpHaMoMuNo1i3ICAYsjhGSYBseo9TEuU3/YsEanb1QijciG4/26YDVn3Wj1Y0AivMWsE
         NFUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764682084; x=1765286884;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cGSZe87CZjxr7Wk/kqndn3Caz/wNBKP+z4zDP6I+8Jg=;
        b=m8IhbBlYZZynPc5PTPSAL2444KS54bibW1qyDQky/zOiCk0Kh0biEvdrmTSOAi9B0R
         psXjjl5k+ZShAdJXxfhRon4njpKNSBiZQtNkjrTY0I0rfPQEl0gCEWHgAnbkENLkg3Iz
         jG5RTJD/Kxc8QFNSm4Odka1dTsfT4HPuY+1rc8vSD23fJeFMp6Vad26/h7Z4j2SZeFEy
         FYFUf3zms6dywfcgNe7B1Z/UcUAHMT2iokfSlD96IHMRnxv0s8H7+1yTHNGT0uysFBLT
         fDKsYMjWKbsk49xG3b2nvCh5lEPn/a28LDqFjkQGThrLoX3sjFsVOnu1quD0vn1E5Jse
         pSDg==
X-Forwarded-Encrypted: i=1; AJvYcCVUJveeoC8CFOSUQpWBQXQbTPn/fBKjyioGnJBKU96ZUZIncAlMh1NJAKUiu7zc86fy62+7LtxAlpZQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyFK55WW3bqhg1g7GJiwV5GEsTvva7WaSiJ0iLbiYsoG2M1RFiW
	JNQ4h5xuF90rlsHDbe455oGFWIRKrvVrTKOT4ybuYbA03r+UajHAgoy08Z75aHybrZKVFz7xhko
	7J1Ai/XJAobQB9k66OlNoTS9jfGqUnmQRVASQSglRCzv6IJx8F2J/WRxXSVPH/e3P
X-Gm-Gg: ASbGncuU3GZilg852WxEBEthjPR+B/+sZMCfNDd2XWuMmaMMJ/w11QlAkCn4Ue+SWs9
	72HVp/EPhYzkUBEOHisC2w4EUecd44jnPTwN0pvEpOdEfKxdkLD21KHN7CBal3cn26miZ8kcKBV
	qm3jEuMQ/wDqOXGH/Kwuj8R2CeUB4fumoZyz5KkiYk6pyn146tOaFD/ZEicrujfGb7zwNBxqvLm
	zTYTfm94QH0pwzv9DwntMT7uD9/m4MX2dA02SEu8QAlMvbeF2BHPHG7744OcgbqdNbYuk5P8Ggi
	Kx0jB8dAl9Ki33VelqZJ2jp4aPud5u0e8t+MJq1V87f1+BMDEHEA8VoZ/vj2cdd1RozwTEjKnpp
	qVJBa1gndo5t+rZxo5TZLRZ7jFpyrWWKTpvUgRpn48KJRj+iyM0+6H7F0oemf7exyXw==
X-Received: by 2002:a05:620a:4490:b0:8b2:1f8d:f11d with SMTP id af79cd13be357-8b341bafcb7mr4289437985a.2.1764682083988;
        Tue, 02 Dec 2025 05:28:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHDne9RM5gYuYyIL53Is5J79nlq/wsUZ8mDjrDMvIP+gfH9ZVz1YXpUMUnVdDE7teba51LEBw==
X-Received: by 2002:a05:620a:4490:b0:8b2:1f8d:f11d with SMTP id af79cd13be357-8b341bafcb7mr4289433685a.2.1764682083415;
        Tue, 02 Dec 2025 05:28:03 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5a7afb4sm1500312866b.70.2025.12.02.05.28.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 05:28:02 -0800 (PST)
Message-ID: <bb6f83cc-4f6a-44f8-9997-fb91e7c2b4cb@oss.qualcomm.com>
Date: Tue, 2 Dec 2025 14:27:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH 0/5] Define VDD_MXC for SC8280XP
To: Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski
 <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251104-topic-8280_mxc-v1-0-df545af0ef94@oss.qualcomm.com>
 <176418784438.1591314.8587929353938909456.b4-ty@kernel.org>
 <20251201201440.GA4041208-robh@kernel.org>
 <CAPDyKFoGQJA5UY-96HvfoA7WMb5wYFXFFfFREpMmK29GE7-Nag@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAPDyKFoGQJA5UY-96HvfoA7WMb5wYFXFFfFREpMmK29GE7-Nag@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: HOue23vEw9CJu0qBCHw8SfuG9xyG2yZ4
X-Proofpoint-GUID: HOue23vEw9CJu0qBCHw8SfuG9xyG2yZ4
X-Authority-Analysis: v=2.4 cv=fLg0HJae c=1 sm=1 tr=0 ts=692ee965 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=Dp_8vvBim0L4lL-PpiYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDEwOCBTYWx0ZWRfX9k9aGihC/L6/
 BcZUROPLkLcgGRpISip5Ipd2rXiIAq3YdnQSYqOn2oj6YiFMPCGS0x5UE0CE11rz+f33J+UtNyo
 p5T4DeUZ4MnIJ7OlpzjWl5MFUra8fGRyyryb53gMqAJ/UT7+dLHBncM2kNCqCfYjIhIIVSktK1y
 DQjcWqqWw0oGW3nTxGt2g4r/q+ADS1E06HSQiBCxqhpf5YnDDD75QP0u6CXHGM2F1PMuMho1qq8
 GeWvRhuwb6gS6ZNU2+5nPTDGB58OrKTyIRNkIZHx/2wLlz0K6enIP2nDnYDIB4kXvy7+zPH09co
 wZKQPV9iipKc4uA8O7G0y0FEzu7I8FRSyVjLn04Iwb0LBDFPKzpnSd5ho3Gzm8ggFyf+isxUu2Q
 Xe0Vh4cgNDS4c74gOXW60T3Ctu7SHA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-01_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 phishscore=0 adultscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512020108

On 12/2/25 10:19 AM, Ulf Hansson wrote:
> On Mon, 1 Dec 2025 at 21:14, Rob Herring <robh@kernel.org> wrote:
>>
>> On Wed, Nov 26, 2025 at 02:10:41PM -0600, Bjorn Andersson wrote:
>>>
>>> On Tue, 04 Nov 2025 20:31:05 +0100, Konrad Dybcio wrote:
>>>> This has somehow been omitted, leading to potentially stale votes.
>>>> On the flip side, the domain will now be powered off, which will
>>>> uncover any omissions we've made in the DTs so far.
>>>>
>>>> Reasonably tested on an x13s without pd_ignore_unused (camera still
>>>> works).
>>>>
>>>> [...]
>>>
>>> Applied, thanks!
>>>
>>> [2/5] dt-bindings: remoteproc: qcom,sc8280xp-pas: Fix CDSP power desc
>>>       commit: ca079ec3ebed19a12c1bf080496dacbc6fdfbb39
>>
>> This has was picked up, but the .dts change was not, so there's a bunch
>> of new warnings. What's the plan? I know it's separate trees. Can you
>> please take binding and .dts changes like these together if there aren't
>> driver changes?
> 
> I was planning to pick up the driver (pmdomain) and dt doc changes, as
> usual. Although, I was waiting for the discussion to reach consensus
> around dts patch (patch5), maybe it did?
> 
> Björn, perhaps easier if you pick the series via your qc-soc tree and
> send them as fixes? If so, feel free to add my ack on patch4 (the
> pmdomain patch).

FWIW the part where the CDSP power-domain list changes still applies,
even though I was wrong about the CAMCC requiring that too..

I can resend if needed

Konrad

