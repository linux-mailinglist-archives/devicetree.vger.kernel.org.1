Return-Path: <devicetree+bounces-180849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF3EAC5009
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 15:39:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6A7A1887A06
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39884276049;
	Tue, 27 May 2025 13:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hzab7NX/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA1627467A
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748353057; cv=none; b=u4yyGpXLRqxXUKlHsXJsfndwtwGIGmS9gY60L50lPYDM/AJ1PyNFoaZWbvx8OwaqTOFadrYL/dmNu4r2rFj1ToD7kjg1LmG9npgR/rExO/nZYHqCAmbg4UrhyWNmD2uu3lCC4hlLu9VfEv3aR5HdDYEZ1kin+CxpNoukae9pZ/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748353057; c=relaxed/simple;
	bh=KhRlIO71gEXyEYjy1ByXE+VmuW6Go3ztEoZDkTXkyxg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SY8liqB6L89g5sOnw7PSDZOSAn7MTFnDfnKHtdGldz/IEjsV9pZRre17SNIZIVpnl0hmW6xgGIlmH4D1rV4n3/EfufVPGlhxrZv4wPpulkovToK5LDYmgIL7ogBWJJwF0g3bkRBnJ1XFZr7Du/hnXaPj46pWym4TfNxVqS97nvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hzab7NX/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RBYt7l022688
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:37:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xLEufRgtL9qKIG4lX4CSfuKvPSGQ804jDCPgn0wAin4=; b=Hzab7NX/6BOzvYdV
	yhL7RHU3rpqw3lHO/14gTSrivQQeBRJ/vWOBd6sKeuAGCJ6p4j9fn0XNJDYz7F4j
	9SUbprGcye8/6Re9rpChZ0FdwPctvFAnbtGVcqekBAe85YyIVo0lUi3mzOqCXB4X
	pWf7SevqlglQoHZtYiH4reDWnqFg0gP67c5w6VZjRoaCWLlv1r05sSNVF93980vF
	tS8K25WlJQ6mL1Bmvic6BgJY9SatdEmPr4RY2k+RULKlpQN3dldq2Zz6l8fbQkq/
	0q5+gGUaSUgoGa/Zow+uDKH3LnRCL96MPgITd5PnsGHeWNLMFQpu3qlNcF/VatIp
	TDD0FA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u79p7271-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:37:33 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5af539464so108082885a.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 06:37:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748353052; x=1748957852;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xLEufRgtL9qKIG4lX4CSfuKvPSGQ804jDCPgn0wAin4=;
        b=SuF4fl30PKXNG+bf3IHFBr3eARXukzfRYd9EsiNKZuiIt/I0rqz9pczS/Bi/2tXUDF
         2YDY5Oz50oZHpec2TmAebuDoZMcJaDcFZlyF0qM/SSKRFvI0jogIZ/6+M3XH6y0LXtT/
         wwURBo3yYGHSulkK+iyNhJbPhocaogU4fiHAivQ/xuZ97ZLzZhbI400AnNBlsWoSAIup
         hKOb4eDDJewomv+sNjgspiKo4rG1CaZxqvLkbMy5Xao2+qYd6eyTOqmFFRDLDGdmBeLA
         OA7LS7NuKEli76BnUwktQrHk7hYSnsydb9wuZsxco3Ujnh17oEXS2NoZnYG/Q8pTWKNi
         BGmg==
X-Forwarded-Encrypted: i=1; AJvYcCWIl+Avz1J1CF2wJbnvra8LyUZ78NZBufqF+HbnRdZoBl4F3tq/mkcgmS/2L/QlJSqaXJWJysEWGfOH@vger.kernel.org
X-Gm-Message-State: AOJu0YyjJwbN5bOy65K2frvuLw9AOkQuVkT1LVf2rpTDpleO7Z1osvV1
	WFEBw0GQNIHpi4vwGG07x1hCpiEdicnNzJytoGtGzVvGD+66RaMOHimkrznwTlTYzrlMAUiKbcz
	wAxVVD+rz1uYf1cvPHn/9TEjTEUKrp65jGEwMQPRnxlGNHhIfs+JjAHXnK3jH9o2c
