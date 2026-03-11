Return-Path: <devicetree+bounces-274119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GM6DDupvsWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:36:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2A8264A87
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:36:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1C450302A7E9
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0937D3242A4;
	Wed, 11 Mar 2026 13:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jD522WYN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ibCn+rHD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC2D231A3B
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773236078; cv=none; b=g2TcCTg5yXL6L+4BpX4IHYn/97WymgBeAZpssn8r8crwNpfBwmyLzoAovJi1cpNyiqcB5ZTmhz/WLIVHb+QxDI2wv9OnAl4jIxpVVZ5rVtgK7lE0xhceEjbNxH7FB1meBdnG01qY/MkD4AK6HztP+SX5kVXmYZ+xsDDl9/yFGqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773236078; c=relaxed/simple;
	bh=Eyb/s027S3nbHlmPYwW2DtYUUB5vt5wFvTp5hMvzCDs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eRgU+ibKIguSS0ucu6N7c/WZ21QxqX0sLnxRTUdSre79NyJIC1y7z9O3fNNRhthcXNGDCxoUydwyr2Df2z7QbVPfdJAybCdPGoDgf7vkyadZrd9GLYe91xo/tc5RMYfQC6ectzi3q3UjZCx1W7Fw/gtr654200Vn9wTDX1ocxWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jD522WYN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ibCn+rHD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B8QFqK508675
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:34:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3cro7d2Qc55Y99x54Bc3qfwkwfUoRDVh/RrC5sik6Wk=; b=jD522WYN5VWkBukn
	ks5I1szzaA70zktpN10PKqW9W2pqnelX40TZArGAqlFGNb+2/4ajHonvSfjcHqu4
	rIYz28mEeVTl2IBxYfgRUJn0yF3l3ZSbCWOq/frFpXlQoMECN3ZVtWc2/ne2njyi
	8JNu/Q/g4G4N9vM8notqpQuCC6aIIcWhMgbUlGg7+FjtHM7J14F2Ki/a3EUwhY6U
	czlMNGg+ay+/T57PhGiyV9dTgpHhfIQ8/O+vdNjgUCnGCadYzMiQ5MvGg53msH6/
	NCn5cWzMpwiceBPL+me40sjekUC0vAq33odhbng9uS+SldrwTUyKlKAfyeHYbgn5
	bHhw1w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctppam1sm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:34:35 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50938030661so6860471cf.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773236075; x=1773840875; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3cro7d2Qc55Y99x54Bc3qfwkwfUoRDVh/RrC5sik6Wk=;
        b=ibCn+rHDn1NwDbgLG62f5TZ+elICBzV398lxv8VREnVxXUx/V6BhZDygYbr7iFuQjl
         ynloWKUSb6QZ9eOEBMBwHwkon60y2kXacZ/Aqm+LKKF+o5chctRDKpZAnLH3gsuJGALI
         1m8gpGkWl42ueWtQfjyCsqgeR62ClajzBIFilKWo97l7yXqbaH+rISJah/xKYwLXvsh/
         dfj+D6U03HwklGMc0vcpFfJVkUyhmaO9l7CXVarCjOV0KS4SiQitJakSqT0Oe7FWd8ep
         Goqoh3hTcRXoF0CypYO3UXRwXjahJhq1kN8/e6ioYK/HhnfVsxA3B5V0SETXqMLVvduA
         6u5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773236075; x=1773840875;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3cro7d2Qc55Y99x54Bc3qfwkwfUoRDVh/RrC5sik6Wk=;
        b=GQWI5joSzxUxYp7O/Z60vkXI+DrDzBdcpzhMTZF1t4vEvzvVlgCEw7hhmmyJPQ1RZC
         ODd8YM0/2yv7GaEOxRyNgQ4dWC92MJAD0F7xzoZv+lhMuV477uddt1FD1bUOuD4gmNVM
         tMvSdUNlrBeyATDvcXCn3gjcwXv/MFhFYaSoOrUz4YPRnL4EJo22TplEJFWOhROIhMMY
         kqQ8CWvEdXjMWNRiHfNhxnktWp7K9tqZCGVw2KyFcdTOd++Y/lHLsLTkKutdhd/YpGjf
         7OozqhfOTzkiU66sKYnEh43nCJf7QPwhyV151uADSLJ6i6P+MWc7pfYIMBBY1yE+2gRW
         UoNg==
