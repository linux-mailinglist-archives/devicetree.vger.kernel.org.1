Return-Path: <devicetree+bounces-250815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBF6CEBF9D
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 13:33:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 51BDB3009C77
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D48032142A;
	Wed, 31 Dec 2025 12:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aSfNnQPb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CZIHIAwI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0481311C2F
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767184415; cv=none; b=IkDPN2ZhbEdAQ0FaktvK4/iAj6UP4ZutwmqLMeX+8SHLuKGWuvtTJ4HOo4fevnhtnpqHKTeCkYWi7xRhbsy8JwmBxIcYYKPzIbIt3rKkXMo9BvG6ce9aOYePspR6Yoda4sG3CI9KPZ3bl9dxB9Q8B4+0LmY/Ab0wToX3WO+aW2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767184415; c=relaxed/simple;
	bh=IJuNNcXQtCp3nWgFBNBZvFfjG9949BV8pSdjzRkGGIg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eSTiIJ377y+wAIo6YKTzFoXXFAEmV4ZKYWrYhomLryRf2XajrwYF6oCfJW+YleshTJbPmn3uo+0BFx/FWv6wp4/w7mcr9YlsvJqDEf+icLIuWXNpJY3JODR+SgpAfZsOQ/OT22jLG/MHXzDKPRD+ujEcobs4DdpXzA6gQc3Nvv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aSfNnQPb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CZIHIAwI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BVCMvxa1349242
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:33:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BuHoVQkLv6FjRX5V9FVHX/pNuysZe3i1za9/ao1aTNc=; b=aSfNnQPbqqPKmg1J
	OHhiWz7qReNg4idkG+p3pIbD7Nj4QDTI0dHa9b57WbKP1MnzbCvFHiNz8/MNvRw3
	PTL3oLQZpy7ATvud6QRDLIgYTiZ9VRJXpZ8Y8y152X2qQ71J/2jAr1a1sa8W6Hd3
	GYpWAC0aAOBjv6vD6/qwUi7fjut9sWf4ut4vQFAWUkPA5SSiBEIu+mvPoKdQ6n5g
	jvPRGQylnq4bReZawBrJBmcDZi/i+GGdYvXjHsbVvLK/1RKs30o060xt4yD/GrRS
	DWbLC8NUym+X1lgJDODvkEqXtnoBzyD/Esq04UxBZnzF3hbRVbY25kgpaazCoP7x
	tlYyWQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc06gvdqg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:33:32 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f34c24e2cbso35522451cf.3
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767184412; x=1767789212; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BuHoVQkLv6FjRX5V9FVHX/pNuysZe3i1za9/ao1aTNc=;
        b=CZIHIAwIE8Fzk14HqijYff0x/eOWk6Pz0hYcrLZmQKHS2MOwvFuWxsGVFUW/Mk8t/x
         +92G4JeJgaOANlDoGqXtov3BdYfU/73dHRneSTkqm2V4mU4BlyTGHFBmpZ4pO9UrZnxZ
         f21XjpPF3KCAwA7NrrWWiKh1KDmXS7tDuV1C16a6gUdOR9qkccWWAc3lCWU/WUC+ZerT
         5qdfNYWmxxuryjbpxWuNK85rC6cwpU4mhV6Y12zF3i9uNPMS/4HhAxIwyaBG9G1qJrpM
         r0VESumepTVIwkfUXwip8yk+109aYTWHRgF0KhvOtJ0Wns0TKJ5U0zs9NzYZuzZknujW
         htww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767184412; x=1767789212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BuHoVQkLv6FjRX5V9FVHX/pNuysZe3i1za9/ao1aTNc=;
        b=KQLRXoMRhEVxsxVm5BKGovGzkxwrIZGIqV4eHTDVuyIzegrvM0M2DgEeVjAgQsZykj
         LyHAB9YOJyUiAj1tlMZGs5GUixxbEsQ/yIGPiQIz4p2kjCvZ/rdClTfOIiSz026FN7n1
         dyx+CwIKhfJA/BLMxq2d7PXQtaVlxcXHzoRBa8JGHc6gYvRhVX7sWNxLyI+at0aVDdXA
         /ZbRa1nfjNNjbk9nKpGtRAYWYTuFNOu+Qk2xlvmxRx0IOi1RFqSS8Bh0W2bzOOrohCkP
         nxTSoyDca1qrcl/8c1p0MZG4bECRv5FzIs/7FZu+8C1VgA7wfLq2xuLrteMrC9/g5Dng
         0U4A==
