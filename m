Return-Path: <devicetree+bounces-276590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBOxJvwiuWkrrwEAu9opvQ
	(envelope-from <devicetree+bounces-276590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:46:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1AF2A7240
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:46:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1221D303EA28
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84CC1378D89;
	Tue, 17 Mar 2026 09:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sqh7hmWj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KKt8sTMB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49767376BF5
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773740051; cv=none; b=mIxE83XWLu4TUX0wbvJfNjqbs4UQJePY8w8oHkYutSMGutLOSeptCT9p2zsFvIEYvtaO0M7oRLtNts3CV9wb5x8oEMQ/CzITo8wFSue4qoqMRYLjYBc2mX7Km+9TawQFIroG3/xziW+gAFEvUCJLL0mINCtMIEwGYsG9x3l2nxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773740051; c=relaxed/simple;
	bh=q11mXc44GeTNHTJOjLpEpeDqjyUuMZ4LYBQSqyUAaos=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hl1cBy9ZfSb3c3zlFaErDF7y/TOIiHPWTSaQfWCqupI7ktDbadl3Xg8YtpkNV4ir8nwjz7FeUEFrbRVOWCFpSngOLBcM6Y/XdLSSoYm7EDGD5K/c0TxX64fZqVjM0nc28oajxQRpJn/3pkOFptpz3XjQslzLLkWgX4J5z4LSZ/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sqh7hmWj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KKt8sTMB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H7JPxN3124394
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:34:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iLwSasQd1rvijMirGAOReAB0beLoegkuZsudd5rMmPo=; b=Sqh7hmWjrqkgWcle
	fj8QRoMFPOxsLXUrSoNS6vpoZ5yNRcOay+8yfUd6mdzT01jsNCxY3rjLrEs1avbu
	i8djSf9m9DwKD8KQty52ICMKrW/oq8zJfVJEGRq9s2hUmS9ffl4sn7hHn5GEGmiK
	LR2bc0K5j2RwvlPfBHM3h5pCIjxm6wb4W7qHvQyvEBlkjIz4k7Lgmfj568Zg7Iy6
	iTPXncX3Cj0VAqS5eyPzbJ0imdFZRTslQvpTBELFkEtADfctVbpP6tc5VPwcaFrp
	dpyaiFncF0ssBD/RnIVI/QiDMjAeFGVMnkFwsIyzVzmKY/LjOlOCrrTk5698SZZz
	p7VISg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy2fbrguv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:34:09 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd93c91075so362465485a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 02:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773740048; x=1774344848; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iLwSasQd1rvijMirGAOReAB0beLoegkuZsudd5rMmPo=;
        b=KKt8sTMB/1ojSaDX+D3LsSmjG4dhzrSP3+aEhqP2GUFO3y/x+9YgyJ1aBplJ6BqaVi
         JrUYDoHCahk56wpekY/dDpOHXjNoTthzIW2G67FRqRH1Q1sAZ2Gl88qWJb/vbmBi2QBf
         j6BXcO8w7gP77282osGuKiKB9qqg15s8w4D2+kOgneI1ZbzdhY/VAD3fyTV5CWvAOVFZ
         1NLt+y399i1iZfdNqwPR+XIOvsgQq3chVFHYXO6J7RCq4pMrZ1ZurNu8VEZ6Q7xuPjdq
         kel85vSLgv6yAaykJNSSAvKm9PDBdwvrweOhv/+4HMhaz4N8n5qp4vVhyCYzsQCQGRDY
         YeIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773740048; x=1774344848;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iLwSasQd1rvijMirGAOReAB0beLoegkuZsudd5rMmPo=;
        b=UhCOvwxPzWvgc/xxQ/VtJusMgqwAKhdLlDWpgRCayZfyzHqQc5szygYESgg2bPoGN0
         wuk8hK8994SbxccbCUwkJ9p2iRYJmIeMlLXXS/iYpYgDi/+9XDxAa69fYdcNBywNCOC/
         8BrqD1fBB8IHfHTKQPU6reocf5LxYX6zJDEggjHowhhcpLaODI4A0dd/wb1pKPHw8GwO
         ETcGzA3lTtLcJUoITJL98fmw7od57Caqm7a4TN+wRyeG1rUaWLeFhvvNDzbTZ0LzWLqL
         fJbWN7cKdkqGtur/ijr2nKDNiXJkZLFB9NRQDYAvvRjY2E2L9KxZW0jjCP/0aiUghOO9
         8Thw==
X-Forwarded-Encrypted: i=1; AJvYcCXI9Caan24ThUR7QV/yb/8oIu2o/PPhro1hK67soEX2FKOXPt1SIm7Vtgq4kC31ZXqp6E2u2JytSgvD@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8NwJqIeGHrhyTChZlmOSG9qtw1abaoI5P/+LgE8FQJsA4jVuf
	54gdQjfpe5+mlx/i/WONVB6lSMyjua8K3KBbekIaAuy1MOAMLqJTibcycI1ZekgjMKMTdu2dZTu
	gmz0NqgJ4ULQqvxVrVjXhBBTtpVC+RO/assf2+Vvtzc53hPxG++N6uDuS1axOkiSG
X-Gm-Gg: ATEYQzyaLnoZeQ4DeRXrEkWV97FKpDve3mRu+xxjZZdZG3COkyoOYGIt5bX9G2sNx1A
	U5R9nhAq6NDgrxep45g/6iTogVk8ZU5jBXl7eNQo8Qr57iUIFdd5tg5kEr4DUxhbh3MH6TVAHwR
	MN+sLDS2/wAuZ0pMTiV0oYFrs8VX2TD0N34cC0p9Y33BieH7lV9ITkOIgepSxLlavCvioPP0Gck
	N3B5ykmW1DE9WJtCt5pbah5fSh1Ry6zkECOW8qsEI9n9Gr61QZQNEvsVcjfreDzmSPnqCtfN4Gx
	uCbklykfvaLUzzAUgEd6h4176NEHP/jpAIyh6ZzNun1W/pC1UiWj8sCNCZTI3YooaGc/JwNqFd0
	1smJXXD2fNoJGyEumwrvBFDUuEEfmn76/SSAtn/7KQD8gj5SwQp+U5MQ9JXGPX0+KuECV85/3bc
	iFdbE=
X-Received: by 2002:a05:620a:45a7:b0:8cd:933f:d8f6 with SMTP id af79cd13be357-8cdb5a55831mr1570593885a.2.1773740048539;
        Tue, 17 Mar 2026 02:34:08 -0700 (PDT)
X-Received: by 2002:a05:620a:45a7:b0:8cd:933f:d8f6 with SMTP id af79cd13be357-8cdb5a55831mr1570591385a.2.1773740048003;
        Tue, 17 Mar 2026 02:34:08 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-66350b86008sm6324349a12.28.2026.03.17.02.34.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 02:34:07 -0700 (PDT)
Message-ID: <9048a55a-e6fe-4dee-8d37-7a998d93163a@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 10:34:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] arm64: dts: qcom: sm8650: Fix xo clock supply of
 SD host controller
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260314023715.357512-1-vladimir.zapolskiy@linaro.org>
 <20260314023715.357512-3-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260314023715.357512-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: kRoDDv1sHDHzIHus0m8W5cNWYpJOtY8B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4NCBTYWx0ZWRfXyBcwf5Oz7fcj
 an8P41wbR597zk4tQrmwMsgPdsS0ATM4yftzLWL32hzRlt6PKtQyeHKdrYUM3mhS5Jmo+2tEN9q
 g+UKqPm9gLWBuyj3BgeC1ZJXhP4/2bmqpFmOXDOH/HNEHDy68oQi7fV/oeHcCtoLfQ6Dh3jZoYI
 wQBwc0fFEixl7ReUTEV+2HFNLGkPdvoU1OI0hJG0ZirDexcih2MMbsvNsvej3mIUZaIk5IY83mh
 xYVQopcATWZzs9GlT9aUX8MW07poKZrqVvoFo2ICxUAox2j7Bt3NVGWWUFOo/97pFbXqKxCrcp3
 4bHK2raCJNjX+3Vo8WIXafnIj1/bKyaiju97gCfs3WYo43SXi9WM3arjWFVIQAWF74Hnqb4Bknx
 tpByhgf4Gh4/xryg70/e3CADJ8/7nRWdhQTb4xNOw2NhGzP+hY3qgKQS0jxqWaNOvBcjRuevSLv
 9iiEnu2/oh5M9JhnxUQ==
X-Authority-Analysis: v=2.4 cv=fa6gCkQF c=1 sm=1 tr=0 ts=69b92011 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=gMOla9jSct7F-4z9eBQA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: kRoDDv1sHDHzIHus0m8W5cNWYpJOtY8B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170084
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276590-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8A1AF2A7240
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/14/26 3:37 AM, Vladimir Zapolskiy wrote:
> The expected frequency of SD host controller core supply clock is 19.2MHz,
> while RPMH_CXO_CLK clock frequency on SM8650 platform is 38.4MHz.
> 
> Apparently the overclocked supply clock could be good enough on some
> boards and even with the most of SD cards, however some low-end UHS-I
> SD cards in SDR104 mode of the host controller produce I/O errors in
> runtime, fortunately this problem is gone, if the "xo" clock frequency
> matches the expected 19.2MHz clock rate.
> 
> Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

