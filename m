Return-Path: <devicetree+bounces-213393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F7DB454B7
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 12:28:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D8247A7C58
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01B9F2D63F9;
	Fri,  5 Sep 2025 10:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m1cHIaZf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82436296BCB
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 10:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757068071; cv=none; b=VhL/qt+WIKgAWov3E8wX+wUc1yPpt5OuE4LoewcrRqf1UsguxCP/rU2cdqkKjMwpXZzp/TXoraYlmvnzPhr/eFqiBHXTDR8ulmrJneCxVFkmnLl/ObXQNP3qmsvVpX7w0/lCQ776rhhABbCyIxL9LbB//iG5u02MtdPgK+eysU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757068071; c=relaxed/simple;
	bh=yUiO9OtTouNSxonVQA/ls4QKap5u9MAqS9M8Mby/+FQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WrLgR4JTitmZsObTkF+oWaeEtlfTAi5FlmvNdFOtu1n6h+vVtgF8aNhIGli2WF4tVC7u67mIuTzUUlEYdsblYYB0R3NnjAi+4dSKuBc30TLMmkqztzB3fe/fZ2qhTiLDdWTmyJVLgOyMikvCvphGI8+YaJkF6Evtb5EzAjKu9+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m1cHIaZf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5854qNsW018468
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 10:27:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bgImxnHNSMCS8SmNrQpt5YOQEEQ9nP5jX6sY4IjHL5o=; b=m1cHIaZfwvaH6fiS
	xR+PRke5kGQyucHUvFQa5UaLTKZ0i5ZC/6LLysETc+2cCSI730BRxRMERJq99z/Y
	R/bNGdQLAqHHqFR2a1G/jQ6fD4xDhU+kA2frrFJsJw5ajrgpsdlBeQTLkcxltpUe
	em62YSCdUAwazM5DjW9u/NJrEn9M5dQK5G4rdbua0rwKY3eQjhvHi0yqrwmfI1oA
	Ow5o+Unm3YyBa/AIU0m6Q8LHbSA7pQN0F8ivc/9vrj01pFryHQWvslqLy+SW+v7/
	HvJyBFzrphKMqa+T7uEC2iPYIYYRlg2cHGmVhC+uwch4rC5243tVLp7IxXjtgZgn
	Z2svZA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48yebutp1j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 10:27:49 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3037bd983so9505231cf.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 03:27:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757068069; x=1757672869;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bgImxnHNSMCS8SmNrQpt5YOQEEQ9nP5jX6sY4IjHL5o=;
        b=fxJKuQZB+zSc5g2zHaau/c0eNnlr9pqfUOkuD6Yn+F/9goR5aKhRVUcWTtHMAFl9ZN
         G5BMfsUkCyAbyiMhXUvWZ3KSraZS4qWQitSlsMSVa8etrgp1Ya0F8/EErQrR/eHgfIaq
         bbLWMbGtz7fz0JFuCYtAxj4RkNtJRJKTrGOhyDbOTPPPGZkb3xkeG6oLyip8dkJ3Vhqq
         eK/PjLjwYvwsGlcdgZ7HXFcyq04/Hejiqe8xcMnatI++vlKTYgn4a8tLiJ4o/dlFFlc/
         AZ5SjelRR6T9kPSJ6cO+P3rEqwXP0xnO6rwsDQRbjpy0SR5J7h737SuNFOTcd94na8HP
         oQXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqgN+0Cexu3EUtbahwn61ZvjnCzQXFRyOYV8P2dF9f34HEOVrPl1rC/aZEccp2utMKOxFsEQ1JLcbO@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg9CY1psnpaY5qCTm8Itz8St/ACebgKOLBYOivIdycylxCQQwL
	SPYhE3LKavqoWKND5CH05Cn84oJD14zRGPNBOlWlczciixYdA398Yopw+hNAtyOvXel6m48bLNu
	3AdsmMY/eEcsQCf3/wbHailWXBu68+QA8t0TJUYdRBeVhbKPQEXcjIzS/mDVBtqAx
