Return-Path: <devicetree+bounces-217224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7E8B5711B
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:20:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D09F189D0FC
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE3B12D4B40;
	Mon, 15 Sep 2025 07:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CCaefz99"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3892D47E8
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757920835; cv=none; b=COofrrTuDdjelDqmOYE6AkO0vL8krzYb0HdVhqlOPOxbdZPfkomXmnG3xtJ5UMY4a2NW9i6mubmFEbcoIWf0whHpjknIr3TLPn/5BxAQq6pCzwP9x5CbxHO+UE1IOcNC/XzuF9SoublQ8sExX7xbMZRCGQfj4q8TJkzJB8Kvig0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757920835; c=relaxed/simple;
	bh=dVTKoi0nGwph4owDMZBqgXHJGIwE/d/dtjvrxSaCKQw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b+GSkKMHqo+uNkronyGXC8UWiDS4HCJ5OdDQrf4YTNfODOgAxKJrL8dphqj6NgYh27e16VpPs4wf8BJ1Q2Ws2wqZIniWknSEqezvDkjslOGwhJNCIxeuc6obCAntTG5xFKFnJ7a3yEXNveSL5ANsUPBNAXgsT9LbE6OK8Al5U3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CCaefz99; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F7IA8v031662
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:20:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HfgY+NXWGqdv4i6z+h2XWxwWaOeFu+/MuSreRH2J5fQ=; b=CCaefz99UKypwGuZ
	1bIwdHUqk9YfkymVWXJ65kXP+7C/3DwcpbAfeQElEtHkCVrZED/wGQxvU7WWrBda
	8HTjLQKZZXciavoivsfT+PKlOGaDYLD2IeZrclwWUeVfieVYjxYJ4aHfGa6VWnBh
	Q2cBQMgGAMH3H9jLFgIghnaqnw3G3C3ZDjULIVrcBx7nrq+9JHz6d7j9XZpbwzKz
	0Nd8WAGOrhgD6Uo2hziGtq7qbN2iuJACnRVNQdmKuBpZRNx3uOpE+bn8PwUaTCLl
	vpsoSbkjyOFxfTTDjXCkVR6DLBF3llyTHdZj+clAz1scjC+p/T6h9PG6GSgTjGME
	rfBsdQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950pv3vbx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:20:33 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7802f4ccba6so1090656d6.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:20:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757920832; x=1758525632;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HfgY+NXWGqdv4i6z+h2XWxwWaOeFu+/MuSreRH2J5fQ=;
        b=nRArUy+FMXl8peWzIo62+UQ1iCC6Cg6mL0BiBePpCmWaC4nGqA6wdNDY4nRfxfPOn2
         wyCmzZCsbzmcKsksW4EySVOyP7QRXNaKo+0/8KA6R8i55Ip0oi5lIkkFa9wxm/nGfSLU
         HgSGQ1YFf0g+Rlw2R8skD69vsl8Vy/GxrNHgrpwu0wghovrotVEHjM+Ced3NNhmQoHtC
         LmYZUZHk/WGizj6ysdIzFSRsjigzpq0fvxW5YZ41QbcpxQx0Li7lo7kp/deoBhat6dwq
         kCdNmxLRkK83AgYxSbBAGqTyKXJz/Intka9wQaxeHMetVpvPIYoO57BJkRpAiu+gttHx
         JWlw==
X-Forwarded-Encrypted: i=1; AJvYcCXxzCtMnZxPFRH4bEYONAton75PWTyALVzpkyIn5mcU8vEPoF5VqsEE3ZS24HASD3VN+nIMEOKGxE+9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqc4AySSAwnoy+LjvYexmgaU7Id4UelucjG1JvCXtVJjzcV7kH
	GV+2Er9R7+p2LPy/vghObpSbAv9+PoEP5u0kJ77vhM4WvL8Lo/MwhN5V6Awor7UwhgMTDB8Ihy2
	8zgHs+5Za2p9OznyHL1gbo7xEw4qZD0vjNEU2NwKuZdmbo1YxIi5CKjTjheMTadxHJyMd8o+w
