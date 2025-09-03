Return-Path: <devicetree+bounces-212326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC66B4262B
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 18:02:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B78E017FEC2
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 16:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A0B92BE628;
	Wed,  3 Sep 2025 16:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="paMOUG4f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A3529DB86
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 16:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756915328; cv=none; b=kNZFEDXgkwMZnU68aqzsyYxFqmYCL9HTpDh+oQvdsTg2C2Yqj1uZTmqlIAHkD1GlrBJBnVlzdVYwf5LdNBgOiqd14mZfSVpD1xrQ16YPdtjPerjHOnqMrxSGOjpGl8DIlgptL53eAnoxkZOEBuv6uOdC3jLFzXWmCtW7s7W4Kh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756915328; c=relaxed/simple;
	bh=duCAr7CO/N1Ze4ijxMI+nhb3sedWh7XRQtNULBNw7Yc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RB3Ge0Kru3/jGzdMSnR/BjTn7UErhv2TETuf1Y/cR9qP+onjEq9RqVGN7p+WfyMkmbRCRiqdfcskMhuDTomLYAdwLnYHLgG23c39wmUGSoVM1XsEvNzkdu+NbUdKxUWdhTgGTgQ7y5Y7Ke1G7dxKEDlhBwg3O/S3DYcwpBGen04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=paMOUG4f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583DwqdW029700
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 16:02:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ufkKfMtF2sFaOT1A75ow461HdClQcHWGVHzSfn9/S2w=; b=paMOUG4f4olZvDlC
	gma5g/I5WSNuYq6qS1l+Xt6+llYCURDMNeeKgTlridcomHF2zBXLevGozYUQ6HdP
	8Zyl2KaS1A2nShuiQGZcOjMzi3Y7JEU3y3yjqAvl8vMvAxLxVU25QWGajl2viDag
	nUh+NH31cs1QvoiV0hQAo2DMIp5LcEtZ9OqCSzpLk6kYCfrSd8T5yrPD8oAaMroa
	uf5OTH2qi8QLRjthJJPE7W/XASU8xBxDzAqzWNoo2r5jPxzs0JD+1VNt1tzJJhi2
	VshNLVDDR3CD3+AaHAX96YNNYnpYh2SFdiEyKokd4j2HVom68+vlgNj9L1nYqdrT
	o3cf6A==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnpcep6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 16:02:05 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-52db72e4157so3310137.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 09:02:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756915325; x=1757520125;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ufkKfMtF2sFaOT1A75ow461HdClQcHWGVHzSfn9/S2w=;
        b=NxSelXwRu3HvXcH3WKJpEJ0NFxKksJwC2woQtUk26rbceOQl3l8EQ/sv4d7ycwyRJ6
         Ev6ifkHUKeioOy/WWTOgRH+K0JWhxDxR/46C93P9CCY5mkOlqwJALUL+ovmYvC9Oeexf
         QQ0ofsIJ/Pvc7F1dNEY8PX/QwXhXVsg1n2qZClCYhJbLtVoUL2hbOzRSeClMGGZ+zSYc
         XE/oWST9m/RyqYSlulFTBrF4ly/RRln8a8l+Muck9vLrh5w2RLzeRnHtK8hph21tf6ry
         Z5/6IvbGLf76tz5hx0/AqGqdpSA64F8Y4SeYuI142MP6nmVSBYjZp+Ytpxfi0LYLGABT
         7B5A==
X-Forwarded-Encrypted: i=1; AJvYcCWllwLxaUqz445enryCXDdueyf7Ln8KXoouLA7drWYp0UfnABkEqSNXUc07z1+QDan1ht+Ra7HjSCZo@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw05xbju5DFZTaOJgTwZKjOM4H/ZIfZL28bq6kfxGA1ksDggKy
	Q2+wlEOZ/9uQWyXzVTaFEYQsZnddvSilyzDLA4EKPZsfnFVdgfWzzjOX8i/Anx9dFDthsjq61s8
	9i+ugUSoX+0Yq2ERQMUt7rg6a01Y6G7IkLNAQr/GH9o++xnv1eFuB9t/g+3DfOqLM
