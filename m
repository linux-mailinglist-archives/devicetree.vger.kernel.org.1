Return-Path: <devicetree+bounces-185971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A602AD9F97
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 21:59:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A3C01743C0
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 19:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 399952E7654;
	Sat, 14 Jun 2025 19:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dAMvxHGf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9CF32E6D32
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749931161; cv=none; b=V2kB2uxD7VX+CPxwGBjKT+IqxL0Po+aTIVpg9iOu/KNvV3QJ1IOlB1gYf3Ct/e7Eu8KasTpAoI6NhQIs4EEwua/o+Qq4SIyxroabFiI7NXWnvFgnuOZUd/EzroP+U6RrYT1weE2rDnVFJ7AOh4wAqvHSPxhgPChPKIxvRHYXIOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749931161; c=relaxed/simple;
	bh=PZaEJQhz3tByOxc2e8q1GMIyVFTagBkfd0BJeUZoZW8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VssU5mpKMfjvtQU5XcK7/6eaWREKEIvV8uG+egKAD5biCl4xISb7oItceNRLxKIUKig29t0jJgRUpl5aeVrLocq3aptenmwelXrgiXTWkfMlVpbwA5eaETg61RxA1Kp3xWiObtRVCNssVMz8PnD51sj9BDr053RcMFFP3JfxgUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dAMvxHGf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EJjSU4024064
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:59:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D9Yz9eeOEAB6gwmE/XjUJssKvHuIHZG5zhBMZH1Z5yA=; b=dAMvxHGfPG4PEBnn
	4YUTpSk+0+m8gwP+g0AVnupkSOtc8TxpsPuUpn+mQ/1K6c/Z8Mqb2PdT/Ar/I1X5
	7CLLBd0dazKzV3QNASAhB46pQ8EkeqAsM3x0+LIPrABaMJvRuoa+lbh3gXmhmLRV
	Z4O4hyUfV/+gWjdrJgDPVXse2LGUCFXv3OYynO/ECvgfdBJGa8DCK3+LvWJdtXaz
	sp/O7RIX5ZfT7E5Nvbk42m9hA1aXhGpk8q6HvfVFgY8blWLG4FcWtWz//I42GS5Q
	Iu8+eRf5QjdyzkTaUfjIhbeBLY/t8xUL5n+Y6dNeojBYbgNzyonLz8ll4Er6xMrf
	2h3oDA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47928m8wyt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 19:59:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5af539464so105368885a.0
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 12:59:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749931157; x=1750535957;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D9Yz9eeOEAB6gwmE/XjUJssKvHuIHZG5zhBMZH1Z5yA=;
        b=HDb4gCI0SId/grR5dL2+zSoCWerUrYTDgupf7C5O9/ZC5POB/ujhMRPiGnM3qTA+fe
         3PaSAJwz+/B81Lq/gwHTTUSa0Uga1/usRH4xZW5zokFB1rDcMl5BrM+hgrZKPngqMHGz
         R03TB9H0iKMqjj0fETZ4/Ctzn7IxWK/JIlrpFzivbh/Jw+kcBb/EsJnDjo7SX+dM6BZ6
         8IoNhABVIjh820OFJ0aZGrnaIvq8OMyrNe3LETEIMZPlWVC5ZhZqT1uCX1ByKfC8+TBV
         O1m0Ct2igI05G3casJTs+CcMfVAo359ptjklDmfxoijuYP3YozZ9ziAn0ofUh1S7FWU9
         64sg==
X-Forwarded-Encrypted: i=1; AJvYcCWNZn11jL4yluKhsfnGye2S9140kIGRDG4KBut1B/OQJWb+9229f4bh82W5edJpE5LecxDCJ8CzQVXY@vger.kernel.org
X-Gm-Message-State: AOJu0YwuOEgsXZqyEgtPCaFs/UdbdSNbUoWoXhILfmFNfFKc9SSXuzhw
	LCsr0o3bQJecZkCfFKGfmLmhnL2FbggbahOapsw+Qg9kxSTQVXehOkR0ZrmqptCY9VyxpTV77lG
	VOaRPHT9+N/ltQWDd0RSRF79dgL+udB4Hfz0X1y3+zco2bf9TWo6cdR34+S2BlzcG
X-Gm-Gg: ASbGncvs+527KbowVL7luz+QOoHRUx0QVVUx4yetOIkzNtcfGgWl3fOSTXkblG6AjWi
	PUlDrOVkD6d+uVT62QKvXhp0QlfIYc0ac0AKuBWcG1fhz4O3SAOhKxJOsO/YABCDc3CCko6Syp+
	p4/Cn2AWRKsFxgn1q3FaAXF84M6DZWg52aMgqTLZJmsHAhCJW6GlE6yOye3OpM5oembapZvYbLi
	yDvEdZuBFMHWiOw6Gt6eMgg1GMhQnFL7rnUjfKR2swCaDKA0HAFBgFDpEpmAUn/qG2ydtUdW0KP
	q3cX3x1IHSVcpvwPh6JfpVdGmv5ShsHpZL8KxjnO4wcET8h/fvo2S3NStEKVMN4Ivr8/wvBnDsK
	F89A=
