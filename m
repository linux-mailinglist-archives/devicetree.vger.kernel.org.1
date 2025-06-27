Return-Path: <devicetree+bounces-190474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8ADAEBD54
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 18:29:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 747A11700BB
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DA222EAB89;
	Fri, 27 Jun 2025 16:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bDXLCAQ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933C62E9EDF
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751041648; cv=none; b=M7GHTH945xYnoCacgqVEfJQXHAFUpw1xGL7sFJW7zt7iI5X5AhMEVvAvCTutlk4urjngG2GjLgWFz2fCsdyTTfym2a6XD/kgqctxVBhbtVfa+ENtv7mP3XVw9WeV7c77hscTt6rtjQdrfyqFVj0/vEhs520LoFEW1UnQmWOyvYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751041648; c=relaxed/simple;
	bh=LRgiyfrICsKTlHv9IhC5r+4XBxhCMDaKngyow+IGVj4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JjCkS7VoC1B9R9k7j2bRVYRrEN51b/BLlvPyTUC3cZwbFMszqjW04qjRcYQf201x0aksi8WJiyROBfGRX1+fRsjfdKYKsO1gZjC3Kv00sWSXfk78XJ0bTRsbFZQ6nrO2FY7VqLGFN2M/+yKpHtJN+v/c7Zq/A/6hoD3Z47E1dKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bDXLCAQ0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RBgZe6029158
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:27:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lvYd1deVAhihvBAnBWJn94CrhAU80ERbjP9yegxtMRc=; b=bDXLCAQ0cbgCnzoi
	lm+zHp0o4lGhoQHyD9gxNOKnTFOFDsTWHkH8HmlD5/uBJW4rnl8cXb4Iiurr8HK4
	XWXZUjskbqOFfdlzu8eneXoVRrnHQ0izL8V8U8OGPVNi+/19sBQkKUkT0qngbbsz
	e6H8F3kGVCBMhN9ByxZkXMJfSy/TJnOIRDEDzWtUNA7vCW+VYrAGwBcyNr8ntvII
	HNexMP22VMPgv3qVSUFsSxkjm5C/EVvoDKtIgW4KZ/4PGBIG5DNfUa6r+J3jnP0d
	kzQsq+hYUyJaCEOlqcb7dIarRz7UZeNBOPCWu1nBFcZZieEKow8ZsZwgO1wTFWZP
	yn6sAg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47hkpbj4we-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:27:25 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d09b74dc4bso45133185a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 09:27:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751041644; x=1751646444;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lvYd1deVAhihvBAnBWJn94CrhAU80ERbjP9yegxtMRc=;
        b=A7s3xHf5MMpnH9Aux3kaoCEM8H6ZITT5rZW0bxp0MYwinOEHSd1gCw6Kdx/25SjVXR
         OGClkI2Q64LXfBki+DRhOuXd0xsyOcCS2cMyvGH+GsqckCRHvNq+aA0+8DuJyi2GJsRK
         +iTTv1Pk/iklV/hhvaUWy9NnQ+Vl5V2uvD0Udhxy5oxVVslvv+mcXZYQ55h+8t1thNWW
         rEgJcMe3PbjX2yIYvHCaiCMDesJHL4UmboDd5UpKGiDpFtfeaWlod8/aUPRAqXLRXdKt
         uBMpZJKRLiRie0FfpobCgdOLZ2178nyOBdONgwg3yzMWu9lI+nqBeQZ7zUfFf2lKehl0
         CN8g==
X-Forwarded-Encrypted: i=1; AJvYcCWEBSZ0WcYL5ZdrlQK92WPgh25oIxKT4UILZeB6hABl4Qt5rgtQSKy3KAgdAJ+bc2IJQSwV5ONGKP6N@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfp3zHX+c2qWpb43glagBgwxU29Xf1bf6696MgN51freEQqSUt
	sC5HXVR5fcD7zrMY7DW6lRwHNhHL0nbgCTkDEd5VIJ5stSBQPrlKfqg0lMrF4KMsP22nxzrUgao
	LO0rqcB0B9bUB1qysJw1fdXDAaT9lelIyuY/T8ZeeuD3ja1nwU6cjYpnZjstvQ1r4