X-Gm-Gg: ASbGncuVi5Yjj05Chc/JLEkqvo4c+QNRFDdVelEowhJLCABtwioLzjU7dSgRdjbGCZ5
	CS/HRznuPMa8GVMFVj6/hB/b6TJSQFEln20qdejVE77C5iCd0WLge57SdBrfklIRMdHmucBknwi
	IlWRbBDGep5FUFz/lAdQAf4+vtjn99xj5X9KO1PDhADeCSwMgq+7zjpHIMqKm17JIuQ7KJq8nNH
	yoYcY8sI+DxrBX4BH/AlFYTUv86o5KoKDVhBC8HHoWOXdJwyMdiFyl0uzSLD2k9I+7s4ohgXbCj
	P8l2wG/BeiUpMQuMeU8TEGJDy62kB1reRu5mbIxzaORN4mGN9maB632XkNE5pixhhNTKw5PkNlr
	v9+8DKMF5TmTS+/0JdFXOPA==
X-Received: by 2002:a05:6122:2015:b0:544:91a8:a8c9 with SMTP id 71dfb90a1353d-5449592885fmr2297754e0c.3.1756915323596;
        Wed, 03 Sep 2025 09:02:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNOwCrprQOUcxuZaV/B20qgOB8K6FfIsDK3UCpWlIJhUbywwkcF3iym3uiTsjk25+FxGpDqA==
X-Received: by 2002:a05:6122:2015:b0:544:91a8:a8c9 with SMTP id 71dfb90a1353d-5449592885fmr2297638e0c.3.1756915322699;
        Wed, 03 Sep 2025 09:02:02 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc1c7dfesm12285170a12.7.2025.09.03.09.02.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 09:02:01 -0700 (PDT)
Message-ID: <ca2b6089-54f8-459e-8cc0-accf802026e2@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 18:01:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: ipq5424: add i2c nodes
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_msavaliy@quicinc.com,
        quic_vdadhani@quicinc.com, andi.shyti@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com,
        kathiravan.thirumoorthy@oss.qualcomm.com
References: <20250903080948.3898671-1-quic_mmanikan@quicinc.com>
 <20250903080948.3898671-3-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903080948.3898671-3-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: h44PG3Bb0cEEV6zasRKOeicuww6MnLT4
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b8667d cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=v5yAd65IgAm86a0TdQQA:9 a=QEXdDO2ut3YA:10 a=-aSRE8QhW-JAV6biHavz:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: h44PG3Bb0cEEV6zasRKOeicuww6MnLT4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX8fIht/G/Hlox
 Me4BonlEkbFnu6VayXZ30sG+ByRMEDUCBQGV4CLAgpEtISrQ7HLLZggwQA6+P75s8G0xHrlX7uV
 lTHDeABdN7WKHCBh7mL1/l4VufTA/gIXLp2EcnggURWz8ksFXl3OAwvofb4yc/t1VH50qytwGpj
 PDsgqNxrBr0kPO+CdSnv6FTJ2IYtm1GF2H9A8OHhkE5c20ETFgBW6/pEiAFlHhjICS3wTOaz7/u
 6cQrwl+cE3aQtlejQo71nh36Q47j7mr7c6v4YVgdjDnGM3DTXHTd/HAXP+fCJYxFSog1BidbRWu
 9P2IYAsCjSrVDRPk5Fymps0HRzEyvlrszFsuESfcG8Jc3BS+Y92mmIsdG6Wu4qGBN/mc54HK3zj
 KSUqNAZF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

On 9/3/25 10:09 AM, Manikanta Mylavarapu wrote:
> Serial engines 2 and 3 on the IPQ5424 support I2C. The I2C instance
> operates on serial engine 2, designated as i2c0, and on serial engine 3,
> designated as i2c1. Add both the i2c0 and i2c1 nodes.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

