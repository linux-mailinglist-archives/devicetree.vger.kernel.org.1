Return-Path: <devicetree+bounces-169586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 50612A977A8
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 22:32:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D22D189BDE4
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 20:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713982C2AA1;
	Tue, 22 Apr 2025 20:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qy8JDyu8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D842D869C
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 20:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745353936; cv=none; b=gZQ35DBUaFEI8oa/iF1NbGRsKWHndhtj1dVYQPYTUBTS+jBpMW6wdClQ7geeDaD6Qv1rXSeZqhxqP11mu41H43Ryd3eCz2IGp5Zhh4MvF4+LNNd3MOhEX3dqYJHEz69n9TTxMZasJKqEWrz2y5DCspraL/Ywg016ElG0mSDEYLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745353936; c=relaxed/simple;
	bh=e947s7vj9DgAZEwGThYJOnOY/ENq4ZjIinQ423qwLiQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q7PEmlw5FSEk3xQVdNSXzNyqpqkstZY+AnWC35FI7fXLqVp9xU+en2J7baHmGRlRaMhw7qYa9doMHKZh1Y5EN4Wl493Me9BHZaakrR7xdEz5UZmdKzawAXd6KGeqfJQlIE41nAIwqggb5cPPO/bl9f7H93Nu12f4awrNfXIU9KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qy8JDyu8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53MI6n7O008081
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 20:32:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p7fC+usINhtdyGIUDTo2++4styKlE/llRnmMJX05WkI=; b=Qy8JDyu80CYbPvtw
	GTGMzbXhTYQ+iSI4pRiVEcKB5djT6MIQWevPIX3khy68lBuQdpkq20po16TYgh8g
	wt/8+kR/B42urhicgpy9Ae9GTIcQjYZAHp0YitZLbdurIYslgpky++CRAVLjoGDF
	3Rb4fJrQ0DhzPHB+EBUKHpuIsVqp5kvm8HpSiUeof0De4KF3mxTg28WhfHvja7PR
	1TchLNtVxskBaQXCbwcrSuFBheeOtTvwNlKfeBZXDnOcyV32nuebMQwnkvCsuGbs
	apgyMQ/YVoeoq3komUzxBik2karBl6D30K+jwxPAilXHCD/CP/6U8ccryr0ru8u1
	v5cqPQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46416r17fc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 20:32:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c547ab8273so45835285a.3
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 13:32:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745353932; x=1745958732;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p7fC+usINhtdyGIUDTo2++4styKlE/llRnmMJX05WkI=;
        b=ptHepbdhcWDhiCXFir7hr82E/jg5F+byvHmNiLNInJBY1kgmzsyMc0qBNir5HZ9MOV
         cSZe+HY0SNP9/k3+fp3DZ9s0hfqBZKO3kxcpAUgu/LKHevLq3jIHu3zETx4fITcjjIKt
         KGvLjVDz/eXT0OeOUPTJ5l+b2mjQYr9tXbIMrStNOI5Ro3ge+kFpyw9YC7UHLDtakkGv
         PxLlRzq02vqCANApVmMxAlhP9BpEisGg/n0bmg1KrmTqkIqbOfkEEv+rLi3kE7LPnhjd
         bYzeDsKZiAbVKjlwiBlDecNqCDtaZVgLSaqKqf+NN5X83h7fvqIEtXWDu1v1y81ff8/f
         x8gQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqom++OqsHAMCeQinStMH5E9RCNBv6OmoNP7BZs4jg+Kzww34OF6P49BpeikbIvoWMpmful5WvAqcd@vger.kernel.org
X-Gm-Message-State: AOJu0YyBMmY0S/YrfDCpB5d9E/uu2Gpkhi0ewhk7/wEsLS1fxTcwApGb
	/Klit+UMOLG/bBvKq+v9prh4K3vJddWC63vkxdRUloB8ViLvRvz/NUcr2KX3AZnd+POUzPR3cpe
	1n13adsS6jC96yXCIP3CgBts45WRPcIHMWPhGbEASLGbmnHXWV7AXwNrAfwEC
X-Gm-Gg: ASbGnctUf4HPj2TC/M4pUlKHg840vr8PqdAkKH6FzMFaNCp9d274bmm20C1XE+03c+f
	U/3aYfkNqrYhwDBNRYSqlROYzlqtYS6RQ++6D+w3RMCTJlnYqEHfdeN2CU4wuGUGfcdCHl8apKw
	Yil6ORfaITQP+0o9GofgDiBRNDg4Te2RXvo3dsWOeSNumHUBcdoYHscQTlB35EkCLfaM69l7y7m
	D8G2O4gtLUFFymy1twqM36OH0mn26OCjzTZRWB4DMM6lHEG2qC9++6S1cJOmangBC/b+cNIw2Vq
	CK5llTKjFMe6Nh2nc/MmUp6Ato8sz7qb2/SgBOAPZO7ujF+mfompqk3KZxXSKFMnqrw=
X-Received: by 2002:a05:620a:19a0:b0:7c0:add8:1736 with SMTP id af79cd13be357-7c94d33c7d9mr38790185a.13.1745353932583;
        Tue, 22 Apr 2025 13:32:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECPN+gnhFLHpQ4DwkU2Hs6fRx+RAoCulz+9BV0umNnTLhXBZYmVSHmE2UV/CVMqwsUJthtKw==
X-Received: by 2002:a05:620a:19a0:b0:7c0:add8:1736 with SMTP id af79cd13be357-7c94d33c7d9mr38788685a.13.1745353932207;
        Tue, 22 Apr 2025 13:32:12 -0700 (PDT)
Received: from [192.168.65.141] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f625834185sm6311589a12.61.2025.04.22.13.32.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Apr 2025 13:32:11 -0700 (PDT)
Message-ID: <e9f3ebdc-78e1-4e95-92a8-5ab97d6ede0c@oss.qualcomm.com>
Date: Tue, 22 Apr 2025 22:32:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Fix PCIe 3rd controller DBI
 size
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Qiang Yu <quic_qianyu@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20250422-x1e80100-dts-fix-pcie3-dbi-size-v1-1-c197701fd7e4@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250422-x1e80100-dts-fix-pcie3-dbi-size-v1-1-c197701fd7e4@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=N7UpF39B c=1 sm=1 tr=0 ts=6807fccd cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=63VBIPp7KmuLgbtEyNwA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: yPW7k03zJBPVrPE8sU-Q4tt50SC4d3-2
X-Proofpoint-ORIG-GUID: yPW7k03zJBPVrPE8sU-Q4tt50SC4d3-2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-22_10,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 mlxscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=724 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504220154

On 4/22/25 1:03 PM, Abel Vesa wrote:
> According to documentation, the DBI range size is 0xf20. So fix it.
> 
> Cc: stable@vger.kernel.org # 6.14
> Fixes: f8af195beeb0 ("arm64: dts: qcom: x1e80100: Add support for PCIe3 on x1e80100")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

