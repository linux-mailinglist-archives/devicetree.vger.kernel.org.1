Return-Path: <devicetree+bounces-144834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A565AA2F695
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:15:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 459381628E7
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49CFD2566C0;
	Mon, 10 Feb 2025 18:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ddUUcLq1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1B224FC16
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739211280; cv=none; b=tzCb/Ycu0qxDgOmqIA+y6zFcT3nDSwq3HKwE70D+anRDBinTuaVKQGhurjA70o1lFfcCPcleVzwAHxMrc2z9mm8k3Mq72S7LSfpZFojo7cnnMFCwLP8WXm+GkANBsmD6s184KtrBL8ueb3Sthag2IX2Xd51cQhx7zoc9UI2BEQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739211280; c=relaxed/simple;
	bh=4K2XNsaDCsSd1siiGtOIrbmiWbn6LlUnpGVy6QOO/MA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RaQ5NmFaxoMA0wCxV90H/jOij+ctL/SNnJi7gNmMtpIkGlgZQ8+JXVcmEbCwX2rEQi37MiMVVrQMTeYu2aKGgIPTIcyApbUu6Pw2GhVvRvCZwTcIuk9AYfj3nob/DHAv3kNds97BJeGM+bAULtUykWVUshaNyK3yIZnxj8Ri6bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ddUUcLq1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51A8lRhR028752
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:14:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tj3xl389tb6+vFerHhXhAIIXxNupDXHEF5/CjGgmWO8=; b=ddUUcLq1qR94VmNX
	lzHjGle+Tkx9N+aTb/k6Ly4RzTEmjrOGmHl5E6F6jv6VR6gUqusGIDnA5V7Ak9dJ
	Xoy9BrMAFKeRdlL6PkV3By2CL4Y9VwJJ3CCE8suEaGnt9NjLSS7OF3jh5pYrSGXu
	EcJSz9W9M8y+Jt8NgTdoqkXXmesTtCxkAswl85xQedIkRYaR5BgyYbUd4oZcTHew
	XinYZdZC8MgyB1PXmY1KzFTYX4M9ICspdzjjTgSfSPOUmWN3GTD+EMZuDshBXGv+
	zHdnH7PtwaTS+BezMDk07m/ASevg0Ij9vMiMueHUUp+65jv/A7wtgxtsDZ2UHwiN
	RQXKJA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0dxn96b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:14:37 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e4546f8c47so7389806d6.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 10:14:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739211277; x=1739816077;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tj3xl389tb6+vFerHhXhAIIXxNupDXHEF5/CjGgmWO8=;
        b=dzeaxJRG0y6YN80NkMGfO8v59q0KRkOlnGeY4H7yW6mVy679uDbH0twM6NamqYEshG
         /4TEqfyu2f0/0RUhPrEj9JlFmJG1ZsgIAbLyX8G7yLsu5OPSVdZzLUMupF4MjDSZMZ9k
         T9qMIocU2GiOqhSdSNLyj++PCnhDtQ+jxMOfWSixJ2ngfyEBgBGWF4YyA+ZMNjftq5gU
         AYNDQxaq45v+iRE3HByXT696G94KO14BbfhUmyZbBVzZrL2UOmh1em3XKsM4jk8yHi88
         BbegTu/ayD3nYp03Az63qeS5jpd/mM7WfOaIyfJciqucOOWAjjGCyh0qscKWZJEvKzTM
         iCmg==
X-Forwarded-Encrypted: i=1; AJvYcCXwYlG0qzZwbxO3uAjlMhkinEb3zlQXgy9QRnY7P6ej05upAmMHDnzJ1lzij6yzwjeslL9vsnuSlw5F@vger.kernel.org
X-Gm-Message-State: AOJu0YyrGGBqzX0gSSkK5rExFXZIRIGQTuaTN3bX4VSBkl74LMMCDbyj
	CXEpiVxj/9n6GjfEHBYXRJ3zXgUANQok/s9cwsZHJe9VUlbEnL8u4vdkWD2n26zCCdTqfRKydBp
	NwfvRRUeVVsLYkvzfgQEK08ckuH9A56XE3wBS5pn7JBHdL+pYoQi2jalcXdXb
