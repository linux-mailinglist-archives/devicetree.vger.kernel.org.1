Return-Path: <devicetree+bounces-149619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 287E8A3FF27
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 19:59:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13FB1189234A
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 18:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B5922512F9;
	Fri, 21 Feb 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="REPiqKEh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0762C2512C9
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 18:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740164333; cv=none; b=OogP0YfXlYO7I80GooIHZaGj85oib3DPhQ2Uy1jFP4ssm8E9UlM6it/J0LnLcEXQ+WIkQ0CvrhQPW6wnJ3BcYmvAE5DUl+pZYi8vKGhTX+XmnDmKx4n9aCt7CpoqBl7ks4FzE27bUA/4sBOIpMQYC1ZqV0Xl87v234k/Vb9XT+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740164333; c=relaxed/simple;
	bh=cAHIOldwwFNo/wAZhPUz57LxWBpil7EujySEEBgkP2U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vAQYcEB+lemYQgG61BGGA+EZ95/bt6Zyw67Uqi9gAVwQZ7J0Dk8ipMD9B52CwisbSknqHGrWFZM+RNGQsBWsbDk2AhzFXjE8eL7y4ih1nKFWn6SWs7xqHvqmEDsjrFwiHOoX8Lsk/xYjhOqbmSi2E8lzOwlXShlbNgp6GNmST14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=REPiqKEh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LCd9O4031600
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 18:58:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EzV2o4eyTRfwYhyLT+w9P16JkkzT3HqrChTdrDEUE9U=; b=REPiqKEhhs+LdFQY
	hSz3lOjsRSwlCbqBi9sF1End6d7GNX9uK3QSB0bTU5HtJgJp6HU69u9f6Ty47snI
	Na2NsjWKUnRUof6L3c+4AK6ue+gRevvzw+i7FkXVKJzGgwx4Mpl0fSeYHj2swm1a
	3NHAMWO39LSI7n3tSmzZv42NURMVNV91VCNolbTjRX2BnybiIi7t1ZcyaGugHl8g
	lAYLrMySLtcrM7mjayAgpWaQcOKB0uV+SNGfbVIG1QPUqv8Rlc+qWSEV69QCs0e+
	SoLEvfVxXfZp4t0Dxhigql8jsZRcD1/Oxs4g9zXQ0xz79MDspbrgiG3ECMCph80H
	rJUMVA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy5jw7d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 18:58:50 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e662a02f30so5573976d6.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 10:58:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740164330; x=1740769130;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EzV2o4eyTRfwYhyLT+w9P16JkkzT3HqrChTdrDEUE9U=;
        b=UAFIT7N+DfhnHNMVaBG/eAezpsQSx8rn62EzR/o78tyXqUxi/cXnrto12zXPawe4CS
         HEgScvLujEY4daNGUJ3H13uPoKh/HmkMMmZPWhLz2Jzw7UqSWRieH9mfGGqG207T9ILI
         38RECOGk8LX6n79SPfTs3tguPch/BPNk3ik/j2bNE+WGVNtHy8dxxAeiio/qIglkk0xd
         DNVXkUppPzKuGt/l4E7zWkbv7Fd/7hx32ttwVK/0aiXJy3622t0yv6RJWLBsiazRQ8ZX
         3RxR3qe5DT26+VI+OxDhHHzD3YGl1oHT/PBDFO4LWErWUVKUZFCvMMX4F5F3qmRnejtf
         yWOw==
X-Forwarded-Encrypted: i=1; AJvYcCWMTFtCMLw66YYiztXS3Nfn5JzYsCJ5w6yjL+Cx+BT6Y0vKk6gMLdFzhNOrHcbVk8/O3/cWB/1ICfv1@vger.kernel.org
X-Gm-Message-State: AOJu0YyNzWrQpkWCEbQHjRIeEnSyb5hv0XTGEwZidzjbznRlEELzG67y
	4PV+U5rurxGIriVuIxUX1Yi2FnofrH+WATV7gXthJksQGoNLpMnC/DgbwFVlUNJjZEpo1oHXRCf
	NDtDsgASJft7zms73G8ms52UutkOqkwqhKLI++l7E5enJspBCr9BxIEsHfJ1O
X-Gm-Gg: ASbGncsQdg7O3BQ7KP3Us0kuSdCINEKAGul3fVX9KfnPtDKLJT/qPAQenCZq+GOo8GC
	ZibzTmhkYa4LBR2FrxB8J1hRbnE0Y2LUVPr3toXbEX/rzGdG3ZCC5p6VLGq9tE+phvxQ5LOHCAU
	vRkbaNE4CYRr5CnY7JVb5sfqso4MXQGLWmB/hnnFAlYXoGba7oTZvw2w2JrmxNc6WNwJ4JRZ2Jt
	iuxBIZRYTc/NFF1/ygwmlH3j7FgcMfNaRGbryJ/t066GAvqKGI80SiNwm6F4rEECPZdVJqBwzI4
	qrqjpk28gzdwq3+gKylE+PYxJmPwjkhi2nP+GqxPhfho4Ak1+tOeOzQeLmPUnav/51RQgg==
X-Received: by 2002:a05:6214:e64:b0:6d8:b169:dcd1 with SMTP id 6a1803df08f44-6e6ae9ffd9bmr19075626d6.11.1740164329998;
        Fri, 21 Feb 2025 10:58:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHDMKRFaHc4D4Ja2PLy4N1h1xcVjFyYawh08UFrwgsskejYut5579S4YNCx1aQqtDmho2zVhw==
X-Received: by 2002:a05:6214:e64:b0:6d8:b169:dcd1 with SMTP id 6a1803df08f44-6e6ae9ffd9bmr19075416d6.11.1740164329513;
        Fri, 21 Feb 2025 10:58:49 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece271223sm14404266a12.59.2025.02.21.10.58.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 10:58:49 -0800 (PST)
Message-ID: <103f33ed-595a-422b-ad13-13d9c1f0ee78@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 19:58:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/1] arm64: dts: qcom: qcs6490-rb3gen: add and enable
 BT node
To: Janaki Ramaiah Thota <quic_janathot@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: quic_mohamull@quicinc.com, quic_hbandi@quicinc.com,
        quic_anubhavg@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250221171014.120946-1-quic_janathot@quicinc.com>
 <20250221171014.120946-2-quic_janathot@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250221171014.120946-2-quic_janathot@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: w5Q9FiQsmZupG97r5gnLMlE2CL1uiR4d
X-Proofpoint-GUID: w5Q9FiQsmZupG97r5gnLMlE2CL1uiR4d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_07,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=868 spamscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0 impostorscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502210131

On 21.02.2025 6:10 PM, Janaki Ramaiah Thota wrote:
> Add the PMU node for WCN6750 present on the qcs6490-rb3gen
> board and assign its power outputs to the Bluetooth module.
> 
> In WCN6750 module sw_ctrl and wifi-enable pins are handled
> in the wifi controller firmware. Therefore, it is not required
> to have those pins' entries in the PMU node.
> 
> Signed-off-by: Janaki Ramaiah Thota <quic_janathot@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

