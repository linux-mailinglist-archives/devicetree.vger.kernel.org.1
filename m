Return-Path: <devicetree+bounces-172627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8442AA5C16
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 10:24:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 124011652CD
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 08:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A31821B9E7;
	Thu,  1 May 2025 08:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cuEqgNET"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C86D1E7C18
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 08:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746087829; cv=none; b=sA8nb2HL7rcRxtgJEJyTJoa7GrtWWXk0qMAp9b8pLaVwpI8/YTvrO7yoxFf6rYg6uzPvY5/U6QIID+67ZgWzxPn3JCQKwmfJj2HCxpGFVOJ5pei2tmyFhPfH9iqGZfNbe9GgBM/BfJqhhSxH7vsqCyV11XQTpfh0j+xaaJS5cgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746087829; c=relaxed/simple;
	bh=i5qIUYMGnYjh3O5bD+pGUYppyjmm+gTXmK92O4h2v8c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dTV8QBIQ+X3qgGlcWjhIDstX+9QB80h/rlQyjkq5/P+GnFZtlpPmuN4t/HgEx8/3+I8w5yLKyBO3yVaHqS+D8+ypOmf0G5vJpE6BFdyMEsu94656BJaqBJHlZQz4cvRqs01FpxYl7V5DOuiYUp6/JHfNBn0cimZDfV06w851d78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cuEqgNET; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5415caxF021005
	for <devicetree@vger.kernel.org>; Thu, 1 May 2025 08:23:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	INmzJq98TweHQnpIdriujVmaMT2JtRhMol4dfGshJGU=; b=cuEqgNETSLOwnF+d
	ZFgIEOtfAFYyS4pTUChbA4F39BV2Gm/ODAl0V1wTqhUO8BQTnfzQn+9v8rqdC7Oz
	m6ht/j0Zj3/k9B1CDDciVcxTl8lVl0444rYLdRuRmrDyEglgVqjwJqut/36mtZE7
	V5SvB6sPwD07anEYlLdcDXPlFovNxs1w7gJrTtfDxRHXvQF7xXXXBrOUSBJfaShJ
	Q3FIl6xbxyBcu7gIh9xIHQqn21FSZfdpMcV5nk61SVbJPiQtBHttNIKPphrBUkEC
	m751KYZjnn6uqc5U/7/AzCa7o9ZdEM1jNe5JM4PlmaYY83IHgY8vtel7q28vYtwa
	T2io0g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u4csts-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 01 May 2025 08:23:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5841ae28eso14504685a.1
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 01:23:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746087819; x=1746692619;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=INmzJq98TweHQnpIdriujVmaMT2JtRhMol4dfGshJGU=;
        b=tviDGyn+1kYFlxh6rvflCOAZpR607KveL0UtUTpuTEBnXpzbgeY6O/dmvPTEoZ4nSy
         RjRKvkgK9tUJBgVXwlFROKW1ysT3djdq7Mrttjq4nHa/CgY3IIxTZd47W31QysFMdP7F
         /r7i9fpLeTEhhZeJPhcTQtb5w0GWLIb3bA5aMPZAeDFT36oVp4y9T6VIBjEn/Qu4BSJu
         za6aruT753rfksirlHkJBgPNYzNeyladPX1Y35R4s2p2Ug2b+Kq/XT9QIVH6nZ4nsWlB
         v12GFHaCsYwgxiv44SjkRMvVvH2eV+KEE1ewiatS3nJ7PFzcRnUJ1ECyQDJzkQGQIha+
         66pw==
X-Forwarded-Encrypted: i=1; AJvYcCUgXSNoO2VwinwYF9DZkpwdZaJ3I7F6xraDaGZgAFUwGQpqx11CTvftLROfmTyVk9l7w06oqp4czXza@vger.kernel.org
X-Gm-Message-State: AOJu0YwpCgkR4thrbdfaMDvaFTfGWYJl+X64cnbwJLMRRREdVmdWUTv+
	CQw+EHwfcUc5gpsxT5AbhN2r+I1pCMFaImNeke8t41lzPk57fLpzswc304zB+5t0cstcVEytOJC
	9+0wYt5r8wsPI5HC7EKU6FwYEtBrXUG451AWWR47ugXlxzvIULfAqxSwFm1Xt
