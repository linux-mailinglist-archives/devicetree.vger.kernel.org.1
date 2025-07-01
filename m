Return-Path: <devicetree+bounces-191445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4BEAEF5A3
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:53:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3984B3AE15A
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 10:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E682D270EA3;
	Tue,  1 Jul 2025 10:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P9WCRPNL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD8C70810
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 10:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751367204; cv=none; b=X7PuXYCEYUN+nNdzx8Nrqe9Pfunz0W1PU6l0wYQh+CkA4bRweujkuLyj7iENufjxBYYoxun6t9GypPQhNnullOPNdl0vKnyqkYfl88WyZ7rYN47q2UphslNIDs3t0grDO8Sut4gSIwMFGZNGApGjBOrl523fPN7WBBAig/mmsic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751367204; c=relaxed/simple;
	bh=joA1eh4bQwcVS8h/KDAgRVDT/6KvsS0SR9c6ySZiuwI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Q7Dm8P7cIgj6+A0farBhA4Vjx+RPKYv8QmYcZXt+GBhnLKTNUh8Ze4F+sBeAgdA/AnaQ6xc+/v8MjRhM/34r+64P5cbWQBjO5vg+i/TkBmfjv8QgsvSNjBDd+4O4lAy0WZeG/NPkEoy101ULCkhFwxWiRuoGlrZcIWQAJriur8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P9WCRPNL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 561ANDmL029330
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 10:53:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mZPBYxrtQdOrEqq8pmWOEhqiMtINa7r1itDL7uE0VUs=; b=P9WCRPNLyjhvEf2n
	mmUmn+bc8vrRYlzHutpMUWnU+8kKw7arBEal53L/JXUQVOIusMcZxxxeef7F87zZ
	EOkCSlLwPjVdh5EH6UrHq2S016JjMcGue/uXusLnEacZ2fIvDNzZVtE7FtRXeMgF
	x0f6DFpjJfyoF4lJvSchkCNT+Us8hrAa2KfYsuS/y3IixtPMbChVhg2SmJDzD1tp
	/e1EI/5Ea/gQdnlR5IxWqadKukvWLCNaz20XIXqmyku814KLnL0jSSx7bkuiP6BI
	sz++zioeMDZU1y+fUHp+hwVvUC8vDN2h1HExn3BdnQnXCUkWHQxRjF//6lhUBuLL
	+Lx30A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j95j0cag-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 10:53:22 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6facde431b2so10686586d6.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 03:53:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751367201; x=1751972001;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mZPBYxrtQdOrEqq8pmWOEhqiMtINa7r1itDL7uE0VUs=;
        b=ipNHelCZzB3cz6Zb/d1rxvhgBYYCCbCHjWjSo8JncVa3jPPQF7VK7ILPSHAebhMaEK
         gHSr1B7+xM+7pbfWpGsMzXoScalmou98bMmfnUsOheD1Osyfjwf8HNZfcqBqG/vxb3GA
         CKSYX1u8Q96A2mkQ4WwNc6oMKy0RSEPA6AjaGb/GEmBlPYKA5IORjkRD6OheF3GUAytk
         NAFjM2ylGJ6v6CUnEZDvy2mNSh4GyvDTM47gjykHUGOvq1BKRO8ZV5mMcX4KDdpUfWtg
         SQLIrs/yH4VMdHvJb4+jhIA9ISOShbgQ1vXGl0yQFhHZzdZwCY7VYgBNiMMfrMbc8ic/
         unaw==
X-Forwarded-Encrypted: i=1; AJvYcCXWLIw5shIG8WeolrhAee1EFNuDNgyTZKeVMBQnZGXIdUQ5z6olzaArST1nc6Y1HweWrg2rznTaCu36@vger.kernel.org
X-Gm-Message-State: AOJu0YzBvjSP0ksTCmKHJ799nh0tLcieSLL6rwYtpXwN08qDD2hVa2RG
	zvukxl6uXV1GXHLJmwBzK0fFeqF9V6OfSmtY9KtK8B07D3Bt4kaNjUy1unxFZMIkwsOSgyHExJF
	aq9EsRKDFV2itBWBMIz/mSHjhwRzVHnxpBWEclBPe91JONX1QylPvvyM/MvViRwWk
