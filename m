Return-Path: <devicetree+bounces-139122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 711D5A1426C
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 20:39:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92988167F56
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 19:39:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9F3F231C9A;
	Thu, 16 Jan 2025 19:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cQnRH+pg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5976122E409
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 19:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737056349; cv=none; b=VH88QEBO2eoAociBS8HbBGjpyhfJZmWvmJwAL+wRaRVGKQqxGnJsXgFZtaoSNWhhlN8tOsC1vXlPXT/c9067dirCwWQQ7e2pkpotO0vb2zq5CsvFXypE+BrNcXLXXT4HVABAvsEnOMkLRAt8opiligC74Vxy0z1Mhu5LQvwNjFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737056349; c=relaxed/simple;
	bh=QV9Qk5r9KxfOPX7WXWnJoIEKeZ3v++OLIpRYH8/8SrA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EkI/9d8Y0l4kJGo/F0mZw4uhxXYzLMplN3vHxHa/foO/j09fM1XqdlZyvb1Qp37pebFsPnMMqpCHeNowxRv8nJRpBFSh/VV8WH7YglsFBHQ/ALAweBWfCeJw07Eb31Lw1Mi5q81yNc0p+Ct6r9/kcbd4dQXNWVbVzy2M0QPBIZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cQnRH+pg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50GClcK9021702
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 19:39:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PSGO0flbRqjr2VlstzMPXaOkzzCrl1CDJ0HmQkCPXFg=; b=cQnRH+pg1PeG2OIh
	p449W7wHfc/XUWt+5piXHKupR4mD6G4n8Xf3w5NxbtMQKH/MbsqaBOxeP92DdUFy
	Of7hyjWuz9+j8wIdxv1zaCZQFrta6GtNRVP1tm6aumEAxiKQV3/1pt8p/txZu1L6
	FdgspBwHaiJqRGxH1rBKy/T7t3r8jON04MIwjsj6tYa7Ayw6B3mCn0gUtPVIPAAK
	lT1yOMWw4q1HjdYxS5gkRb7EcMcvQjpjv+sVipFk9ila936gtX/eq2iR0v4EcCaW
	3LN81eiWgmLD+deIJPpKZqhlfXvGmXklneX4oJrae0vwttiLJzCf/I5qvU2iIR1Y
	FmgZ+w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4472e8s0t5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 19:39:07 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e18596ce32so3352466d6.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 11:39:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737056346; x=1737661146;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PSGO0flbRqjr2VlstzMPXaOkzzCrl1CDJ0HmQkCPXFg=;
        b=NYx1LjTQc+I3yAbjzlvqz8ZG8rbDIOavnD6yBkskNvuD4vCcSUQfUyeYjdCo5DyRV1
         DCiVAzmv2oDWwXl6gtaoIVQNC2q82BHtLFMgIHr7Ul8tiRL5sPoGXn2HK3hUutiTq43c
         vj5WZ0uI7YjhvWOTQsfdY0h26AsoRyD3lQkNPeeRka+g5xP8PYc1T8Tmpi+BPPGqwP0d
         RvCzOQEmyyXlgvXz3NdgXyaqzNxCBBWHCW5/gWDQz1dXIPiqc0vDOBgEV4oLuiG5ZyFG
         FZYFP+kjH/pPIMcU2wB2JJrFVOKBWJQs4CvOfHylmoyLX3fWPwKzHj4qrgCcAUkko7EJ
         SwVA==
X-Forwarded-Encrypted: i=1; AJvYcCVLYoGk0j/PJQlTkX9K7qrhfoDkh/jcf9+uDcfuQW+5Nx29xtHw/kM14o+XHHU3ImEzehde33r8KqP3@vger.kernel.org
X-Gm-Message-State: AOJu0YzgFmDFivN8p1GUlrZMOXqoqN/sy8QAK+zcJKuOPScJocqsJtxC
	bamvGbzbZbD52PeYXXPu64ClQWETim26B9FDAO3EdlxgR5h9HGmd2FMYlDPPv5ENlQ+4u2ixbXY
	PN0EpWnpVpV2xXzQPxLpSwru9V+xR2kpFf6JzQW8nn1eyDuXE4e4sKRgGKuaF
X-Gm-Gg: ASbGncszw8BK+4rKUtdEBNpnBb15QZcY43kqKLG3DY0MJjenvt5FXvJscLNCqAsYxOz
	WfS8M1nu0uNMVh64NHkpl5+gwJjsOcKlk/khotagddQsBsaBm3pzBQ+vu0n2Mj2ZWYbuZU5BYPL
	DIkhZjLSMxmq8Kg2bAuaSXWV4OeFLmGtDbJfA/GF2R+4y+dg3WPo8G8SK6JR/Gjb+BI66eMWQSE
	A2Y1VvxdZsRziB5/Beccc5H9jFudYHPWQ1uPtYIfiEdEJYotfpr9WKUeRmnBzqLrWhEqEEtY+bw
	Fp6vzA540p+xYSGza+7kIxXWJbeYZwB+06I=
X-Received: by 2002:a05:622a:1488:b0:467:6092:841c with SMTP id d75a77b69052e-46c70f76185mr199111511cf.0.1737056346109;
        Thu, 16 Jan 2025 11:39:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEvR0F8syaORaoIU56XL4CRriwHG5zGOdLi2ltiGwDe6PAjdeOKe06yMdMwoWwQCPB1dD8ZKg==
X-Received: by 2002:a05:622a:1488:b0:467:6092:841c with SMTP id d75a77b69052e-46c70f76185mr199111381cf.0.1737056345695;
        Thu, 16 Jan 2025 11:39:05 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5db73eb59c6sm330815a12.62.2025.01.16.11.39.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2025 11:39:04 -0800 (PST)
Message-ID: <0e970e21-6fe5-4457-a26f-42da290b5fd5@oss.qualcomm.com>
Date: Thu, 16 Jan 2025 20:39:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs615: Fix kernel test robot issue in
 SPMI
To: Tingguo Cheng <quic_tingguoc@quicinc.com>, quic_fenglinw@quicinc.com,
        quic_tingweiz@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel test robot <lkp@intel.com>
References: <20250116-fix-kernel-test-robot-unexpected-property-issue-v1-1-b1f4cc2c52d5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250116-fix-kernel-test-robot-unexpected-property-issue-v1-1-b1f4cc2c52d5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: EiERqWAEvFF5yHXDgCRfzUnA5DgDnsfB
X-Proofpoint-ORIG-GUID: EiERqWAEvFF5yHXDgCRfzUnA5DgDnsfB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-16_08,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 adultscore=0 mlxscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 bulkscore=0 suspectscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501160145

On 16.01.2025 9:31 AM, Tingguo Cheng wrote:
> Fix the kernel test robot issue in qcs615-ride.dtb spmi@c440000 by
> removing the unevaluated 'cell-index' property.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/r/202412272210.GpGmqcPC-lkp@intel.com/
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> ---

The commit title should be more like 'remove disallowed property' instead
of 'fix bug', please rephrase to state the reason.

Konrad