X-Gm-Gg: ASbGncv3Z3rkpdBqBkogWWqkHFW5khahXkjkhNftmvfawrZAvMPv7/6uUMCLCmPImt1
	CGP4Uf9MlYmhKn4AN2Z2EMrnr4SLprSz2geXgz10LCcYT4paPDcyJnNjZE5Z9f6SaN/gDx24hBE
	hA/6B3xxhq4qnIivKecDfqUmTslB0f+kH39qcCArpC34U/nxczgPcpGfj5U0//kK2doc7ICTdVM
	GsdKGPCTkbXG3K/8hWRKSj7+9Oj1KZ01tnv7IYyyoKJlhKchYJQKPLVRyQpGYzT8VH5GvJhJr+P
	dyCwGqvUA2sEFCSDpRS9rfhotol4ed9mrE47dMAMhmp55SKb8dLU4s5qviNpL3LKY+Z/PmE++ha
	vVl7gpjRyWCfz3olAhZaO7Q==
X-Received: by 2002:a05:622a:308:b0:4b5:e4dc:1ee5 with SMTP id d75a77b69052e-4b5e4dc2165mr33624961cf.3.1757068068633;
        Fri, 05 Sep 2025 03:27:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7l66365MH+uv6p54/CjlP9TnYyiug2nO3aof3IGh+gEKom8YbhxPLhpaZ+ioowQDvGJzU5A==
X-Received: by 2002:a05:622a:308:b0:4b5:e4dc:1ee5 with SMTP id d75a77b69052e-4b5e4dc2165mr33624681cf.3.1757068068077;
        Fri, 05 Sep 2025 03:27:48 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0466a962c4sm669301366b.71.2025.09.05.03.27.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 03:27:47 -0700 (PDT)
Message-ID: <4ee738e1-8441-45f5-a026-fe60d4d2bb49@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 12:27:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: x1e80100-t14s: add EC
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Mark Pearson <mpearson-lenovo@squebb.ca>
Cc: "Derek J. Clark" <derekjohn.clark@gmail.com>,
        Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
        Neil Armstrong <neil.armstrong@linaro.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250905-thinkpad-t14s-ec-v2-0-7da5d70aa423@collabora.com>
 <20250905-thinkpad-t14s-ec-v2-3-7da5d70aa423@collabora.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250905-thinkpad-t14s-ec-v2-3-7da5d70aa423@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: wwQNDd7a9zdem7two3E0VG07wzdJT0rK
X-Authority-Analysis: v=2.4 cv=X+ZSKHTe c=1 sm=1 tr=0 ts=68babb25 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=c_sDwiGIsPVnuUXXd_QA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA0MDE2MyBTYWx0ZWRfX7RwGLENclWfx
 0pyEAx5in9umw90M0i9JrllAlDqXwEdDc976y1U+Xts60a0NsT9rJo0ZmejqkKqKNhGEJ1K1FoG
 oOY34y3kU8HJDdvAmEH9WcQ3Eq8VVT64haGzrcFvpFgbs3au8RNbM551B38J+hjOAdv93lupMnG
 CUM73QF/xkkwHo4ZWWJl89VjQRe87EG+U34UH7wmJ2qmhT4sDevWiXCc6XcuE5xi3lzvntEIMWK
 VNwIjQUhW3VJ1fky1gJQRxHWuI4zB28D/nOvS/9HYXflLF9J5qELNk5rabDz0pD8szmiwt5xcrd
 JXxOdYgkMJd1MEQkz7kfBkpxWU0OiS9Wp+iZYYgKahuvWrgkJE00zJO1c3rRdrbowRxM30lme/Q
 U9orzMi9
X-Proofpoint-ORIG-GUID: wwQNDd7a9zdem7two3E0VG07wzdJT0rK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_03,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509040163

On 9/5/25 3:09 AM, Sebastian Reichel wrote:
> Describe ThinkPad Embedded Controller in the T14s device tree,
> which adds LED and special key support.
> 
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED
> Signed-off-by: Sebastian Reichel <sre@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

