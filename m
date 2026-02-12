Return-Path: <devicetree+bounces-265052-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLbjCAq+jWnL6QAAu9opvQ
	(envelope-from <devicetree+bounces-265052-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:48:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDD912D281
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:48:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7D8803006817
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60F0A347FE2;
	Thu, 12 Feb 2026 11:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TzDyKRVs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NFPxpu5/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567F72EFD8F
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770896901; cv=none; b=RxX5GIbweOHBLkljjrfeIL74arV+w2nmAFm+Pz+Qih7e1MsEXwBN791Pxs0iYY7HruWvN74fjkU1gMUmSgmVvtDk+n20ijx3MjGrv91Gp1qawJKe9O9vsKK4IBJRQ8ud6a2BYBb+SwiSGZpVlp5J4bFzipQlfIkwIEI3gBh/RJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770896901; c=relaxed/simple;
	bh=hIh3oSyVMQQt7qw+8sircxXE8uP/SPAf5YkX5rhX1is=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FAvsptzvUNEPP9QWS2Zgi9heYHg2yNS8mtj1hHQC0MwLVyyOq81Wcri+KBV/66p54ALyQ9rsrB465eUtqD2X5t4C2tJcbIus2ENhH7PQdhEsB+PWbxI4VQgb+C1eO9TlcyNGrN2Rdq/fuSoVQfptW3wEF1QwEkhsRSxXWumWi24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TzDyKRVs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NFPxpu5/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C9o5gC3562064
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:48:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	58fQgaFCLcM82KGrE+raK/eX/NXaaod58IGSbttniHw=; b=TzDyKRVs960eF3bg
	opjXA1gMScMRs2OHKBzhJXg7Q02mJuCCwXfIJR2+zwreDwR4Ux2YZdEVOrSbR+5g
	wdBd9xM0v2QfkKN3Q9aPXGyCEdCZUVCrBLOHvRHoWt32ULWlh+Ewpc2K8I876nZy
	KLZ+6U79/ZK27GFvUtn5d17zWCgVa+EVMsjtYl8bSccizPk/6meOpX7/dukZc4o/
	GWrWlerIr7cfF8Avwzh3RxGatrB4YUGINIVgCtT346o3cDqSNrOtS0t1WzN4IOEl
	vTWvayEhnyPt1kx+SWdVzs2dR6vUwxauPTUurQs2DIV6cJD+ubm6BTM9lEILXp+W
	BIRvuw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9ck2gbw3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:48:19 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8954b9b5da7so19338906d6.2
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 03:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770896899; x=1771501699; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=58fQgaFCLcM82KGrE+raK/eX/NXaaod58IGSbttniHw=;
        b=NFPxpu5/20eHiKVcK90BawtagLY7pCQOODsth1/q7ZZ0n4XC6ZULqNfJAeSukl5PZH
         7L6KNl5VoJKSpCet6nKugfm9ezYspJT1xOvMFyd69Krs04GF9rBaFzfpBsSYcLoG9op8
         cKsmxZRkjfrx0vXrsg7VuA8Rw9u2R8G102WttcEyCcITkghFUI39TsUbbWjEQ0LFkGsN
         ABby2Z1c29DVRkB+rmM9lSxw4YpPp6f58V4k9SKsxnTp7hZmT3FQIN0nrufhthlMjflr
         pIQvx9WCB+zUH7JrREFyWaJPncuIIqVcM6gbX9Egv63cWVd7eTBe2GhOXKKAiocrMg+b
         Ew4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770896899; x=1771501699;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=58fQgaFCLcM82KGrE+raK/eX/NXaaod58IGSbttniHw=;
        b=TQKde1TSk2WxQQb6wDC1id+bKB0Skma72Ixss9vCXTpMAjFUb5dCLGA+2ZMgcZXEeC
         V7/tp+ebzjAo94kwa/8xq17njL23PFKAzo7xw7jWX+FXkBYqnIJyJHFEbXeOmYS+MbTz
         G+mJ7mqa2fou2WNOxGG1xh+ld2zSHpbMY0QzOuxLwgf8qhqq3rTpLkP1bosMJg/7WgWU
         b65DY6s43vyGqMXfOn9ruNmIUNFwC5xRqSluyhDIJjSAtuZihmr/mKcVgqorpsMdMoTL
         lp6nexeD6CxyUSQUqBrsSvYGae1rKcPvDWNPnL5tm4p2rdlcbzc4AgxBgrvKkSrG6+8W
         uMXg==
X-Forwarded-Encrypted: i=1; AJvYcCWVB8pG2e3fy22HvBfpnBp63G6b5ZE1izpTZt/QAVzJ63pO7QqskKXJ14QIFluogdctmr6YINNF/E9N@vger.kernel.org
X-Gm-Message-State: AOJu0YzVoEXl3/qDFc26uhMWXIa8Bu7eXem91wkPO3VgAASJ7awZcejL
	sWFC70ny3P0Hgg94OBGZRq2vFvuXZNBNTLdsz8JKrsZiU/4jotn5XW3qY+x7be7/ptFCJz/5Bmu
	aCiXWKK2SQMKB1t5kxrqNETCOgbwIoAvf6LmHHrXPETetSF3xHNiOeiGF5B6hHJSV
X-Gm-Gg: AZuq6aIbk6ePgXuH17MVzGrJIXTq8aRrmGnhuNmg4LeWR4qbS03arI22k1c2OrsZGTH
	idoQxXKzSEpcx8r2MA3h5QEF1JgPZd55gFArJNeEzv1vw9sBaODf3PmN93MZGuChJoVKY5b5qg9
	KsBLu1jMyFg8F1rAwTg/LgeKDMau6N2ooDhRajbYMgJv9btqVL+F/erqQB1A9sKjlxMEB8Bu3d+
	v7+NeaVER7IbK4+Qp8P+U0wN6K7b3743YqDZYqc9TJ7ZVO99PGHx4D414aKbA89YyNdtzMfcPYI
	Us0IBfp1GMN7EK7LxdfmZhW3JyeCnPlk2q9HAFzzqA+lxmjKzgiGphIJNkjRaEE3f3KjUf6UT09
	CQ22cCU6yIv2E3oUXwTOEdEvPzjIbGeGCLy55C6RfFJJsg15oYa414RGU1b2re15zVJ9JP56G3a
	FShTw=
X-Received: by 2002:a0c:e014:0:b0:897:41c:a766 with SMTP id 6a1803df08f44-89727af3e44mr26162376d6.5.1770896898621;
        Thu, 12 Feb 2026 03:48:18 -0800 (PST)
X-Received: by 2002:a0c:e014:0:b0:897:41c:a766 with SMTP id 6a1803df08f44-89727af3e44mr26162106d6.5.1770896898098;
        Thu, 12 Feb 2026 03:48:18 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65a3cf38c5dsm1691236a12.22.2026.02.12.03.48.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 03:48:17 -0800 (PST)
Message-ID: <3c06c3cd-cc10-4e2c-9001-9e0a4174d489@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 12:48:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch nodes
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cd7fb3DM c=1 sm=1 tr=0 ts=698dbe03 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=tdYBvKbOvurciTX4EzIA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA4OCBTYWx0ZWRfX+U7HT+udOMrh
 ACvcBb2/7BA8WKdmBdbBNrAN+m2vOAGVeur/S+BLFA9JCiCRDo6tzHp99cclJOasUIc2kid2ReM
 h7J6zpU0fA5JamdVKQwaqGEwrUOjbxEhkgVaJy4/p7bNKJQN5dmecc5EykkkVX1dO2rRX7MchnR
 BbRmW+IoOhoiJmPmDgMwoMFibLpGkFiuZK6+Bapde7sUszHJzc/rNS7NJLC+L9+iBn+7hJww2IZ
 FWVdh0ffGOgDQeZ798a1xvlQi5wfSsKyPY46nX9eug7q0rE8T6YupFjyOrpN/rz7FBmO8fwKLu4
 Uy6m3M1w7IsgWxFCiDh3XfaL8/wFiuoNtLHNrLDfryVUZ14TOd2cSOy8wJnTdFmEDPvdgFEq9kR
 CnXizrAV1lKEjtt4Sqv6dhSzXXSQTIgyZYcv7Chl17WDn/odCtjrCHv29imWKIkMWs3hdxoU/I0
 OdHmYfVBgh/ksMHk/Eg==
X-Proofpoint-GUID: 1jNzA9pzF6ARsZmq5IQqPnP5o8xas2ui
X-Proofpoint-ORIG-GUID: 1jNzA9pzF6ARsZmq5IQqPnP5o8xas2ui
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120088
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-265052-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3BDD912D281
X-Rspamd-Action: no action

On 2/12/26 11:44 AM, Sushrut Shree Trivedi wrote:
> Add nodes for the two additional TC9563 PCIe switches present on the
> QCOM RB3Gen2 Industrial Mezzanine platform.
> 
> One of the TC9563 is connected directly to the PCIe0 root-port while
> the second TC9563 switch is connected in cascade fashion to another
> already available TC9563 switch on PCIe1 via the former's downstream
> port (DSP). The final PCIe hierarchy on the Industrial Mezz platform
	^ +Mani is that PCIe terminology, or is that a Toshiba-ism?

Konrad

