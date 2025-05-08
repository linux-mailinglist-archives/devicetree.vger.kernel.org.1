Return-Path: <devicetree+bounces-175098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D107BAAFCFF
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:29:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A6DB1C044F5
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CBAE26E172;
	Thu,  8 May 2025 14:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hORXaO6a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98DA2AD20
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 14:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746714560; cv=none; b=GzqVEnwtoqQQBMBY3xL/YVWtUB5hOVGYTMSc7buitOXmhPz1qEQds+9t1vl5IqMEzx8lLCS5I7tUGNvLpnqapyW5QHGsx5YKebG5GufZffiYWFNZTaTEVn5/M4urvuEPC1vpCnh87vnAjONXULhgJbn+99dV0HdoiaVZX14F3WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746714560; c=relaxed/simple;
	bh=Jbh/9af6d5ID3SFZRBT4G7nBI1lKLhOwQR45yMrSHko=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FfwCWtU/WIcY3GejYfqRJN+a9NT2GqWMIaedfmySqawUxciTy3c/nER2T1PUPNVm7yiIoh94HBY5oTdOlscjRiGMxc6FiLhaxpFTB3y4ooMXBASlIqS5R7VF137EpZTYhUZkQfkVuwTNK/hTWYjDNXCCXUJMkmXB4vx46ldbhEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hORXaO6a; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548CSH2h030788
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 14:29:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CVYdOyCWxSbmzL7wlbg+5YDo1V3ZSGq1/g/F/cp+HoA=; b=hORXaO6a9SMh3pKO
	xzZhMhWFomjD0o7QZqMQglsv9KACrmwcUpNNbIBnsGE+8EbUPOb1bHuYC8xRXqWJ
	FFPGTgfdgX8IfHcDuimT5UCJNIT5trm7ajYqiaHah9Sw4timIb+qbMsDGagophDP
	fD7K71MDNX1IGFQJygINl5TtATJSoN+6sFoM5N/xXOP3NXnNJW6JbWWlGPGrMPiI
	RiFhUU7eU0+6znr4yZEiGo4XVs3q7fIYoh/t2ivqYGZRnLjBTE/bz3Hw/faz0W/k
	G46C+ZJ0F7KZ6Tw/N3N8HqFpZ7K26d6xUkRZBglvjs2rjgukFMDBYgT/SDQoGw02
	2mtCMA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnpghjym-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 14:29:17 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6eeb8a269a7so3181356d6.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 07:29:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746714557; x=1747319357;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CVYdOyCWxSbmzL7wlbg+5YDo1V3ZSGq1/g/F/cp+HoA=;
        b=DXdlfbNU5bQUQrY1KcbrSgCVFoNO6tJSY1cJuDedIp0qhaMozK+oicU9jnEGGBT3nD
         PsTxyq8EqB4i6djOAxEQlYg8+wIkSw3yAZcIgbqRfcpyLbEm9FBjFe+ulVKODGsJdYfM
         hwyfZnVG9BgzeksD3B4fEZXjsK03BIMrNYkJa8pwCFTigsgPEvqdc0NQGq7LEln6LSrO
         OWZuvyb27hb475W0FfP5RdE/rHuS9sg8VhM4KK6EZPCHWcvWW8hA1nQ842P339p+D/v2
         JmboAyt6iicH1AIr5GMx5ULCebk78NPxUsPqUwhU1rsZ+KK4FXvoLHRw1HA0dOC6DzCd
         TwPg==
X-Forwarded-Encrypted: i=1; AJvYcCVOxwY9FNQnDnighJEZbvt8X5ZXnQsd+MP1dMY18B7SRmdhCVPEbWiTR9KWdE/r6DurqcQ9oK/Jo2mW@vger.kernel.org
X-Gm-Message-State: AOJu0YzCSAu4nmCviuyXIamrkS9DXBxbNeQca4t+jxMaXMmQG4nyvtSD
	H77lGsgtui3j2Sj5Gk+bTfRx//9Le2ri+VLaFVGEv7T/MjP07+xhe46Ap+GylJXKvktJVxeqW5y
	XBlISfnrpFgo0tWDDun1doX9PRgHZ7pmGdVm5zzMdqFfRobegOOsBWTHdUsg9
