Return-Path: <devicetree+bounces-248757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 823E8CD5786
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E3A3930126A8
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF294313283;
	Mon, 22 Dec 2025 10:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VEpA52Ej";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HDiIuvIh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8276C3128AA
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766398233; cv=none; b=FUmEMkl6pMkpLCJuuX6IMk4BO4hd2tN0R65xL/sRWIIklAZlDU5UM+QtMYU9VptEVA32b07ocrBVHQvqbalqMYys2rCCl4sCQX2IIekt/9rVRd3TYwZlJ1oXY0SyMXdI75JS+CIAwKskw+q0Np5BSb5XAxh++3ZTiu12DAvHUx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766398233; c=relaxed/simple;
	bh=8N8IhOlkR6SaGn8pM1RZD5eFFxTxauBnScjxroX5Yyg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HKZmaBFEOstV/MCZxEHpdZ2TCZpE7C64maywxeWHfgBcjd7JEoO1eQS9jWdyYm6QbskpHAVTa8CyXnjMi4ypiWabtHce3bvzSttCWT8C8GSlBmcgWew8yMHog8PARaSGO1tMwcpCF7/lOH/G/iXr49EwV4FP9yIMsOw5tQsccfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VEpA52Ej; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HDiIuvIh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM948Z03964176
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:10:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zq50Sq0ciKk8DmE/W8JVLSXSe6FrFYQ0P4yxO//qdV8=; b=VEpA52Ej2hRgcVWg
	nO0R1gXMXeQVsk+9T2CjM5rQ2OQi4wWVMrNb8aShbTT2vVAqJY929KDwt9VN12uO
	dRcklMUGYbVPAHXvleeYix/bFCw7jfmG6YiXgCOk6V7siQdn9wlidtEy36QIMyO8
	9fgVWhojV2SMnuvhxSe62STUur3NvlVJNeeO4No4s/oRqvHo0dCLmka/uwWsDBee
	Kd94OpEUiW7dFrb7s2WV/sIDSQ9L8qA0PLN+yk8rqVbllWk+iHeEDz4ansvE2RoN
	h5TgGydSvlJjx/PBapGpIuO9odNDRVrXRRHfrXm5MkRNiBmXyDoYFF9RXADw8LJz
	wnzI9w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b6vk6hbg6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:10:31 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee07f794fcso11552031cf.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766398229; x=1767003029; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zq50Sq0ciKk8DmE/W8JVLSXSe6FrFYQ0P4yxO//qdV8=;
        b=HDiIuvIh/7qSvAe9b6pXW28yAPV4iFszIXiSQMED7l6pa3NJ3zFEO/BGmfUC5lV34N
         DjUoqvVP9T3yIfVzyt9jNVLiTGj1iFcQE5rZKWqCgM9+6qP5YRgVFQg/bKv2T5iqFCDl
         CM1eHTStNyUjYkODkEujTTG/Wts1TIS+vSbHquKEi0u7l60ute3Dl4f1nkUJg1ZZl2Mt
         lYhgEmv3p0CzFIcnu8j+6K2k1yGTyjEZSzJnK8fLW3KMxTyrQFtFoGdLEL/me+GmQ1K5
         EaO0VghuMafFQy9Az/ztoT2sOLv/YEAuJgaSD9lPuDgKtGhAYDtIBl4liblqINW1lCXI
         zDPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398229; x=1767003029;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zq50Sq0ciKk8DmE/W8JVLSXSe6FrFYQ0P4yxO//qdV8=;
        b=GKD6ZEs54U4W6JV1HPMx/a0UdM1Ecje6uy3RA3YK4dJPx9dmsVyNZiSipJNiHKvJ4N
         yiofeHp1hybPP6dRCTM//vpNHThmvSeX2+yFMO7xEc4HqsFUVA6XwKEDuKLN5163mFd0
         7biSqtUx3MEUFSBMp1EWq3MmtG7NRh3YXLAs7oBFEeOBadO4lxGktGWZO/d1gkr0VUIh
         pwLq/FZbIbYwaEqTQ6sF9Gh56N+BSBmWSmqTxk3pXBHj3EdZ+2UyQDXVQc64D/feTXZs
         E1W21Y+T3atZTr0tzFIEqVIRJmIAC5u7Xr8U1fYcoaAfX4+jdW8B0MXR6JlMYSriElAS
         lYkA==
