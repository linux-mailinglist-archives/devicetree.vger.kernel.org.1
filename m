Return-Path: <devicetree+bounces-262106-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QO+5DDW5gWm7JAMAu9opvQ
	(envelope-from <devicetree+bounces-262106-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:00:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB29CD6811
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 10:00:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5C0B3036D78
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 08:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB099396B76;
	Tue,  3 Feb 2026 08:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i40bU932";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ayrn5XuS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AAD395DAE
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 08:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770109159; cv=none; b=Cj6Qx9t/MrPGGDW3V+FmW02OZBufjvj7CjG9Z3mKIHqGflX3a+ObSj22f92scgfX5XMUDDncjiUPxIayCsfXMyO8xaiAsSrbrWZflmWqfTxKFxOlAsXujSQl73pUb2xKAxTKDu9DHV9iOr1IDxNpPz2x2jcVETasHAteuig3Jdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770109159; c=relaxed/simple;
	bh=HlKQuIAuxHl7M3OesECHQBCxcGtp96lDCpnMxQhji20=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i7+vUD+SxG4gD7p34AgnLomoqqO/TcPb+hGZgtXd4eLl8E1gRIpHo0bQbEHTSEjxDMvbV6cfbQpzwxrkQmxy877/wegXCCKJzF/535mWdjvV4yvt+Yl8Z+hgvu73sbQFtddIBz8bSg4vmZMUVfIjNqdWWmyNHrM1tuoOBpmtNBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i40bU932; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ayrn5XuS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6134ZtFw092361
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 08:59:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DEb3DbYYt1AMRT++isVvLSmbnhCgv7KrPbG80iMLXFo=; b=i40bU932lmAAFwdf
	Rn3y3DSzEyGVyxbvFwtbQBogUxZBeetobH+S9q1nw9tqKQ+f+JLHipKdkWGbK+YY
	sFkOOCLFlRkvnWLqxgBc7eU1DrFuOANdFDzYUhzcMPWyuqKkOwUyID+Uf04oke7q
	gNndGuDiz6lZBSo5rXgTrlmAxzzUxXGlSP3/dMU0UXEQSrMM2izBxuoGoHJQsXBa
	ayVAfodua7uDfV03eYmNaqEV71so34GdW9hnP/x9W1Zie7ubFdORWQwoneEXd41n
	EnGGF6HD23kaWhUYHaUakLhleWHJrGNfjsM9adzbj95RBoz27r4koDJUUb/uqD2T
	Fuu6rQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2trbkkp7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 08:59:17 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a49b46380so9740726d6.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 00:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770109157; x=1770713957; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DEb3DbYYt1AMRT++isVvLSmbnhCgv7KrPbG80iMLXFo=;
        b=Ayrn5XuS9pYX/Y7a7qQGIBvIGHbBnA/HzRAX/SbCY15sk2hvroOZuBA24aF/ulyJHp
         zsU9FxI0dMKME+3hpcQ/JVhTyLNJUqqRtP7yqTlL7vu7gQlw2Bja1dKj1VhUeY7zFvTR
         GLgps1uNfP3yUeDcKdywu9GludADbFhGdppBuG14peGvthGHy2G5YEN7xtixq16DNcqy
         ygWH4zfk5mRtwKhnv7QM64s8lGTVaf6OWlB6cYk7tnaJHJP4iZ551N8xj3C35goMrKeK
         d6PqENsTpf0Z2vxxMKJRTHUSAT9pvjzLDmjvYChvWQvoboudywEVeZ2ERFlBbNtCNtam
         xgAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770109157; x=1770713957;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DEb3DbYYt1AMRT++isVvLSmbnhCgv7KrPbG80iMLXFo=;
        b=tQcW1eXScH0qphCNHvJ58uekbcr1ONSG+HAFDnnukZM0aokQWoSMAhCyvvr0hw29je
         qMzthf5er/QDH3jnRytip5Fxli59JnpgghdqifLRvDNEqkboX+bI2RfLqAfqwPwCxHlG
         vBsgWrsRP4ABDEkRUk9Vp+FMKhzR5qmBMwpqNXt0mKKSZcJzYFP4+HKLRe1x7HGoVJi6
         LWP1K36JaFY2gsyPn1Of91PEQH0KAutXtLHTlKY1bDK7yWq/4ls8MYpGFNRiCdFIOBOH
         eBe2KsqJAvJ66ifAN69coUNVsbaprQSbQ3OTduxqxLzBJLgygEx0qIlKpqxYAXbJCFH9
         XaYw==
X-Forwarded-Encrypted: i=1; AJvYcCVVEGjhzTJTECKwtlTY+99qZBxR6mmLlaIV6Mxggv0ZTwx39nvC3Aufp6S3rIc7qyZzhSkQD4Ql9AhO@vger.kernel.org
X-Gm-Message-State: AOJu0YyWaOkDqV8SSIKNoNOLsQssdNHctUsh9yeWrvf5qCZlbYVifTT+
	vjI+IR+uKyA2d3l0k0S4OGPapy7Ow99nHJKwMeJGgxD522ODo5cQcM5nxri6GjlLrdnrBcLUNWj
	kiUYrT56tCFYIssof+38haX16ZV62c/pCFqpUUveAGudsiO+RQ0T1+h6dmzmScs76
X-Gm-Gg: AZuq6aLwft6Yw+4lFuH2ECc9cqHHmhAPu98KxVV/HLLOEUd6z02AQUveQyZ9D9tqwUj
	wGgfTGbObP/6iGHcEUFIxL4CnvoNsGPExImagJduTcHOAURtoZrD5lcaaR4csLIEX539W/hvQuH
	zwFolxkbB3IAqwxgZgEzSWf/oo4LSbVc/TUc7+zNSegSNPHr3+15VyKtDzw5ldLAB8Xc1CkLs7s
	2+mcPMqLDPxIzRaRlg/KNJ1hFixr3Ww3DmjTVEiZgEb9gKcphzRS75LvpmVlMeY7AhLA5Lwgi7M
	HZUkAJ6WeQNN2x9r6QyeYt6scbVb9aQabVUQLt8HpiMjnZcfjDEcC6LgLPrFC1IG5a1Gc0rj2q7
	PWy3P6FrHscPhOnw10Szwq+qm/0jahNqBq9XiCVGiFKyCZ21JBsSiXaeAvvV9UcEJzJg=
X-Received: by 2002:a05:6214:4f01:b0:894:979a:bf7d with SMTP id 6a1803df08f44-894ea0fbddamr135578226d6.6.1770109156869;
        Tue, 03 Feb 2026 00:59:16 -0800 (PST)
X-Received: by 2002:a05:6214:4f01:b0:894:979a:bf7d with SMTP id 6a1803df08f44-894ea0fbddamr135578016d6.6.1770109156421;
        Tue, 03 Feb 2026 00:59:16 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b469e99bsm8778631a12.29.2026.02.03.00.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 00:59:15 -0800 (PST)
Message-ID: <0dc6c4d0-c97f-4fa4-aa17-efb85a0bebbb@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 09:59:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: monaco: Fix UART10 pinconf
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        quic_vdadhani@quicinc.com, quic_msavaliy@quicinc.com
References: <20260202155611.1568-1-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260202155611.1568-1-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Xrfq43RswSIYaw9UO2Jhnh17mjG9GyzV
X-Authority-Analysis: v=2.4 cv=dcmNHHXe c=1 sm=1 tr=0 ts=6981b8e5 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=vtxEUVkT7waMBiOsAPUA:9
 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: Xrfq43RswSIYaw9UO2Jhnh17mjG9GyzV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3MSBTYWx0ZWRfXynuPiLK9zkOZ
 QP6LY9CBm9rqk4uCB1TxjVFxYjVJNJ/WVKhEkgukb1oTOBiqpccXOGEvacbMh0qpUJZYuYUhNlw
 Lz/khiIWM4zF41c89+E4d0FKWwtoLq6HM6q/gqFba8q2I6gyKyQh7CxB5ghw0MyxWNObU8JvZoG
 57to1DACR05JjCDSXf1y3KTBh5nhPkvZZgVkR3cKebNw8SA/rFLQD5Vo0om164JQbF3p26XlEfa
 wE9bg12nmXx3HDNxS7dcvRIVfrv2sOe+jSq5X1KLDKYcfioYxFmQq4Fl42YJB6f0ZBxhI3gKAKi
 mToqlPsO0pARLqwrifvz5Zb1lnNblrUsFBrBpAr46e2YdAjzgplhLwc/x7FzSj6POPZgjo3syBx
 LYdbvgYvR2AyNKCgh95Ebpg8WA4+2danmIp/3ljcMp6sOblPQPCg19l2lqiNx5UoxWTCQQY/+tb
 BVS/HNSHwrKhgiy6jEA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_02,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030071
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RSPAMD_URIBL_FAIL(0.00)[qualcomm.com:query timed out,oss.qualcomm.com:query timed out];
	TAGGED_FROM(0.00)[bounces-262106-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BB29CD6811
X-Rspamd-Action: no action

On 2/2/26 4:56 PM, Loic Poulain wrote:
> UART10 RTS and TX pins were incorrectly mapped to gpio84 and gpio85.
> Correct them to gpio85 (RTS) and gpio86 (TX) to match the hardware
> I/O mapping.
> 
> Fixes: 467284a3097f ("arm64: dts: qcom: qcs8300: Add QUPv3 configuration")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