X-Gm-Gg: ASbGncvcbc5/eG2Qi7/+6/2O+I08ioTSxV/i5LcoyS0d0jqQOR4RKEOwOnlPrE7Dlp7
	Nw3mjFpSmIhUA5jSlyab5O2Y457mxiRp9HYkRqe247pkfQxmjaXeoUH2Teku+BU7Hka5txaY3Ra
	Zaeh3p7ozscPvYQsbWxNX0KDLCdq11aJO7i7A1H+wTEYJ18hdytSe0sf1GNSNEiIEHxOykC/+un
	i8M3bcWsfXW9YltpOW8Nsx4jCk6qbfnbCs+/afZ+MFQBBoAFVn0o14lwoCZOTSFATt5FuEthPdK
	vAs8UMpPbQXDDr0aSAJDLcqNuLpB+MDV+LgQBfzZ4JOS9BDf2t3orwEZbmgbO3Z3Ny4=
X-Received: by 2002:a05:6214:f04:b0:6e4:501d:4129 with SMTP id 6a1803df08f44-6f542b90f75mr38377756d6.11.1746714556822;
        Thu, 08 May 2025 07:29:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHz9mHXpt3+OIRXdPn95Ms+NqkqUskqTCeWS3quvvvRzqN5bTNhGiO6vHKI+hmpfTr1sFDJqQ==
X-Received: by 2002:a05:6214:f04:b0:6e4:501d:4129 with SMTP id 6a1803df08f44-6f542b90f75mr38377606d6.11.1746714556447;
        Thu, 08 May 2025 07:29:16 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5faa42f65dfsm10180410a12.38.2025.05.08.07.29.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 07:29:15 -0700 (PDT)
Message-ID: <ac96227d-5b03-4309-b3a4-5c7cbb40a057@oss.qualcomm.com>
Date: Thu, 8 May 2025 16:29:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] ARM: dts: qcom: msm8226-motorola-falcon: specify
 vddio_disp output voltage
To: Stanislav Jakubek <stano.jakubek@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, phone-devel@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <cover.1746711762.git.stano.jakubek@gmail.com>
 <6143603464a65aebbed281fe6c6164316dd07269.1746711762.git.stano.jakubek@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6143603464a65aebbed281fe6c6164316dd07269.1746711762.git.stano.jakubek@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ao/u3P9P c=1 sm=1 tr=0 ts=681cbfbd cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=nFJzA57K4K8usXJIcEUA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDEyMyBTYWx0ZWRfX/UF+QlAgd+SR
 fNFgE8691ZtfouG5BukTvU4G1vclb25W8+gCf7XPFQVWgENxDlZ0nfJ5K7lwlmObb+Z8chQG9rW
 83w54u4COvtcJ7Loepnb54otOXjm3woOp+2iyCV9LMWXbT5cnwV+Hx1hphYQ39XJ+A3yTqT1FQR
 2Yi8Lf2t0ZQK65mnUSv94z7ujjPvfmu5I0Sp2PedPIJq5BxtiiNUCFjA/iLzWbzxqEPk03EaLCt
 FhL96+hX/pDYHxZdRATk2aNbzkf2CHnUL6jzNlrfnQfpgi3KkLD0nMf9NIwqd+MvbHb0+9r1B8z
 hKdxCQmId+n+bpBMSo8VE3z/wfA87ee6/5KpIV2fQ2o0mWuHdy7p8ulMblpUKRpq7efjGkb5x1+
 MCH+Yj9KfbLRTEwD42oqiqgcC+2WBjOknHOYrls09P85nEOwEX8uKK/lb2enezrHun+gWiKc
X-Proofpoint-GUID: Z6kLsMsLxyMAVVDiECjmaR8-pAkZg6bU
X-Proofpoint-ORIG-GUID: Z6kLsMsLxyMAVVDiECjmaR8-pAkZg6bU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 mlxscore=0 mlxlogscore=885 bulkscore=0 priorityscore=1501
 spamscore=0 impostorscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505080123

On 5/8/25 4:11 PM, Stanislav Jakubek wrote:
> After some digging in downstream sources, it was found that the vddio_disp
> regulator's output voltage is 1.8V. This is further confirmed by the
> troubleshooting guide. Specify its output voltage as such.
> While at it, add a comment specifying the IC, which according to the
> schematic is the TI TPS22902.
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
> ---

Not sure what the troubleshooting guide you're referring to is, but
nonetheless

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

