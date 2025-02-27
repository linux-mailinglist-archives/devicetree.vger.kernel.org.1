Return-Path: <devicetree+bounces-151922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A5071A47824
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 09:46:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A331B3B08E1
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 08:46:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A52B221F08;
	Thu, 27 Feb 2025 08:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EkKFaJSo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A0642065
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740646002; cv=none; b=XYKIoelbOIf45ziC7dLZ2ttM8eC1hfgOPtLB0F2VkweXP9J5gygHlhlCC6+xy4f0blJF3BI+mapz+B08oe+l0QRHsty47F/xVzai/gLe7IpJaDG89nVYHW9QSXg3YcI7OGwzUgfAKRSiwtM3zfrXnwi1cywZ+R0lckp4TjDgndY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740646002; c=relaxed/simple;
	bh=i3wWe6ahx0nNYsdmrz7shy89KbnD0dzmfCNsWOogpJI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b/nWk6ijMpV2NOmDqutRoL2y6TjHPnofcabxIqalspWYgYHeEu/SlbmG7fhPFDeH1bbAuzUcVXWbLQNfXCvRu6jcDNAFxUdNXfMrUFZQr4zUomLiOaVWq4E8xo8L1xO6481Q9i4EpUk6T/PZi7xvgCUQLJ7DpaHC1k5zlhwX9PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EkKFaJSo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51QM4Glu005050
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:46:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PGYRnAFE9J8dyYPOqeyvQzfEJJ9gyHSuD8SyRueTGg8=; b=EkKFaJSooeCORZoT
	yax2RsQ3MW0XACt9wm6rgSGjDSNe1pbYNTBS8gcpBuJ8coKUTA5dsTtSYz2oERKk
	H1G7GcXIvFanQbqLwxWWVV3cMgUK3zfMPiU73sOSzm1Zu/kTJDgwgaZS3cZvQug8
	babFQPS29vf7gqPNUcNAQcQvR+83VnB89t13qW+BqPiawWriytL334/R4MRFk1yX
	d2VOMPzDcixl8hZ9GHK8RZjwtNahD4EYzfT5oaaFhSOz2X8TKLNQWahW0SQIh7zr
	i6iAlJPJq+Ih14T5nsSb4jEoko8f74nawZlw3fdPCvSYRnMulbmQIvDqFRER8fPI
	w5dAFA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 452be6hfwd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:46:39 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e88eea1af5so837716d6.2
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 00:46:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740645998; x=1741250798;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PGYRnAFE9J8dyYPOqeyvQzfEJJ9gyHSuD8SyRueTGg8=;
        b=KRL2MsQr0jFoyW5zgYxtGaCaY1pdcsNphn86aSfbW3ZyEy3v81NoHa+wRgSKxl9ZgC
         VzQWgJMzaRn1eKQuxGJXgjhKcJ/9/TP/44Bukn/WlYAr0BIBEnXvInKuYWE90Fx8ph8Z
         gi1EDgsFlTZ30u8R0kP8UV6fdK/BdALbQl6Brcu1IMpPcblWMTKEMrUA6gLiNtQMyVpv
         dcniQbjL8zGw1EXcY2F69ChIkSNEcguOET514PKJy0FZQ3/V+UJPV+oeQleR8yyYfqQK
         QK494NxnZfKX20mQeP3wsfM7KsxI+xqWQXZDpMgmnMRCSZt+yiMRk8Wf0XzONp/fgHNh
         V4Tg==
X-Forwarded-Encrypted: i=1; AJvYcCW0B6K24zvV8DAhcKz5ISOIN6MYJp4MLqt/JCrZJyWhyDetfoVjfil9eb89la2N14Nk8S42BvKNu5BM@vger.kernel.org
X-Gm-Message-State: AOJu0YxfAejNIOC+60jQegaHxK7qDfad2yADm3OrxfLgzkhBzyvxjPZ6
	QaTeuG412LjoSmME30ZuQoFddsQK1WRH+RcbdLUGYqhyK3IjoEr79jzHGbuMdCakWoHb3Rzggjv
	dlZJw5wtFH+YqOqVE2sWvO7M7bZFxIkZuwXHAkjV7+uKWdThLZhSowc/+PegH
X-Gm-Gg: ASbGncuWEhF9veGlYAwKJiujkHUAOdBZh3ZZdQCsvvFYS4hSPT1hkKA5Y6rbOcF7f+a
	rxEBPO7o/3TOdAJMRWNtP0fy4XGGuXws+sFu/Cxrjp4Ztwgj/A9Um6yqJB6PN4DfmpsW2wN1wQw
	PdyZEiOrXijjrOlpgAx5dgQ5MRtoVnQLJDbV1bNmmoiSxcE/LIPHCFE++rSxQnpnkHtngqpwOQY
	tdjrNvOVUnWr1pzUiHsPwA0FRZR2/oGHCL/a5ilLhWa9yFxL40aIahbiGjGEjlJUxBqPOpce6g5
	FNXpleVGp0pP5tcEact23s1NykHd3JJEmMwAgui5TVHZV0ejqJMEoFfkQoylWMRJ7bQCMQ==
X-Received: by 2002:ad4:5bc3:0:b0:6d8:8283:445c with SMTP id 6a1803df08f44-6e6ae8118f4mr106219666d6.4.1740645998559;
        Thu, 27 Feb 2025 00:46:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEMosI9i2Jn6Wd2Hmlan3NqGw9jIWceBTgpEgh4PjT0JA+3gBexN1L59AMBlj0IeqkvWa3PIQ==
X-Received: by 2002:ad4:5bc3:0:b0:6d8:8283:445c with SMTP id 6a1803df08f44-6e6ae8118f4mr106219536d6.4.1740645998127;
        Thu, 27 Feb 2025 00:46:38 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c75af58sm86712966b.147.2025.02.27.00.46.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2025 00:46:37 -0800 (PST)
Message-ID: <94b92fe3-a437-4368-a51b-5f6bd1711fe9@oss.qualcomm.com>
Date: Thu, 27 Feb 2025 09:46:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/4] arm64: dts: qcom: x1e001de-devkit: Enable HBR3 on
 external DPs
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, laurentiu.tudor1@dell.com,
        abel.vesa@linaro.org
References: <20250226231436.16138-1-alex.vinarskis@gmail.com>
 <20250226231436.16138-3-alex.vinarskis@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250226231436.16138-3-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vkK9sJHa0950dyPU7Dxe0wrVn-j9QIFf
X-Proofpoint-ORIG-GUID: vkK9sJHa0950dyPU7Dxe0wrVn-j9QIFf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-27_04,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=790 phishscore=0 mlxscore=0 clxscore=1015
 lowpriorityscore=0 adultscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502270065

On 27.02.2025 12:12 AM, Aleksandrs Vinarskis wrote:
> When no link frequencies are set, msm/dp driver defaults to HBR2 speed.
> Explicitly list supported frequencies including HBR3/8.1Gbps for all
> external DisplayPort(s).
> 
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

