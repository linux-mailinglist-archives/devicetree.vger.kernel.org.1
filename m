Return-Path: <devicetree+bounces-229352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F425BF6670
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 14:20:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BD61A4E542B
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 12:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A947532E743;
	Tue, 21 Oct 2025 12:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kx4/jx/g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4361178F20
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761049056; cv=none; b=gMU1plUCq8PlgaBGGVJessVVzjz6h1zaTNtgW+L1Wo2A3YWQZqYAu9Z+KBmd373PaoeFxkBM1XDAGn+8LH0K0+qzYVSFoSzejVAsbMKWVR9rXcWTwKJMsYXoEvyJ8mivK4Nc283GxBio+BRgUrWKgNfJnNGGu+x1QjWa/9wydwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761049056; c=relaxed/simple;
	bh=Ik8YTK9+li2kctsxdsSAX5UkwYsN4owKy1yNpUgTOtM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O8YQEG55mEvOOe0pZzygiwfmteaKR6fXQNsAsg93C5gZZE8/zZKI1WLjMZrVtniDAxHB9j5l0SLep3/SKZyQ0rwubRGDGG+3Q4WV47Mhg76+cYtgHXmxF4m7OtkmhpbsX+Y3X+pR6lJxM5YpiVTG8TE3it89R2bE9ovr37WBlVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kx4/jx/g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59L8A06K019914
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:17:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	62ij7qlH0jAbXbq+caCTrSlt+OeWrvirXMKUpKG5id8=; b=kx4/jx/gddJzriWr
	YETzYOVX786PvozAsP/T4Wz0FOx8akCyXqVgh5Q7dVI9f9K2ulbuUv4FKE3xhdHS
	cWXt/zrzBUWrlcTK0NHwzyeIYFcV8HPjrV+R/ojxtCu3MiFTFV8VS/aQT0FBfY8p
	UfeYLQZQ1kplAWEuGdy0ptYjmERUddoV2/kXuh4cJwCXlC4RsyBT2bR68L/Z9HET
	K6H89njqOkq7x+GQMrSxPN9JoCCiiqGvWscljfeGp009COA5zMeF/gtmbfAH7tFK
	MJX7SAEZ8AFP3tOAf3KgrHvAEwgGGMi1FwrDkkpQBmGOsW3e5oMKwonatNsWa+XJ
	6U7FSw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v469ghup-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:17:31 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87bb67409e1so20026246d6.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 05:17:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761049050; x=1761653850;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=62ij7qlH0jAbXbq+caCTrSlt+OeWrvirXMKUpKG5id8=;
        b=kLqIcvvTVV278tv15g3yZCxP3uE9fbKDUNQvZs4yjNcVlktvLFfkH+v3rRQ+RxNRuY
         SBNj7XHCSxWhV+Ub6z9vcEY0DCh2cgkMviVwRnUb9UWfZ2kt1QKMwRyYVuwnk5W1lio1
         TeRWdVzRY7ouYDH98f15AQay0NBfziej9gr3Y6Uz2tRfgCMACfMUlW+ZsrF8Oxjf52V2
         Z9ZuJ/FSI1MtpjGV/YtY5myzU8Nzra32ythOJrGSsXxPzKAoivhFod8HPchZq7KuUw9C
         e00PfAKztsG2PBL8q1HSXSJ+NJrQ4xMmOLZxXr+iYLgyCfmlgTQXiC98MJtPYSYB9cIm
         E8ng==
X-Forwarded-Encrypted: i=1; AJvYcCWccWAUdAFkxQeHdsbouyQ59AJlKsfKPzzCDeqHM8tAByO4Er7sn4/x2Dn56aRnDYLn5oj4wYkb9qZs@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj6FjHZrF4Qod3Cax3Q9UfDhHjSARceDG/C3vSJPDzdGYu54zi
	E1eT2tzYFenzY2jCmz2dj4aBiwaQf5npoUUJW9jBPcDbSBLNXex3HrPAx1dBpeDD3OovfAcWajU
	M5krK6tx1CmNTALQyNJvR2OUZ+xwhY8Xm9HmjpJoR9GLJHlUMS3q8yruprG2V23hJ
