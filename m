Return-Path: <devicetree+bounces-241571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 872F8C7FEC2
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:34:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0C163341687
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC0C5274B26;
	Mon, 24 Nov 2025 10:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SVDafCkl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eVKFuumg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834D71EEA5F
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763980465; cv=none; b=dIZ3/lz0H+zQzyFCBxDdzgqFyaaQ3h4ZJi/XLo9dDGBiCTf2d77t9Y3jR3D6Bmk9bH2HWxivdKWdBqIWnsKNOT9zCMS5tZbxVcKtylHI9AlKEs8w0U5BCBgX+1UVSmlzxwvCakv0lNWauB+miYV4ebxYV2CiWWCz2IMz3KI9Ktk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763980465; c=relaxed/simple;
	bh=JpI7aHUIWXQTtIVxpsIt2mJa9kIeykZwlYm1D6ESyc4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TtriubIxoilvf9Y3Pe62hCGb1mMbwSH7oxT4vo3PiqXCq8n58hnqrH9lydCfVDjNP+78PXjrRauGOY33eQEe3Dx/71O6bwFAM6Gr9wwhj1WxtGPXiMkigUtlB7UkPKWVKb8QuHJQKZtzyey7UJgOvap4AQ13S416PJfpf16C5FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SVDafCkl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eVKFuumg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO7TD7a3112061
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:34:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QIH1XPwnKDylqY9n8X9ouxIff1wIEZS+4yc8x1n26mc=; b=SVDafCklLHbGIJQl
	0IHJTWVlwr4Oavf1NjYnKytOBR8ZTSDnZwOKF62ZN75+Dap+f/Q/VYRr5MtoEeoz
	38fTe6Yi0MAvQEl+DrIzVNtWs3whsmRbWlsrimUGiHEe/mbLEKvAnALKy1D4YTxD
	Ya6ML5NT7JsLxTpH0C/mhYC5ACv6VEJbnW2D50WxfL3COMmicHE7awEsAQVFC1V4
	s6VvwGF690d+p4TAA4uTO13hrGMKsWFCUbWArTwoTz0FjY+DdqGq+AEeCQk98DEr
	7eaVRN1I190HW7Efur2y1ihvVb5SSIngrO1oeTr2U9mGvwHMTFXv/7z1yTsnaUzm
	fDATFw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amk10gjnr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:34:23 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ede0bd2154so15465091cf.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 02:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763980462; x=1764585262; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QIH1XPwnKDylqY9n8X9ouxIff1wIEZS+4yc8x1n26mc=;
        b=eVKFuumgD18VGrMXvXcZU4ygiYY58lRxUcFOd1CpldW72zDdRVqJwVfI0BqsADqqbq
         Y3VnulBA/4Ky7cf+nZNKzbB1WCwTN+KZUk2kOKcfv0t+Q3lRk3+QM2Vgin1AQMKr9P0N
         pvqoldZWOxudpCYsgAlg0S95aLNUhgGNSlGU9oZFoY57/3rCvYIBwC7AiVpiQSkqSTN4
         5UK3UszErgT4zYFtY0yOfLSI7/MID+PMoaRFPEQt7ZouzEwv19rORF+GfgRzg7uHHiRT
         yXq1D6TQ+MdHhAIc7NNkADUomdTYAveSTbhYUQuk+3yVoEzhPWxSzP6RQOoAZdQBfPJH
         DXwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763980462; x=1764585262;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QIH1XPwnKDylqY9n8X9ouxIff1wIEZS+4yc8x1n26mc=;
        b=h6V6nSZsFZIJUq2Zn4z0g69XJRWRCfikBD7/M/pI1BM0duzsjbTihYGUwY8j4kkVwD
         UT09P8gdB++5Ew/Prcjup0Kv71Jsbj3Y3iX4eZN7/dTBvBGnha5ah2FEWHjpOkfoUVI+
         4gy3F6jOn/1xkGN9ihLPIiWvfzEwbva5Ftkc3ea7Vg828NS3ysxrZXViGjJ6hzAhWGHv
         rkH9o+KxPAbUZiRSitIRdN5o9DjqCW0kNbAUTitg/r57gGwg4D2n7iDiSZCjLeHCE6fF
         ZbNe3f+jbQozuGYLj/9R0amaSyyvZ8+sdfm1I1BWxj/sUF+dCKzA/ACrMWqu8F97vLms
         qRtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXH7WYESujzfhiACbRehI6TWBOwXllVE1aZkDCc0/fRnNbIjxqcFT/7nASPf11MHd67cBHk3YoBbSFQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyKiD1onB8DsS3QFngAQz4kV5GxOOiV5NzLoKeTKCQeYUb72PVL
	515lFfo1p0b57umKwzGZbG85NWgYEhQ5VZONtcJSEDZdMNqiDhxGSV4exUIqRhroNkafE/JGxUk
	qxxUJRAu/6+LFqg+zAY0qc2hXNfCt7jJNUsMic+Rc2gs3/C2Xu+rbTxvpgEkq3t1F
