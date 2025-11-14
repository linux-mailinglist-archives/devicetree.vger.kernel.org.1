Return-Path: <devicetree+bounces-238897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 53903C5F62E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 22:36:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 929B54E315F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 21:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BB4F35C18F;
	Fri, 14 Nov 2025 21:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GdzeNmUa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LZxrPiWU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CBFE35C183
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 21:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763156174; cv=none; b=GlJlrB9hdhZD9pqXubJTQr/CqeOgiNyyjlKSRUExTV5fM7gn3AqNEX9iaxuStuiMNFEbvDYWnUZu6SriBl27zCl3rZmCnURxyHJ0mOgMIkw9RZr+6WvgGe0NLyqf4SSw4/O0+wJGet2/0DUlsYXp047CJb+46D0BQxwea6X+3Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763156174; c=relaxed/simple;
	bh=n7fDD4yKBwatySQBmHtw3k00GR7BloSg8ghm20h6mzI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m8u/IAsLyCKhM4iDSTIwTHNjxjPAjgsExgiKe8aZarpx6pRGy99O57drdq/rbWhv6zTKqojT764rsc+6jk1L7CuievQeMQJ3mYwG2cpQHPcdNm1PfRSMeY62t0A3AfPuwg2ivpkwh7+UtRJODl14DR/FKPvnyyaQ/NfSJLi5NUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GdzeNmUa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LZxrPiWU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEIQ3tB517497
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 21:36:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dzgANvEqYOdK1XDzb4ZLBbFAjL/qcC8ia7bKN/ZiJos=; b=GdzeNmUaE1FiAVdu
	vHncRb+FF9LjK3ES1Gk4GRdB2YZ81j+RAvy3oyFWVh65QzTJ1dA9YUE0WvStStqU
	P2F6iaZNVZYqGd/6TnSJrNx63sQfJosriIJjhR5Rls4QXyG/X4fotzKR3yCJlQFe
	zAeV5RL7WUoFHcqChqFVgyxccgYELq4CSZ0E29OsLoiD39cnoVP1KtirFgdoDmtZ
	N5ueMKEmdEWx+FZCr3AShyt+ctWrrLcO8QlvYA0eoN1DDdvn/n8UxxfA5pm+coIY
	DBwGLhxnE7jHjELo2eh9vukKUws+ItWMPsqi2Xipe09ZN2Kr30IH2wEPiXRWhmUM
	2biNVw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae5r7sck2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 21:36:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2bdb2070fso34407685a.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763156170; x=1763760970; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dzgANvEqYOdK1XDzb4ZLBbFAjL/qcC8ia7bKN/ZiJos=;
        b=LZxrPiWUv4U0Vx9gpEYl0S1wn2rcCxEBA9u2XyXF5pUTtWZeH7eo/6XxvlotOHXe7P
         cva8KIsP0qdEi30nl1xHsQL707r5G1VzpRtGO/DIwFbDfrZYnLXQw/qk9rRTsYQhfq9S
         zd6/IvdX/xUSACQ2EtfJYqtKt5+4GaalJk8wJr5aBbJ7D9n5JZ4OfcOfdib31JUV0fqu
         Nx3+yqZnbugiedHbU9SbA0DEOhpUSPR5VMUwlLiRxgq/Yh1q8Z/ui3ZuEqFgcqcBRmll
         izjYmuX34Jmpk5Ewwtma3iBB1ommgg4dwlF7EJPMgR2TInpCWOXANMVYswORg1vGkIf0
         o1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763156170; x=1763760970;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dzgANvEqYOdK1XDzb4ZLBbFAjL/qcC8ia7bKN/ZiJos=;
        b=oDMu6yfIZ65zJ2POBclFAS5coB4I9UZZNb2xKHeb88sA6RdDn/eky1Q5Ne+Bs7nkbt
         NyqnS2U6YhGmZhgQ3ThFCyxniZgPiMNQS7pQbh04Rjd2vvDomsn53dVLMpFDYP87AqZ+
         aq3N9Yl6uoYI9sC8/klFQWHLWhvfth2tLwmVUBlmdbNOiQ1HOj0tsBVLhGSwXcbZFfPD
         7Wa6dQef8qlpuJmOOhzLlDR2n+kapkW2Fl2bglBosPooTSa+dZyfAalCKLo43eV1mQsN
         oV2qqRRIoUfl1TbUpcQpwiXsQdOlbIcBN86bOqpLy6Qvvo2B++SzrPDMFJw5CDUnXutK
         7Iig==
