Return-Path: <devicetree+bounces-220696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E7AB996DE
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 12:29:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C16D71894DF6
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 10:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D75C82DE717;
	Wed, 24 Sep 2025 10:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lDs3QR4+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4563A2DE703
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758709752; cv=none; b=FsRmyLIDHxAhgdwwd8wq8r0TdTFzGS33IBTc1NyF0+pIJNuDfG/poA/T8Y33MTPDiVIaUsH/E7vFxEbaMiGVVjEOOnsVOkfpOEpyP45+zz7D1ipCRLuXC3t/3IyoSpninlcZumleKNLjMbCZri657Kmfjf13qEkSPjAAXpHZlaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758709752; c=relaxed/simple;
	bh=/9hL9612Gn0CJSgidmnFRkESRP8UBsfv5LMScs4CM38=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SXzeLWdTfCHF9za6c53k894vNf3lhRnrWngNrgB82vR5nMmJRLks6eRW1Q8udj7iNUiE09W8CLEAa00Gvd0TSP/EdxtgFkfNPxkRKDN/hDSlWPjW5EJ3VgCA/60860KDXGQP1sw4TAGK51s96c0B1hNsdRM2Z4NIGvaQ8QY5bPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lDs3QR4+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58O4iLPh023762
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:29:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zjk1j5ULWEzsfJ1pudMsCTDGZ9oTBcQfVxDwzmzjuXI=; b=lDs3QR4+DKETWGb+
	Qf5XIKiPb7zV6rCF4dM9vt4xj8iNGH7wINBX+P/09KvG1bm124czm9571qRlr9Ih
	ueZfE6/WbZE1ldWRvafRBpExP1cTZSwlIJHsH8F9g60JsTUZqQhj2B69EC2JDcho
	He1T5vH4dpfxZ2pxE6s9KJPjvpXkP6SGGCYuNs0oL6JEvouD9nNy9UK3jZsz+6zT
	d2HPJGI18CVTFAofx3b+5R3iRza3HGK90RGM7kbV7iqMQDNIm7O38mZo43pS3il4
	0ps2uaawxqUT/4uYIXlEp2carI+LTFCaZUXkOHCnL04PzQy652nzhYoi8eRUx8Jo
	0C8+Cw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0ayry-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:29:10 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-813dff9671fso152448985a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 03:29:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758709749; x=1759314549;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zjk1j5ULWEzsfJ1pudMsCTDGZ9oTBcQfVxDwzmzjuXI=;
        b=uvhTE1qtRMi5bHoMAhAeWI36F2aF+uh+37m5IzAxPQy/lGaEBgTOSwPSrQndg6G55K
         ve03MzDZnBE12AE9otkKdfYdduMVLYbgqFvcXNCNwPThYPY6y0OunGOWKNp9/sGNSLQk
         qLWb5BFRIWLswDJQhDd5HQt/d6mg2bv1IT4bruEzqOv4tgoGexjlMtPgWksU9cCi5LCe
         +HXa9dCpyR/+OqJL2cQw+PgvvSRadMwom/lAUxLZmn86W/vfmvFCwrFSapBoy6dEkC6d
         n+y7jqID7UR79X+zNX6OvKZfiVHLJdUjjnvyRJ3FZpoUakkM+C2VWYhEjE1dC6XAfznM
         Z6CQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdyzrW3BPraZ6kNgHRM0L9O+lSClomQMoEN1odQZ+VfHuddypNOiMuWlCAcAVpGbqpiGs6+kHBOQYv@vger.kernel.org
X-Gm-Message-State: AOJu0YzlfPU0A6hgaYcP3pl2WqgZtWv4Y26Ska1tk49k8CDF00xly1Mi
	tWFisxG+o36OsrkgY3TaoXm1pBqgS0k7N4OXgOEVy0ytcP+aP6BUxnCiA3ECRMt5i6x9iAPSYB6
	yTtTo8KxtUAMDPQN7+fX2C8DO0E6c66wqI3PdFpYFrAZD2adaH6WwycAt1cADLkMc
X-Gm-Gg: ASbGncuhjAh+Ru5bG7riIpAnlEenxSFfZ+kwrmTW4cNXDA0FkPB8xvmef2JpTIqjN1e
	UZ5MHqGpgyDjxNlF9uhTNttuiu7uobCjhznWKeNa46cjBBYaZ/wCyOwM2HP2cKrEsFalRr0kktA
	oUsteIp0g6su77FhB5Pbdg5EwXiCrfH5oapkajd+aFLYbcIzYfQ+Yu2d0zfEv/O9ywGckhkqpV1
	RlfY/3fsciBffVMv0Sr3Ck9mTEXiNJsEl09DA939qXTh43mhFpZqrvk9Y+CJXWY9MG3tAdjA8rN
	jQ113HQoN+GmdtRCzT+cwLT6Fb0H+TCOqldrFVW8FiLbmWa8FpB1J9mj3SXTWcrkmaelYt7FQE7
	0QcxZHDwXeumYFKwPMQ20Dw==
X-Received: by 2002:a05:620a:9444:b0:851:b083:37e9 with SMTP id af79cd13be357-851b0833b27mr305214885a.7.1758709749109;
        Wed, 24 Sep 2025 03:29:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRzIWeKgyhxXr/t44Dh/z5B9dbWTC8JKuLuTfE3DKhzEiNCFnlBYfyCkI4J25I5SqB0lq0GQ==
X-Received: by 2002:a05:620a:9444:b0:851:b083:37e9 with SMTP id af79cd13be357-851b0833b27mr305212485a.7.1758709748562;
        Wed, 24 Sep 2025 03:29:08 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b290caba5a6sm935424766b.65.2025.09.24.03.29.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 03:29:08 -0700 (PDT)
Message-ID: <9edd7057-8330-4d1a-97c6-e9bf05dbb722@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 12:29:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] clk: qcom: dispcc-sm6350: Add MDSS_CORE & MDSS_RSCC
 resets
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250919-sm6350-mdss-reset-v1-0-48dcac917c73@fairphone.com>
 <20250919-sm6350-mdss-reset-v1-2-48dcac917c73@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250919-sm6350-mdss-reset-v1-2-48dcac917c73@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d3c7f6 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: HDjolqZD4Sh-uXWY0NZbHY3VtboJ96K4
X-Proofpoint-ORIG-GUID: HDjolqZD4Sh-uXWY0NZbHY3VtboJ96K4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfXybanAf5zljrw
 TONN1GXEiVbefMatAT1XngJPiihfNxbyXOR6QRhB7ypoGTi4GrImMYC1DBNUC8Yre4kbt7BR0OH
 sBeXbMBAOLh2FNlnX2gXYh7b4AdhSaLBWFt9rc1zjOadGh/jagLHpVuA6ylPczAGp+VMSLm3Pig
 H2BDALE5UsKwhA3KAo0r2+p+bDPUnDaApponMwaNPR+4QCwNcYP0kMZLFk+BurHYl1Nahzjj84z
 GHzpNkGYkdw9wsHc9TvPVIMFI9DmNSguYeZZaEfwKQyh99rNXkhtgG2Q4ZR1heKk7LjkZK6WCYr
 T2mu8z0gXXuyLG+quLTmOYbLIn6Q9aEONGyFS8VZFW8CF1+AQ2zKMDNT63jAZ629cf8q6c01v9h
 xUWNmp+V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_03,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

On 9/19/25 11:57 AM, Luca Weiss wrote:
> Add the offsets for two resets inside the dispcc on SM6350 SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

