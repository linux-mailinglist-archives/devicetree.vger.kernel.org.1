Return-Path: <devicetree+bounces-191448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C26EAEF5B3
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:56:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B83117AFE7F
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 10:55:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04F7F270548;
	Tue,  1 Jul 2025 10:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LgbOhlfF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9160070810
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 10:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751367400; cv=none; b=WXTI0UnxQ2dmZAJ8XgmpzIWSAF9kbFFR8JyOG89EggjHpE9XblwtClvYOF7w4/HnSoAJzGiC8WMcpbiUkfd3ITfBPn1eALv9qmSAn5UL7eL/UCLkWo9QQy7gDdQHRFZoycpQPUtwnUOLAQPUwRThikePrgfUzjd4dyh4JdWPyXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751367400; c=relaxed/simple;
	bh=AaZIOW8LFl/s3flg9giqywN4wwU5/9+iLNi1F0u5tus=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sp3r+rt6CW+LoEOY3mL1rmJeLJpWRov/yxTzC+MzImCvq7n+2+Njc2aBUDGRh2u26YVMLRz7l+w5m0cWLNjlFPYUoGVgWy7RpP3+Y7lgxLaYA7Zd5aNcLTCE5tc1etL4RT2twWr6vGIkLdN58wIidP1MKGtZ/bYLeunmkk8DB2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LgbOhlfF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5619Y1nv007050
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 10:56:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TeKgcaFWYCzmdQ+v/KUY/g3rynYYApSLvY5HT0tokvM=; b=LgbOhlfFRo334foW
	RTjZZp2R1NKV6mfuHcefXeTLKUqcbjRAp3yAAWAJ3yNEdy4WPu8S6wCyoPLDxeyh
	csL2M8s1vJdKKr0uEIx4LbB00DSim+EYA8AhzQLyqvryxxXT2SaSakjWmOJZ/VjY
	wQmZplnARt3M08DLBBVWj5CtY//bfDOZ6FEjEu5JQSa++DYfRfDAw3bARdG4Toab
	4lNvMch2Xss8xi+RMTguqMDbk/WW3+AOCg5RQW9jBsPAhZE85OdvrE9BeARPJ8tU
	d3EcwBGrB0DOFMvsBfKVGscym3i05QA3ZiQ5uSdVnFS257+46CBpIaB92Nn/JJFL
	AJ+NjA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kn5jcx1a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 10:56:38 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f539358795so7325256d6.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 03:56:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751367397; x=1751972197;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TeKgcaFWYCzmdQ+v/KUY/g3rynYYApSLvY5HT0tokvM=;
        b=GY3YhxtBiQE3TF2YEtLdnftDQoVs3nLrI5TjlnLCOIVQt9gjDNU8rOgoh7Jzer8VEc
         u7mRXthBY5G40LIKiNoabRO51rjQ+j2rdtT/HgVyth1JzdOZhJvw3fijrGVLqDh5KLv8
         zLjYFspW03WAt1XqfVSqR9/McyOgX/cHJ0B6a2lLmCHQdto3UM7NzAvYQMfKdkrTAKul
         L0CZA8g3TDyoVOcqMELPWyfZQyjXAC+E/EFYxLsttHoiBAkT/2/kZh6hLfszkd7HhbGB
         dOO8f80BMTg1N6wby+55kxkHNlFHyGzklhI781WuU8bBECXzOYl5jiKNshrhbUqqO24d
         C8Pw==
X-Forwarded-Encrypted: i=1; AJvYcCVbBmzcIbC7lLkWfXwhzWOKDNKn9AvG+dlMC4axJjYlfN5IEbVnoZfGwRIS9KFZKoWtbBmm+cClUdea@vger.kernel.org
X-Gm-Message-State: AOJu0Yx339EFHOGM0+rX59UkhpEtq9awLlarYk76DYJVRgfqQ37d33YW
	D8+L+KEPCUCdnZJO56cMJXnp8M5G+q6B8f18pZWmC+3PNh+0c30fMAm/1n0/y/oUwVWSpb6AhHG
	JanXClTnMDBtQMOOBENPOw2l0aZE9Nj1IdApOGTMaZJ0AKXWO3BZCrAC/SyML8QjP