X-Gm-Gg: ASbGncs03+gHV/yCu7/IGh0wqNDIa0+dG4jGkGSI2BfJqR56e9Ke7q+v/5wEp6OwBgq
	RPearCXSm9pqnc7KoEboqmilhZo8xSOKKdY5kzGnw7jxNr2OfuK+poCMtsn3BBfyXgCPkIDWi4C
	fZw40eEhLbtClSSlOU9cFNbKPDNvg1V9kKbmh+Vy4UQdFl+W8Ev/EE2eG23owZKNUt0oLoppkUH
	No+xwmJfplqQzXddepuhSOV5rJ7PlKOBOveLBDnbm5BVMkS/jSMRlN1JFEx9zcerBZ6FM/5neXT
	VP0SENgbh813AVSTVX+VVMtNlVrkOUffPSG2ZaysTenv8BTWTZp+p0B4b2KomqUFuw==
X-Received: by 2002:a05:620a:1a85:b0:7c5:ac06:af8 with SMTP id af79cd13be357-7ceecb968afmr708581585a.9.1748353052450;
        Tue, 27 May 2025 06:37:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6syR9I/XBh/MSLFb7D6Zw6VTBNOOLOjBK/d+fsxGEpEZQnhC1Aw9iZuvqUpC6mxmNYxr87w==
X-Received: by 2002:a05:620a:1a85:b0:7c5:ac06:af8 with SMTP id af79cd13be357-7ceecb968afmr708578585a.9.1748353051873;
        Tue, 27 May 2025 06:37:31 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad88bcd476csm126238066b.162.2025.05.27.06.37.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 06:37:31 -0700 (PDT)
Message-ID: <e1222269-6660-47f4-85e1-3782adb685ef@oss.qualcomm.com>
Date: Tue, 27 May 2025 15:37:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: qcs615: enable pcie
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, lpieralisi@kernel.org,
        kwilczynski@kernel.org, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
        conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
 <20250527072036.3599076-4-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250527072036.3599076-4-quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 5GfIGwX7zw5gqymkPZODkRZ-b6Q1Lthg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDExMCBTYWx0ZWRfX9M5roHQ1e9ua
 cuFA15AVyI+VmSrzJTdjCBnYbx4mSFeuW1K0kUpsyGuT9TxOOa9cPb5Dpj1yQRN/3GZJylH/3xR
 V8uDFA15BsiCnbXu7UvMAlVrZeV5PsT/sZhO5jYLQtR//80EIMo2line/n0D+g1bUXv0a5zAWTH
 F4EOSdGEZ6XGMDEESCL3b+xh4GuzSzA8PuCBXHG/CPqnfT7AHDgyQ/ylPrO9MKNdC+ADITcqtbQ
 RjMttQlOp9MeRyCGj1Fs+pg0YGQ0I8DsZHJlFEoSkMIORFF+vnPTkAeTUQst1iwS+IjtnXC+jUo
 F6AN19jTlE71mIanITNgt3Stkw1gbx3UJfEcfMBE243wKVj3mX+VifIfrGSYpaP70zngSO5UOwL
 OTJ8igFR3qUccCt3FGMjU9iYEu9JziefAAezVHosH8Fh7OPuwmWiiyfRA4PeH5rcRT2w83c5
X-Authority-Analysis: v=2.4 cv=HNnDFptv c=1 sm=1 tr=0 ts=6835c01d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=u-Wjf5nI4b4gXCDVDnUA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 5GfIGwX7zw5gqymkPZODkRZ-b6Q1Lthg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_06,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=576 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270110

On 5/27/25 9:20 AM, Ziyue Zhang wrote:
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

