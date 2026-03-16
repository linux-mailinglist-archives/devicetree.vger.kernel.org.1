Return-Path: <devicetree+bounces-276098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNuANPXft2mcWAEAu9opvQ
	(envelope-from <devicetree+bounces-276098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:48:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B26E29835B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:48:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8C6173043AF9
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69AB839023F;
	Mon, 16 Mar 2026 10:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jlKCBiIy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SRCHVrxf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379D6390200
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773657978; cv=none; b=DrEHrHCxv4yy97XWByyF0WMEXm3Z8c/J/NkR52dsioHW7TmZ7ijFjeoZKia+Crmqi3kZDwAYW/K3N3UQwzI+ZANRA2qXH373ssnVIFD0j/cr1jM5EH8wsKT4iKJycMcJKGRyRP8eyxUfHIigfFoKeTJ3Vx6VOxzE5vlhrCNtL9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773657978; c=relaxed/simple;
	bh=DgAHaLVHniG/WjFij6KMeMEX9c6SKoxg85r4WlIblWk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P7KBDfBdWe9MOgquuiP5A0KCQX1kDYIQEfs5mxzlD9snISnklKpi0qAza3Je75GI755qnFeNO4pjYlAtQbPQC+C+FiV6V54pyp2ujhpaln40e8Mq/vA5FOiEkd55JjxlzsVstdBok0Hf6sERyd/cPq3VCx7gQ1448ejy/VPbhyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jlKCBiIy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SRCHVrxf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64bYD1066826
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:46:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WWI/FuuLoSUa9DlTie+QQdxxsAoZVVJdRrfTJfeNm3Y=; b=jlKCBiIysl51YLGH
	27fuL33C4KFqBKtYESsdPdzJNxJd3AA+kTNnzcBvHr1RIMyqMuVSVTiMXLBYu3aB
	U4Zv/GCKJ4G1y1udQN5hvHBLvhuvYH0juOOBHUbGZ+beXYpPeuHf1X5vjWTqO39H
	b5tmdrw40JOIbuWNzSvZ8IuvKhPYhM+VULCrpeqv6UvEi2vcABVquJG7bwc206uI
	OKgVVvG4hXt8K4+TybfTm+z8V2AKLZLA0asH2J7ZXF7ps0dXhF5g1UGZ2SsBiaYR
	qS/Q7M/iwKUF/KGvjMZUBvrY5tvKEFyM8I0bvGUnEpLsVhFzp53q1z9RVHM5uLLX
	tJY3gw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw027davr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:46:16 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89a04e9d4faso35747976d6.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773657976; x=1774262776; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WWI/FuuLoSUa9DlTie+QQdxxsAoZVVJdRrfTJfeNm3Y=;
        b=SRCHVrxfjLJEdnM+3/ldzq0RVBrqA4XbPR/27/W9sF20snBtr4Bcc5/GF5W4SJ75Eg
         wcWs4v5GOeFZTpsnyiS4rw+i+3sXlEiepjbCEeqLH4LZh33SOkwbF7RZLbupuD8d4ak6
         zjQjzzZeUi1aRYYlRF1X2pm0LeWSJG1jFSOEarnqpbDeVm7iryIdMjzFM2B0TOHMSqvX
         jLZhCZ80+lEJlPsq3B3SSEJSRihJgfiwZUulYuijpgxZOqlRHBlPGEsp8Yu7bLMBPDp6
         SRT4M3F94r+7j7Nz6EHV4MCTrMZQom8ORq5RQWIM1ITYoXoLBHWdQPKlVb2bPXn19wXB
         68Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773657976; x=1774262776;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WWI/FuuLoSUa9DlTie+QQdxxsAoZVVJdRrfTJfeNm3Y=;
        b=krW4dxJPbzYfdGMcTJ5p7401rRuBhIi1rbaSPnrH4iLdTbRb2Wx5wczcOmydZU9Tq7
         VrTRNb3tDA2zS0un76ESoVjmzTEZqOh/ngwKQDc/DUSJj1mQWhkWVcllj+sCb23jm20c
         pbLnRElgwlCnswo5yddOs9wZ3P55aTVxuR8ajl/U2TmyKhwwt/doazQmB6f8W73Qko6s
         seWWFU80vNrUYSJDR7DevU9sHSrg5fgrbVP9g67QPfPadq1+GrJbjv2RUlLjpvRNLtUM
         jZ7Rv8nbnavijNRw59sStRd3ml6ZbMorl1plbBz71deTlmQJ9J0K9Hym0O2J1IxDvRoa
         k+mg==
X-Forwarded-Encrypted: i=1; AJvYcCUwzS1SlI5DCn+wd3sz1sHhI+Iv6fDfrCHRD1KqwyyDjZHonbAuZRreUaaDNdon1IE2dPDNQ2R08VpD@vger.kernel.org
X-Gm-Message-State: AOJu0YzmIzEfh1O5g/422yHT/LXQoLr+jfTKoOlhyU7hpcIk51/pzNWB
	oYy3803ysSgyxCkuUAgmYgwO7UUAbEvjTc1Bipy0CELuCzRNJ4oSnh5HMx3SWrmDERka/0sMVX2
	eZEXFSmijT84EyrQrUpICrY7h7GCC96k4yjZdUAEj558dQ0MCYzQ9hJdsLmH5fOwR
X-Gm-Gg: ATEYQzzYw3k8c1/GwWqcJjvUhJJNEhZmbcR/sP4e5/78Fbw+PFuKb7/G9tS0HQY7qQ6
	dhB1yWemPC6HislPgOEI5fb9keFLAFzhJsx5lYkDT3dsE0StMCrlFukssbJ7m5/D+GhbUwRn4wO
	jzSm3VbNdcWDuZ3NfL8h/IcMXqzVaX6FYjc/+bdgiednGg/0RKZdzE47NM1FXpZMKYkvsPb7t58
	trEqf5+z1w3tUITOAqzWIGtchf2BlgsJDOlLgy7iCh+beybPSFkx6UenpLPYT1KMVPkyXDrkdVg
	R//3Wsa40YmNomRWJVJKihOgfShKHfBybfMQmBDKdPfFeA8/KrF1R3g89d/BtXD0bz/Ceo25AOd
	HnLr2Pj4Y5W29/FSsHV9NFsNbpMofet43eP4r1XzHE/DAmscmCWQn+SFSz504HcrW9jhFLI2lCp
	F7ArI=
X-Received: by 2002:a05:6214:4e14:b0:89a:4449:ac0f with SMTP id 6a1803df08f44-89a81f51a27mr126893936d6.4.1773657975643;
        Mon, 16 Mar 2026 03:46:15 -0700 (PDT)
X-Received: by 2002:a05:6214:4e14:b0:89a:4449:ac0f with SMTP id 6a1803df08f44-89a81f51a27mr126893626d6.4.1773657975123;
        Mon, 16 Mar 2026 03:46:15 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cbf9028sm542193366b.19.2026.03.16.03.46.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:46:14 -0700 (PDT)
Message-ID: <0aa28dd2-c5ff-4286-bf58-b7a9e7f3ad73@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 11:46:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] arm64: dts: qcom: glymur-crd: Add Embedded
 controller node
