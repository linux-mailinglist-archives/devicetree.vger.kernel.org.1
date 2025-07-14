Return-Path: <devicetree+bounces-196040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5180DB04031
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 15:38:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02ECC4A318A
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 13:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7785D248F5A;
	Mon, 14 Jul 2025 13:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oV8my4X+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D23237186
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 13:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752500141; cv=none; b=UzWBY6JRHxfqvEaJ4Ey9vlpfxxN0kIMyzrdhvd8i3WxPIt2wBBMQk0xi7mMyohEy4QQgJwdTEfZz3w0UObaHByYmryyLV5bJl+oWb3HenK1VNtbVX/9IZMwMS8vp995OyvCl2nROixKFAi+o52mrkpyKmgLf15hu7EIt0eqoQ9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752500141; c=relaxed/simple;
	bh=HX4HnZdbWWDzZBqTqjJWzyyZPowezPsUzhrBA2nh7tU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UbUF+Dqaw31wKx5ZQxXLtE0VxuXrCBEjeOXmLw9KA6QsTcctEMe/vPDCivTku4Eqh44za2oAV+v0h/MIPfoGwkRNQcaILtcTqUchK5vAN7CRT8NRg4q7X7UepLUUiGIBgz753aB9ruCeyhuHfbYqzvXx8fi9FNcLfU5jQfSWBAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oV8my4X+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EA51GQ000421
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 13:35:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9gtciRivL0hGQareYH+vHwh7auBC4PlZk5kqwLmKt2Y=; b=oV8my4X+12wuX5uR
	Udx9SzVvGQHxEPOCcn2P1pfhrowKYZziUEfTONNfGei7ecJYe/Hg8DgH2YKRK7i/
	5ZTFc1GkJMltahkqOYF/AcJPUQ+XVrZbQyqZVEuLFOeCg3jkDK3HrA0VyIBjG0so
	wlgZvgET0+/IyvndXjEEYXzNg936K147ZI0CXx2iQo7NoekKsHl0emfjai36fA6A
	/r44tTb/R19Wc1SgL7VLMjoL8zaCSQeoVHTQJrr8QOcAYIFkcEr8Fzm/Nzikx6Io
	i6DBsR/NCjhKgKRip06/bWp3UlXYB71acxBfW/h1itLnJLtTFVT7s8LaBJErDRf3
	iRn2/w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu84r4j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 13:35:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7df5870c8b1so46871885a.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:35:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752500134; x=1753104934;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9gtciRivL0hGQareYH+vHwh7auBC4PlZk5kqwLmKt2Y=;
        b=L0SPixYOCmF257n8DtWuWXuRcs0cmPaitEJrDm0F2rYz9OvTgGOp65z40BEtHmT0bq
         n06GCLo+Vrs40J3UrT+N3Z+TN4SswxFygir7HJms/3gMQ+rLBjk1NY3snmnVlSfgKEVp
         3o4c2owbxT48VoTOo+Um2n/ywcw5KTmC74x/F/1hMJMwBZ1LhP2IefhRbKUDNzKy0hMp
         NRJ36GCjqxPQiqjbO/kXxYK/FbHiFbMgPtk+VuK71Z2XBNKKMCAfufuXbDK02rVKcq1Q
         VPuzwC+r7pkxx641WbWEjAQ7wqq7JrEQ/tToHxBVpHR1QTJ4a7xdYAfZs1deiy4UgPpD
         1gTg==
X-Forwarded-Encrypted: i=1; AJvYcCWyYMMNbuitnLUkFsrb2Ei4TZRtNJV1mG5cOgMYifjBjETBHpAMvmcFiqzQd/XwBS17PAy7+l/JLMvL@vger.kernel.org
X-Gm-Message-State: AOJu0YxpQwzxuIvXt2xDnocEzfhbDXDUlLH2iTQ2QIhjkLy6Hir9Yd4H
	D+zQzeJ50GJmBiHJc08O/2mR+TQezBqgj9EeI0nfsstDb25wal6nu909V3sUP9fFPDco9Vig1wQ
	xi3Cou+FznlRnBPmHZuylkAcQVLwWiVRt9jJrJC3H8jYUw3VHbDEaPC8NtGYzg5bx
