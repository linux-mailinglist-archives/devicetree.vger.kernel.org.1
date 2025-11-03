Return-Path: <devicetree+bounces-234300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BBEC2B101
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 11:31:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 47F28343A5B
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 10:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F14B2472BB;
	Mon,  3 Nov 2025 10:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BsWGaqtI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MERA8aAL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C589F2FD7D9
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 10:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762165862; cv=none; b=KPNC5RNm9j9YZYGThvph1yusPOvlB40niSsQxOar2GHbAN5kpLLc7tpD+g/NfzDahaRpqdoQ1fZj4aRPOUtP3hrZkOOMdhNJ6ysrx/2Ncm6E5dETPjpX2VzE3wBYzEwLz7AQXIyEJ6zFt3ciz321Kzt88kUdEh0lbDaEdJ2y2/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762165862; c=relaxed/simple;
	bh=DUl/v+dDDeGqqyWq9yWVSUSXbQeJIusN+vU25wQ/e/I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gQcuXorzKe55CS+imYV0fujJKX7I/5EUh1/pUJVwlZAXnzswNQs04pEmK9qzqQL1kUWvlpv4JY3uTj8pFuKxo9OmwMYjmygj7Jnh/sTHEnU3QJeY316UslbbNlUOJXJjvRdjxTFFXZU5DYoHzUChzNseVZwtHRU/4gstjv0QnIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BsWGaqtI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MERA8aAL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A38B8MP1021726
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 10:30:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jWE4ljXKfIWeWBpJ574mSlDJqGovq2Rh5s9YuFuiV3I=; b=BsWGaqtIqSlRSyOZ
	ja/kOMcXZ+vWZwhJyjM5cYka3YfJuSLcwRtK7nJaCZjTyYidO9yG25tcpL6FS2Wp
	yExKrgOVk0MVT2kpXeHxtEqV/UWbYiTv/58GYHN/baezMKkfT8QAwbilZYprUR4x
	f5Ei3TzdtVLGoLfLNlAB1qJ9B0KC1C6S4vNDRe+z12uPaXQTkCjNAoghCF1wPXL4
	WqNNnP32qLldY5extbEzZBPyBSFMy1fTVdpVrflH2h29Aw3nMS/01NBGZu8Pymrd
	q1eurZCadmdhdXOKL1mL3mYr0EVZtSfTyJ8oObnnWk1CZumZungxZBkhoCf/coIa
	fN1PzA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5977ccrb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 10:30:59 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87dfd456d01so15657336d6.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 02:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762165859; x=1762770659; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jWE4ljXKfIWeWBpJ574mSlDJqGovq2Rh5s9YuFuiV3I=;
        b=MERA8aALj/qDbz+/oXVoCHKMPLPi1NBkTO6dcwgNwN8rKDt96Sqhv53tqgbDj3TZj2
         K/hr9CjDJ8Hsf6PsQdudgrgGn/2zI+/YHLh9IRxQS7FBYAGenYyvVV2IaDj/my0UIZE+
         ngYcUGZmHLC98vAa0s7YdrJJDFp0sW13Bx7Rx4vIibIsuw1psI3C4tSe6kVWSBimd8HH
         wEqUutFP6exOefI9mjTVUVZwIwkS6Qb1vC/uh5RCBURYDW/4TpKbqmeVKIzdFoHTLtLU
         Iek0yHep5Fx+WltUp8m+0Wt4gdwx2KE6kJzhB0N52b62liTpW4XanaIPJHwFshm25Y80
         t9hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762165859; x=1762770659;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jWE4ljXKfIWeWBpJ574mSlDJqGovq2Rh5s9YuFuiV3I=;
        b=HzffSZcYjSvfAJn2+BwUU1bPeYVk5q5YKscXpN10xUF8kRKmm4WfgwXXrn5sX8/+Bv
         ZX1wjL9+COi2LNOjxw/bN9eb+ViZ9Se63vplCZPCgL1COIIxDmnhu+uS393jxPuc8HZF
         o2Wi7op3zvI6FSY1YYI24tGlWCaJYfXf+8v9Yiw0Yt9Gq3epOImfxlGEcEtl8a60gA0n
         0SQWyTNNXTBa6WSK9MJmfCwk/udizEIfIaMZHd4wF7baKRFBEm7wJt/0X8OmVQ6AHu9m
         Vk6QEH5r1V8uFlSDKwXTJzN/ICaBvPN3W1hvvNnlyB7/5fN0kIQ2VR7zFUw0NqUKzM/W
         LBNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWW6k1X9o/kZ9LtGSGz/OxM/uMKXXWdTIzBpbx5D1AJIxMZ9DroCbrt+m+oggqjk0LT3iExcOEm5c7i@vger.kernel.org