X-Received: by 2002:a05:6214:1d25:b0:6fa:fcb0:b899 with SMTP id 6a1803df08f44-6fb4779b7edmr21624186d6.4.1749931157277;
        Sat, 14 Jun 2025 12:59:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyfvXu2z/Eu8GxiF3dbJxs97S6hPTXH957lzGZe6VLmsR4eBt3mhoTtVoO+YoinFTILZFt4Q==
X-Received: by 2002:a05:6214:1d25:b0:6fa:fcb0:b899 with SMTP id 6a1803df08f44-6fb4779b7edmr21624086d6.4.1749931156870;
        Sat, 14 Jun 2025 12:59:16 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec8158d33sm356206366b.31.2025.06.14.12.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 12:59:16 -0700 (PDT)
Message-ID: <296a9ab8-04e3-4623-8246-c8fd3fca8d98@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 21:59:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] phy: qcom: qmp-pcie: add x1e80100 qref supplies
To: Johan Hovold <johan@kernel.org>, Wenbin Yao <quic_wenbyao@quicinc.com>
Cc: catalin.marinas@arm.com, will@kernel.org,
        linux-arm-kernel@lists.infradead.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        vkoul@kernel.org, kishon@kernel.org, sfr@canb.auug.org.au,
        linux-phy@lists.infradead.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_cang@quicinc.com, qiang.yu@oss.qualcomm.com,
        Johan Hovold <johan+linaro@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
References: <20250604080237.494014-1-quic_wenbyao@quicinc.com>
 <20250604080237.494014-6-quic_wenbyao@quicinc.com>
 <aEBh2xHu3QDtUrxe@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aEBh2xHu3QDtUrxe@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE2NiBTYWx0ZWRfXxze57IX5LMLz
 xQj78R+7p3t5ye3Tmw6odNmLZedELMdg8xWbdGK8walN8iMtbU9EXdvh/Zcq6LuYrbn0afKpt5P
 uSEoWW6WgWtFUE0Cw3S2/0VdkW3Y8ixZ5D0pgvSgjljpZXOo5TuLRheLqYcwP4z+roMDDeOcSd1
 eMuz0edOlkWqUfEeWFXgW5azGrQ6eVj6WzyeFj1XBo9MxyRgHYMJGjcfvCBkXFUSLItP75aDiwD
 oZBiSJOJr03UkSm5D16dhZpgpIq9Gi+jXxsD4nbx8NmezW3V6zHPOqAgfoQJ6Z7gZYTq0Et77vv
 i20wVkJZ/yigVyrvGitN0yUEuPNH3AjJOkVwEtRGu6pxdVaHUlr9CdS71CVs0otHCIuPHg3wfRG
 uYE/ivDIcEFGWuun1dUkoRXf8hjJn/mgrjAot46q9czrRlCAiDWbN3KendSO4V8dbUKdQFmf
X-Authority-Analysis: v=2.4 cv=fvbcZE4f c=1 sm=1 tr=0 ts=684dd496 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=zitRP-D0AAAA:8
 a=EUspDBNiAAAA:8 a=6rhPmxELWQzppWOSQc8A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=xwnAI6pc5liRhupp6brZ:22
X-Proofpoint-GUID: sdy-Fi7d8rWew5eWIX_6_w8H24qYve_R
X-Proofpoint-ORIG-GUID: sdy-Fi7d8rWew5eWIX_6_w8H24qYve_R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_08,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 clxscore=1015 mlxscore=0 impostorscore=0
 adultscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506140166

On 6/4/25 5:10 PM, Johan Hovold wrote:
> On Wed, Jun 04, 2025 at 04:02:37PM +0800, Wenbin Yao wrote:
>> From: Qiang Yu <qiang.yu@oss.qualcomm.com>
>>
>> All PCIe PHYs on the X1E80100 SOC require the vdda-qref, which feeds QREF
>> clocks provided by the TCSR device.
> 
> As I just mentioned in the thread where this is still being discussed:
> 
> 	https://lore.kernel.org/all/aEBfV2M-ZqDF7aRz@hovoldconsulting.com
> 
> you need to provide a lot more detail on why you think modelling these
> supplies as PHY supplies (which they are not) is the right thing to do.
> 
> Also please answer the question I've asked three times now on how the
> QREF supplies map to PHY supplies on X1E as no one will be able to use
> this binding unless this is documented somewhere (and similar for other
> SoCs).
> 
> The fact that you so far have not been able to provide an answer
> seems to suggest that these supplies need to be managed by the TCSR
> clock driver which can handle the mapping.

To emphasize, we apparently can't do it, because there exist IPs
where the QREF *ref clock* is not expressed through a bit in TCSR
(which we interpret as TCSR_CC), but the *supply* for that clock must
still be described somehow, as it obviously needs power.

To add to the mess, it may be that there is more than one supply
per reference clock required (which is not necessarily an issue
when the driver takes care of it, but something to keep in mind).

Konrad

