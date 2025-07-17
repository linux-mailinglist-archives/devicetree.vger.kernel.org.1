Return-Path: <devicetree+bounces-197464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5510DB095DC
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 22:42:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC6DE7B7AF5
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 20:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74B122264CA;
	Thu, 17 Jul 2025 20:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FhQhQ2ET"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1907A1F4623
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752784930; cv=none; b=Qi/a39QvZ1Vy0bfI7Z27YcK5RDnvLjAtRpHD8MAsdLrC7DYHEWAqfkrjgpho4ZUbQVY4m9N8QX62Vhc26Ru/w+riKGUIkGOQMNzyH4aX2adH/oxEli1O23rQ5ZCokQ+WzIGrCJPOLg96iyDFIRg4JiRkz3pr9uLf9SDNnkQlkuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752784930; c=relaxed/simple;
	bh=rNJhrVaOXBgN447nIGb70CYE7BeWUHH6Lro6HxrOsrc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hwztwNhF0XmyM6dcPRK3xFt1Y7PVuAoPpOEWhlrmFDBLJWMzLDRDRzcOO/YwoY01y/4dJVU6UttE4ZxjDKitiCYFOyMkpuEPWtxald798tpanGs9yAx4hOljf+JJwBoPkcKgKGpqT2CHFMBIvPKCpf1ZJSNE5trZCpKqkvOAhZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FhQhQ2ET; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HJ31lj030397
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:42:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TmpfxjkNhdt9dhUb9Z4sklqbRlDt+2S3rq7vCoARvZI=; b=FhQhQ2ETqrCc2+y4
	HFVwT1131Db7D+9s4XwC3oIlNrsScBTDWs9VTASF3EX4t8uZ/yISjsuRGBcRa6zs
	qy+oi3CA1Zwn23UH1vLa5d05L56n8CaVyfCMD3kLvjnVJErJSBm5RiislTStFI8M
	7Vph2rnsQTY8rU1WGJ6uY4zUNnBFZqf/brojlUeokI7DuPmEi9S+xR5ETye+2F/D
	ZbvqLezI2i+Yfld1A5Qwh45Osx5U3+wKekfrnR3kgA7L8UbvYxTirWo19hrWXIAB
	ZW0Uf2kPXZck9qz4j/rdpS+s2XL/alH5pw2VDRAU82BsZcE2mBR+VawUaxsvhbrW
	8VRfRQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47x8x7ny3f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:42:06 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a9bcdc73c0so3543581cf.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:42:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752784926; x=1753389726;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TmpfxjkNhdt9dhUb9Z4sklqbRlDt+2S3rq7vCoARvZI=;
        b=h3PfRsEt16WqBkz1hLGXdAXW8JY/SPwxfMewnx8dNFnU5vrldr0GNzT2EVoS3BN/y8
         A9/Gz0aSTryKtXHz5Zs9QE3oIz8rQGCRGVWxpnizX0lgRSasm3j+zktmR033+iOzSXgx
         tUpftLtnPMyS0l+XRsGtTBFhoUd0eHqOrULr02qDOO9aju7FT3Y+MAoj1Co/mo5C8Lpx
         2LkbLBf4eM2XJIQS1ycXKozf9WbEcYreSSxbTTyoY3BgwbPpKsQ/E4t2b8BtHfGRRIsl
         3hFDR1ymzklYGBkNHr37AgluBIB4CfawbOIRD2TiYN01onwaADkPHLpAooCkPeNRqnu/
         ewjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOHS3L79qmfcOqPyz8b+cEchaCkvcWSlQ2yZV+bbeHZ4K3FGsK6QYEzuzJQFNF6acFQpoe4UtY0YZ1@vger.kernel.org
X-Gm-Message-State: AOJu0YwH3mf6gzMegWD44KkraBgOHXxtwIReG5+axzKJCRKej9yu/CNJ
	352AwvjovmiQ/zAUNP7LvHvV691Dp6iv7hZQyfKnWPAEa5/pu8Fo0jI704RoFNGy8GVurddbbih
	3hV20qj6C9wWJaeQN9XpXo3+y0Aapi1CukVRujhZBQ+DyfmvXNn4oljPcPmRbE3lR
