Return-Path: <devicetree+bounces-266133-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOoXCJ9mlGkpDgIAu9opvQ
	(envelope-from <devicetree+bounces-266133-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:01:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A630414C43D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:01:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 37F78301C146
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36BA3257854;
	Tue, 17 Feb 2026 13:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lYrVuSbr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QS4VC7Kx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC39191F98
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333237; cv=none; b=TdS9Qy+F+30VnptpVd6uh+zpScKkEqW1DLYnQBCKR5I+dH++SqlpA+uzdqjnOqaVKMcX1JAvkwEvvfJmSqQsJUNV1iKuXQNarbcNPASWP5HAMjwuNg8RvdFZ2wlEQu62X0/sKOQMJ6bVj6Ypif4wn/Lw3tWOfBCN4j5IRBGgMcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333237; c=relaxed/simple;
	bh=38zneP+037Vy7Mbk+7KlLjFuG+3hjob8r72QOd9MDa0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=pTJLvT/e/dsWNZOIHaG0K9y4doBfDe8eqGI0BX/A0FFb8ZOL9Y1rF7LaBO01RODxZ9gAyT5GurAcz9ieMXyq3/TtCes8fzqKYw0h++Na2HlyFqn4JEJHCT/B9aSKT4PCQDujywNvgUb/ihPoCOK7qc+DlIgLQFqJOdlGDE8TQjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lYrVuSbr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QS4VC7Kx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H9MHni985268
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:00:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n30d7bzwJAIRQwkxdoxxpoTkiSLbasbG65uhCKcM8aM=; b=lYrVuSbrApOLwhCz
	UhDNBwK4CmZi3q98P0SI/cQJyJ9Nh+Q4c3gd8E6ujSRIYDqS1uuyt2d5nV1L2pXu
	mm5UG9uDq6ELDFB8CXb9Jej4KbmPemT+/dG+qL3JdheAAVYjX33VUae1mSP4nvKg
	5S9HobjJ5liRuUHVuqFy/GG2nM7yQBZUOMuvQfzDP0p6yvFQvTxEg7bFTHl7XOS/
	4ufJ6+iBRW5/aMwyhhQ62CzwpE3Zxh1Ix/bKxwyBJkVoV/hBOQfyq+FDy79Fpkhq
	DkXy8nGlQBChooCoIDXqvxCWm5SPPRuzesMib8cK22EqB0vgpUcKSAdt/IIrkKn4
	IyjPng==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc7ap2a21-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:00:35 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-896f5c90f07so43198226d6.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771333234; x=1771938034; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n30d7bzwJAIRQwkxdoxxpoTkiSLbasbG65uhCKcM8aM=;
        b=QS4VC7KxyAtWWL38fHpN5f6DgMMZuLcemME1QZBaxFcPcrPgtZ5hrvtsJCrjSYvMme
         fupybgd0Bs9Lut3P4g1JdeSvLlX2sMNoKWKz/Fevz04+dDTCoLHKJWdy1wjS+i7mnWsE
         fd6YlDKsrv0FDdkdpNgT1Kwc0YXdAg5A7MgGZWL0ZccWGB3+ZV2JnCdFnwqgoRyBsH07
         DXOftZmm4RMQB2H/365uazXG3GmpTuI7bAP6kMeZZvcB3zdcadCC0b/1NV2Z94c27yF1
         mdzYRaKvImkK/NFoM1JxDJZBBaPjV26MqNysdGb8Erf5B9trusMtZgNhneSxnn+ToZDz
         nUZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771333234; x=1771938034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n30d7bzwJAIRQwkxdoxxpoTkiSLbasbG65uhCKcM8aM=;
        b=eR0DsQqFx3qU5cfgjH6yd3QSq0ZEYuErUAuHWs6nnoia5GRQEMD1FW8bGq2QIrmHb3
         WJxqb/oiu2TjpF9g5WWjnJJfyPRcwDBd5XhS1TuYs+f670EqQLU2rH9qZ4zNKH2KmPR8
         GodPbV7VJI4MSNTmF2OhMo+09VK1btRHiFW2XZkPGKAAAUME5Wt+RzEisjWZaLo67B11
         ss3C5b9igQdLiLpC2b8eo12gszf/O8bTBE1KrV779FDnfIt9s209wcfFl5ZzU0KIBbtl
         r0NX28Fhp5aLyzaSmmSqDiQQ5dfAP1vDUj76NXrBZRkFF/UbSgfKm2zfupR4c8nxy+Mo
         9gSA==
X-Forwarded-Encrypted: i=1; AJvYcCWlvsoY9wC4etaD5bNkB5jtlzoh6uvF9rUJ87gr71sVwOnSjUn3ifZaP2/RCQC+lrKDyXFQU7qE3WFn@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ+ppaqifFlWp0SvP7Er7uLv47bxUgQC2HMWMtG7m7crEJkzVJ
	xSPivrkP2IdaJHWRIUiaORqh3Yd9kH/xPVAO3frJVixhRccIpWG2lx1kafwa+PAQmnVnoylkUkU
	6/eYXxzbVIbtR5D3yvMBhCIgBHpapuo1v5/kP/odqhAWeefeXZbsHkDYp2gfa4AzT
X-Gm-Gg: AZuq6aKYi0DoxdKirxdyaCg9P6fAsnCUjeYZudjyWWKNEl7w/7oQPMiwRBSiLxRbLak
	29CnXgj+cSM8yCdONfWOzGZk2OdaSppU8do2WbH7sH633RHUfcPI/jpA+kdNX6jJEpPdyq7IsX2
	edkCCeS2sLQHeuS2j+vBSmSk6Pa6YyKbypIs21bYCUBWRVkdmb/UfLkXOTGMizkDeC8Lt40x2MX
	VoGGhVhggkCaV+Q1V7TQPdXPoD67hHD9dP5pPNT0aGiOTlv6eR7Zh2YuXVZXwQSlrkKBYrWY5wJ
	2t8RjRof2VZVc8M++sfcaRQbEFRol0SFUpcJa0jjtl+PM20LOEhoqbVoVHpXq9AunCH1/86SVX2
	deY5hDj+PT3rhZQXjwHximpJ5eGNmrKCwYDF1tovSdtRErELp09BlKoHl3RRsICsTt4QFALYqMe
	JFuSY=
X-Received: by 2002:a05:6214:4f03:b0:896:f9ed:be98 with SMTP id 6a1803df08f44-897347ce6f2mr139776106d6.5.1771333234610;
        Tue, 17 Feb 2026 05:00:34 -0800 (PST)
X-Received: by 2002:a05:6214:4f03:b0:896:f9ed:be98 with SMTP id 6a1803df08f44-897347ce6f2mr139775526d6.5.1771333234128;
        Tue, 17 Feb 2026 05:00:34 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc76b2580sm345885466b.64.2026.02.17.05.00.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 05:00:33 -0800 (PST)
Message-ID: <45683e0f-a49c-4da2-9be6-a79623fe12c5@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 14:00:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: interconnect: qcom,glymur-rpmh:
 De-acronymize SoC name
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20260217125819.281209-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260217125819.281209-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217125819.281209-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwNiBTYWx0ZWRfX6YnV5B/wwBs7
 RKfNN69/d1PKNWn65lGVwcGzYPc18Ftj7gynUPKA3uDluR/gT3sg+rk6cbsW5SdteLwF+Hlidy8
 sXYCMCwB5O/xccppeLdRXVS5U+9d0unNmK9aLAanHMzNUxdui1jIrBRVuhrakmnCVZYoQJs71Kj
 aKHxkBARfl5GBJtVl+NrLm342Pa4qEehSilasWlEYut2xvPT+7tILE6s6n58FshiamxLsPfIa2Y
 thuKg7C9LCpZD4Yrbxpn0d+1vmT7QnlpfxsLStCool4MdFjt/DMov13zuMbrrz06IkTWc+2pJhV
 H5cHJIivj3BfCSK+e97XnlzlqzXltNHx9hNYg8HBlK8cgOfn92PAJ/AgomFy6luflC+gCooE8gp
 f2vCkkHd12yM1EanowCshp31LX72GpRTZL4H0jmcVaBp98l89pYS5vd33muUivhK8UcSFKUhJVc
 DMJAOVoXI866WSgvO9Q==
X-Proofpoint-ORIG-GUID: -AkRwvWoatQC9EmSGfXyz1amjGR9udSW
X-Proofpoint-GUID: -AkRwvWoatQC9EmSGfXyz1amjGR9udSW
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=69946673 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=Rh8BIR2qzSpX2dRZ-WwA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266133-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A630414C43D
X-Rspamd-Action: no action

On 2/17/26 1:58 PM, Krzysztof Kozlowski wrote:
> Glymur is a codename of Qualcomm SoC, not an acronym.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