X-Forwarded-Encrypted: i=1; AJvYcCUSuZE2aMjTIzrqoNvNXUeweFzpTFWM9IMQU9mz6tOAZ5qWnPffXw2FGQZRRscepI71qLE6YY4K1+o5@vger.kernel.org
X-Gm-Message-State: AOJu0YynSOzpuXRK7a9oCiyzd5le1SYGeItz9L49hx0z4OoFvyWjvYrc
	v2J/bG2v1nF5MDJ+kch/twO8JvaYJnp7D4cFY2ZUDW4FroWhAHX6BurIrB9JZeVvdh84AT5cXcS
	Vn3cDodNbkLy/L5zX8llVm9XbR/M75LKjMklsg1kpIsMlepDpwaxRaW4c5WCw29aH
X-Gm-Gg: ATEYQzwNZZADzyrTjqKwfz+d9LR1ZaKZ5214jxuu1dbTnwc3u7RyFVaAleTS8fSqcqC
	SQ/r+h4UkSkyP3ZY/C/EhR4INbUn9t/T2oHPMY2SHIhz8brrOmeB1yVoP71J24Hk+RQu1uzRgTF
	oz4u9fGCE3dFDWsoAmBnWpfY5HRjws2Vfd/eA3PEJdQtTyINsbUsDLh8Hmn3SqjJqDO5Cwu1cK2
	R9yv92fOoBqMc3+UHynTcvxM3FAms/pIxyatxEwTb0IZk3fI5gjrYEEbbzIsphCx9qfPW86IiUs
	RTuyVVSY2DAG421tQXwqmT58TMFa3VF3DHlq08RB+KJ/w5IM81lRBNZAapZx8MGm0vVWQBYnNje
	fS6w3rf5PjIPFG5rc/gwvM9mcPYtRmsYqLQuER2yWEyK6CcXYUOgivlTub2XCXuQqkLaDLcPVh/
	sjNVk=
X-Received: by 2002:a05:620a:29c6:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cda1a120f3mr232198285a.6.1773236074947;
        Wed, 11 Mar 2026 06:34:34 -0700 (PDT)
X-Received: by 2002:a05:620a:29c6:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cda1a120f3mr232194785a.6.1773236074499;
        Wed, 11 Mar 2026 06:34:34 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b972db9fce0sm56501966b.0.2026.03.11.06.34.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:34:33 -0700 (PDT)
Message-ID: <8d585d53-ab3a-4302-b0dc-8a9f21690cee@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:34:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 05/13] soc: qcom: geni-se: Add resources
 activation/deactivation helpers
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, aniket.randive@oss.qualcomm.com,
        chandana.chiluveru@oss.qualcomm.com, jyothi.seerapu@oss.qualcomm.com,
        chiluka.harish@oss.qualcomm.com
References: <20260227061544.1785978-1-praveen.talari@oss.qualcomm.com>
 <20260227061544.1785978-6-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260227061544.1785978-6-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: GXaeIFkKqtLodUEjcwcpufYptdzlPxlN
X-Authority-Analysis: v=2.4 cv=D7BK6/Rj c=1 sm=1 tr=0 ts=69b16f6b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=W3I9JGv7J1k6QNzkgEYA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExNCBTYWx0ZWRfX2UtxMTM4iHCu
 fXOCD4uDTUBwgmO0p+Brxh44OhEXG9TJVmTr3Y+gu51rWsDT/xewzVnJs6c1iwWrTueiUtR1azx
 KSfeDJokOWdFbR2TqpwQY0dPHiFtWcLKh10AG7iVGHjsbr9DnJ7dbsp6BWBsvN/oV7CG4cQuMyM
 Zfw4yqSMO7hc41LFBS6kfEjOdWegbHi8pcYVTG6DHL8N4G2+huA2sRrNBAbpwgeawGDZldEEFs8
 AG7bb0+b9BKjx7pk5xhO9e5fNg0OcQIR64hk0Evr0J5yLUVK87MrLXlTwH5AXRHw1J0wKu0gOw9
 mQGqRMRvQaWcuGSsL3EMI7ewp7GIuz2AO4RdyfpdUb9h2QgOwLkc7yAumk2dwrReqhjp0N/DA9o
 Y7LCzS/nL6PtW3/iCn4p2f1JLLfostrFiSx5ON+LxhlpwdvXuD8mco23nPPYWlUhW8xdeHxZ3PK
 SBOXb7l/jMUjmdScawg==
X-Proofpoint-ORIG-GUID: GXaeIFkKqtLodUEjcwcpufYptdzlPxlN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603110114
X-Rspamd-Queue-Id: AB2A8264A87
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-274119-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 2/27/26 7:15 AM, Praveen Talari wrote:
> The GENI SE protocol drivers (I2C, SPI, UART) implement similar resource
> activation/deactivation sequences independently, leading to code
> duplication.
> 
> Introduce geni_se_resources_activate()/geni_se_resources_deactivate() to
> power on/off resources.The activate function enables ICC, clocks, and TLMM
> whereas the deactivate function disables resources in reverse order
> including OPP rate reset, clocks, ICC and TLMM.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

