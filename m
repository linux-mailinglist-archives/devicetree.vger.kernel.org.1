Return-Path: <devicetree+bounces-273057-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEGqGKYHr2kUMAIAu9opvQ
	(envelope-from <devicetree+bounces-273057-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 18:47:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B929123DD7E
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 18:47:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AE7083008504
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 17:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71BE4293B75;
	Mon,  9 Mar 2026 17:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JQcmXvXf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jBhUZ5eM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1D527A133
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 17:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773078435; cv=none; b=ddZfatCeSj1AODf2Akcuy0Yo24BUTtXKNMWaoN4Xy5KtM+rfV+FOg2DaRfdCGIsfcDcDTNtZXO0Mlhsh48AE4xXMRLyiw2ElRF/YagpCzsCjgeQ1bKhMPvQwra3ZlzFCAcWHZqY0gbLZ9jBOuXjMWm0netPu04p2OUURfgluWG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773078435; c=relaxed/simple;
	bh=amu4C3+KJMcTnDyB1qFK2SonJmt+nIs3bCqcU7NAbRM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dQ5bNeHkNu1PuQtjdT2ePh9ekVA41jrg7fWfxLxKMKXh2wcqVB/PlRF9Y+QUO10qrTAlUbB29YMiH0qmiTLMIcvOPSIKxaek3vT1aMJCK40OUZtvWeWvWU0WKB1sn3pRw6cQLncj494BJeXzLw+IgFnZcXBNhaCvDCmLe5gg3Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JQcmXvXf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jBhUZ5eM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBlug296205
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 17:47:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AEVmw5aPLupuoMRwd5bF0YyKWjnchf/iJOwFvIaVwxE=; b=JQcmXvXfIYmOhCDK
	+xTle3Q1wpg6BVDtPRi3M89imTxtkUH6FY3wbG7KggMgUOfakyYysXUcQzYowFIH
	iQLeW9NUjMB89wzVm52zGJGALZHc/1sPQdoARN7hXF94WdfXPv6cpW8mWnz/2Xg+
	GZywC6p16ItDr+i9fHzyLrH45gSfvbGlQC71kxHywOC9rjl3d5k3fqCsk90gv+iY
	PSgt/nw1teI8CeK+xllc/4lJdT+ehfbFGlkEE2hzEY4tXd/JAoDKTrTaVO63LPTb
	5YPNNhz4Q8dTVwuzul53eTRlDvSOOELxlSJkuj2/LQGui/FlFBttg6SQPcrP+5qZ
	YNSNNw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyfy0vvt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 17:47:13 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd7fec8d44so847922585a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 10:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773078433; x=1773683233; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AEVmw5aPLupuoMRwd5bF0YyKWjnchf/iJOwFvIaVwxE=;
        b=jBhUZ5eM62+M0PPDjrjAuqcanWe+EW24EWA+/HbtWq2ZNHMxnEfiIZYKk5mjXGhncF
         Thf7XWLR+rYo0Tq0vf2TEkvaWjXw8OvnJvf42kmbd2Ohn56jhIr4NbCwChVujOFT2hYV
         6I4iMJgXHExc3flUrBkb3+Yr4O6tGv6nFomPCsnZH2tY/S/yl5gMqIbW9OWjSfeIWhPa
         hDLPZpjC7bdujWG2m/Y+1O3WY59eF3LJY7oyeLl91PaSgrQbXmvdC0yopKzI7CXaIias
         o2mkfPcoHMBFYCb58YYmE0tx2Zy2e5iLhfpi7eYYRUtwPssvCNYd/voq6YyVNiKtspRC
         iZaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773078433; x=1773683233;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AEVmw5aPLupuoMRwd5bF0YyKWjnchf/iJOwFvIaVwxE=;
        b=rXUuNYvNNkWlrF7SXQywT6QrhKf/SCL9CjkHqcuOMlBWaDYCa2faL3+aNak/SEe3Ou
         X+h8FdaNmmPFgfvpqxnzni8Rgo2EsE0QLP4wBS9/N5XZyI6ZtLutsejO893Wx51pCZOQ
         Pk1MD2byZYdlrVoLSEEuNDke3sXqsILPDReoj0Q0iuBjBaLgitHMVL+Sjnr6tUws8hMK
         WQptznTfysuY8y9fCo14Kf/1qcbhS6H2zPhRnAO/W7PbNXv/DSX44q5Rc5J5NueIPfCE
         gmFbP/mT5DRMTBiojcKYYGCAHahBnh8DuOTlbcDFmTsU+nmQC4qGEUf8sHXuqZ1lPDlJ
         5b1A==
X-Forwarded-Encrypted: i=1; AJvYcCW01DX+SBi813iIvT1IonlNbeJkPT4+tHcZBTSx7G2gRguzH4prmvBzgMR+cs7bIctWKXuhCCreDJvF@vger.kernel.org
X-Gm-Message-State: AOJu0YymJ+Emxhyn7AEsYiM3czN8LptZi/t743v/22Brr+nvTpDyBRio
	Y6Romhhm8go9YeQPkBUjIrNAlnPz2i9ye3Pmf8tEr7FEV5nss33j8OvqFYTaOn9itxGknii0ghz
	DxiS3fQteNdoFl4keT9QmPeiZaGO39BSiLrTeJRGnW0u1cAxN3eGPTEe7vKAVRjvf
X-Gm-Gg: ATEYQzxCerrHCXXpyMxmVhezPo+AK4JnvnmBoQ8/KIfCO4HFABqSSK53kG+sUyXsuMs
	oCEzKP0xhjOJPfGDzL3ntu/0guZDJq8ZUpS0F1KyOOC/cBR5Dkeiwz6n99OkW+P8TuSpne5eoXh
	F3WdtfuZZzpdw7hKl3bEtNfP4z+4/l7I64v33byvQM3oZEauIBecC/Y8BI8uHGsKDWlQXtnbUCT
	rvoEg5lOyRxBWqq0t2glozrKXVH9ipupiq27OMN/SOXUjYYm5Pmxg9QPMhEykMBBBs5QKB/SHFc
	Sq9AN/5z1ftwqrtcLIP4MsAYYbRho/tbSqQGHXpH/Oc8Uq9tCKCLTOEmQc4mMaKWJRMY6A7UNRD
	tB/nbDFUo2aXnHEvmcgsoXdRQhabVsKfCHJCQAuntSgr7XfW7
X-Received: by 2002:a05:620a:1a8b:b0:8cd:8938:f015 with SMTP id af79cd13be357-8cd8938f423mr566094985a.51.1773078432613;
        Mon, 09 Mar 2026 10:47:12 -0700 (PDT)
X-Received: by 2002:a05:620a:1a8b:b0:8cd:8938:f015 with SMTP id af79cd13be357-8cd8938f423mr566091585a.51.1773078432132;
        Mon, 09 Mar 2026 10:47:12 -0700 (PDT)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-439dae56300sm27867521f8f.37.2026.03.09.10.47.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 10:47:11 -0700 (PDT)
Message-ID: <36bfa98b-05fd-4788-afe5-f28751148889@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 17:47:09 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] dt-bindings: arm: qcom: add Arduino Monza, VENTUNOQ
To: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: richardcochran@gmail.com, geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com
References: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260309152420.1404349-4-srinivas.kandagatla@oss.qualcomm.com>
 <82b23341-d0ac-4b44-b50d-ad0eb5509974@kernel.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <82b23341-d0ac-4b44-b50d-ad0eb5509974@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE2MCBTYWx0ZWRfX4AYsj+/3XniD
 1TG2Jckh5oE3yvn39hcr2aV79lzNW12b2zXRh+gM/O9Tp8hmCpswrFIA7l2FTLOGj3ErVRJaCKi
 e1YU3KOIPmiRcB/ZBparwVdK/QHKudZMAsnvkocsFYHp6RLgMIgLVgfuAlfdxAZLCiYjIbiZW37
 smfaC2JFDXCt0E3xGOqKjM4x7GdBdwN5DFF52gEJDHoIb+f+tmorSOKXntiIrlMO8xzcLmX0GAt
 otzhJjiMvSyzL4oOI8GomEtP8CIUgq5lQ8hnfGXFkfSuZnohJ/cv0y/l0vPcqVjWYuDAE/eKBO/
 2YSvREf8RT+i7bXYXXpVdak1j6pm6dGXsLKtPOYM4bwiNP9yVyoB43a5XChuAkbvpeRiuVDhL/v
 hyiMpTunovysKQrsMvtyM1YK8xe1Tf9jh7LZPv70NDHeMPwVejfz2n6isiAVewjaimvvx1tF0DK
 lD0KG2h+2mAfiu5v3oQ==
