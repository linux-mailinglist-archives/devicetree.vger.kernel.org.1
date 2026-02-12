Return-Path: <devicetree+bounces-264989-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFdsJNyljWnu5gAAu9opvQ
	(envelope-from <devicetree+bounces-264989-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:05:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 067DF12C368
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:05:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC4A33095626
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B2B82D8DB9;
	Thu, 12 Feb 2026 10:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NHQyPIcd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O75eUbpr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31FAF4FA
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770890548; cv=none; b=heKLJebfvRwBCICWlzxjJnm0SOtjjM6HZBFVVQtnIslPVreE5WOyMLnPK6bxv3D9oZX52hDPaOse11hOSVDy4JQPm7fCSN6nPu5qYWZrUZq0KFcS0klDnCA80woxR7U6qp4oioI6ubo0qwPTBJcdALwxtjA4ol63aeYd54Vqkrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770890548; c=relaxed/simple;
	bh=7tOTSAZb9XaEeIQG6HfS8r7EAoF4DHbPVcHC/hVgxbw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G2cYulOtTzd16jIjfHf7D5Xy4MVXE8Tdocqf6W0SKgnGhQdxQr2LbsTnDxxeC1y8y1eKZ3GOVHZLsZT/DaIy6ASjdYJDlWr6v4l9FnH8j/DJ+IB2jOapfbbSjvwdaJ8nWWxzxCB62w5WAboOKnR1ebr6jucUq382dMfpqltsg7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NHQyPIcd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O75eUbpr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3RsMv3319715
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:02:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dBgvHgw0JlgSEht1MZhveU6tFfBI7N8O2FzIv/0/rnA=; b=NHQyPIcdQ/Zy8Ifr
	rFKlzImGUFQkhDWuFaaocr/H8wAv6EGSExlDSvuG8BkbK4tubxzwPFZubIyPqS39
	Lmv4SdWbl4U+5RToH1iZqDDmR+2SyR7f7U+vEVBDIaPFS3UyRTlDN3fsyybwf0Qa
	2V3mQUVw2AzJXMbG0nck9mhuPbDGXf46wHZKkP/9airu5uVk4iNhatTBfvlbNU+D
	Hu30Bi5ijLvymeGTwcNgAZzcSZ3cYKoKB3vmRvGkYM5FHPg5zG4pgm7TQK/YiMSQ
	rBcNUrOxKmUHLlExyawih4mUgchp4Cll/MBW03JptNgiqrNGk1TGRxKnIcZXiXUR
	337rgA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8wc4tuvn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:02:25 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6de73fab8so266202385a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:02:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770890545; x=1771495345; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dBgvHgw0JlgSEht1MZhveU6tFfBI7N8O2FzIv/0/rnA=;
        b=O75eUbprdZSC4gg/moz9WlTT+J54gYIjrWFE69BJEK3SuFyRzj+avBdE3kkDxUs8he
         5714yhifBy1iU1vo72fcemA/vORdVkIuUkSumKay0chJycdQ4fnhSKqx5PCUkMIJE61d
         8V+VJgqbWLQlhH9/OE8a5/v6/VdC78qnc8oV75zx1+vCTkQPLQhgH+aoayN1FV0pUIbT
         Xohz+0DVsayBXj7zxokltOIimA9HboKhAGPFMgyBppy8dIKFKTd/+YPjaEQ1rOsoCprT
         HlcQwx9iNwgXHN6xYDKYMfGGzIRkz2MIV5yB72x1nBkrBTqw56vLkgjJX/TOKuE/CEEj
         MeGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770890545; x=1771495345;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dBgvHgw0JlgSEht1MZhveU6tFfBI7N8O2FzIv/0/rnA=;
        b=lx3HgDPwK2qV8DEbd8q9CxW5VEMEIpt1se0Pfcb+3WUStac2IX+2pa64UJDzd8qdP1
         0UtPFccKzBvsvbjWWj0lWM8sCRSw0ZfRFPWO234PHgHf+ZOgJUsdmRqEsJyTULCDoekt
         Su0KSnb6vX+q9wM2yYoWgBiNjakwt6/YuaJCGu3yQGChvS4Rx3gRpGOjFWtTsh0PhnLs
         sn+U6guGcjnStV0O6uKNjHevOYfuanN3mAR1cPc66XdDV+sOQHpJlTTFLdEl3hJ3iHss
         t+UK93rjuvixzeh0LfpX/jsTHZQKq1SPNOV2CVHzqSf+3tefDGN+21+da2W2kaJse/MD
         IN2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVoQYtBnmhrex2I1NPg6L65gESmsDNnWGytCgdkGmReAI/AcVhmgbRgl26Kg2jGszCvG/6MkVvcD5Ja@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0XJYwMMmXLKL2Y4To7iOvj5R27SGBsd8qdREEVHLZ7sfgwmc2
	XdBaaKE/qQJp8Nx2Otp47bEEIVG9LNZ6+X81IOUa1Tkcal0liz3kKKO3o3gC0NDfAmbkYz2uMC4
	GtQOrNRlYNb1TfXmtYOlvCAKoTr/zLepJDWAw+lmPXJ2ppMNHS99w41f5mPvNJgH+
X-Gm-Gg: AZuq6aIbSD8eUIv5ZVHnzLzq6zIN3S0NJ3UfEgLWynrgZwCRXNEekStxr6CE82aA6Wx
	My6SsVnkJ7CMY1gjsIv4GoiiqB5+KKmU3cU4Gtm8vZFuEhCrZfaWFaYpv0SudrIuXbnjKEq9BLb
	2XJ8zBxNP1qZBlShwlkkaLC1SvE/XQi481xTuyxdEEThU8MjHoLYhgcO6Nzu/ahnWVqR/m0J7Om
	ZonKnaDXK5STRwKphdDZBRcrH8i+K0pPOULPEq3FZwGXDMxP1lqKFkxzvYJgGFbPOdG70ya8QBr
	stvJ88cBGlEuBSEj+cFvCA7ryQKrrbJ+o6G+MI6PldYWVBTBueqrIuiLhQfKv/nJK/hDFP6Flwk
	VtGMiU87lj9R6jsX9ATJsL5hIZiZWm6e9wM0tw0HqCsOnGM5hN7sEye0ehgYTCZP+6JtZTHqzPm
	EoOdA=
X-Received: by 2002:a05:620a:372c:b0:8c6:ca3d:4e0a with SMTP id af79cd13be357-8cb33079ac4mr209265385a.3.1770890545104;
        Thu, 12 Feb 2026 02:02:25 -0800 (PST)
X-Received: by 2002:a05:620a:372c:b0:8c6:ca3d:4e0a with SMTP id af79cd13be357-8cb33079ac4mr209264085a.3.1770890544691;
        Thu, 12 Feb 2026 02:02:24 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f84bb7b0fsm98922166b.1.2026.02.12.02.02.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 02:02:24 -0800 (PST)
Message-ID: <6fb5dffa-b7e9-45de-8ed1-d5a029d7e2e9@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 11:02:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: x1-vivobook-s15: create a common
 dtsi for Hamoa and Purwa variants
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Maud Spierings <maud_spierings@hotmail.com>,
        "Colin K. Williams" <colin@li-nk.org>
References: <20260211-b4-vivobook-v2-0-9f500415d2ed@oldschoolsolutions.biz>
 <20260211-b4-vivobook-v2-3-9f500415d2ed@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260211-b4-vivobook-v2-3-9f500415d2ed@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: wX5cApBhRx1TvJRK86gK0pydVxX2Jsmq
X-Authority-Analysis: v=2.4 cv=NrLcssdJ c=1 sm=1 tr=0 ts=698da531 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=gxl3bz0cAAAA:8 a=MmgdznzwAAAA:8 a=EUspDBNiAAAA:8 a=WYNPMBNVD5yvkyzGaEQA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=kiRiLd-pWN9FGgpmzFdl:22
 a=bHFXaHSPdiGCh6GRCv3g:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA3MyBTYWx0ZWRfXwvigPSd4mgkq
 Q7kgMPQ/+pd5ORCmCVoerRSi8tKUlgrk6HPScgLecH8k5iNZPKBaDeJGJ1by/aStGNncxmJ6nxm
 CfELDsHOyVcl6JHKmZNbttFm3buKssNgLd46x3YvgRUsm3qhlBJzrlV5aYbiVjQghuS77NT6yW+
 y70e+0ldA47m/oGnar2sg/+Ain7q/krWab6ZAWB0DHJoKEeIwO1XyoS61NdajgzvOk77dX1kL1l
 Sb+QJKA5OagLwjOEZIqIMTts37CMbCv3M0Teqh51rHSW8y6fGRZ9CMjycrYLfs0Vi8nDaQGD6wZ
 EwlC4h89YDhPOQjGQIoZsmyTGx5S+d1Z/Q624z7EMWX70F//vnyo+PVdYdnm1d9lxaeIsz0tP2f
 qcxRDiM5D9izQcTjKcTqWkHkWj5s2jU1UBTMtqhf7pSUMZR4ajQvCOjjnckhzIZZS/xFaDudFxi
 m7EQ/LVG12lurAPcFgA==
X-Proofpoint-GUID: wX5cApBhRx1TvJRK86gK0pydVxX2Jsmq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120073
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,hotmail.com,li-nk.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-264989-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 067DF12C368
X-Rspamd-Action: no action

On 2/11/26 9:37 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> The Asus VivoBook S15 S5507QA is sold with x1e-78-100 and x1p-42-100 SKUs.
> Put the common part into one dtsi file to be included for model-specific dts.
> Include the common part in the existing Vivobook S15 device tree.
> 
> Tested-by: Colin K. Williams <colin@li-nk.org>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