X-Gm-Gg: ASbGncvWVhGqi6J9dlZLxAL/FzEoRoC5g9k/kVFElrJi2UJUnIk19p0VWFQtJHfgfBU
	TQkPbAUCy5KooPpl6q4vs2cUJzaeBCLfpdqd3sshHf3o5F+/eq7mgWAm1JRpVUBuA/LaQlp4bPp
	bg6ED7aHv4fcYaXGAPsk44ujXi4/S9grMRq+GZgRBjb8aZygglfTlSDOTYOztt7uB3y3OMxn2xb
	NaHLptOsE5mJmQ5Z9U/30YSLv9sgpZMhDmQFNOqxRY9+zrczMcBrXCnr2vz44sURwdr9gh2rV+2
	4aeQWN+Esw4ws/sEVtURYUWZi23x/v/FXc2gNgpMx7zLCetvlCuWZwY0syqmgvHmER0=
X-Received: by 2002:a05:620a:4308:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7cacc181228mr162399685a.4.1746087819108;
        Thu, 01 May 2025 01:23:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJbzEzGsqZkwSu1kNt92eSKw+iLzFuEHzTdaaxapBQpXXrMYs7ZN0NxD9KdvXg5kB1l+jX5A==
X-Received: by 2002:a05:620a:4308:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7cacc181228mr162398085a.4.1746087818757;
        Thu, 01 May 2025 01:23:38 -0700 (PDT)
Received: from [192.168.65.219] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad0da55af93sm7624966b.146.2025.05.01.01.23.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 May 2025 01:23:38 -0700 (PDT)
Message-ID: <a9f893cf-bb92-4acc-8d9f-5a3180b67d75@oss.qualcomm.com>
Date: Thu, 1 May 2025 10:23:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: sm6350: Add q6usbdai node
To: Luca Weiss <luca.weiss@fairphone.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250501-fp4-usb-audio-offload-v2-0-30f4596281cd@fairphone.com>
 <20250501-fp4-usb-audio-offload-v2-4-30f4596281cd@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250501-fp4-usb-audio-offload-v2-4-30f4596281cd@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: najJ4MylWMTML8a1X-Z8DPysmlofsKzs
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68132f8c cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8 a=s1otzWxbid28AevFAO0A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAxMDA2MyBTYWx0ZWRfXw11QpP3M4WH6 Iz6OwCZyj+4i9LKVuzEwUea+DMX+RAGpbHmrDnMNQzWVXwooMuTJlhBXmA5sDpCkR/Pc+Jmn2GG cxECpyCCf6mN/lHcITOU+vWutN3P5AIjT/xZ2Wk3ddLrFGsNiTqB2TxkStvF17DIPaCGarGfOyK
 mkyHHXAQSU/NkJYzXYJrqHyNF+8gxj7TwCMzZXg+YdaEKUPLVLkpI3jCNkqgcJgY6+CWOaE2bk1 K2a9HXZk7NHSqJsmRhxJX4GkfWXU3DtOD0nXBqUy1eHas1ivuFcrLB6KkqtCM2xBxAUrSgIr5EW 4TinBd3zm29JbJQ+YPvDUvRm1+nKyh8ELPCtiHUW2sMI2t/OOAj4Zz2XlbyXcxH93PCe6AWeJtt
 LVOSDaclm9S5QihuH95REpfFng/kZYLDdh0eoVOZMz4ITDlBuY84BE84YH8fo9Gh+fioAGZa
X-Proofpoint-GUID: najJ4MylWMTML8a1X-Z8DPysmlofsKzs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-01_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 mlxlogscore=910 malwarescore=0
 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505010063

On 5/1/25 8:48 AM, Luca Weiss wrote:
> Add a node for q6usb which handles USB audio offloading, allowing to
> play audio via a USB-C headset with lower power consumption and enabling
> some other features.
> 
> We also need to set num-hc-interrupters for the dwc3 for the q6usb to be
> able to use its sideband interrupter.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