X-Gm-Gg: ASbGncuzYS5h4GICxRItDf9d1mgpBDJ0LDaFbeN7QaT5by+Gkp5/Un50/BV+A37HMJG
	itQGF82cuJZYfNyBP0JQr2joLCYtSgHwUdTsDXdmuQi1nP0vEr6oqYklGPX0LJFqxSCz6c4kFHB
	aZ1gP42J7vmwo4/Le82RbNHHhFc/WFGlDSudjS/Dk/b//M7ThIuJyW3Xs2YE8jvKI79BZa5SfMb
	O5eRUIkJhB/idt+sDQYjLeXKsLXwJQlXFCEWkPHn0Q0zYnHqNmMirmP85K3q9PPDhLlzPcjWmhC
	4ZrioQKgETjueHPqf3KIbfg/tGn0N1Hx0kS47wsey+aQT9b9i65AOJiDfdCxh0k0/xhjst6MXTN
	jnyw=
X-Received: by 2002:a05:620a:6011:b0:7c0:c024:d5 with SMTP id af79cd13be357-7d44393af52mr224993485a.8.1751041644578;
        Fri, 27 Jun 2025 09:27:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQx+88Ksz4ECZwUoGt+Ed4X8fsAOVBGWYUZ4j8qk+znxirQR95/4sMWkJF3ZwWKFN09XhTLg==
X-Received: by 2002:a05:620a:6011:b0:7c0:c024:d5 with SMTP id af79cd13be357-7d44393af52mr224991485a.8.1751041644137;
        Fri, 27 Jun 2025 09:27:24 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353659e12sm148855366b.40.2025.06.27.09.27.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 09:27:23 -0700 (PDT)
Message-ID: <cd6f018d-5653-47d8-abd2-a13f780eb38f@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 18:27:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: ipq5424: Add NSS clock
 controller node
To: Luo Jie <quic_luoj@quicinc.com>, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Anusha Rao <quic_anusha@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, netdev@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, quic_kkumarcs@quicinc.com,
        quic_linchen@quicinc.com, quic_leiwei@quicinc.com,
        quic_suruchia@quicinc.com, quic_pavir@quicinc.com
References: <20250627-qcom_ipq5424_nsscc-v2-0-8d392f65102a@quicinc.com>
 <20250627-qcom_ipq5424_nsscc-v2-7-8d392f65102a@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250627-qcom_ipq5424_nsscc-v2-7-8d392f65102a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEzMyBTYWx0ZWRfX/mmUBtuytGUZ
 PVhKoq5VVZiZsKhnLConIQ4qHQgxWI//PtXHpEMSuqtHa8+VPD0DYNhOHt7TJJZ+DWNjqSGyiwG
 hfZfYtc5tH7PCb5ja11Fk3wb/8VUCNUpKYjlDAu6WMXESUsKgTK6lomyvENfvyzLTxKp0nlmRmR
 okQz/jn9o5pEqqvoSr4qmDfT6hdycUsK4QFkYM05UQrGOpKkEX880SpAju8vc0rI8wwZjqqoh84
 y433ADJIaCjAO6sxC7T8txcH6SpowZa4ZtS/27WpoJzDzxf+/4cyPg/568+JgiTbhxComC/3Ir1
 r7RjT1QGvmMCExaSHnCkknuWvLThedE3wn+hMQdw4prIgckWjP7kkdt2tJjS3wb7nWXLuaKo4kl
 2FeOKQ58+iKoacOi8LJ5q2tfsasoyTggyxItEQ+oCy760tB3RvKLzR8Ofk0eslXJUQhva1IV
X-Proofpoint-GUID: NC4OEDsFQrLt1G4Fimm5tOZviDwTrSYH
X-Authority-Analysis: v=2.4 cv=AY2xH2XG c=1 sm=1 tr=0 ts=685ec66d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=f6GukiY9ARMaQ3Zrt0MA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: NC4OEDsFQrLt1G4Fimm5tOZviDwTrSYH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 mlxscore=0 mlxlogscore=999 phishscore=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 adultscore=0 impostorscore=0
 clxscore=1015 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270133

On 6/27/25 2:09 PM, Luo Jie wrote:
> NSS clock controller provides the clocks and resets to the networking
> hardware blocks on the IPQ5424, such as PPE (Packet Process Engine) and
> UNIPHY (PCS) blocks.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> index 2eea8a078595..eb4aa778269c 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> @@ -730,6 +730,36 @@ frame@f42d000 {
>  			};
>  		};
>  
> +		clock-controller@39b00000 {
> +			compatible = "qcom,ipq5424-nsscc";
> +			reg = <0 0x39b00000 0 0x800>;

size = 0x100_000

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