X-Gm-Gg: ASbGnctY34hw7FvBKSCJ9aXSc39LxMJvPyZKYDkY9PUhQW3sxsiSvM6A0lBNoKzWiv2
	WHxWQClQ5GRTGZepMa15u2l6OeII7/Q90Z0TtEaQ22WGKoK89AXrzw3+5ZuYTYfQWXah7hc/201
	7RBgNmOv1N1up7aSloeMLaxrvtiQfYEiJCl+47He66CvWRJ7HjGWOEkll9WKDps5vPP6vPmwCY3
	94ie6ROLYUhE6mSSkYZheMnlVU6741srmTtNUQiaEI8wrEBGrULRbPOo2fHJ6ksuBMnCXqKzrIq
	7RXRt1BD4cQG1I84x2jDk3R4gnrt1ucP70WFEKD2abFTwEwE1riApoAnKX57bmhMSGN2nZAyM+R
	I6EZYLPQPAJtI8Aihxk49zg==
X-Received: by 2002:a05:6214:ccf:b0:765:b3dc:a356 with SMTP id 6a1803df08f44-767c5af19dfmr81854036d6.8.1757920832198;
        Mon, 15 Sep 2025 00:20:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5THJcwEy/hZKY8CARUZgNH4SQ3f05GlZ243mDpvwFVqlZXg8+0mC8pYr+PWlIiNDzDZHdLQ==
X-Received: by 2002:a05:6214:ccf:b0:765:b3dc:a356 with SMTP id 6a1803df08f44-767c5af19dfmr81853766d6.8.1757920831450;
        Mon, 15 Sep 2025 00:20:31 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62f41fd18a1sm1327672a12.9.2025.09.15.00.20.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 00:20:31 -0700 (PDT)
Message-ID: <d2759bd4-2d31-4feb-a352-4df8ebc609d0@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 09:20:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/11] arm64: dts: qcom: sdm845-lg-common: Add uarts and
 Bluetooth
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250913-judyln-dts-v1-0-23b4b7790dce@postmarketos.org>
 <20250913-judyln-dts-v1-1-23b4b7790dce@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250913-judyln-dts-v1-1-23b4b7790dce@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: kNzhBJukdNGYE9P1X3GE2cUFp0HYuCnC
X-Authority-Analysis: v=2.4 cv=PsWTbxM3 c=1 sm=1 tr=0 ts=68c7be41 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=Gbw9aFdXAAAA:8 a=BZiE_1MFHw7nqvKuBP8A:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-GUID: kNzhBJukdNGYE9P1X3GE2cUFp0HYuCnC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyOSBTYWx0ZWRfX6sAtzQzQvqTl
 tUn/HMVzeiOSBzEd3oRAu/lpodiEOSTtVe8WsE3OnHwaF5TdNcuBw/RNTJsib+HNM42V13e2QWg
 MGaYWWzA9zSc8Bm6yIic40//J0SFxKPRUyI2nyF/rBy7Brgh5hOufkeQVnbmSv5TplPIL4HrpWx
 jetuvzWlTnEJk30w9EgZOVEW6AI+qhPXA8vKfHVRzsFy8H0XBuWuF0B98XbFF1ebF2uN5D9K9pt
 xqmXtU4SWOfmSFfGTC8g2/y+jF+87wy2302RUV3bLSMCv5OL+KF+pWtcYG+COm5KPVTqG47og+g
 a4m6mH3I5291KimAycqKUnDz0MXGLNG0odCBa5VIk7wZ/MgDte2T95OLK5kBrt/18A6a3eUANuy
 54OGlWnQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_03,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130029

On 9/14/25 1:56 AM, Paul Sajna wrote:
> uart9 is debug serial on USB SBU1/2
> uart6 is bluetooth
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---

[...]


> +&uart9 {
> +	label = "LS-UART1";

This is what the name of the output is on 96boards products, I
doubt it makes sense in your case

Konrad