X-Authority-Analysis: v=2.4 cv=OcmVzxTY c=1 sm=1 tr=0 ts=69af07a1 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=KQ5Aj9_w7GlCoQvhwioA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 0Y6qT0ANbOCF1eqnOozAqo6eaiogHBPe
X-Proofpoint-ORIG-GUID: 0Y6qT0ANbOCF1eqnOozAqo6eaiogHBPe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_04,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090160
X-Rspamd-Queue-Id: B929123DD7E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc];
	TAGGED_FROM(0.00)[bounces-273057-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 3:50 PM, Krzysztof Kozlowski wrote:
> On 09/03/2026 16:24, Srinivas Kandagatla wrote:
>> From: Loic Poulain <loic.poulain@oss.qualcomm.com>
>>
>> Document Arduino monza, VENTUNOQ codename. It combines Monaco
>> based SoM with STMicroelectronics STM32H5 microcontroller.
>>
>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> 
> I wonder how two people were developing simple one compatible change and...
> 
>> ---
>>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>> index 153664da91d9..2edef7e86175 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>> @@ -890,6 +890,7 @@ properties:
>>            - enum:
>>                - qcom,monaco-evk
>>                - qcom,qcs8300-ride
>> +              - arduino,monza
> 
> ... still place it in wrong order.
Thanks Krzysztof, I should have looked at this carefully

> 
> Best regards,
> Krzysztof


