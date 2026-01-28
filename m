Return-Path: <devicetree+bounces-260392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBXiHqcCemn31QEAu9opvQ
	(envelope-from <devicetree+bounces-260392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:35:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4684A1525
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:35:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E6A4300C27E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B49B734F24E;
	Wed, 28 Jan 2026 12:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WPcPGnL7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H7LNTKBG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4565434EF06
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769603748; cv=none; b=IJfsDP/txnUjSNggI3AJG9pXQq1llkpN12CnC+gwwGg61RCQqKcWsHo+/V6ZUQlBStg6/TqFrbcJ9y9izLQ9xr41qbaZekF5hvbKuK2tkthF4/mZCossAHfDAaMKXTNwlKVpGlzDc8YmeUzD0ZYzWhT3hy53reBkcstgiwp1M3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769603748; c=relaxed/simple;
	bh=piMQqax2g6RH13aM3sWkhhni8P6cTBws4qC8y6kGTQM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gMbFNjErl6yV8RQMw1QOOYJlvkUqUUCVarJIHbP9gIzRBST5PF79NvllX5tdL9b5BqL6PwaXRcw9mJQbhf22nhVU2SaFQkBJS4jUg31yM5mCYxmIxdu76lzP+l7692vseaThlfeGUMiXlb9/TtBtPpOpRGiZuDlv/bffzXO9RPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WPcPGnL7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H7LNTKBG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S92Wxk254621
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:35:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I0vH5dYyD2Ol0hVLBm5JvqzOX6K7Jy0+dLdwvbHamro=; b=WPcPGnL72dGefYnK
	xzwGgz4gRymNZEVklraFKbgzTa4vfSf04XoVv61DA+VEgHK82dNs36y1xG2TbSdP
	3xz7JeSwgjT3Mo1yGistlpWJacv2HjHTZnQTmGjkfQq7dcRl+gQkrC6Io63eeEXR
	jUrsh+ztup+4pQTOK/Zd+4MfcAlllpP+lV4qDpddK7rHRTTLo6T/zwJnAOGzlIyM
	9PFMKoN0W0tLxx0dZ2TV6CSSJC8Uo2+72XrQMrCWs3Y0T9k4SQRBUvL5OhCxG+89
	3QlDdB+JXrVi8o8uHsr4EHKHKCB7j78f/q/vuXMXA5hz8IWs+2wXw4zPvQ9X1U3p
	ARu+JQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by20y3bm4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:35:46 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89481f822aeso19957356d6.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769603745; x=1770208545; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I0vH5dYyD2Ol0hVLBm5JvqzOX6K7Jy0+dLdwvbHamro=;
        b=H7LNTKBGsklySXN49Gs2GuRFG8VN//8Mdr81sMVkx5S2NC3zGC+BlJ6FIVR2pshr0e
         3weVxKM5JSc6sm52fL2tRsAXTajTyP0l9OCe/3jMo964lZwFaFrfBnJAgcZquMAqTruy
         TdPe5m2Q1W/fLlYTwrYJjLXyoaMNteFh4coB/oRlZmt42ZOxI9O5cz6j9/LO5Pb7ArLj
         qSD9t2IpxSsO3OvCqMaWo+8muHbIOFczRjzXPDI84LGAIqffl7uNYOtwgeK1Xv6gaqBO
         dSLZ1SkiZhulh0PwKnmD+UWP1mgHT24TieEY9SXFQZcH9OJkoNwgyCTwPDR1ZTVmc6rE
         XZaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769603745; x=1770208545;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I0vH5dYyD2Ol0hVLBm5JvqzOX6K7Jy0+dLdwvbHamro=;
        b=Su3sNmNJbBghATYXLWP8xmOXL4ovMAmtKxK6FPPJU1p58KOzTQfAErcjaV+Smvejau
         v1jAE2AaJPSSdci2YyST2BJ60BPmznFlIhxO9UWupQ1xdnPkSmA66UW8gWLbXwRs28gz
         1LcIu3xOE8R0QUCIl7hqj5BZp8GaJMeinlIZd65PSFYUSia7nCtrr9xBJeI7Ndq8WAH/
         onpLJClOp7NgAOjizZL1fZeQEriw4YvpZcLfuMai8nKjgWuXmUadYn/ykHMbIrR/7G+f
         6rtxklK69A/pMxsNuuVez2WU8Aq2kA1jxkCFCOh355SLuNeyvyP/CLP9QWpSzEwvsRwp
         mrAg==
X-Forwarded-Encrypted: i=1; AJvYcCUeu+kSLoZ3PR5V36Hk82wPeCJfWEJ7R1+esos1NV3bbMD2KZu3un93LTfd9eLuakWYswRQejihk7qb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf9Ywr8GbEt/HA53iIAHosWDGGSrsr+7TEYL3F2UmC/tLHzBUI
	pj+1HpxMiNRkSA9Cb//dokg58FEC23p29xWQqbod+TfGhWvRU3FZv8bOeSTgM83BnOVwh0OM01N
	piGaHxYW3MD9udu8E/xRdVOPAhwoKqMmLsbGCl6iBHYHtHIudLq5B6RwqIsmlcKF+
X-Gm-Gg: AZuq6aLWhASOtenZvGTPsUBqpq64vlHB6Wgnzo/IufkBv84k93axhUlv/NDN4z5A4by
	XnP3qBdEG6xqtzv4vNvjiKfB1Y49aHk+M7Sc180BDyVTEVl7Xa7VHpSBBtHbZtF1f7TdvJMbVVL
	PTRV+a4o45HjdDWV7sdhzqKPboyKmxeMJoIlv7TmncXTvxl39UPCjB16uTyZjH0ORoBylpq+EKQ
	u8zSFBTQwqxdsOCN7izRsVuFYVSMD7qNjLQI7ae7cp6UUw2tHCVp+7liw0GowsZfa5cK76q0j8f
	1DFeTzVFQnPfnB3JDdAV3MxFOE+8vVtoBJEQQc87XoE2qC5xoWK3IT3lAlwpji6Op9XhUysrtzn
	Tr8kLuxx4JyW4/lIBig9ZL5sRrHJJVxJwwxdegLENlBdAfqNCE71gXrSl8QBbZW4xJ+8=
X-Received: by 2002:a0c:f08b:0:b0:894:9f0a:7a69 with SMTP id 6a1803df08f44-894dcbb5a30mr1274076d6.2.1769603745557;
        Wed, 28 Jan 2026 04:35:45 -0800 (PST)
X-Received: by 2002:a0c:f08b:0:b0:894:9f0a:7a69 with SMTP id 6a1803df08f44-894dcbb5a30mr1273756d6.2.1769603745154;
        Wed, 28 Jan 2026 04:35:45 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b469e45fsm1440017a12.24.2026.01.28.04.35.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 04:35:44 -0800 (PST)
Message-ID: <0592c82b-021b-4826-8b2e-d9711d8eea66@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 13:35:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] pinctrl: qcom: lpass-lpi: Add ability to use SPARE_1
 for slew control
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260128-sm6350-lpi-tlmm-v1-0-36583f2a2a2a@fairphone.com>
 <20260128-sm6350-lpi-tlmm-v1-2-36583f2a2a2a@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260128-sm6350-lpi-tlmm-v1-2-36583f2a2a2a@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: zrKHkKXdxM6AEkk89U7HoqYJwZR2nfbw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEwMyBTYWx0ZWRfX/PEnRLecjlhN
 IEnlv37qtonqVki9SUlh9AxzQms7wz90we4RZ1e8+Xx9ZnbQISeWwHHrqVq8BzqUfAQ5bkMqVhj
 +DcOZcsFtlb6MH/QAmLJBI98+fbTQOBdHvvh2oAL6O9ahoWqjMsU1XMWKIkPrGM50y0xZeJBDdm
 Ic8Mpv4tQK37I4UPZEw12GVKwU1sz2N5a8V8imzkKrx8ZfxTOGQ0AUL0kLeCaERYUdeMJwjCck7
 Mzqb6T6gRQ2DTkjPrxrroP/bznKntEU8UoUUQTSqcnq6FIIRCYC+4JDkXEutQQwXpbdO7Ja7zQb
 4qKXfPv2UPjOq6B9xx7N++xs6balZlW8Zfb5O7WivoRWXQseKcBEbjByyN/v10eeSIxSTMrF/kf
 cDhZ6XXNb7v7gdBF0eFcBZtfJIzpkO6d7hbMCnZk97BSEj70kwrLq5yrVOsYNo7nV3UAdOrYuRO
 bGUC8KgdRUEch6PTlmA==
X-Proofpoint-GUID: zrKHkKXdxM6AEkk89U7HoqYJwZR2nfbw
X-Authority-Analysis: v=2.4 cv=IKgPywvG c=1 sm=1 tr=0 ts=697a02a2 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=DtRyXgcbd-FaZx3MlgoA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0
 phishscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280103
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260392-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
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
X-Rspamd-Queue-Id: E4684A1525
X-Rspamd-Action: no action

On 1/28/26 1:26 PM, Luca Weiss wrote:
> On some platforms like SM6350 (Bitra), some pins have their slew
> controlled with the SPARE_1 register - probably because they ran out of
> register space for an extra pin. Add support for that.

There's plenty of space.. 

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

