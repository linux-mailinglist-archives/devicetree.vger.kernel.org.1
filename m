Return-Path: <devicetree+bounces-200311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 58180B14137
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 19:30:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FC2E17D83A
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 17:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2936521ABC8;
	Mon, 28 Jul 2025 17:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UZASoHc+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD42273D96
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 17:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753723809; cv=none; b=dO3HLXqIiNXT2Ljke4IqSbvEtBFcFJfG7wznfhYgkyihhD3QR2+uaNsnp92FlWrcdWIVXkK+lG2WX1FvHG5qT0bUwA1KiGDg/G24FAGwgAiT6q+M8QWqpRa0t+ULpxLN3bFiHBc3gmqH6TCSbFwnzkzvj+yw7/LH/BSygr9N6kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753723809; c=relaxed/simple;
	bh=ap3iX8dO9NwUbqcsYbNIAHLFNJiaq1UkawSUvmYP/N4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bCo+3d5YavRXhhGtEbG05iMvsHl3Zri+nPbd56qnbjU8Eygrfs0sU17n0fDLNYdQ4WReR+MXhlWZOqm9+HPBvzBDUJOYX8RFgiO+PhcUw37cwjeyQ7/6ZVOkJZAlF77zaaIrMOXJvVji3P/AehScpDMqbr4ucf/4+IGOlsR4qeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UZASoHc+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SAlVOY014818
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 17:30:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V8baPmk3whsruPHJmlCGf4Ss9uEKzwpKHVAYUt8BpbQ=; b=UZASoHc+SxkRRfo6
	SKKnmKU9pJ6aDRSWmpmvwpPI8ca9lBgz3kd9g8gTvRnCedNho/yWlLxfhXPjdBT5
	Igaxj12C5jKaUAz+HVZZhqrb1m1RSo3G/xzVD3a0m1/c4xlbA/wmf5jSbI70PSfZ
	9kqaUPHbNe+yNLq/frlSUgQsyxbwiM4j/x+9VNPgfETUJvyibfMkwG1H0VxdXn17
	Ob66nB87QLCawt4zMdmxK/u22+G4uwkImp/B6xJ9KnafGsk8nGpcn27aCKcmQWv0
	k6AgUQKZlEeSkSg+sx/J4Qpihf0zJG76E/f+WsCy36BKeiyyVIiIZJOY+P8dk5B6
	OadqmQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q3xnc0k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 17:30:06 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-748f3613e6aso2830726b3a.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 10:30:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753723805; x=1754328605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V8baPmk3whsruPHJmlCGf4Ss9uEKzwpKHVAYUt8BpbQ=;
        b=XrmgLMQPMkt7YMSKEh7HbLIs0bzadhVrqkml/ow8pG6/YUHhOtAislQB3+1+XMcl9c
         /dlXQKbMqytDgXb/ZnSGwtfhuGDjP1vzQjbWbofswnSkq5R6+HTaJlDNVNbtUNJ+R36h
         wt5Jzi/ub+prQU8FJzS0imjoaI2RVFIefOiOvaiRGoF6WvJKf/5dzsC+goWT1W6C2enc
         kPlwJdprku8XD30Tk1re2QXqAdldw6YtsUCcoboWhU5mHZkIQMBIckNyrGE6zxvkqCdz
         rudYracQczYw3fSTUpYmptAHrHwl/SuY6VNL+fWZzT91Uc9QM4zjhFQrrKQT+Q++MwiT
         a/Dg==
X-Forwarded-Encrypted: i=1; AJvYcCWuUqxvKHDU6Dyu+Y+UR6Cc7UB3WU4fNCOLDLafyu4Fko7JOL62ia1y/F5wXk25Sr4vP2prcvWMbtfp@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6aoTW2JuCEnxwuAw16KPGG4dG525K/CxATZP2M9Ma7XumelpQ
	a/rRHuJRBAA5rvsHgVxqNxdWLB+scykjw5UyKgSy6m9WlI6vjwFSHGbWw6xt16wXpxC3ITLqt8Z
	7FSJOzFoHZK6PLEZGUm9A69iOFFVKC7qJwEKQ8EYFy+KLg+9JcgKszV8Vgf0aboGs
