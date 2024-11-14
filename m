Return-Path: <devicetree+bounces-121918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7D39C8F66
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 17:12:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E7273B36A6E
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 15:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B05E7158D80;
	Thu, 14 Nov 2024 15:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jEwiPNUn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7DC13AD39
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 15:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731598155; cv=none; b=qIUglcnoPPKi6YHTl7nU59Q9tXPN7h15krWyBrehIBdbYgvZWo8b/lSOVfkzvnHP0wyIqCfzvF0/T+Gof9Yv5RotOeYhnECCZOu61bPgyEDbtfs1tIkAZzjT2pXta1aLP/GLZw1Lf5xp4UYWJFaAp+Gm+fGw/2bqzO+yA/sKDtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731598155; c=relaxed/simple;
	bh=bE9ya1RXOSv45mYNTbfSviaB6LQsDaWb7GhTrficu9c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WpNpn2FPBW/rPeLjLWOvNpUCDRvvtRgYdXC6vrH3+Qcaw2PjGYUFEJii4ra70kgL1wSAzv++WBSQ7bRdhKs9+5HYqqMqu2yrvS8Vt+w2z4uUJXjUeQXeYaJhXO0Pg6MGOD6J+ZxhTlqsBSWZ/ZcveQFzUOPw5sUcyHcY1rFu4m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jEwiPNUn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AE7IZE4027124
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 15:29:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SXBrz+/0G25+LJ+SXkHmz63KUpm1o0hCtcmntt7esso=; b=jEwiPNUncUgRXwGN
	9pqFK4BwGY+fF0rSx+aNopQxohgTR0XKigQ502qf8N6u3G3XqFNuq0Rf7qEF3F9q
	Ia7VB3HbDXiti0/4l9dGLFQKQFnkF2zplPYLwCnu21ksDAIf6GXY8wgduaySaZJ4
	iKxomAGmP3hx6ukuurF70WZ0EVAqYpuZJYqx9aqr3GUABMCE35SBdxAjCs4Olx2I
	0EDvQvRozuefsDoURH+JHw9ZxKLwCbWKHX6i1gAkWb3FVDj+H1rxmidwHWrNf9km
	IsRZRQIbgrHn97FCbJmu4+DBU4q/79ijujNktm3pP72vTw4defWSyY+7FWi9YWUO
	tmbSWg==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42w10jv2ss-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 15:29:13 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-71813ca0342so137988a34.2
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 07:29:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731598152; x=1732202952;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SXBrz+/0G25+LJ+SXkHmz63KUpm1o0hCtcmntt7esso=;
        b=YNeBa4N349YsuXS6L3hSu5sdjJqDdTER4J8Wn7Gxng97BOPAeU8qhMNonqadRs1JSf
         GoIrDuHfKvzuW0W8KC/wAeISXeJKMy3giYROVvtdtfnztBTxI88S1aDCvHOF1YO1koOA
         RGDeYWqn89Hwa3twxMTGLL/PfS0KafQew5Qo8U7GfrCPaHbsjDopjEVRnMXvIEoxzMuy
         Lnct5oBOPo2vFzN3R4bqFEy6BvCOJpV+eQPJkHB3doqtbT/24+rCHmpGigDNw3P04Xw6
         VfzbAk/7fha10fvYvBklIzJAbD6WLNxpVYV/mnVsXoa8G/R287oIZUAoIsxXn9HSkAK6
         PzKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtZh2siyb/Oj84/RXTX9lYhtZkEYhLHHR6NHEuMepA/yvxSNQGRqhYxzMG/VEoCSLSveTmwK/twnoN@vger.kernel.org
X-Gm-Message-State: AOJu0YxHJEHStdzKVgNdY1wM7E6JE3Df5NzSpZ6lXHdy9PvaXJS5WEJg
	S9G7D6AkaCIkkNQvIgvsPWGH+OgvyLFjuZrJfYRlhoBCIaT6rlKl35ui4o23UmyzEdz/8RChXkO
	+yIV4AbgHMBRuAW9IC1YHQXalmTBZQKf7gU5RNtYt7bfpJel2cm+S+Enoi3IP
X-Gm-Gg: ASbGncsi3OTeUFYc9Cbo4hcngk1TK7u0B38W8gomwoLBrddITZHHDckwWpPiA1g7rD/
	q/fllUkwx2ssJtguZqlhsWk06Pt4y+7IeLoHKz+KxNCDP8AoTF7fS85EQqGD7lps7tEt5wwkvfN
	a93bUvzcFVuo2uDGhkjUBC8ophiEMZEAZTGhZXxW2teaHsVMP7njHYhxtSspudErFDHf4sfXAmR
	UpPWslj7PxMFB9xI9yjhh6xtfCTFGP9ptDoosdyHmh/M9qwlOefjsaM1mZ8rU8HauEZ/Zruf0iR
	iU/eyCamjr6TLdKoU//6feUPmSlkxD4=
X-Received: by 2002:a05:6830:f93:b0:715:4e38:a184 with SMTP id 46e09a7af769-71a1c2ad1d8mr4911695a34.6.1731598152323;
        Thu, 14 Nov 2024 07:29:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG8OL2IwD5N25m9J0VulyHZMbS6mvVT/pmKgZVeuZW649n2XIjjE4zIVCKhCkS3RdEm5Oaiyg==
X-Received: by 2002:a05:6830:f93:b0:715:4e38:a184 with SMTP id 46e09a7af769-71a1c2ad1d8mr4911687a34.6.1731598151914;
        Thu, 14 Nov 2024 07:29:11 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20e0869a1sm73980366b.194.2024.11.14.07.29.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 07:29:10 -0800 (PST)
Message-ID: <e1e33f9e-5425-48b8-aad7-8f2936b2e218@oss.qualcomm.com>
Date: Thu, 14 Nov 2024 16:29:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: Add support for usb nodes on
 QCS8300
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, quic_ppratap@quicinc.com,
        quic_jackp@quicinc.com
References: <20241114055152.1562116-1-quic_kriskura@quicinc.com>
 <20241114055152.1562116-2-quic_kriskura@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241114055152.1562116-2-quic_kriskura@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: FTEvdLZISoRqJY-8DSG7Qo36pGOpX9ei
X-Proofpoint-GUID: FTEvdLZISoRqJY-8DSG7Qo36pGOpX9ei
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 bulkscore=0 mlxlogscore=764
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2411140121

On 14.11.2024 6:51 AM, Krishna Kurapati wrote:
> Add support for USB controllers on QCS8300. The second
> controller is only High Speed capable.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

