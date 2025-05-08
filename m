Return-Path: <devicetree+bounces-175119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B38A1AAFDA9
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:48:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46DE11BA39C5
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D06D4278773;
	Thu,  8 May 2025 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nwwux9qj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED2E2777E8
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 14:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746715653; cv=none; b=Yf6OS/bKi7771yZtVf/5/JrW/kZt1BMm2/3iZ9UwJv1W7zi8UPJGxBVB4ANf5wbi92vesvV1dn35g+w1ZGx0UU5b77oyYp63/7EwPBstgTuGWEGQ1fHVVRYYX+pNtc4tPPk8g7cVqVuCA/9LKy8IU8+46pG6CV177zMn01z1DQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746715653; c=relaxed/simple;
	bh=jR80K/QEewPWmOZTyn/9wMsnnumofKPCbkzLx0ZsB0U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s4oAiAr2c77/lrJ1VjvWxFzYU7vxWzr7t+jRYOsFGDWkBqsblXpDoeTWjJpoEnvkSfO7ZfcsPASSRXmDVK0CT1HzR3zKzzJDScqwDzbSBjo5JJyRrrdHUhcOKcvNB7lue/uVqJdIlLeecBPWCG8p+kGVwSYwwpTlPKwxg2h2erI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nwwux9qj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548DE1DH014401
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 14:47:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9tZOCsJGlyFLYoLfnAHP+VSjddc9mN16QDqcdZ3mWyQ=; b=nwwux9qjSB+axDMG
	+BWniAkTKP28HEqRJBPR5hVSNv5i4HCQ0bHNBCKCNCFb7l1uYkO3+AEKXSGujFfw
	Fx2uUpOdZQKwa1xy4un4N1Y1eEtb3iRmTG4MNo4G/G0O4vA8ZjVusFd7N7+h5L+1
	wPOCEjFgc86mb/FIv5lLn2ZYZX3f86zaTkY6/I26bZY8P778V7Btajd+gnnpMC/p
	utU1lztRL/NaasJGk9RN02lUqc7ipG8nVl+nJ3MjeWZmEqRj+cIksJFZOpr7Iwa/
	bblXbMVav2pb3Igxv5pv0vA/VkxZAL7iDbKjcOglQxyho2jttx2Ylm5cy/0hwtJl
	nZi5Gw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp4hpp3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 14:47:29 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c547ab8273so22413585a.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 07:47:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746715649; x=1747320449;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9tZOCsJGlyFLYoLfnAHP+VSjddc9mN16QDqcdZ3mWyQ=;
        b=S7md+lPUyK3YRnwmZHZfCDlP3mKZ8DuG3BdJ5xKpujOR0zvEQwy5JCtS+6Ns2FUhi0
         akAWikb8B7V73ddb6n0WvxjKcXeqmOHU0A0Z5iVBWq02es+GgdDZxspEx11eVlP3OGjr
         VIdgvRbNEiz/EDrlMPEkoHFVk3GRax0/KimZk5k43sNBZAJi57ebH/da8+BbiufQUHzM
         sOGoFE4pGPnm7nWrOBFB9tQ1RWB1dZOt2UagOI9yMRbemlon95gUOY9MO2LuMpwWLEcs
         ubDmJZf2sPW1xtzUk+SCzO38R2fTcWrLssQ3fU4gpjkRzUaCSUQujBKtOYAkHpdbYSFy
         wv6A==
X-Forwarded-Encrypted: i=1; AJvYcCW7+GoQeSfmJfzW2j50fXRXeNGtlsrF29jucoQYjfvi8JGcYIRuCPwg6fPlchO3rrS8KUzoQq37ncKd@vger.kernel.org
X-Gm-Message-State: AOJu0YzoMnlaAaJj9SWe+xeYk+Gi24ysiQiAfMwxQjz9a9acaw27oU/i
	AJicfX6lGb/iK9Cdm3anH82kwJf3KHvGV0UhVNHbw49b8QhFfwIBp9QT+ZGPod0EpnCTFfA1gan
	hRNg3aLIzZr/5SGNX3OtWQNlYReL8NfNOWkM0ZiLiS22QLBaRPuynk/E3oOkZ
