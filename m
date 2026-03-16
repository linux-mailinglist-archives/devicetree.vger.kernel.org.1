Return-Path: <devicetree+bounces-276074-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEx0K6bTt2n0VgEAu9opvQ
	(envelope-from <devicetree+bounces-276074-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:55:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A0A2977CF
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:55:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A82D300A3B9
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA90E38B7C3;
	Mon, 16 Mar 2026 09:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ea4yr25c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OPuV0oNT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9377337B03A
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773654947; cv=none; b=FXYycglHpTJilsHEwEOna+546YjisTzoCuttJp/S5ppcKwP801JaaeNLhwKpCh6AIRziQSwUoOHuGkCTpelv/ONUBe+VTa2Jcgzbx2FfWBbmwIcpdyrOmzqoqnu6JXHfvBbR1205EBIc1ifQkASXpR6mya6JDKZ9mBC6PdCXyMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773654947; c=relaxed/simple;
	bh=vUeYwy6YYwgKmE98VrQLfg9q79tx4Vu9QgU/DGd18Sc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JsbOKV3oSAQIniZF4ku2JyUKHIQRNmpKtxIYtqYS8+shMixjaxBHNilvVrQz3F9g5x/Ld5ucT/irk9hcaKuibK5I36r1epA3UpUPYVKKhteqB5K9N6r1SMKjaqE7UPtYZu1QfbNwDmLUkhKacjJCAJEGCe/cMvVwYHQCAljpeUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ea4yr25c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OPuV0oNT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G658s0745781
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:55:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x1kBcTlkaa3mAzZi23GvAfM1tf3/9KWLYcQbFzt+0ow=; b=Ea4yr25cafdK0Mco
	XDPNPYgr8dSq1Blxe2NVxnn2nrsNlXSyGRZ7tjViD5h8aRwPyNbIevZIgdkf6zWK
	0F7JbiHdM2T/R8Jl4o5R+9+egd5Z8t08UGkUnWn7tU9SbjUNxDbIJQbNDF69AHFt
	lGomLagyaO+BsSL711twZvfVeLudLkGpYddo/1JeaNIV7yXWk+9H8lmEVWU/DVue
	qM53RsFx3QAX+mRbHwYSy+cGRO3ol99n9KO2+/Cmug0Lw3Vby0GYRBjiUtvT5aV9
	nM07K/OlkdUHA/6bv35MDQbEaXesyI3Hv2lOZGuVuokqg93jIDXCMmrFqQrlidhN
	R4zuMg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw00bd73f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:55:45 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89a04e9d4faso35499686d6.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773654945; x=1774259745; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x1kBcTlkaa3mAzZi23GvAfM1tf3/9KWLYcQbFzt+0ow=;
        b=OPuV0oNTNO1Lbaqauyg8ZZjTE3JZV5dt+AlemFZHBaLh6UEDqzWKq1U+Sy86QQ68q7
         THDAsPa4CGPKEGn98P6RH3UNxm9auYsZrTwzZ24IIz85Bb1zeGCJX+lJXwTRpvgHHhxs
         XlzE581BdGlyoXmK0Oo5IdhGyHljYM+T4pZbOiCI9l4b2d3EpemnsQdVkWh+t0oiq9v4
         HFWwFZSFPKPKoPMl8XQdHVjGD48Shm0o488sY6QmA1zLHpwJEfTSfqvve2b8eneM8Vlq
         Y0vZt35uuJAXLxJlj2lV2GpxVf3bslDcldxdx2r0Vp7ZNNsW9cULvQ8ppHyGA6d+NZcY
         BkaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773654945; x=1774259745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x1kBcTlkaa3mAzZi23GvAfM1tf3/9KWLYcQbFzt+0ow=;
        b=OpD7VtjwTGeBd/xsF6FWI2IucjEMq4ku4pDIm73cA1+RECf4IPqBRkM83R/OFdnuXs
         DXW1CRzyTmAWrywVd4rs+uTtZn7ueZ8Ae81C5phfg5CwG/vsqKWmIJP8xORIUBLX9OCt
         oOgwGkoPCuhxkimsS128rFfSrJ/FzpS6PEXgoQ2jxPSp6y2DZeZ54UquplrY0xuXfzyh
         T3l8CCzQRVftHdTK49Ota4QDy7VxbzEi7VFqqkbCHeeNNIIBJkTaVvySNjJaDQfe0Soh
         iC3KNpBBVLJfOElcYSs/ximAKSbDp03NrRk78BwqZT2ZGnhwaTUrp6bPOsTIpxI0xbW2
         96Zg==
X-Forwarded-Encrypted: i=1; AJvYcCVYe+N64CPe6UW3vfmP4lQG7cAgYjiXOtu5mBJSLwW2v6z0lpAQd/H739Yvj9aYjLQtihjB+dF6zhr2@vger.kernel.org
X-Gm-Message-State: AOJu0YyXDhcOIVvu8Ieh8YBTaMX0qf7EOU3QqZhSwbfiszrpZ+ElYGAO
	B/T13nDbEbxCASkkuxkUW+ePmF0xyevXXmRwTRFET2Wxv2yY6QI+AjXZEvztHVFFEt+Ki0qBoVF
	oMy1U2CSUbumRzTk/3K9dXkDI/iylLVNCm3Maw9zGbV8I/CrOOknxG6qOvLgNRUA9
X-Gm-Gg: ATEYQzzxqNFeG2nqU1dDTCw7OgUwIQD1YunKOdQNHlFVMRrSxvOTf+PyTzEtPdOcCHs
	+JFouuZC8UdDfK4kr8J32kPbmGdR/LZrYPeRlk3I+rxTg/NXL3GbFV5qg8MGQG+BAy6mR+tHjul
	WXCKSY+ye2GS1Z2A4x6VyXnEQQ0/0vvia6KSmGfs090RnUoNYDTWIxFQYMtbgli/HU9y3NrwLtv
	1GleZL2eRKsRX0XGZdqio0yJsw2k4D72qlPPHD8OtcyAy7dFbO6YxcecKUhU7McWJb9QSwv4u+J
	arkrTg1ojgCA46Cd3sTF/WlU20Ll2prhJmoKWsp/ZP8waac+r7y7WWxfp5NdjvSBTyMwIi480BS
	F0huY7mVBqIuj/s2j6FaFp7ax28MoQkZRAY0NdIPDt6ujBVdoSaB6q35QKKQMyg8CS52fDK0hDs
	qIFAo=
X-Received: by 2002:a05:6214:8101:b0:89c:51d0:20df with SMTP id 6a1803df08f44-89c51d024b5mr24192786d6.3.1773654945109;
        Mon, 16 Mar 2026 02:55:45 -0700 (PDT)
X-Received: by 2002:a05:6214:8101:b0:89c:51d0:20df with SMTP id 6a1803df08f44-89c51d024b5mr24192676d6.3.1773654944719;
        Mon, 16 Mar 2026 02:55:44 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97be126d3fsm139622566b.18.2026.03.16.02.55.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 02:55:43 -0700 (PDT)
Message-ID: <d2fd7358-fb67-4a0f-8166-2791e5c3490f@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 10:55:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: Add Redmi 4A
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20260315-riva-common-v3-0-897f130786ed@mainlining.org>
 <20260315-riva-common-v3-5-897f130786ed@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260315-riva-common-v3-5-897f130786ed@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=IsATsb/g c=1 sm=1 tr=0 ts=69b7d3a1 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=t37Vj0VEYoQJ3GWKtc0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA3NiBTYWx0ZWRfX49B6ut4uPxHC
 E6URTb4u8SEVugWNvp4SsksJEJTyASUDhtGE+49wGrOluUq+7ql0rvy6VK/RO2c5vBOy8d6O3Bh
 PJ22mLUONl+BN0fPGLRqqraBi2azMBXUpkGEvui0jsEexWTeKf2VozeaCM97Ik3olbIF3gt6PhR
 nGFJCJXVbudTXTLZZE6OauEgA8Fi2fXIy0gHeny7uzSFYeX609q/N/JrD2qPNU9DzKlQD1r0X+F
 Y3VGwLmLa+Rvl+ZZl/VX6S6g1D52diby3Uac0qEI63vjJ3q1XfqiQB4tELnWPohuU5yRy3b3GZ7
 qc3vSzlErlPjipQ+Js392YVqaEqdN30Vv/jSpwm7dxYdwoITUfh0EPX33uUedAu3BnrNyXOzwmt
 WwSptn1Eb0pTUyNoN6GSBAv09oFy0ierPuGpeEERXCtUsEHaQAm5huDHCvl+Eyj8utI7Y4MnLrp
 ancNEaWeLVPZITF9P0Q==
X-Proofpoint-GUID: r7BCFO1zf0co6rawUnu5foX4ZPbY-bwR
X-Proofpoint-ORIG-GUID: r7BCFO1zf0co6rawUnu5foX4ZPbY-bwR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160076
X-Spamd-Result: default: False [0.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.75)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mainlining.org:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276074-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 10A0A2977CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/15/26 5:26 PM, Barnabás Czémán wrote:
> Redmi 4A (rolex) is like Redmi 5A with small differences like charging,
> fuel gauge, different speaker codec configuration and display.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

