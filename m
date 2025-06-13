Return-Path: <devicetree+bounces-185834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C83C3AD95BA
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 21:41:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C9CB7A5AF1
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 19:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA62623D288;
	Fri, 13 Jun 2025 19:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="osObhhsf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23661239E85
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 19:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749843699; cv=none; b=H69hgXiDTVqpT5wsqOTNzGNxKPt7HhQ2EZ0v00Gu/IAEBsE70n+bxjO6EXegxY4ioe/LtkUFuv8nXaTs8bUpjFkypU/Zg6oirsRTNHUS5zEYPBqY+MnCBn4vm+nMzmZapl47lEG04Il23Ga/QUlzXU3p+rPgMIc8sHMxR1aiXcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749843699; c=relaxed/simple;
	bh=VHGNStfXRS7au1gMiH2Dbzhwuas9kiqaBcefG/Usvaw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=mZsyjTTYxv4O6QFfgkdCJrJMUU0USV12pGV+guJ3NtEfu3KpUuyI5hiqTr0xnK4qn83Uxhh/jyz+LtBwHoI1+fsYTbWPhHkAEWIKu8eFrfDT5FwrtA9dE3mImjxBZ6X6g6jZC8ac21USPyzxXzlf2ZIeb8IOuaqoZyD2X+4CNIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=osObhhsf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55D9wun6027902
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 19:41:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZdJ0wBY5oGK3A+eYa6OTWVtKRBxZmcf1tbSrTCxgbVE=; b=osObhhsf09hBoxim
	9EwUrts4sfOzbxwoMafQiQzdq3uY353WwpXwLz7rYvL3RgLEgnxcdfi37h+BEetl
	VzlVdJg7IFWWkiinKnFhiztUHTWh8JNm1CQWxcbPYSFBGpUSLrhuOXXY8gEStNuu
	WQGi4zoxbbCbQYueqfmD8Itwl3D1OXmYoiFY13wKMCTTKosOoXz0RmY7DMASJ59K
	AMagNdKPgXF0AL6a7437jV2cj3rZdeA4X2/GCPLMWtszmrNbudD1hcKmJohS4o7d
	C84oUYZIEf/dyjYqrFD0BKOutgxLpKDO41mZAcPEwdcheu8xK6ogqB/N/Doqj8zX
	cMfoNw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476jrhk7us-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 19:41:36 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fac4b5f949so3784676d6.3
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 12:41:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749843696; x=1750448496;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZdJ0wBY5oGK3A+eYa6OTWVtKRBxZmcf1tbSrTCxgbVE=;
        b=DyqVpILDfP+2WoXrkZXKkNMybUEugvj9mx1tOuKKa2tmTH5e3aaYJp2LI9Mq7Cehji
         653uy3tdq0Alkv6dLGihOItacSNWEubrWoDIVkdl7NMzW/GlpQZcOA3Jix//SnpqLiVi
         Cc4BurqoQChxYRIplNICrL5cE8l5wu6P8P+jk+ZqllOPgsc445b2DaiX3HNVV6m+bShe
         4uSWg3RdCugD4lfdAGAk/0olUngLMDGQT18Jfj7aIqp9co0XNQJ0GJwp/+ivfUTMXURG
         RE5LluTGwOA1DH2SorBbCa774Ows2mIPyNF7EpJEsUqVBLxxYvIUqZAH1tyLgEiUfviH
         dWTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVasxo/Q/uhEh4X4VM4pMjg/fP+mRRSgxKuNr/1DVRxDzGdrYmH0feCBr7q2gixnDIYvzpEkpsrwuMh@vger.kernel.org
X-Gm-Message-State: AOJu0YwclxZJ8U6x5u8k7oOTHmUstYGDRA4QFriP/8rKsoq8rfx+IlRy
	zn4tmJTNSgz4LAgkOGIuu/uqK0YTpuhxc4MsRUyn/XR1nqH+LL9Xlm53UWXRJy+t6KY6d8p86pP
	lbKF8G7qTAiygJ4yAR7oJpk/GvS7Be/FxJ0MyH2lustV151oT1OOfJA0KOfyl86dt