X-Gm-Gg: ASbGncsSrCAKoDsJcRFVSt+f/F9IY01P4KW0wEenq78CbcxWFGS/gvQA/WBjgqn/cbO
	rMBAONlm4qfRnMseUdhl8l27NDwsSXP38G5wGzZFsl7eBW9uESm+c5x0weGLCVZS5KvBxIAUvBm
	vh5JeELMec2siszZn/naq/ufcSaMQ1I5E0SwsGC3aRvtj314S1wCea57xkMAgAkIT5VZQaCrJB9
	Qbdu1QqjXw4TaYRb7fww1qgEYvJ6mgBnIxMjGm9YpSnXJpsOPkh0cbgP5F0CJxrZRUfRug7kVz3
	Kq22EGQpe+yYMD+a1vLpn0un9Q6yyokmzZkwHYka81hOq+Rq84yIJbRTd0M=
X-Received: by 2002:a05:620a:400c:b0:7b6:e126:3dee with SMTP id af79cd13be357-7c047ba6a15mr872258185a.3.1739211276663;
        Mon, 10 Feb 2025 10:14:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH694zT/AL8ajW8ob7MlxOHOkZKvYjrGkifYCW+Fli8g4AUIOJ8m7IYZe/jiaizLeE3gb6okA==
X-Received: by 2002:a05:620a:400c:b0:7b6:e126:3dee with SMTP id af79cd13be357-7c047ba6a15mr872256585a.3.1739211276298;
        Mon, 10 Feb 2025 10:14:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de5e6ac118sm5184734a12.17.2025.02.10.10.14.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 10:14:35 -0800 (PST)
Message-ID: <3dc16129-6f1a-469a-a4fa-ecbfbeff53cf@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 19:14:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-oneplus: use guard pages
To: Caleb Connolly <caleb.connolly@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>
Cc: "Dr. Git" <drgitx@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250207151706.45031-1-caleb.connolly@linaro.org>
 <85c31e1f-20bc-4e48-b179-e44ee8e1f816@oss.qualcomm.com>
 <a22afa6d-18de-4b83-ab08-6b23b9a1d927@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a22afa6d-18de-4b83-ab08-6b23b9a1d927@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: b7YYeQT_qmIa1S4UQzPIlLGKwQgdIIpE
X-Proofpoint-ORIG-GUID: b7YYeQT_qmIa1S4UQzPIlLGKwQgdIIpE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_10,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 mlxscore=0 phishscore=0
 suspectscore=0 mlxlogscore=871 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100148

On 8.02.2025 12:49 AM, Caleb Connolly wrote:
> (resending from not a mobile client, oops)
> 
> On 2/7/25 21:20, Konrad Dybcio wrote:
>> On 7.02.2025 4:17 PM, Caleb Connolly wrote:
>>> From: "Dr. Git" <drgitx@gmail.com>
>>>
>>> Rather than manually define the guard pages, use the
>>> "qcom,use-guard-pages" property for rmtfs.
>>>
>>> Signed-off-by: "Dr. Git" <drgitx@gmail.com>
>>
>> I'm not sure this ID is acceptable
> 
> 
> Linus & Greg explicitly allowed for aliases previously. Patches by "Asahi Lina" and others have been merged.

Correct, however the trust is put into the maintainer. Marcan et al. accepted
patches by ""Asahi Lina"", as they had enough confidence to put their name
behind said contributor not being e.g. on the sanctioned lists.

Konrad

> Ive spoken with the author several time about this in the previous years and they aren't interested in publicising their legal name. So the only alternative here is that plagiarise these patches which I didn't write, or i have to carry them forever downstream...