X-Gm-Message-State: AOJu0YzsoYkzzaTsWPjab87OT/R7i5aULWADZ2zQvXySspjSisHG0EmJ
	ai0zLB9+Y83ZXOJK3U1g7CT2rCwbisTQeTxkdXHPLpIPxWotM7stxdZAsoMWRm/dqhgPqUVoSmE
	b3wqewK9q4lDRllaVrqtUQXXd8X2rRPxssjXFPiB2ZMelMDYe+oo8W3XLvsfEHi+i
X-Gm-Gg: ASbGncvJECgCJTRB8aWNCLZfqJ3M6LpjzP+tFwkWR3Wd82JqrQPbPVVgtjqrLEUG6Ho
	+h9DDJaeOunnH4P7wUMJtAG2IFI5Cdmh5y25v5twar8op7zrsOa4J+R7FJ4GV7D+mSzhmTvG0BZ
	dCVZgH+Jydsw4Hhdh0b4+wttoO1Bj1Mt9eplznwBdwEH75yIJ2HCoU/uJC2Ygt2CaMH3hcXv+Rm
	c0eB8XyOLkp+cHrv01AL8XDQzsLwkZj+4qdD8VkOqnxnK9BDiUv7jFiFbL53i3XotpCrjgQ0cAy
	eKGiPMiI4Cm/6+op4+dT4Y/Qe8KVXgyWyyqcoaQUiKC2R6CyjO2fZNe3UPbKbZiL7SrKpBPwoIz
	toFhA93rseatuXLYf18OV6JrIgNDq0oNWIdILW+Z74PgvF9ye9DsB2Ugi
X-Received: by 2002:a05:6214:415:b0:880:5cc1:693e with SMTP id 6a1803df08f44-8805cc16b70mr6734516d6.7.1762165859017;
        Mon, 03 Nov 2025 02:30:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQp+B6BbASeIJWfxPDgxaNj/gsZ2jj9hIlPnMzU22TpzxNI//yIFYM2vt+axjIO4e746PIRg==
X-Received: by 2002:a05:6214:415:b0:880:5cc1:693e with SMTP id 6a1803df08f44-8805cc16b70mr6734366d6.7.1762165858569;
        Mon, 03 Nov 2025 02:30:58 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7077975cfesm1000680166b.4.2025.11.03.02.30.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 02:30:58 -0800 (PST)
Message-ID: <801d8e09-276b-427d-8419-7f2355df2295@oss.qualcomm.com>
Date: Mon, 3 Nov 2025 11:30:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 7/7] arm64: dts: qcom: qcs6490-rb3gen2: Add TC9563 PCIe
 switch node
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251101-tc9563-v9-0-de3429f7787a@oss.qualcomm.com>
 <20251101-tc9563-v9-7-de3429f7787a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251101-tc9563-v9-7-de3429f7787a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: MmlgvTx5YoULpuBOmYV3iFKSfzMkdNCo
X-Proofpoint-ORIG-GUID: MmlgvTx5YoULpuBOmYV3iFKSfzMkdNCo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDA5NSBTYWx0ZWRfX3BByELzBj2me
 SjBbrZ+Z5Ru1eknNp4jpeDcIQ1Lx+1Qfi5EkksIlCMganOEtMzlrlUiFU0flyqLaH4aB6xKuKa1
 xriR5R/tejzShz9MZwE/97Ed1XUHW5j9/vzyHO+sLtjqobdXzZmWv4D48vxNbA9/qYXIVtnSFCv
 nDiQC61B8Pi3cSGhxGwU2976/4fFYAmdxQ/5FjYZjuJ3G4HOEylPXlqCHCw3HJJp5vO5fIhqkEx
 hrcGoFdwzFI6/sY7CtV9MjBogk6DQGVYPHJGpHWJhNKdOX4bkSxD2Ji3lNZgmSfZL7y8lSXBClI
 F0pf4gCsL4VmCANbsbb+yJhXWz41QazTYhsjn7P5ovllsYQCr95ULc4a2fr875LHpJoR9Haev0F
 Ib5zJZ83LAnOKCrbXzmKJN6i/V/Bbg==
X-Authority-Analysis: v=2.4 cv=WcABqkhX c=1 sm=1 tr=0 ts=69088463 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gkRObvzxmN_HJK3DEhcA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030095

On 11/1/25 4:59 AM, Krishna Chaitanya Chundru wrote:
> Add a node for the TC9563 PCIe switch, which has three downstream ports.
> Two embedded Ethernet devices are present on one of the downstream ports.
> As all these ports are present in the node represent the downstream
> ports and embedded endpoints.
> 
> Power to the TC9563 is supplied through two LDO regulators, controlled by
> two GPIOs, which are added as fixed regulators. Configure the TC9563
> through I2C.
> 
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

[...]

> +	tc9563_rsex_n: tc9563-resx-state {

The label and node name disagree about the pin name

> +		pins = "gpio1";
> +		function = "normal";
> +
> +		bias-disable;

Odd \n above

Konrad