X-Forwarded-Encrypted: i=1; AJvYcCXdHx7zPW3o+8ZimL7cBsed/F1j+vNy2vR4Iqy7xK0/aTIqzSRiPr+gfmELupzB5VpI0MGHw6udKp0I@vger.kernel.org
X-Gm-Message-State: AOJu0YwVwRZIGKq3XOYvM649LQVoCrlHYC193JUb8HJKKNxOvbQj+RKG
	rFcWeR87rszoHkxQx5t5YykwCDxnZDreE9/ndM3M6+dZmdEGTrIRk6bN+Fmk4ipDtOszZIJDWEV
	+W5/pZ2J/yDNE09QkKYs00wQveOJX3Kepzc/cCfIg+u9mq8r2YSCcUqQ7hz+owvoT
X-Gm-Gg: AY/fxX4eT54afzCuPWj3kUl6/CEDbixBx+SIk0Te/Uts1inSa3ptjGtJiuakXZZttXp
	Fw8jQOJ2lkpt1+rsuz0mGF45ybf5s9ryNbm/58Yvtc46QMpxj7OVevajufqJYDjQjLhHvtNjSWw
	8FbrcaojuyvH9HRzJjROq5msfOCyDTJLnJKYwaOmtWajjJ3sq5aTkCNNBenKzsZlMjlkxlExgTP
	ZTu2j86bdjSgDnZbhW8tptAlv6fq+VdthcmsieywfMFCtc4Pc6pg7s1KNiqDgmHf/Him56580Pc
	RJSSvgfBkaampoedRluUuJqcD5lAUj+096BvftcOILJwIk82hk6fIYLjn564AvDnUVzSv5WxzPW
	v+H981ACe6MjziivrBydnW6hLZsIhh3VXCgO4zwLBfiZcHxWss9Fl3ljsf9cBlfwZ4Q==
X-Received: by 2002:a05:622a:1982:b0:4ee:1718:dec8 with SMTP id d75a77b69052e-4f4abcee273mr398303031cf.3.1767184411911;
        Wed, 31 Dec 2025 04:33:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH4iUtNZCuxzLi07y4rX7yABbLeLKjRx5DG/JGT9DBtlNSGBgbHzwP5SNuS/sh+/KaomXp96Q==
X-Received: by 2002:a05:622a:1982:b0:4ee:1718:dec8 with SMTP id d75a77b69052e-4f4abcee273mr398302731cf.3.1767184411429;
        Wed, 31 Dec 2025 04:33:31 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b91599605sm37604599a12.23.2025.12.31.04.33.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 04:33:30 -0800 (PST)
Message-ID: <d9581e89-6e64-4450-bb65-d4ac836e943e@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 13:33:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 6/6] arm64: dts: qcom: ipq9574: add nodes to bring up
 q6
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        George Moussalem <george.moussalem@outlook.com>
References: <20251219031010.2919875-1-varadarajan.narayanan@oss.qualcomm.com>
 <20251219031010.2919875-7-varadarajan.narayanan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219031010.2919875-7-varadarajan.narayanan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: EZlFZnWCoALRBeihmE8QC9B99X7WUpnh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwOSBTYWx0ZWRfXwPZF9Y1wMbOa
 DYLXgfYjOLxeG9fctkuebTII8HQaNvdCKWGKvTc/jRpduX27QDrrjT3yoDIM03XCRe9QsYf/Mke
 bojKfHEUQLoYd+dDzU3s0smLVC9vbUa3kPeyQYSNGP5cXIdofV3DSS6jS3TTpPQTNfT2tMboVBB
 QCpxrbz37QFwB3xyTphk3FiM/Wvu1VKyRhymwMh6CF4fHhQLHaBa7QPdfL8duUYiS7qHJapR8ts
 dGJb6UVm75B3XzQyOHej8BRkYCbwnUGPotXiAlsn8ZuDWNCu99qt4cF03q+WBECnOVza9PhQUkC
 uEh8AeE+QLOFT+EucFKVTvyXdrrWM3NDJ9BkfGRhiae7fI4OCHVu0gU7LXDFjHPfRNmjRph15Yr
 ECV37TrLOxs8J6NBrkSr9Dav/hSwm5d1HC7Fr3oyjSM2CcsPSpo60m11+42JrwTioT/d8OOowtT
 2MeHgRQDzMLr7q4lpNQ==
X-Authority-Analysis: v=2.4 cv=A45h/qWG c=1 sm=1 tr=0 ts=6955181c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=UqCG9HQmAAAA:8
 a=s3MJbU7F5wKsRGJXuN0A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: EZlFZnWCoALRBeihmE8QC9B99X7WUpnh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 bulkscore=0 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512310109

On 12/19/25 4:10 AM, Varadarajan Narayanan wrote:
> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> 
> Enable nodes required for q6 remoteproc bring up.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