X-Forwarded-Encrypted: i=1; AJvYcCVbwRFhgs5YRtZGasxvec8v0gJA5sbtpDuS2FeRuIG8XWo2O/pMO6S9ZW6hTrCfvYc8a+AWkklIMJgk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+hxD7lHoJYi3WUCRfGc5RvAFxMmiqMqlDZ8e9Q+2vqxM8jag3
	mQIS88NT0lFa47rqT9M1uzjwQkNAEfL7J0Aw3+T1/sQ2kejk2sc01iMAxQvj4A+rd2+NmGh7TbH
	qVN7o0tv8pjg/MItku3xs6Gw26xYrNX3bGYD0qOBmJ8vwexMaWvexHOFixx02uzsU
X-Gm-Gg: ASbGncv0Do63L776+rBLuHv2RNwuoXHQo6xIXfSJsuqueRnWeGOvHx/Upt4XbY7IoIN
	jASmwTqZf//1EoL/I8lcjb49I1NQgm1sDfNnU1A2ykKjX7yJsrXfqFrzY5/wpgm2pNLlxC6ADdw
	ho6EGQTxIXTeMuK2u8K8mwADYu9Z3NxgUQwDNqywUasKCOkzktsVKC2gbrHAMY4IPZXJkFnxej+
	skCJoY8Vu8LwFK5HCuFmqQS2y0pwyIPbLhuYjd/yVJvIYQ0R0BRh5+r0dxzQpdv5Uu0mPeneZ/C
	FQt43cnnpfODjAwz4ULvHUvzw7YyR/ZZOvJ8SrjZcfnWKMymOstVJMm5KP0/UJzzheVvwrilAQx
	h1SEIlPxyrQCmL5IrP6kKkHqi83spo7gVXYtbvcL+zomz/vnnJSFBNMdU
X-Received: by 2002:a05:620a:1727:b0:89f:5a1b:1ec5 with SMTP id af79cd13be357-8b2c3385908mr429818585a.2.1763156170079;
        Fri, 14 Nov 2025 13:36:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHQafM5tfJl8iiOcV+sFNKjVsPnc8ly8ZPBXDu0RtuiPvMI04u9o4I6pQ+LRejF7OeHIqGjAg==
X-Received: by 2002:a05:620a:1727:b0:89f:5a1b:1ec5 with SMTP id af79cd13be357-8b2c3385908mr429815485a.2.1763156169578;
        Fri, 14 Nov 2025 13:36:09 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fdaf6dasm463726366b.63.2025.11.14.13.36.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 13:36:09 -0800 (PST)
Message-ID: <3b309b8d-e9e4-452b-b2bd-cee96ceb5549@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 22:36:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sdx75: Flatten usb controller
 node
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251114061553.512441-1-krishna.kurapati@oss.qualcomm.com>
 <20251114061553.512441-2-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114061553.512441-2-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDE3NiBTYWx0ZWRfX8100ATApCKY0
 hZ6uv7B70f0VQASWZEV8sU+ANnYJvucIDcdAgkFq9fm5tSJF5K4z6SHWrnALO1J7jHV7GD821yb
 zdHpbStRs1Z3xJhR1sCMS3ZfZWRw1mApeyInA3dgNBgMSDAXSP+Vej7CCSb0gfS/JURrFmHT8cx
 T7iM5Ggc5b2ard/+dPR7QxWQjOcPF5qaVBFlgYR4og7XsH9UVqe4T/Xo6WrPXi3HB+79L3S7twi
 jheINmKQnbnOimX+OwT7keVri7N4RkA5YDgH9pd2sLbF4lobp5YPWZmiQ0YRoTIqMYH2reOiM7B
 JokoTrstyWd7J6IKoMhgqkfXQ/xgc298ecQ8M9bHLYlXf3hTpCnmoeUuUcNAvcrc3w7vACsUSNy
 JB/OlGjfHm5FWqSNsDt4S+Ze4EWSOw==
X-Proofpoint-ORIG-GUID: B84vcd5AFEZksbzJ-2yqJnDJn08WWTKA
X-Authority-Analysis: v=2.4 cv=BJO+bVQG c=1 sm=1 tr=0 ts=6917a0cb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mfzWiC2-gXe58cy3zFUA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: B84vcd5AFEZksbzJ-2yqJnDJn08WWTKA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511140176

On 11/14/25 7:15 AM, Krishna Kurapati wrote:
> Flatten usb controller node and update to using latest bindings
> and flattened driver approach.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