X-Gm-Gg: ASbGncuq28d+h7DRD4dlCTsICAhS4ablctndkS0MnLAqfYz1xk0zThFGkAktBh5Lclz
	uxqPhNWCohLBSnk8TSRob5D13BFfDRLyQRaLAprcBRaxK8AmLFJSrnd0viLrBK0g81uQQIEm1TQ
	OTktsgCtmdtifI+5jLFYZTxZZe1RfS99jNOQ8xmNDK1tB+Y6blVV6j+tiVVBa7HoJzQJq+I0qZh
	U9MYX/jecage6MQfgoq7Jr2yWqVpuW4fGC66t1tqqo0kAZbo6SaOgYBQJHQmTYOdaDAky1c3mLr
	MP3iCpnJmtDVuJ7tc6v6C4q7IMiXIwnuDPipktNKOX+wDpc7iNATq+8R0tzOcH5rsKcdfQzIgJl
	ILJ7Z0qNXpe+FTnXKH480
X-Received: by 2002:a05:622a:1a98:b0:47a:e6e1:c071 with SMTP id d75a77b69052e-4ab90a82a28mr55030161cf.7.1752784926049;
        Thu, 17 Jul 2025 13:42:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRWAhwxvL0YQ5lOLx3J9S62rBalvJHOr8MWbHqXNprUdHSqk24MYX4tdyqOdn3P7ha6yUnvQ==
X-Received: by 2002:a05:622a:1a98:b0:47a:e6e1:c071 with SMTP id d75a77b69052e-4ab90a82a28mr55029901cf.7.1752784925586;
        Thu, 17 Jul 2025 13:42:05 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611d04d8347sm10357916a12.42.2025.07.17.13.42.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 13:42:04 -0700 (PDT)
Message-ID: <193de865-980d-4fd7-9c43-39ae387a5d0b@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 22:41:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/10] clock: qcom: gcc-ipq5424: Add gpll0_out_aux
 clock
To: Luo Jie <quic_luoj@quicinc.com>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Anusha Rao <quic_anusha@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, netdev@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, quic_kkumarcs@quicinc.com,
        quic_linchen@quicinc.com, quic_leiwei@quicinc.com,
        quic_pavir@quicinc.com, quic_suruchia@quicinc.com
References: <20250710-qcom_ipq5424_nsscc-v3-0-f149dc461212@quicinc.com>
 <20250710-qcom_ipq5424_nsscc-v3-4-f149dc461212@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250710-qcom_ipq5424_nsscc-v3-4-f149dc461212@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDE4MyBTYWx0ZWRfX+V1VKMn/xkyT
 Tn2SKvLovLvFCzDgUZ4DvxeMOwe0OXK/yM6mRCoPpy4loEfXFkFB/tH0fbcydw9kPB39uotFrCS
 qYWEgrHb+cSN26P/z1Rorrcv8DePaXeXXNn/9yi3PS+yyv2siQ+1d2SYX+rDGIXVHzQMMUHbVDD
 M5rZPQ074K18ozPdN2or/ZH5KHUPDlwrntOP6frHU73xyl8pECVjk0vflp5oHiVoMbzoJ0sbA67
 XY8WmShqVlpRVdO6+0SBrm7HhIApdf1sdQZ37xnI5DVOwzNWRLLPXdC4Ha6JyKjt1xJkCKH3Y3a
 LY7ojwNQfHlxV3KhVoYWVVPHrO+1R9WEa0HXmWg+7mUO7xgSPlqcqCNsVjJrkgKFOzDeIZfenNo
 +ORo4fIlrnTTkORwL2mHiQngPYZ+Rta+KGt87nT71oI+UEIi7zfGTqxDgtv0ArTiQ+VUY2BS
X-Proofpoint-GUID: y2nAJmMPRsMHvPNs2kdu4FhYAbCKV9iO
X-Proofpoint-ORIG-GUID: y2nAJmMPRsMHvPNs2kdu4FhYAbCKV9iO
X-Authority-Analysis: v=2.4 cv=N9YpF39B c=1 sm=1 tr=0 ts=6879601e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=qx8TOUd7-QwhcYYS848A:9
 a=QEXdDO2ut3YA:10 a=jh1YyD438LUA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 mlxlogscore=915 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 mlxscore=0 suspectscore=0 impostorscore=0
 phishscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170183

On 7/10/25 2:28 PM, Luo Jie wrote:
> The clock gpll0_out_aux acts as the parent clock for some of the NSS
> (Network Subsystem) clocks.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---

nit: subject: "clock:" -> "clk:" to match the other commits to this
subsystem

Konrad