X-Gm-Gg: ASbGncsGTzNXNzVauweoPTR3LLRRI4MVZItcmoBTgE+0WjUKFHGDl2Mrf2yGzEegFP4
	hJU/8ap8Lctjh3NMkB7hUB/rX9QAQT65zWkL44uEFUuzCVxTCq0qB5VlReTqTvxbirZQvKdES2C
	YeMHxKs1cc2Oho6Y+5N81jDy1PKmuSMBqZyx82SsH9uANBcapAcTySFj+aTnxfaMMvRfr8VzQ+v
	WXb5zNOhtUKxomYpGPjcDVHlkrcbORwWNNwIn2HTT9v6JxKYMdTyMcO4QOX00MA4HjldASVhQk1
	J5OcxFt8ItJKC+J3NRRjgGjds0yb+Wp5g4GMKN+lxLvFaT8g5IaRUEL1/Ri3NQpWBQaL3jpaw6I
	vifrFPNakK5g9hKnXQL71
X-Received: by 2002:a05:620a:1a8a:b0:7e2:5349:7da1 with SMTP id af79cd13be357-7e253497f18mr211080685a.7.1752500133861;
        Mon, 14 Jul 2025 06:35:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHynt7mhZ223fLPVn7qb0shx37lKSNxcN3cADg/ymdAnLcvmVC6uNozrBQ1FGGm20vv8uErVA==
X-Received: by 2002:a05:620a:1a8a:b0:7e2:5349:7da1 with SMTP id af79cd13be357-7e253497f18mr211077885a.7.1752500133246;
        Mon, 14 Jul 2025 06:35:33 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e90b09sm814711366b.25.2025.07.14.06.35.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 06:35:32 -0700 (PDT)
Message-ID: <301542db-2e0d-48ff-94d0-09acaa603ace@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 15:35:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: Add support for Dell Inspiron
 7441 / Latitude 7455
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250706205723.9790-2-val@packett.cool>
 <20250706205723.9790-5-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250706205723.9790-5-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA4MCBTYWx0ZWRfXygCWU5F3kmmI
 hA/6nlWFN/W6THTqKfuRHm4NBo7ubz0V8NDdWjUgkWj6DtDufuEs+lmf7uHor2f2N2e1qEHinIh
 YsNY7FPfGMvymojJhpyCzNs6VofPqxrF2aRZK8ZSQgeSuSY2AXqlTwL0tpRmIsWAFHQHV13MShv
 Fho5/TDAKr2ZbBkg+QQmjOr6e0YTsNNsyG0Ds5sNeeuifFQKFDqvNLEufnzHHFSAiDCYaChGa54
 vKmxTSE8IeFvcSZ3P5vYfRlycJsVuY2b+LdS0oj/fGPRtuTquo7QpclTML0Ay13HI+tgq5btLaY
 SFnq9fezqDTEikyv0uUF5Vh5r8jkfM6xdi6PnK/EW0PrUk2GRRoIpr/uQ7WXrMl/JyMvn4rhR3M
 XBSxZseEPZBv7cRJUUHcgqlliLFtLwFegveKtO4efApqtglmjHrahmtXbFOc3FN9IYHmss1v
X-Proofpoint-ORIG-GUID: KbjR24pNsKasR4x6MdbkkBDsLGagL-qI
X-Proofpoint-GUID: KbjR24pNsKasR4x6MdbkkBDsLGagL-qI
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=687507aa cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=vswN9AVew7ZQbwbRgEAA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140080

On 7/6/25 10:50 PM, Val Packett wrote:
> From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> Add device trees for both SKUs of the X1E80100 Thena laptop:
> - Dell Latitude 7455
> - Dell Inspiron 14 Plus 7441
> 
> Works:
> - Wi-Fi (WCN7850 hw2.0)
> - Bluetooth
> - USB Type-C x2 (with DP alt mode)
> - USB Type-A
> - USB Fingerprint reader
> - eDP Display (with brightness)
> - NVMe
> - SDHC (microSD slot)
> - Keyboard
> - Touchpad
> - Touchscreen
> - Audio (4 Speakers, 2 DMICs, Combo Jack)
> - Battery
> 
> Not included:
> - Camera
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Co-developed-by: Val Packett <val@packett.cool>
> Signed-off-by: Val Packett <val@packett.cool>
> ---

[...]

> +	wcd938x: audio-codec {
> +		compatible = "qcom,wcd9385-codec";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wcd_default>;

Please do:

property-n
property-names

consistently

[...]

> +&usb_mp_dwc3 {
> +	phys = <&usb_mp_hsphy0>, <&usb_mp_qmpphy0>;
> +	phy-names = "usb2-0", "usb3-0";
> +};

Let's not override this, so that the driver can still put the
remaining ones to sleep cleanly

Konrad

