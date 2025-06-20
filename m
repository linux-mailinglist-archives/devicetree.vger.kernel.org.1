Return-Path: <devicetree+bounces-187980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1190CAE2071
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 18:55:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C39C6A0B1D
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 16:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB21D2E62CB;
	Fri, 20 Jun 2025 16:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mL52/1Jg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600A82E6128
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 16:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750438508; cv=none; b=tcqeN0H72pcN71A+0FOyS4QA9xrHbQmbLs11hfiPGUorfOWjaHXifZ0e40FpU9ledFOtfuaZnIcnd3laOjLlqL2284HJKZ33boh08jO/vRYsbjrK2D5aq5+QKiHPm/WIAEnik4PpcaYdD6YxlkGa3Wr/7skBk2X2xXuiuz8yyZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750438508; c=relaxed/simple;
	bh=2PjTMHy5F3iPIngcSswDszD1rmfKQu+pVIhzm5QlxFA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kZOoc3hXn1x9Y5qIDL2LsZlJwRQvYtoDoHorz2/KO+eqc9GQj3cOIenrCw5kyT1WmXGNkOAsT1j48NnkHbfDPTwOHulRA5l1gGfVV42sXrXhXGBmG3gRhTvRnmAewRGHS0U5D3StX3+rzke+tOqFRSsleaY5woObi4pFdQVkmVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mL52/1Jg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55KFwlvU004741
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 16:55:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y2I2QseFJ0gr5gYIqnnWqNCwwaaSonPDD1prW4PD/A4=; b=mL52/1JgJoGggS/i
	4nE0Id8O6uM8LFH1ZMyXi7NeB3vdT6P8lbIFSEnmBwu3rzG4TnYW0rxA1xFxS3+W
	A/Tgk4sn8UFRyQIW5n1uqiNNwDDdajBTWa2ZlgRkISB42kKMQHJ5ABp1jctCXIGQ
	YCyslYKe/DLbQDQqKginB7+66PmR7fFYeEEYjqFvt2uuK+TectPsye++pn+Qq89H
	pREE28Mh/QbYDV6DvduAzzu2dEf1oMN8lpyGHtb1hAol/MKMhteC6rA0/WCCOLM/
	PbJJ4dGYl6lVD6j2NN6fzToXbDNkYYk9QsolwWP2uYfkXWPXr9N+QEwMRSxULpk8
	UAx32w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47darvr4h2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 16:55:06 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fabbaa1937so4260966d6.0
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 09:55:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750438505; x=1751043305;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y2I2QseFJ0gr5gYIqnnWqNCwwaaSonPDD1prW4PD/A4=;
        b=j59yXzWXl8reA/a4sZsBxECGmgFEYlPjKs2QVAGYX3Mr/8AU7qXLC91RQsTUE98cE+
         PRgg+qLVsF6X/0H9vJR0M8/u7Sxt6L3RTYX8mQVfBgRB+3vpm70O4oshREq+2giH/VSp
         lgpa6oGMZ4/GQyYq0ZUoqcWdduVfbef9tNYpZqguJ0ZPKWWTw3kiLyOi6J7i03xp/bcE
         WyPy13L5BAbo/L56EUOChbabepUZnFgZF4xL447sIhXhiLtjR7WY7qqmFxSuGrBHDN1+
         mEDNHoyiPjgH1m33PvDPtp9E1SFsd3QVC1iNFlkVpMYJRMD38vAtCoKqUnDgfIKT52N9
         eefQ==
X-Forwarded-Encrypted: i=1; AJvYcCVY6xS2l6peVVGMyFtK1rgYqgOHNf7BMVeEBiaAexbLfso1sc6LXz0TldQi9knHln0SZINSL07Z+9bM@vger.kernel.org
X-Gm-Message-State: AOJu0YwHb2miwFjVoj4dNlFmfBpiwsQi3D1bKvDE9LUlZWWZOByXcN98
	2rOmGIz+n6c2FVZVvA0rdIaIKQuOWNyGGTfhTsULNkoycFU53r4sCIlzXQIeBIopXPKlcI6oexk
	Cs2Td5WEf6vFtmGvaRqgr3s9n7HTtgoKjKJTg40Q7NXb4DWpOO5isSuSMC05wrnjZ