X-Forwarded-Encrypted: i=1; AJvYcCUIR6mreO63hpA4gD5expDuaZ+fZMb6Ygig4FU8JV3SMqj3rkDQxsNrFhDx8mkTJnX01D8TsV8IEETs@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/qCrud5XuZZO7fY+H9FpUQJt6Y9IPQTI7C9dxeRXmAKDORvN/
	SUvjTNNb2pqIIgwzdGeTg9QvrEW2fjtD+Wu4QxYrj0YzqmN8vveyC0NbcqdGcEQdWMAlYxnCDnv
	va5CmU2FWuc8+KHCfHn2SZQ6aLkNJo1Kxf2dzICaSbYBPD0CRyQF0gSCM8ySL4r8h
X-Gm-Gg: AY/fxX4ufPErPX3F9xhilXT11/fSDwLCNfsKXOZHuTfuYu7+bH5c+LLk0tyF9KJpc6Z
	ifpnj84+dTMbVLKjHwjr3IFAcF1jisXYFKtUqfnP+BE9wIAc4vEZKyEqBKEOAtS6EDNye46fYvL
	A6Hxp4XNTo57GSfxi7+E/qCKQCt1YDKEWjcvWDjPWxefpLkO8rXePu2MYFJ3Az46pR5WDQcK8ns
	qIYLgEU9Wf2vOYVL1RYcGahTt+ZUmhx9P8frhyhbE+HB+c+7qYUZ1WqdfJWPwpxbL2m/QmrkA98
	egHaYoaCGqz/B5j+M2WCRl40SzZpp6vSEaQD4ZbY/j26BhWmC75Iz7nhP5fngQcB1mS+4RGcPBz
	FdftXcoEuv7hrHNL2WqGNr5jaHYe7K1nfTdHiRQSrmWwFOAGATXNFFG+sV0P8TTpRuw==
X-Received: by 2002:a05:622a:1983:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4f4abcb50acmr125305381cf.1.1766398229048;
        Mon, 22 Dec 2025 02:10:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGuV8jrI6GwsxsvZRsBtWpY3d8jh1cRr25s2rnJOJtrkSWKjv4VtiCCKcwVaPh2BOuCy3uBVQ==
X-Received: by 2002:a05:622a:1983:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4f4abcb50acmr125305071cf.1.1766398228599;
        Mon, 22 Dec 2025 02:10:28 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab4f0dsm1047311466b.15.2025.12.22.02.10.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 02:10:28 -0800 (PST)
Message-ID: <068f0183-2f21-41cd-83be-81bd712ab5d6@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 11:10:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 squelch detect param update
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 4-BI4xT7PFTqSp3dfvXWykkwnetUAz_J
X-Authority-Analysis: v=2.4 cv=cuuWUl4i c=1 sm=1 tr=0 ts=69491917 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=oUfybq1hb7wxsWnyzuYA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5MSBTYWx0ZWRfX5+6MH7rMhGJU
 9XJ37VfboDI4QyI5fs/MK0rVAKTsR8Vr1dnU1h0gk+lTc/1UvHAE+2bA/jSTtu0TxFBX0ihZt9p
 qWT+YvaRoDP9TPiumt9n1Lo72Mh4a30Sls6sis+uuKfF+UjqYyRUseUoL5uK5aq8j/jD+MRFLog
 /zwnJY0Z/y6SWqjVvsbqdbwJK/c+Em5vQzX6yogHO6YHI7SskA2JjvKOyiMu6QttyActz31P5Za
 HGsLHMw/W1FgAlkMSMswgQEsOs9BhXTJzNfqrav4xgNVoypRaHMKTk3ERvBDqUzQcPxNTyHdT2W
 H4d+iiZGdCnQ7MCR7g7nQrP0SB3oGaaOSw/TJvQ+YY/PyVHfUqDZzqCtZ2IAwkAJ/yUE5lPyWue
 FdToOIaIjKcjWBhhNDE38EyPePcDUl2WsKKt6wBBHOjGwHjczSEzV7NSXx60siPgp7VTbc0BQ6C
 F/dwBzyeRk3b+3nZ1EQ==
X-Proofpoint-GUID: 4-BI4xT7PFTqSp3dfvXWykkwnetUAz_J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220091

On 12/19/25 6:31 PM, Krishna Kurapati wrote:
> Add support for overriding Squelch Detect parameter.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

