Return-Path: <devicetree+bounces-150622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA8EA42E26
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 21:41:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A67DD178C73
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 20:41:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8A2C263F47;
	Mon, 24 Feb 2025 20:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tqk8r2kq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024D7263C85
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740429640; cv=none; b=eYcTENTlAey2GARrGccq76l6/kxwDN4fuuajahtw1yROjjjcwDSYKEJfmhu4ULiHCxpLODAt3ahZdqJ64U16Qef2q+oABR01CsHI8FwPTEVIWsZZReZmyuJTwT3ZtSxTdhJzKjbO398q0x5N9wN1UJ+6lJEOWfeH5fHrjQcCyXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740429640; c=relaxed/simple;
	bh=2JAfmGq7aKOMSiVHUMfet7tjY8bVdpLdNw5aO98U4n4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XaDeRnBDzyRJmD93Pukq0qGotUHOeJdW4KhLFa0R5JFSYpDs/Rblhulf8hqCpxNcnf7F8bytNuyz77nOmCKozdJ57GZCcBI1/PUV71h0rOjFeVPBoTMsc2TBsPbWt51JLa0ISmsL+EufsuZqwSRFhxVGDY49WNWD5TUME5TkSpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tqk8r2kq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51OKOL8D012662
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:40:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LeKHeVU0gqgwZtzGvrUUdyF7xwqARLQ9fhBAX+BRm4A=; b=Tqk8r2kqZ/2fADkQ
	LF8+bIpAZ1mNZacqmRwVMd4CovQGZsrJEXOp7raxsYcw7u/o5W0K9ivR/slRCkNn
	6EFs2QO4lyfQhnXfRMiui+abKa+OCcuWBAybgfZHP2KbxXVthTi/UYM2RdQjPcJR
	ANsO/DioM8tbSWTUXHEooPzXr/nIdWwCKHEP8Y+QRlVTePzTEeXTRXbf/8uqP5xZ
	btRq30be0N9BZzszKDy+7sS9LMImuiIsvB/hrkkn6HjG821qExWekLhSaebmooW2
	V1wTlyLk94xwfsxX5KRDxXmGqtfQaMX3nFI9EZeVdcTGQYVdAp3Gd6/Ukg1TzSFB
	GDML5Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y65xxfba-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 20:40:37 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c0b3b95ad5so45637485a.1
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 12:40:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740429637; x=1741034437;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LeKHeVU0gqgwZtzGvrUUdyF7xwqARLQ9fhBAX+BRm4A=;
        b=sgmSs0NP1pVhcSEco4wGir9YkvSI0ujFb+P8f0ptQOIYwezlvTOCAngSEiZcGs8s+E
         msrdZXcB1gZwQNlxTuR3HOksZJm5gblqT6bFU5WWmJCgrQkawbmL+tnrhQFsaXsAQABa
         woPnb2cBSIjrb4xkyDt0kvN5MpSMzqd28fNhKsP8FaTA3UwoKOKvnJFr3HLywm6vtr5r
         1EbzvkbNB9l0ePoGr/Sg0XE56tBywUZJ2JGTMb/i+jFV9Lsmj89vekKQyurKE084DTQ3
         U6WhPL2LCt8jfrwDm/UYTsxf/PW030Swvndi0lFvbwwn2XyfG80vVf97v0VFqXrwHKkL
         d3hQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiE/py3OFPURsqn9ytTxgVEjcjYK/16H438AMifcVPqwHQpGjY8uupv5B5ub3Qtg85O1Ve4ttfwUID@vger.kernel.org
X-Gm-Message-State: AOJu0YzvrkbXuBGL43gbsMS/p+4DgDfzsePfNR8vc/ILh1XZI4huD9Lg
	SIWNJ+QsjRMXilRmpMFOcShZtwOpXgZbacYlDEaXHv0ardNizXnMZxqLmT3RdNL8IrxjDEl75Yf
	QLnPe91J3HAKtKxzZJZijrMyT4IdwwevU5nnyhMm9dyCaxUuTd6j5eDaO9Mj5
X-Gm-Gg: ASbGncvEJX+5WWfUkBZI85woArNsxQ6JgW0HgvJ1dSnpcF7AbcldziT6AV7D0OjWnjk
	Ba9GTw7YNWd4YTYwX58HpvxiENMxqt/nxRBvV/5dOskqF9FCt7apvMsNKno9UQzNRcuy4D+Z/cw
	g9glQlXlbpIvpCGXhI+y6kSa+0Sb7OF4INJloVRlTjGoXtq/Om7dbBfqGx3UGaKy/fopQDRHSVT
	yhO8DXHFBF8vf89TxHO/6eo6VUIIXlp/wU7wo386ASRQ5opqRhlj6dEdLHMKBho93Eig4QCnCoP
	3rQTEZJeT4fJFaEdjhg8IRH7G4w2rADWwMTfgZTikHXCYBAra+ES2pk4mG3VOsfU1pAJpA==
X-Received: by 2002:a05:620a:40ca:b0:7b6:6765:4ca2 with SMTP id af79cd13be357-7c0cef6ad7bmr689942085a.13.1740429636862;
        Mon, 24 Feb 2025 12:40:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEHiyacVdY2d1KyqCuEj2rvZuI/7zz0a/7U/qgSJNcAIU9bSzs2ZJ5TY1GOauzhs96tNTcDyw==
X-Received: by 2002:a05:620a:40ca:b0:7b6:6765:4ca2 with SMTP id af79cd13be357-7c0cef6ad7bmr689939485a.13.1740429636450;
        Mon, 24 Feb 2025 12:40:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e460ff861esm123184a12.49.2025.02.24.12.40.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 12:40:35 -0800 (PST)
Message-ID: <885fb0b5-fbd7-488a-8bf3-5a2d9368a7a0@oss.qualcomm.com>
Date: Mon, 24 Feb 2025 21:40:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: x1e80100-qcp: Add WiFi/BT pwrseq
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20250217-x1e80100-pwrseq-qcp-v3-1-a0525cc01666@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250217-x1e80100-pwrseq-qcp-v3-1-a0525cc01666@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZeJU8c73wqxwlTsUc7m0FcZ4rnpO0-Vg
X-Proofpoint-ORIG-GUID: ZeJU8c73wqxwlTsUc7m0FcZ4rnpO0-Vg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-24_10,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 mlxlogscore=999 impostorscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502240132

On 17.02.2025 6:55 PM, Stephan Gerhold wrote:
> Add the WiFi/BT nodes for QCP and describe the regulators for the WCN7850
> combo chip using the new power sequencing bindings. All voltages are
> derived from chained fixed regulators controlled using a single GPIO.
> 
> The same setup also works for CRD (and likely most of the other X1E80100
> laptops). However, unlike the QCP they use soldered or removable M.2 cards
> supplied by a single 3.3V fixed regulator. The other necessary voltages are
> then derived inside the M.2 card. Describing this properly requires
> new bindings, so this commit only adds QCP for now.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

