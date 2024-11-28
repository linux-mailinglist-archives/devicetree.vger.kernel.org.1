Return-Path: <devicetree+bounces-125383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3161F9DBD6B
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 22:58:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8684E2822C3
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 21:58:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 222161C4612;
	Thu, 28 Nov 2024 21:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O5i/wUbg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988101C3F39
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 21:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732831092; cv=none; b=nC7kBMPbzXx2oZkL06LGEnbFP19wGjWIMLuuVS7zN61SebhKhULCkY+KQCi8GiAU27U1ZveD4KnQJW3YifIsqzKu+FSd+UE8FffHKMW6aSmli/w3ijSz/F73q5hbmOYY1jJBN8OPsp/VXKvwlhWqkh6QB8zx/bvWOxGNagfAd9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732831092; c=relaxed/simple;
	bh=2vwxfsmn74MF7w+ksTz1WddkUGDmHHSJaLJtZOCA/J8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T2/QElChmBVMst7/PnmWJqVC21kGZF5hC1lml8qwPISvculdJ+1xJVxqfN2IaNTLFVITTpZLapMwyvT8pZXoFUXouVjIOCGtfSmncXZpCzaFnI8G4oKULElNRYaD9LW9WEl1qootYGV9i/+l3o/I+TPIPr29xn7HYnjH0J6v3iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O5i/wUbg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ASLZ2vd023274
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 21:58:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r/7+OpqThhWjJD5m7lFQiVxIVoy609XKF5K8pjfWPBY=; b=O5i/wUbgmyy0b3sE
	Y+7KaOPiVru8GemKHGb0j68BbPIG3HkW1tOg5GTGHPhTa3N0W8xtpbB0fU2ffqXi
	fPDRJJHJLWMr/EkJMSpsVnco7lnDdMrdFAKj+wkxbJFM3ofDoCWdhpL2tHe3tx6O
	65+by0VOtnFVlqQ4URyM0LHtWR843WSi+ad7H8c3CFAvSa5ZExXH4OItkqaWdXUP
	Ubbl4u9ylJM8yBklVCy20qfBbyQKz27lVPN70TB55kE8lh8ti6Y/WQ56To0QfHrQ
	eb0Zhn6GHIjTHpPRd2kfs3exS/2XVdtGS8uYfIGSKSQL+APKaI+YXFgmegiWIOr+
	qkzMEw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4366xvurth-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 21:58:09 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d41c6c7bc1so3276736d6.0
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 13:58:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732831088; x=1733435888;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r/7+OpqThhWjJD5m7lFQiVxIVoy609XKF5K8pjfWPBY=;
        b=gi8fVs02qCTNG3EUiQtYN/Sa3psyHB3VS3yT1vWXvkaiCLLo3cGeaLbonmlx7Dsokn
         m6LNALf+zos/St7iViA1itTzitYHUCgbmbojlWgajoGgS1EE49zs5vVIoGnppAi38QYJ
         VTxTqh/UeV1wy7iegmx044vfhyFqoHV8xFbzt5RFvWXFA6sDiFYZYG1vQJte68HXReWd
         6N/bHrru167fFJ1ZmgAuh/9JAe5WJWyQtRE4zzz2ydTXc3lC3bxAH4/FFAzedvR5uA5z
         WixmJzX+97bk6rmJjF3RPuJA4HcuvbI+ssLcw/a25MWmivPn/LYGQb0qAZ19a8ZdSqf9
         wyjg==
X-Forwarded-Encrypted: i=1; AJvYcCVnASa+976i4cgTaXInmwRILnrISZgFW9r48+neL3nn64HIuC6ohk0B4610e03WYx5AooMVyKDFaUMv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4R+vvbo5J1+4aA8HEOr8O7/YL9WhjnFEckqD2FuyOfUo/qoVi
	2LVoJPHIuGcG5GlasTKaxA/r03qW0YAOiAExqtkeBoTHB5WM5Dj1IwtwYzbE+SH3Bs44hCz24b5
	8f9ViUsXDj0AubdJDja4FVsm5DNyvu5EHN8GIamsSEJueb3ROKL0H7rqPim5nBbWyLFON
X-Gm-Gg: ASbGncvdS3FhYuqDQFTvvC3FkDpNWqEsuCjmvitHmT/zw6Lf7AZFoOPqS/YjnZQUN1g
	EBr8HahN/4U7UF03TSHGlHJdyLIbSzP1h+7Z+lYbgD7cI0qc7i532XmQzIH23ydeu21YBxYVmOY
	ovzwk55LikKfGc1yooTjaBQXrsXPQHr81r8jkji1Gi3Cr5Z7hwxKiMn2tbZaqm+IFRbTLdGgS/p
	dW/AyAayiVDoWA6lbdW3jFohPWuo5yh3U8RQsY9IJkGggq5G3CRoB/ereggkk7QLnDAq2vlSMU/
	gHCLxQuB4OxuSFhMQDODA9oC5gFXDIg=
X-Received: by 2002:ac8:594e:0:b0:461:4467:14bb with SMTP id d75a77b69052e-466b34cba38mr55288451cf.2.1732831088012;
        Thu, 28 Nov 2024 13:58:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF2UX9AyLIHl8dl8K8esTyxImHPB3s6JDHd8I9cH0u6SvNGtg9eq6fo13XWcc1+veZ/mvMEtw==
X-Received: by 2002:ac8:594e:0:b0:461:4467:14bb with SMTP id d75a77b69052e-466b34cba38mr55288321cf.2.1732831087705;
        Thu, 28 Nov 2024 13:58:07 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c19e4sm105463066b.6.2024.11.28.13.58.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2024 13:58:07 -0800 (PST)
Message-ID: <f29d09e9-8739-4e25-ad52-531af1cdb283@oss.qualcomm.com>
Date: Thu, 28 Nov 2024 22:58:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Fix the size of 'addr_space'
 regions
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241128145147.145618-1-manivannan.sadhasivam@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241128145147.145618-1-manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: drJvitJPOUNk1KR_uVx1XcQ1vKNIFLbG
X-Proofpoint-ORIG-GUID: drJvitJPOUNk1KR_uVx1XcQ1vKNIFLbG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 mlxscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0 mlxlogscore=637
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411280176

On 28.11.2024 3:51 PM, Manivannan Sadhasivam wrote:
> For both the controller instances, size of the 'addr_space' region should
> be 0x1fe00000 as per the hardware memory layout.
> 
> Otherwise, endpoint drivers cannot request even reasonable BAR size of 1MB.
> 
> Cc: stable@vger.kernel.org # 6.11
> Fixes: c5f5de8434ec ("arm64: dts: qcom: sa8775p: Add ep pcie1 controller node")
> Fixes: 1924f5518224 ("arm64: dts: qcom: sa8775p: Add ep pcie0 controller node")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