X-Gm-Gg: ASbGncs3WKA6Y0bEqPK/KBpXjaCvLnCG7ynMwtOFlmHYbPeWuOYQKilhmuHdUAEBzOT
	jBtLfM2imxzbe8d+azk4BjASp4ta0ObFw3nhHW7xi9iH84DzVdeAAAiWCZJwWwhr2EMC+YOatrI
	Gkkj3gtIVm4ragvUCBDAvJkaKkxyVGuR5XcoQPS396ZLIfSQkpG5TM1CM9q8pQ1kJrRScJbd/af
	4omGYOnTdiim3tMg8lXgsemPghoSXA/8UDoY5DNrcImHxp+Kw1pQla7KiK2tdbrXaAof+NwdAub
	YDEl9jsc52BtGwEtPshCmQ5PK2R3VftJzb0+MZmA/dC/mWUgB3R3HSjLDY8LiB9adwPWk9Yq0oX
	bzFU=
X-Received: by 2002:a05:620a:1a84:b0:7c0:c42a:707d with SMTP id af79cd13be357-7d3f993a910mr185107585a.15.1750438505193;
        Fri, 20 Jun 2025 09:55:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzroywSyK0lLak+kmGhL7I4nUbTDl//l0+nE20iSxOE4K84JZ9jklmLuZwJGAH+b1r8H4Iyw==
X-Received: by 2002:a05:620a:1a84:b0:7c0:c42a:707d with SMTP id af79cd13be357-7d3f993a910mr185105185a.15.1750438504725;
        Fri, 20 Jun 2025 09:55:04 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60a1857c124sm1603889a12.36.2025.06.20.09.54.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 09:55:01 -0700 (PDT)
Message-ID: <2864033f-5f1d-4026-9bed-6a79ca917701@oss.qualcomm.com>
Date: Fri, 20 Jun 2025 18:54:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/11] power: supply: qcom_smbx: allow disabling charging
To: Casey Connolly <casey.connolly@linaro.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Kees Cook <kees@kernel.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        linux-hardening@vger.kernel.org
References: <20250619-smb2-smb5-support-v1-0-ac5dec51b6e1@linaro.org>
 <20250619-smb2-smb5-support-v1-5-ac5dec51b6e1@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250619-smb2-smb5-support-v1-5-ac5dec51b6e1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: f5U2eDHDlohVdgjCLZUlt2NP6Ql6Pp2U
X-Proofpoint-GUID: f5U2eDHDlohVdgjCLZUlt2NP6Ql6Pp2U
X-Authority-Analysis: v=2.4 cv=YrgPR5YX c=1 sm=1 tr=0 ts=6855926a cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=XZI00cIVyT1STSWTZ2QA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDExOSBTYWx0ZWRfXxhg1iHDXcqSL
 mxOesIwU0J1C/aj8hKu3ITsACISvo4YM0xjdpuZ2gQohwP/aV9gBz4AGp2YN0kQPUt/SsiQxXx2
 IEI0iBnhqs6xMGLlO7oJtFkfJvwc7ce2NRKsgD33f/cQNRMm9IiPGkfDByw9W6UOZKK7HmyEL6A
 Mmx/X1bjMjQRqJoQstHBhlcbC+/hagoMi+YNzQZhIspeb0GzrB9AZ7bmziUo/Hu+9UXck5+4Vyz
 BNp1mqDjqU822BdX1LbDyCmIocy7aiKQPMiHHaRYVmqsIzLn8faOU9H6TO2iEspiGcQrQ9EblFd
 J/nCOOOTFUEJsg5LpJwgFF2mi24DuLMXS0zTpDaRX2W1ZZoYGMWucv+CZsDe5wMBY3bMin4u7Ek
 3avRqo2eS396Hry4Ot4wS/o07wwk9x8piFW2V+cklVjgfBrJLBfZKpDrB1wNIYBytQDW4DsC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_07,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=777 malwarescore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 mlxscore=0 suspectscore=0 priorityscore=1501 adultscore=0 phishscore=0
 spamscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506200119

On 6/19/25 4:55 PM, Casey Connolly wrote:
> Hook up USBIN_CMD_IL so that writing "0" to the status register will
> disable charging, this is useful to let users limit charging
> automatically.
> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