X-Gm-Gg: ASbGncsKESwl84+oMTHxqSM1mcmFXmoaf0wUjRw1/Fg1Bo+berzxSTwjRcjlBlnDCha
	6OkVz8oGk54R6DHl5hwenP646ojNPS3MfZIL6qT2acw8EVoREPlqT+eN4xeZaZgMk5tnHJBDiDW
	Im677Mf++M7ukPllO+o9RnyK49Sy7+V2BQVnKtMrvRtSZxPPnktbGAql5FwAKGqu2MC4Kb2KgYE
	AuRQtqTpH7tKESHT5oC8rjK5h61ql4vU086NTl+ousP1iotGn3bnj3xe1+CK8XZ+YvO0zSZOPDM
	KSqBQvRAqN5Rl9fvTRgPOGzS6zTmngk1P3PdDxQ3VQHFEy702XAx1kzg5IXlKSixJAFkwTh/jYU
	O5VA=
X-Received: by 2002:a05:6214:d02:b0:6fa:bb44:fdd3 with SMTP id 6a1803df08f44-6fb477cbd0amr3159356d6.7.1749843696178;
        Fri, 13 Jun 2025 12:41:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2uRPMoMDmeHgp85rukBQT58kw9wJmx4qV1auWs1/Sz8fmI9/qjVlmri+yElgGOC2BQuIm2A==
X-Received: by 2002:a05:6214:d02:b0:6fa:bb44:fdd3 with SMTP id 6a1803df08f44-6fb477cbd0amr3159226d6.7.1749843695811;
        Fri, 13 Jun 2025 12:41:35 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec8159e54sm177372266b.12.2025.06.13.12.41.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 12:41:35 -0700 (PDT)
Message-ID: <6bd88bc5-c1b4-4ae9-b631-93b208e9862f@oss.qualcomm.com>
Date: Fri, 13 Jun 2025 21:41:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: pm8921: add vibrator device node
To: Shinjo Park <peremen@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        "open list:ARM/QUALCOMM MAILING LIST" <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20250613194004.19390-1-peremen@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250613194004.19390-1-peremen@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EovSrTcA c=1 sm=1 tr=0 ts=684c7ef0 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=qUHfeBcuc-EptDy5CXEA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: nAEZd4VjMa_TaWyYU_zr6utSGe9lvn1l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEzMDEzNiBTYWx0ZWRfX7QecvAc3tEdW
 g22Wz/O3wq/eHPWqZOYoPcjDK5nLP2aAPg4TzY5dJ+IJ2f13vlIFbbu2n46IgARN6NJCXcAvLc/
 +hhlgsG5cYYAUy346aOgvXrSdU+HO0zSCXeIY7x1Ya0VOLBZNA5fmJNHGaYtc5iyCJisRqMDk8i
 p16pDNot8KEPHAHGb4jVv7AKVLU436h9BLMdTJd+egmeaI0QUVYfyWbEqrnJKb5it1HK8giwkC8
 rfXsY9acdmbXrrd6OowtDe0+/TDhijAvIGwUleaPFj66s+NkBWGvBRJl2ZLAhwlHNyix8+zK1br
 Fm0utdTmGxdLQ++5RLJyFFS3OTMzDLVq4cw6qrLOIZ92M3RRqDvFYNNu9KQ11IFrtLHMm/P0bBm
 L3iPLTUKU5q3+482CpPQfQUZN6CFLOiM3JQt+BmcTaybSvNaC6oxQZPwWShfeSasJ6Wy4xr3
X-Proofpoint-GUID: nAEZd4VjMa_TaWyYU_zr6utSGe9lvn1l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-13_02,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 priorityscore=1501 mlxlogscore=711
 mlxscore=0 clxscore=1015 malwarescore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506130136

On 6/13/25 9:40 PM, Shinjo Park wrote:
> Use the same definition as pm8058.dtsi. Since vibrator is used only by
> some devices, disable it by default and let it be enabled explicitly.
> 
> Signed-off-by: Shinjo Park <peremen@gmail.com>
> ---

This is the third time I receive this patch within 5 minutes - please
check https://lore.kernel.org/linux-arm-msm/ to make sure your emails
reached the outside world

Konrad

