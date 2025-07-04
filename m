Return-Path: <devicetree+bounces-193055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD01AF9106
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 13:06:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B292568384
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 11:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 971FB2C08AE;
	Fri,  4 Jul 2025 11:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KEOiVfWe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2558226CF8
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 11:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751627179; cv=none; b=pOwcsQ+V9+tPnfGcCa3QLjgZNFVCMsMNuOkdX0YgVCQWpPs8UEo5PC+AVH9NmsfOmJ9afT0XQ0Ilp6fJrs6yusxaGfaR34MTgHc4IkkseYLrLm4IC5fJnoClV0oMEVUtU+EAp5NztBVm/su5Ddda+Z2pHLvtP979kQpIDnc7k34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751627179; c=relaxed/simple;
	bh=k3yRpHVV4mG8PD+9jKn9SDf4cJFDmVdprG2GMo1cjKo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=opJAqwvIS+qm+HFMm6szm4pSR07h60r3wHpZs4/ksCWK7fCeJ0SnmWbdY1zElHq0v9Fmtr7fDrObSvJ2NmDBZPbbwE/vUNc86am8OfY7zVOmTVLiTQglUrv48CcyPUGRP1iSWnpltgUkyCOFTRC9R29bv4kr6Wg10j8n8XuVTEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KEOiVfWe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5645OcHJ018563
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 11:06:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2XxqMM/RSUTF2mZkG2gocViLCUQzGXcwFWZuP+ol460=; b=KEOiVfWeA44SOaKc
	6xYZn8C2V3e+4xKSoxAAbHrk58XEX9tJJOKUl8s64JK5RUgE/AAqRWONcvhPBOdQ
	hmrMgLROzm4Mv6Ca4LCOkWwop1V3Oyf0WV5lJl73s7yHeFcM/3AReTWNYk6qHqgQ
	TeFALwk5GfIJpbaK/QB392LjbHHSVISiCk6T1V+61HoBPTUwCa6isi2WVSMGf8oF
	UezQGSf17DhbDnaSq8vJnL/WbdIdYcMyYMHUXywvMRbQLuJNCOeSh8JB74nUEgy3
	c40wF1Y83sy88TSPyckG9u6irCEUJi0B5O1TGop/4hm5ZnhULOXxnkRQRgvP61wf
	d76bSA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8fxus7e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 11:06:16 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a5a9791fa9so2183321cf.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 04:06:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751627176; x=1752231976;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2XxqMM/RSUTF2mZkG2gocViLCUQzGXcwFWZuP+ol460=;
        b=BskMgQOtckolidgh9tyRxCYxg46ygKuCQlyUb+N1Q8npGy8S5hXDV+N6Czt7Ug7sFg
         4dli0ESknWb8ejUdoXKHTt0nHezZHFTVtE0qf8+0QiSsa+SGu6Nbrn0TnUJfT8nvutLx
         V3D8bmjvrYs1pPclB0Y1qDPxdCZh6JmFRsl5oK6/E0vh4jhLlLIejqM+QHov1Yog72i2
         Y2mEqaA7A5o8Ii9AtJLGlQtDJMj5VFiw8R/m1GzS9J5N962Cwpy0VSY2PIdSvVube+pD
         LNxPkKwgRv7lvrl7MkpKR4TFShCbOT5N2JIegmOhxPKcYYVxdBEkiwALbM8DjST1D388
         2GKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbG8s8ODxjSVRy6ruaYhf8QPBhkpIqcNu7IEKxNKUGZxbW+Ss3RMZ7XcxGn2zbAI+fwLrgkWunstRX@vger.kernel.org
X-Gm-Message-State: AOJu0YywdHUNXnYB66TVrpiol+kxGGS+bOvWtewuieNsjvrXh7fUpkS5
	wKp6gRO6tSCbtzm56cSxJZ5CW6kFhGgNyi7x+X110EoAZvWqJMjKYzW+D6TR9rLgu6iMY9kxMCr
	tE0/LZF3VlUM5Ntk6RHaCnoEPcAlLxbdD7vMZDZW606S/l1Es8L85mwPJ91txsdCg
