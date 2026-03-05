Return-Path: <devicetree+bounces-271533-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MMXOvlwqWnH7AAAu9opvQ
	(envelope-from <devicetree+bounces-271533-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:03:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2366F211263
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:03:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B984F30F1B76
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 11:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C1F7397697;
	Thu,  5 Mar 2026 11:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n1Ah8Krf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Zw3tP/dU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC1AE3845BD
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 11:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772711829; cv=none; b=pX/FIzhFnuT6KbWBO5srCgN2YCjS3p//mzbCIYmt2wvacCFmpAde0bkw+5sd1gidnUR+YZ8pwHq2ndZOiEp+Z5a9ORrBK+sqRsKzMPJYpY1vwanlxyNvvfVKQm8vdcMbmMqS1lGMajOoGqGcAqdqXBNMtM45aXaNS7pLfKCeJlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772711829; c=relaxed/simple;
	bh=ywQR8RudpyjuQ4ua9m98nW27zxDvWYAOmFcOPd1cmuc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qOT2ZSvYaXaX3QvJPwcKhRMAaCTZGibju2aZsZcNYQZ4nAnmEKIFCsIJoqZsUXTjTU4Bobv/2zg8LGTichl8YhRG+LyFNFtakNnSpttgRyK1CUCmij0IhZ/UwMJE8/k32iQza0RPeSDb/TCyoKYbF3cARfwjE5H35ClM07n/gyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n1Ah8Krf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Zw3tP/dU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AFo7p456094
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 11:57:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oMWGh0Yr/4YojcEUszF8lrbKoqjtdVISzX+uaKBAjlo=; b=n1Ah8Krf1gXp4q+6
	g/cxD1bGyzwXDDudc3lu/vYT4xKZWu2lZTGBHNNFJQ4Zes9FNXk+YXGllLLWWiGE
	vVjF0r31vVkjxCrOqJy+Q7i47bb6L5Hzms6OHnBuYkjGVTJA7cFjFNv70sGGrazP
	n37wZ48ssVRMvgFwpy2Nvq9nGfrq+MS1CBFJNPb7Z3KaDTh1VZzQxBoDTryYzej/
	bVgt++Ec5IEGCB35wUrQmw0kIUwZa0glUkgzLTrOMd4qwFnnQioMfn1/fKqH8VVc
	F+st49R0lCLOQHjHNU2mWpk2sm07y0vIn+j2H1JlC22VxchsgjONRBsbvd3OwTuX
	ifSFaw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0wk3j3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 11:57:06 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb4025302aso530766985a.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 03:57:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772711826; x=1773316626; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oMWGh0Yr/4YojcEUszF8lrbKoqjtdVISzX+uaKBAjlo=;
        b=Zw3tP/dUlRki4wzvk1X/Y3KEc0S0Pzv1KN83PR1PB496gVSeMzuOuY8Y6l/Wpw1Oad
         wtJs5i/NUlsz7HVo2+H8oNsNcu2CJGfQNwlFZVJIZInwhj+G/oFgPM0ss2ZA2RGhbmUf
         Ooee/03dPOfKu47x3CNkN3vwv5DGCpjDSM/kpF60zuGnseGUr53U1UY6b5dFS0KHZv4R
         AasoQ72qvC+N+e9k4tMRKvDy1yg+52hsAZoru+ehUNedTveeVa6DRHTuzrVClNX1c+6t
         QAtbsSeyiBQgV1NuLB2l/hJA1TsDNjKDYP1XcKlUu260AUXFK0599mTDxjRlLeE3nXA7
         NQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772711826; x=1773316626;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oMWGh0Yr/4YojcEUszF8lrbKoqjtdVISzX+uaKBAjlo=;
        b=of95Rgt7QDDfGH4xDwXQNiA/0lckdirgP1GX9Ezht4EzS2ILwMCcSS/VC6F6Dmakeb
         Q9v0Cm2kTUZrytiQvjF3RysK00pxhRkvXegFxOqvNAI3EPMMGzWKtsyPPfGHCAmH3P9/
         +ShLPmxpZb/UedDIozZ/d6I/UP7pOAEW70ZBEQUfmsdtCnr4b6JHzhpstDvCZt4XmBCj
         uwQ/mxoNTJoTblfQKk3Zx1iwFSzlpwBAghYewcOkyBiB6zUGMEw+fY62aHTs4W8Q3t6/
         79DPqc4/Fxae1EoZi195K3WeeW1xpWthhQQTxMndUFE9Db1D5l2YqWvzpi4v68/ajClg
         5G5w==
X-Forwarded-Encrypted: i=1; AJvYcCVQhnzp+EOYqnpn/q4E7kKhJQSd628lNMrSP7V264fZdtm/eZOpQsOfHedGFKkcJi6qEinZXPQVilz+@vger.kernel.org
X-Gm-Message-State: AOJu0YwFDgXKcQbsCsJ2AtQa2mNe9eS/xfpV/cpalI2K4Cj0HNLKCB9v
	3m3FlHy/6S81xiAW84D/eMbxZ69ffNZ/IU+din6hpmhoEshalKUldwwxaWfJDc0iVTWPh3jXcF/
	AqfPkpA6UvLOCB9Z1Pz6rqF9B+6mvZmhlkeqOZ4gF0K9oTGrTsk5gODgeKfI3axZs
X-Gm-Gg: ATEYQzw+0wrw7GEI9o5dzDak4p+c2sgOH7Qm+cSxNzp6qCV+6xzRQZTsx9+38cRRvYR
	9dsegHE4Yn8/YU+8Ao0NCweL7n2ELtf8V3wkx8TzqrWK5Ps/Jhv/zxnV9BEMZjNCmQESBoVOgAu
	4iwq2QpuCUaW6I6tBO4TSnmfqhuqQVjcNwsuXaUoeNQKufuklcNVRmfLPql6e9SbUbceKxNqrLU
	aHomZOZXavJWUsCKaH71j9iwhVw8EEYCPv/v7oqlRB5O3M7X72eCuSPAOyLLcNgnI5h0IrCswzY
	LtdWaONOWjfaLW7Te1iH99NzEDm4FKcgo7HxgrNn6kgjwJvE6XMRDJ1B+dxqETbJKJ5SfNTkuDw
	LUfNlSRhIPEU9ab+7lXrrcfDWgLmV3/RKFDiJp9D/VpLIOalMkfqRjPKEv5XYVxitETFKzxhazW
	3eYmI=
X-Received: by 2002:a05:620a:318f:b0:8be:6733:92b1 with SMTP id af79cd13be357-8cd5adbad4dmr523868385a.0.1772711826302;
        Thu, 05 Mar 2026 03:57:06 -0800 (PST)
X-Received: by 2002:a05:620a:318f:b0:8be:6733:92b1 with SMTP id af79cd13be357-8cd5adbad4dmr523865885a.0.1772711825797;
        Thu, 05 Mar 2026 03:57:05 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9410131465sm68249966b.42.2026.03.05.03.57.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 03:57:04 -0800 (PST)
Message-ID: <c37b0fd4-afc6-49cc-a133-7f8334a16cb6@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 12:57:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] clk: qcom: videocc-x1p42100: Add support for video
 clock controller
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
 <20260304-purwa-videocc-camcc-v2-3-dbbd2d258bd6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260304-purwa-videocc-camcc-v2-3-dbbd2d258bd6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: puFQwIyD9ZunzL4S5MhooQTNaQkY-wDI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA5NyBTYWx0ZWRfX/ZvzY5eKgg49
 52v2rUBWIGm/DgHT+YKEmQaUTS5EPLIz1lTJaMXgoW2sTt28a7sh8JvimGBLINC+49z+OHUz+G9
 dQHDf9iN4gDiDpHGs9xZhJBeo5F+O/hmk/bMF+TS7UsTgiQh9AynUOk/Ned7ZinzJ0v6es9kV0f
 JzHtmMPs4Xts3FYblmJelWRoITpBq3zHDZpr8a9OWEntpHrwMBPiJH0jn/pNRBOCkh6SfYIlYl+
 CkstYrWDJApzzQFJzJMIgLp2S/6Ieb9iBv7m9khPXZg8ha+P3q3ahdvChVc0IEECLMl0E3bCdYR
 6Vf13oOWMouk/pF+KtwYmouplA9hvLoxAak2ie9lhMjRbb/IMQUpqculyiO+ba4AMzrvDe5GJMX
 xUOOyWU/efE+GskqHbuhuaHU9IQhdvbYji0J6l1d1PLC1N/kzYzJM4KPL6DeMlDfiGOdGjd64lR
 ubxK0Nejl1u3HfNCpRw==
X-Authority-Analysis: v=2.4 cv=OYWVzxTY c=1 sm=1 tr=0 ts=69a96f92 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=rAeN3jnYVyXTJrfZgKIA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: puFQwIyD9ZunzL4S5MhooQTNaQkY-wDI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050097
X-Rspamd-Queue-Id: 2366F211263
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-271533-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/4/26 6:40 PM, Jagadeesh Kona wrote:
> Add support for the video clock controller for video clients to be
> able to request for videocc clocks on X1P42100 platform. Although
> X1P42100 is derived from X1E80100, the video clock controller differs
> significantly. The BSE clocks are newly added, several cdiv clocks have
> been removed, and most RCG frequency tables have been updated. Initial
> PLL configurations also require changes, hence introduce a separate
> videocc driver for X1P42100 platform.
> 
> Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