X-Gm-Gg: ASbGncv0+DEIjANYqvd9L6zFWCXZZFJCglD2GH7RQyFOMaiYcQa0GEFu5vSTYily++r
	0f8GRk6lRIXLfkkq7E7OPArJn6AieaMIfgEQ8zWCdYZf7T+20fh/sXjGTcDwPorX7jrLe5CLvPk
	gzsB6em2tCJSALiRoefIfCQJQHRe/MCULe15uYhysV7L3G1ovV/scADBhDpA1jWdE807N5pIcWt
	S+TWaOgKrsZAr2lGJmD1+mJB0gsGj71tZ+hbS3ZejsMc7rs3yi4/pJUJiRn2dkM36accbeRmYlk
	JMduJU+4ZYFhpbMvpQfwnGrtTfKjyuqbCNtekovNl5mEtCdGVB6V4kwrEevkr3LXOlk=
X-Received: by 2002:a05:620a:254c:b0:7c0:bb63:5375 with SMTP id af79cd13be357-7caf7385bdcmr375784085a.4.1746715648853;
        Thu, 08 May 2025 07:47:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGbEK+0rVOs5KX20bF2OzVz+4r7xuzdh1bFzxcezKHmRZSJtEuVUnd36y5OF/bb2KQ1G70Cng==
X-Received: by 2002:a05:620a:254c:b0:7c0:bb63:5375 with SMTP id af79cd13be357-7caf7385bdcmr375782885a.4.1746715648491;
        Thu, 08 May 2025 07:47:28 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fbfbe5c5bfsm2220198a12.9.2025.05.08.07.47.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 07:47:27 -0700 (PDT)
Message-ID: <96c54162-f985-46d9-820b-48868cfb1405@oss.qualcomm.com>
Date: Thu, 8 May 2025 16:47:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] arm64: dts: qcom: qcs615: enable pcie
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
 <20250507031559.4085159-4-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250507031559.4085159-4-quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: BzQXLFW5lYOLT-LTxuMw0eVHEhf93njq
X-Authority-Analysis: v=2.4 cv=E5XNpbdl c=1 sm=1 tr=0 ts=681cc401 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=u-Wjf5nI4b4gXCDVDnUA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDEyNyBTYWx0ZWRfX6Yv8TwHo1LIS
 P8kvGc0oSa/zMYeyXrefpOGErdgKPGP4xVz6HEVM6N712ay8E0usn9v5DbhK9CyY1k3jg2zeCHY
 2QOWPzJqCBegvdjWK9xbfHQZxNF3q03LFlQS6tiUN6K33yEhgDhFB4Ew4cit8jpcab7e5ZU1q0w
 DFeAzSr/FobWhLe+q7Tky/ZN/q3Ju1ppvDEPRYzu56wcgRrjss1GqkZ+uIhzDPIjJlFAJt4x95T
 5Mn1BT+J2VJuJkU/ArKw2o2UUWz+eO5QhznG3wAiuGCqxBZZ+vy+TSGnqo6Xx6f4+pXGY/L3k0i
 d0nsC0f2Za3LOlv46da5MQAmWYIOj3Yx6b7LUlJO7Q1+Y511nkBImn6KXmb2BuoFV2Kw6ztI9d7
 OEQ48MQ4LfHL5N+V2/da7ARw4T+VHg3fuFE/n8D8GH5dQJKZw7FNyNDcKnUDCcZHxyFTJFjj
X-Proofpoint-ORIG-GUID: BzQXLFW5lYOLT-LTxuMw0eVHEhf93njq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 mlxscore=0 malwarescore=0
 bulkscore=0 phishscore=0 spamscore=0 priorityscore=1501 mlxlogscore=593
 lowpriorityscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080127

On 5/7/25 5:15 AM, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Add PCIe lane equalization preset properties for 8 GT/s.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

[...]

> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;

You added too many zeroes after &intc, this could not have worked

[...]

> +
> +			eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555
> +					  0x5555 0x5555 0x5555 0x5555>;

very odd indentation, please put the 0x's under each other

Konrad