X-Gm-Gg: ASbGncuLznr1UP/Oua0yglDfBsfNXUuL81dOhx5meW6E61u8n9WSD+6xV48KtKI8v9h
	U7s04G4vGj+ZYaUpqQdfuHHq0XBrYZM5Wg85mmVWRZr3oUhq+gU8tPsNR6d4OwYTn6nbsQLmAfP
	QZgS/dBjbv5MbxcYxlqc9q5esr8W7GwtkGVltiWh0CU8Bc6ybrKcnucPMhQD77UCkibG3OL4Eqi
	H+4jgmniwY/RkPC8tV2RqqeLFvVzRDAsTeanZacmFesajVA+tZkTxl1ZBQGDz20XMvGX82NWztO
	zZbRt9WRoigk9ox3SGnFuk1QGM1MUHviT5fXLlaZAUy7cfh6J1+zXQHLuMEk/+gEPthuYDSA8bm
	fmJZvxvK+1drSztZiGlVjlWE24jOmHx8ShhoOkxmVQBCmjUPP9o9iUEbgZwn67Js4pf4=
X-Received: by 2002:a05:622a:1a23:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4ee58942597mr109572411cf.11.1763980462631;
        Mon, 24 Nov 2025 02:34:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGXPrdffY1SpUaZjhwt+7of2MS6E1CxsxoyI7yl4kOk8de3aoY6/1Kpd6aApS1uGW5T/ZXioQ==
X-Received: by 2002:a05:622a:1a23:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4ee58942597mr109572231cf.11.1763980462280;
        Mon, 24 Nov 2025 02:34:22 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76a6bcfad2sm271702466b.68.2025.11.24.02.34.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:34:21 -0800 (PST)
Message-ID: <97396d4b-69ea-49f5-a8a2-c5c685e93722@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 11:34:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] arm64: dts: qcom: lemans-ride-common: add additional
 SerDes PHY regulators
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
 <20251124-sgmiieth_serdes_regulator-v1-3-73ae8f9cbe2a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-3-73ae8f9cbe2a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: nuCH2x7T422rtaWqiFScPWMP-dY-cB7q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MyBTYWx0ZWRfX8Sa6rugbUpJm
 xroDcmArYzt150nPOV+EJVeo2QTxrgL5RH40f9evbgSpaHpltXG+roUo7Z3DuL92mwtz1orwvYF
 8h8wlEuwFBPR+VKysH2cpHErTl7D9LNXyc0zlULuku97H81oRYIOQ7KJ26nroh3nJRZ4kCAyXpU
 /9iOtBTVrTfj8PAYrfkCNz4Q7Vp6Y63Gw3mONH0na8D80LIDJh1uzCEGqXYKsFeNvbxUrHTgWil
 csJpgA8JqhmPRyIVJZH38ZDbjQCiupnZHZUUqFozitK9wmjpDEJDkmZd9sXsUdoogS9n3MsgLJw
 rOAoE1H6DYPATImMFYGYvQhg1fx0IWxSlLA2jd0OB0FGCgG7MAsqR6UGr1cbWySOCX/zdi9F9/n
 9pEpAGhgOpzz0DrwXzmO+9odLI2ytg==
X-Proofpoint-ORIG-GUID: nuCH2x7T422rtaWqiFScPWMP-dY-cB7q
X-Authority-Analysis: v=2.4 cv=SP9PlevH c=1 sm=1 tr=0 ts=692434af cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mAYSrJZFqx11qOWNMfMA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240093

On 11/24/25 10:25 AM, Mohd Ayaan Anwar wrote:
> Add the additional 0.9V regulators for both of the Qualcomm SerDes PHYs.
> 
> Fixes: 5ef26fb8b3ed ("arm64: dts: qcom: sa8775p-ride: enable the SerDes PHY")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

