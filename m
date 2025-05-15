Return-Path: <devicetree+bounces-177720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68924AB8B57
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:49:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C1673B0BD4
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 15:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F99218AD2;
	Thu, 15 May 2025 15:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HYXiuIxb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E780F21882B
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323760; cv=none; b=kI7qYbZp9ce4ydlvD9gAaE4AG8etLhO2nX+n6Mhr/dRZqFCR7k4Z29BcvlWiTEn4uGy+xsSjiTQPsNuWGulYB/EuYq/VbWmJbHLwaiml3mLeNkFJe28XDgxvVPKKEhQdMrSOC+yhBERCnjxvwfadnmJEZL22MUNm62ItCOjcaYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323760; c=relaxed/simple;
	bh=FEo6NTHasI2BR0LBYbvtpmuoiyrBx+Jq0hbw9nffhCQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kunJ01Mdc7Wv9yKPJNE1ogYTPcxHZJ3xMe08sY3YKyC7WUzQcM3QcHuUk9D+XmcjJBErIcSPnxqKeOfDQ05Bzpqroqmn0aaE/fclo6VO+WHX0CLnL+gEv/hzrLnS2y2kulb3wectkoKSF0gjPVHL/KgROv9UsnqYQCGHXlqRG4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HYXiuIxb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFCZP026156
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:42:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1Gp+EaaMTwpM0ikpSFqefh88Lpc/kVGRVyoOOkW3KS4=; b=HYXiuIxbWR1kRIEa
	0J9gPCpFT7y5dr+Jyw6qlYLYMpIcz0wChUrH3sZ+YOaA+yBP0dEx+8btwj/aOGln
	KZM5l2lQeCFtIbvL3Yin+n1yh1GXkWDM1C65Rqc9XW/B9nN6jNHwNakbCjBUBG3D
	vyL6t1OwLl0xOgexGtOj8Kn7y5fSYmbwQStjxJ4td91LDD7qot5KVb9LUu7wkv5H
	KFq/a+tiO93am4fysiDbewBBMkDhLCdWhjYzFzakj/lm0lj6qkgEyoVAmRw0hTQo
	N5ixLMExmiw0L6rxjlWWVz17AwoeFgKUV23aDeqY6Yr9O1P4uiPKfLzN8cGVD6H0
	C90h7w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcypu1q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:42:38 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f899c646afso3527916d6.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:42:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323757; x=1747928557;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Gp+EaaMTwpM0ikpSFqefh88Lpc/kVGRVyoOOkW3KS4=;
        b=VwiZK/i2Z/SSTi1/GzupwsyzvAN1Uh/S4ztuJ1BYgIVC447ygPaz57HrG5gAqmMGN/
         LQCG7hvVE9uF9+Up0y5Ow+vUNBT0wsT3eP+9Zi84RFPG+onHkHdtLQeZtJ99lSfpXu1B
         bhFb8LPnBk+yeTHJA6Dsgy2eD/DD9JYGW7H/rm6DRKI/Xzrxi3B3SKpxpkBGqfZ5Xn+M
         wrZYbP+HW0cgNdHo9j6VKSuZ5olnJqFHnYA7lO6Ceur39GiqcqXiq2xWdoOtLZW5Imyy
         rDrtXG32Ld8WAWMFESHsdWEPaeUDss7dswa2RR/fnBpfWLGGkFYD/nJ9SRFd0H1o/dh2
         KEDA==
X-Forwarded-Encrypted: i=1; AJvYcCUUjIJBoVJih5yO64njEf9HOqNeV/EvC5LZ9Bkw7j+Fzzp69MNR1wRTd1CD/ax/cT4ZmcTyEqp/bVa7@vger.kernel.org
X-Gm-Message-State: AOJu0YxocBfNjQ8vhp+fdXAUc3HjgCKX3ZzW+7Ssmj0bYZY6XqR/NtOT
	Xl2kB862t+yBCFJLwKhAeFEcbaJxtSkwEhRfSZbprATrqVERENaJ+F2yZNId/5NUhVaBBqKEe4G
	mhjh+hWZpNZXyHJxGQf5nJgXqqZya2+L9U3UJbP2gF/7at/ZXB9zxTxvp78J8qRan