X-Gm-Gg: ASbGncsaU14jMd5E9OAULCWRH1/xLUbzcjM2TV30l+CvAtxaYQL9gewBJphVA7gk8ep
	a6CbLwHkKH7DqAufMDvULSq1pPY/KjsQ8FLJtGA0r1Uj+fz3ve/maD3R3X/ysS1obLp6xlxhL+I
	XQ4oyqj48fe2KU8iRFdZ2h+rsk2jDOAqpMF+luz7cqzblUVBZMraMB3bGXAWrMhe/BkqDTbJmYB
	rOjtijs//YRrFFVUIjcmPg8Msn0VjSLZn8uLghiL4EzShC1M0IomT8lNU3GYzZpRnuEv0WQYJjK
	Li9GXVUzgKE2CqAfdA6fRZ8/8N/yHIYAYDGSE+UQOuF/ezoD4R/RxbXDzQBrgUoki/p4fHhWbsi
	v+TrDg7mZ
X-Received: by 2002:a05:622a:34b:b0:4a4:3b38:cfe6 with SMTP id d75a77b69052e-4a82fb2f746mr17034701cf.4.1751367201152;
        Tue, 01 Jul 2025 03:53:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGvMQQbpgZu6HTRT/Ygye0EH03aZTPwfzYQFJ2rhLYRICyS7XOyOcoKvtslyyiyzF7MlUlFw==
X-Received: by 2002:a05:622a:34b:b0:4a4:3b38:cfe6 with SMTP id d75a77b69052e-4a82fb2f746mr17034501cf.4.1751367200717;
        Tue, 01 Jul 2025 03:53:20 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c828bbd34sm7312209a12.9.2025.07.01.03.53.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 03:53:20 -0700 (PDT)
Message-ID: <8c4c791e-856f-4838-86d9-bfa2934aee41@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 12:53:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sdm670-google-sargo: Add front
 camera rotation/orientation
To: Richard Acayan <mailingradian@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250630225944.320755-7-mailingradian@gmail.com>
 <20250630225944.320755-12-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250630225944.320755-12-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA2NSBTYWx0ZWRfXy/kcLHKNL3Ve
 jktdTGINpwrh5PUbSG/cI82y4xoU6X/0gKpduRdZLLCpFbDCTDLVTbNCQjkYRspkHgz6zfCqMtw
 xJKbSnappemI+SJN01VmDYdGdgNZBLIilNDN3DCl9cPg7S01btDOXby3q61vJpDQn5+mh40mdxD
 kPPyiqbyNQd8+cBq4wt4gsOE+TtcUOAdrTyN93AOiqMPbqUuVdUtFbWFAp5xWmwKqqersIFpHps
 OJW71iXE7Uv1SI5iI30L7QwO1Yo5QAJDZyrQY3RzctBi4ovY/BUcWKbeS6y5jdO6YbLirzGkP7U
 Utz2bZ4MAt+rTVL/9EyNqAuxhzdMggkLmXfG0NG1eYOtfG2jHl60cuNq4ANj24LzeJuId2Y3Hi7
 2gO5iB45P3uJFgDIeHMWMBkkJcARSbf8RmS6DVHNsMzw5Sa/UeL6ca1JUygYmb8bp0be6Tdn
X-Proofpoint-ORIG-GUID: SGXtffS0K3BkHgHdI-RvsnCTxbnX7hm_
X-Authority-Analysis: v=2.4 cv=EuHSrTcA c=1 sm=1 tr=0 ts=6863be22 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=QX4gbG5DAAAA:8 a=pGLkceISAAAA:8
 a=JCdkjPdcWiFbGMzKlCMA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: SGXtffS0K3BkHgHdI-RvsnCTxbnX7hm_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=807 malwarescore=0 mlxscore=0 phishscore=0
 spamscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507010065



On 01-Jul-25 00:59, Richard Acayan wrote:
> From: Robert Mader <robert.mader@collabora.com>
> 
> So it gets properly reported to clients like libcamera.
> 
> Signed-off-by: Robert Mader <robert.mader@collabora.com>
> [richard: rebase onto patch series]
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

It would make sense to squash this patch into the previous one,
you can mention Robert's contribution in the commit message

Konrad