To: Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <20260313-v04-add-driver-for-ec-v4-3-ca9d0efd62aa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260313-v04-add-driver-for-ec-v4-3-ca9d0efd62aa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: mZy76pqfg-OCUCJRsmCY1fG55dpR9Yt1
X-Proofpoint-ORIG-GUID: mZy76pqfg-OCUCJRsmCY1fG55dpR9Yt1
X-Authority-Analysis: v=2.4 cv=AqXjHe9P c=1 sm=1 tr=0 ts=69b7df78 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=BYiauv21-j_JhOubGf8A:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4MiBTYWx0ZWRfX9zUYfNts/z3O
 EqkTqj1z9A5iab4ZDbLRr3MAQ4fOTZVH+f3l2FGfmsuQ8SdeIur6zqBtbKv+GHVffLoG37Mc/o+
 sxS1HfZ+ymLmRrRLxkCOGhnQvKPOq+FWZdqENowCfWGyAEuRenWyPoyvUM4cf6Qx4nLlxqQ/wKT
 ZNYWNS0JGS/6tFBMFQa0Uj1hWNaN2IaAy/sGW7s2tvqumzSbI6yr71F5vR1qldV8ayhyt/Fll8/
 kr1Xj3DkGQbrkg4kUYy70g1/ipt9q5EDtToLLQyNrhoLILyFUF736grsqkG4oRc8hB8uWjUkEfD
 uFcQ4qYHye76ni702erlhqlqtW4bc4eVlqh2WGzZ0kKk46IN1MdZCCXTUKjaazcS7XcytdBJDov
 FnEzjD+noqOuynKayxm/pyVLCv3vbjbS/zCG9kdw2BuHPk+zSfOZ+y/WQT7bzeN/pkb/Tn13Ofx
 WyhddOnfrSr4mkDKgoA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160082
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
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276098-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
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
X-Rspamd-Queue-Id: 5B26E29835B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 11:29 AM, Anvesh Jain P wrote:
> From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> 
> Add embedded controller node for Glymur CRDs which adds fan control,
> temperature sensors, access to EC state changes through SCI events
> and suspend entry/exit notifications to the EC.
> 
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