X-Gm-Gg: ASbGncsRWgSIN0RM3NnUmkp7zlG5Co0zqRQ+zQ9kiAE2PVKs08IeCTKySnQMV+YQZIB
	um/QUS44CXxxZc6D+4dDTqBM8qyJTBJsNSMyMNXlPqYvPrsIy1ebpZcutIs0h8Qashzl1uro2mM
	O4rq7qfXFwZ8bzh5I/itgV+gfq6Xat7Z9rX4wNBOQIkp9ep6KrevroHm3kGzQNBgMUt4TbjhoEp
	K8WxD017CUFrlUIdxMhllx3oIKWv44YS3L8ml2AO9wQBqnmTNsV7kQufZ96XzxbqolHcHh7+t+v
	tvUff4O+ttMdzHv3aXmWew89k2yO0Fd0HetNlODHl5PIhsolfuBAlpPrpejmTVsaDq8BZfOYSzl
	y9g39EC5MD8fBXffBZBabKMpZBqVAqgYH5OIQ/85kDGBxlf7yvMYR1E0J
X-Received: by 2002:a05:622a:180f:b0:4e8:b138:2a0d with SMTP id d75a77b69052e-4e8b1382c71mr98419641cf.12.1761049049788;
        Tue, 21 Oct 2025 05:17:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9wVa62A9QqlswXTFOtj5hMm5dxSnWe0OKPK/itVnOD6rHNI29MyrzCPqYx7/z+6jDyT0yqg==
X-Received: by 2002:a05:622a:180f:b0:4e8:b138:2a0d with SMTP id d75a77b69052e-4e8b1382c71mr98419361cf.12.1761049049358;
        Tue, 21 Oct 2025 05:17:29 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c49430145sm9225871a12.19.2025.10.21.05.17.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 05:17:28 -0700 (PDT)
Message-ID: <e63dc4ce-8461-41f7-8dfc-3fe531d69f4e@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 14:17:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/7] dt-bindings: display: panel-simple-dsi: Remove
 Samsung S6E3FC2 compatible
To: david@ixit.cz, Neil Armstrong <neil.armstrong@linaro.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding
 <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
References: <20251021-s6e3fc2x01-v4-0-5e3ee21c688a@ixit.cz>
 <20251021-s6e3fc2x01-v4-7-5e3ee21c688a@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251021-s6e3fc2x01-v4-7-5e3ee21c688a@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: eiDnhwDDe4gpaJbmjvV_XTY65iH_WiUr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMiBTYWx0ZWRfX5h/uvuEFpjeR
 x1wRKsxz2d2H0bqP4eYPa/zLAU8seAFQCnwjAG8uFNUBceUzlvpSpKYMEqYfsZOeFAjOpcuQLg8
 L7bcMX+XfsIhdLUWWEQoUCC3jdO0tdQI8eAwKR2kyZg4Mw9Y82l7ampIHBc3JgvX93iZGCYR59R
 +gYsWYTnDAD4CKEgUYTetB7xzPz8z5zsjYfAtx4LIRdjHtFtww+Kt459yEDcXvuu1MlAdwJWMTH
 o4KDqtrFzemfYnFioh6nyyp5RP9JalV3t94eL0cKgLZ6LDV9J7GI/jPhyaUDBqYfezlXjXnCBYM
 GpzKknKMTXz8Q0XE+XJAUKo4mJ15LMkLugRAzDRVhgkIe5+VmWvuggH2U+FZxQwqqGLRZxMWdvn
 lhOdhcQWquwhWCPFjPxxYv7fyhlb2w==
X-Authority-Analysis: v=2.4 cv=U8qfzOru c=1 sm=1 tr=0 ts=68f779db cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=BITFXGdF7uWLIDnxD84A:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: eiDnhwDDe4gpaJbmjvV_XTY65iH_WiUr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-21_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180032

On 10/21/25 1:53 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Samsung S6E3FC2X01 DDIC isn't Simple DSI panel.
> 
> This panel has three supplies, while panel-simple-dsi is limited to one.
> There is no user of this compatible, nor the compatible make sense.
> Remove it.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

I think you should squash this with patch 1, doesn't dt_bindings_check
error out when a compatible is matched twice?

Konrad