X-Gm-Gg: ASbGncs+I9LrlucaS0VPMwVKexhMmN6cGLWKacHGG0XHCNlLQfhEifrjW8xenrkZBl4
	Db+TGPECRV7fC2hdDssXk7ne7bWEr1OpjBlPIFHuCaPqCTbHppaeNDm71nxEzuKW+cm9bn2IMYr
	e0TFRiZ9duu7xkLSLYD5uQQOGaltpkhuS54scctI18+TjzyOAQH64peqZxA/DNuVSig1p2FdAXE
	pRaIbj62yrWczTra3celKpgU7H6ytJ0SjIQqF/47jC05BiCp0Ux42GFOEp3nOLVvsvBqaT4uPJ7
	hNR9zhnSg3m6IFi4NKYzbvbOIurSjgWlomTsScjnzezvBpE1pTvFH6w+2/2cl13K0Q==
X-Received: by 2002:a05:6214:2602:b0:6f5:4711:2987 with SMTP id 6a1803df08f44-6f8b082862amr1258476d6.1.1747323756528;
        Thu, 15 May 2025 08:42:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHycrvO/sWsH1BFm3roYJt54oQuAdB4SWzNxmk0MLSaYCohDOB0eaQ5GpCEYDaltbZ1ZS+nSA==
X-Received: by 2002:a05:6214:2602:b0:6f5:4711:2987 with SMTP id 6a1803df08f44-6f8b082862amr1258156d6.1.1747323756110;
        Thu, 15 May 2025 08:42:36 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d04b059sm7133266b.10.2025.05.15.08.42.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 08:42:35 -0700 (PDT)
Message-ID: <19d32dfb-9842-4d5f-b9ee-cd5926e52751@oss.qualcomm.com>
Date: Thu, 15 May 2025 17:42:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 13/18] arm64: dts: qcom: sm8450: Additionally manage
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
 <20250515-videocc-pll-multi-pd-voting-v4-13-571c63297d01@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-13-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: kV5Fd2ba75pE-ezbDqzXDTL1_M-L8xXn
X-Proofpoint-ORIG-GUID: kV5Fd2ba75pE-ezbDqzXDTL1_M-L8xXn
X-Authority-Analysis: v=2.4 cv=JszxrN4C c=1 sm=1 tr=0 ts=68260b6e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=pq9-8jp3JCCm2Y5_lFoA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE1NiBTYWx0ZWRfX+/FVGvXL7geB
 nEt60QtD049j1Bk74AMeIDmjOwS3BRX/6NlsXeXbGEwmFMDTRuqzAkNg7wW2arAKQPeAkmeOoBh
 Wk8SkHkctampWWZx3M1ybvGGcmpnBlvrkXlZI1ipX/LsZtcJODcI3JVy6wAwf0FoYU4CK2mYgDf
 6ye5Ha7ZW6aeAm31a5gxIyB1OiS8SIguqDlNzljdgPQkCDbZkQ+DIkwlO2Sng1YOfR26fJOT5+9
 nxscWCV9IQdR3LbkU7txrcxy2DSmdD0NKWZ6EEr16oJVJ+MDtWyEtrOYzLod8NP96jMgKEe/dWr
 WnV3aS23jW1+1Y+II7vCgN6GjYefW+wXdsmw6XzhRvxBjndeKSgVJDyQFfjUteK0Z7xXsIUOK5B
 P7B5eNK2xyHoka2PFFrnJD0IyKNXjXCSl39crquAXRroyG3AwjuakuscU9Qd/k6d4LrLypQI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_06,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=701 bulkscore=0
 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505150156

On 5/14/25 9:08 PM, Jagadeesh Kona wrote:
> Videocc requires both MMCX and MXC rails to be powered ON to configure
> the video PLLs on SM8450 platform. Hence add MXC power domain to videocc
> node on SM8450.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