X-Gm-Gg: ASbGncuSjPnwf/MDmZIkn2ahsfwSkJ6lML4QWOG7b7zG1VowkyI+FBCHN60ugWYWq/6
	Si5kdaZrpMwcCvD7OibutNpEjlRFqdLnXMEV224LXEvClO99BMokwEvmuy6lU/o9MXYum8Twa2O
	efIzNbfZIfs6NrZHsllQpc5HXxPwALEQuEegW2vsIgZY2ZrhmP/zCsAiwohgPxax4VK6L9sH0Al
	BIbH2vMEUNBcoIRIW19UTLplnRZ+uxHE+vOhpxsDyJp5F518r6U0v/wgTGnz2nn3FgQSRAkm2HW
	NuBM0osM0N881LPq6DPQY2Va03eWPcFxPJCglyGT/FUCYHPu4Rv6K5DhWgVdHZLBqooHpLYaR0U
	zBNoJKi/J
X-Received: by 2002:a05:622a:199a:b0:4a7:6586:8da with SMTP id d75a77b69052e-4a82fc19646mr16622121cf.11.1751367397394;
        Tue, 01 Jul 2025 03:56:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFH4VxQeg0CaFvYhEgN2Q+i8n3PEWF+B4AevBlG/ryxBThRmsxoQPl8MVI0QdsxgKfm6CDLeQ==
X-Received: by 2002:a05:622a:199a:b0:4a7:6586:8da with SMTP id d75a77b69052e-4a82fc19646mr16621861cf.11.1751367396770;
        Tue, 01 Jul 2025 03:56:36 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c828e3b49sm7398797a12.22.2025.07.01.03.56.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 03:56:36 -0700 (PDT)
Message-ID: <bb433897-f061-481b-8b35-114e9334eaf1@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 12:56:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/2] X1E HBR3 fixes
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20250630205514.14022-1-alex.vinarskis@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250630205514.14022-1-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=KtJN2XWN c=1 sm=1 tr=0 ts=6863bee6 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=92s0zTvQtuwzI3XGIlUA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: 8bLYi-RA3CFW2EzoP51lMDpGqYKNw3c_
X-Proofpoint-GUID: 8bLYi-RA3CFW2EzoP51lMDpGqYKNw3c_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA2NiBTYWx0ZWRfX3L3eu+3qu8Eo
 JVJ4jz5GZ4orPMwRjmgNrsZWZfZk27dj44p6dEHqOS+EcxHg3cJfhGbL7neyxMXSsBJL0GcQl/Q
 JMv8BjdYHsiAM1K6+ds3n2GEp8Iefj1PlbL8LJFhvfSiBH7Ovvk4cMG4Cj4iO+oZOnYkwbycwWc
 mM75vqiygvjj+Qr1zoUTvOhEd59vYp1lY+fYdk5k503Ny1Mh2S/OdHE2krADcUgK0ISFZcAETyP
 pBMw/6vY20+OTqDBze3QsyM0U65kYsFLLVn6tccvqzFz/tyE8w0fsxi8iGLaeOMBMFS+pXNPE1V
 uPPApLkhx+aHQPOQXwViReAPgRcBevwK/DqQZw7SHro/zgOGrzeJYYg3n4F34mBDbuj43K3ZKuI
 l+7/0gKDb2EIoCYyVtLwhiScQ+lHhHHglmLbcgM44SsjN/UiXbASNpouTG7EQ2qDV9obtsJg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 mlxscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 mlxlogscore=656 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507010066



On 30-Jun-25 22:54, Aleksandrs Vinarskis wrote:
> It appears during initial series to enable HBR3 earlier this year [1]
> few devices were left out, add them.
> 
> [1] https://lore.kernel.org/all/20250226231436.16138-1-alex.vinarskis@gmail.com/

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