X-Gm-Gg: ASbGncsOiqPberkoIWyvLgzoGaHDJK7uRQlXwM+Yj9yFo5cnFiSJbzkBb8utEenQkRD
	4pYU6QuAHFvMxPOBWLS5i59tsLwwcqQjoFWCeVrl1ULeLCM1Jdz2RPy5UrLrOOFrriVzMaSOdk5
	+fq+ewYPy0HrLXSH/YnW+zSAczxLUP6YMexVimEZg2tfPBczKxSCRHn1QTVsPQSzsKG4pQMq2np
	1tUd9W+dJtCgZ1UL/4XQ2N+VLJdubeiL3POTcUU8BIyYcxzugykUTmwKI+Vfbw+T7ItLo13qCcC
	9FlTj4FeTd3FospVVbBvlh1oO8vqXaCcoJOwilspqP3zMtVS8+iPGk2aRFH0Nc3IpxIQNCUV0Q1
	L4AC+Lw==
X-Received: by 2002:ac8:5fd0:0:b0:4a7:bed9:524c with SMTP id d75a77b69052e-4a9975cf1eemr9429621cf.11.1751627175935;
        Fri, 04 Jul 2025 04:06:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEL00AfasMKdltGMxGM974NBZd0imq6S1Dc9fbvd0ZKYoSfNqzbgVRMjgXDHONPutQiSOAFdQ==
X-Received: by 2002:ac8:5fd0:0:b0:4a7:bed9:524c with SMTP id d75a77b69052e-4a9975cf1eemr9429321cf.11.1751627175516;
        Fri, 04 Jul 2025 04:06:15 -0700 (PDT)
Received: from [192.168.1.106] (83.9.29.45.neoplus.adsl.tpnet.pl. [83.9.29.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b02a23sm152666366b.112.2025.07.04.04.06.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jul 2025 04:06:14 -0700 (PDT)
Message-ID: <0e13833f-fc0c-4bb1-a1e4-fdba07c50768@oss.qualcomm.com>
Date: Fri, 4 Jul 2025 13:06:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/11] clk: qcom: common: Add support to register rcg
 dfs in qcom_cc_really_probe
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
References: <20250704-sm7635-clocks-v2-0-9e47a7c0d47f@fairphone.com>
 <20250704-sm7635-clocks-v2-1-9e47a7c0d47f@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250704-sm7635-clocks-v2-1-9e47a7c0d47f@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA4NSBTYWx0ZWRfX3tUfFwmzoPuj
 v5ObrJcN7P5uPdjF9ALFScVuT7+hK703C1T/z3erFHrfjySnow3pwNWGUI5n5dfD0NqwR5t7a+j
 sWbmvC9RFVPqGNd5gK6KSSyLw/9kDXzRZ1eLqSPd/JuP8upH0AciIdkpvClBFFRfxhavES4zV7G
 cHrWHhvHyls3pP6+Fi9nvIFzzOzW1H8iyXrRRBqTgQTTS3iywXVzZxN2Q1km+Sn5p1doFzRUuiv
 8d5VSCq776M34wFgOCEtN1EO2mFuE6VxcZjX+oWFcN+aTPh3wGSDXEWENW5a/21DK1daOKoL3R/
 +VUgQRZClGZyu9GAtf1V9YRhHwro0u0ooizLqWukmdfTmSgEhzIP2q76FMwEJ9DahKFBZyEHXEY
 tvDSVRD1OJ97zCer1xxaKsbbs4Y+axXCvzZk0F6X1ug2HU8y2N2pOffHxWJpZC3QKYuJvWcN
X-Proofpoint-GUID: ENGmVLNdztl44bYHBcgKecW2r_TnqA-w
X-Proofpoint-ORIG-GUID: ENGmVLNdztl44bYHBcgKecW2r_TnqA-w
X-Authority-Analysis: v=2.4 cv=TqPmhCXh c=1 sm=1 tr=0 ts=6867b5a8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=qmfFy4ndMtQ753Zl/n/b/A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=oQRPDSM0WpIYGLKzx8wA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_04,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 mlxlogscore=928 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507040085



On 04-Jul-25 09:16, Luca Weiss wrote:
> Add support to register the rcg dfs in qcom_cc_really_probe(). This
> allows users to move the call from the probe function to static
> properties.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