X-Gm-Gg: ASbGnct1BCn0Zltb4a0NHEsSFuG/VRl2X1J6etcvh+xlGqJbk+JNP8m2i29cI7Exv98
	i0+qxK3aM/rFeHbMGrU520tgCtn0lxiygJkIuVlUNB1fxo9UIaNpxAWYMHfvzBV2v+uwia6kP5f
	rY9a9cLXKv8r+D+fSoG42YA2/CwOtD7dqj52aQ3S9VDxOtWY1Y4kXVrjTUZFEBQIf+bvGI/QFFS
	p7OKe6cRgFOtwopsqD76Iwiuw1Xf/enz+m5XVfEiTRxrsfJr9wujK33bbkaLsvVstSaAfG3ZTQn
	DjnGNgnkkyeI01X5j2yNynbwXdLeGgkKUX6wgPBrjCP7By43P/1g9A/eCHvbkSnVqlQ=
X-Received: by 2002:a05:6a00:234b:b0:748:f854:b765 with SMTP id d2e1a72fcca58-76332282dc2mr19231300b3a.4.1753723804945;
        Mon, 28 Jul 2025 10:30:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE398ctDgkA+lnTPomWvP9p7KjWKywgEOmGumttdGwmmzLB7ZrDMrPxOZ4t5fZII29RkFNGnw==
X-Received: by 2002:a05:6a00:234b:b0:748:f854:b765 with SMTP id d2e1a72fcca58-76332282dc2mr19231256b3a.4.1753723804457;
        Mon, 28 Jul 2025 10:30:04 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.31.18])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76419d84234sm5910216b3a.57.2025.07.28.10.30.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 10:30:03 -0700 (PDT)
Message-ID: <0e160d91-3768-4fd7-b9d9-3c12af329fdf@oss.qualcomm.com>
Date: Mon, 28 Jul 2025 22:59:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] dt-bindings: clock: qcom: document the Glymur
 Global Clock Controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250724-glymur_clock_controllers-v2-0-ab95c07002b4@oss.qualcomm.com>
 <20250724-glymur_clock_controllers-v2-6-ab95c07002b4@oss.qualcomm.com>
 <20250725-incredible-nippy-sloth-67a31e@kuoka>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20250725-incredible-nippy-sloth-67a31e@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JovxrN4C c=1 sm=1 tr=0 ts=6887b39e cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=6kochd2Oe038OFj2Hkel3A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=DXtIfFKq8Z6Mi1RCEtQA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: jakkF4b7DODnLd7heugSzNr6jXH2eu_U
X-Proofpoint-GUID: jakkF4b7DODnLd7heugSzNr6jXH2eu_U
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDEyNyBTYWx0ZWRfX3FpFqeCEtYVh
 eTfZktOhVEhZ2jsGNgwC4TqtJV2DQZPZ23ii/dID+5mI2L6bneDUqM+Sgn6E0jDMJkpNUJm5BnO
 3KXlerqizK0nBRCtsJ4TYwY+f+OJhg22/7NnipdsxfXY08WBDH9TQ7OzJ5lbEuYsxc8mNK4IVPL
 WKDEgWEsLZwpUhU52zK0PVnFTRFkSD9qR5l25K7RhHmHZNJu6etprgDzlQivb2rpIiDqPFnH6OJ
 dHZwZ8HhZx7GL37uOge0XpcmQlBxzN2Eo65Gz30RLxm7wE+TPhDUBOp6mXZk90hHQDLQuptrGLL
 +MRGBJBn+7G/Pz1mtEi7Vs+Up/M/FBjSpOZ86mxv0TN5s6PV9686NCmHsXblgRGR5mc5M6njqju
 IdCNIj37Yc3xoDm/jMreJ4iD4+dkWHH4i2cRqhdciJ4CTenEoUu+Gk9tv/URyW5tdU5rwVml
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 bulkscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0 mlxlogscore=944
 mlxscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280127



On 7/25/2025 1:15 PM, Krzysztof Kozlowski wrote:
> On Thu, Jul 24, 2025 at 02:59:14PM +0530, Taniya Das wrote:
>> Add device tree bindings for the Glymur Global Clock Controller to provide
>> a standardized way of describing the clock controller's properties and
>> behavior.
> 
> That's not a correct reason to add bindings. Why would we care about
> standardized way of describing clock controller properties for Glymur?
> 
> No, explain what is the hardware you are here documenting.

Yes, will fix in the next patch.

-- 
Thanks,
Taniya Das


