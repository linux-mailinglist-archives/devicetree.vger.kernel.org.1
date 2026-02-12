Return-Path: <devicetree+bounces-265050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8M6fMsW9jWnL6QAAu9opvQ
	(envelope-from <devicetree+bounces-265050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:47:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BFC12D23C
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:47:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 43EFE303BA6A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 466BB34FF59;
	Thu, 12 Feb 2026 11:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mUzsZQaU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YbuWK9k6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECD6350A0F
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770896830; cv=none; b=l9PLBmOBbhoCrK/YO45lMUBMBIv3Wh0xSInplXsLDHmzoPsFKrs5YHCxuBmg57UN7UXTjcdBxg86Cnk6qjuHa3IJuce3fnFj/CWo2piHMWySHr1FDVbnPnfEWunfLA+a7AFPBQjoetE6trrKGAOJ7Tl0Rs1rlZ59T2H4Rlg7nT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770896830; c=relaxed/simple;
	bh=d7PdfllRYXKCySoyFpT71xIMtjCqZOzUugc8gEXS71U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lKTKuFzlEcw6NZzMSdmoGpLGbFaAP46pRi4TSf3dHPnV8AzoBguc1ljwZu+wAklkbLYV+4EbpYlXsvSJZHGIXMVeVaGlmToanScddHTYbMDSPKMOOgZr7Wn6NEo0AlRAkG8Ak7LaNjNwWtd0rkCwJxP9pmbZO+MvsMsZJB55Oq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mUzsZQaU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YbuWK9k6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAOxWw3963739
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:47:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BZu7py3oZxkvM93xUSUx1EBYsa0WCEZcReaMr3Zm3Oo=; b=mUzsZQaU79sevzfC
	xVD36GKuNBlnKjzjXMGes8U38o1LCvoL2r3buko5ukeR2nDI5PNjBJgG9ZOTocWE
	/uQpW3a7AsWslzbwgyicSeC5TeX2YQr1hk6snwBiifxm+QBv7RUxSmSccVKHfvkq
	hutcdZ9261ABsL7fU5snxFUUmTpUZm35MQcQ5l4YyX7H/bA4mqG5VobV6uBHrkde
	Th5j1T9vIJCq44mV+Amt496r20qQMiEypaO3dtgdV0MDB7Hfwf8PmpT8XMSATCDH
	o2zqsPMr7sGnJhqWQ/IPYqF2gqFc5Devz+IUA8sh9I3INV/uxchEYpkJV5gw5X3n
	5iMASg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8y8ntua0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 11:47:05 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3978cdb2so8336285a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 03:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770896825; x=1771501625; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BZu7py3oZxkvM93xUSUx1EBYsa0WCEZcReaMr3Zm3Oo=;
        b=YbuWK9k6mIZsZ5knmG90tEh8nkpOVPhke25ibsPoQ4WRWVCfCITyhfLEdtWQ03Ph2p
         mXbLtP77Ver4md7szEde1EnNdBf4QMJ2nrje+ciLRvVNQKLRurdHelN2/VoG9/z4Ayq4
         AaXd2Tf1naeC47nz9VHU5ornsImfC5CJ5j6d+eJL5qJiRBov9r3/yhjykzII6lRiimnX
         LGEtLCNGP/kJkapDyqKn5UGJR6tSi1r6tVTM/i2ikNR+N00gdX1REaKA6VUgyy9aYXds
         mWXl4RFLmEoso7cONbVkhe+DnfxkGE8jJRkbvZjrEvR6qaS4wtLPwV7y+HTeGOsaeDa1
         APIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770896825; x=1771501625;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZu7py3oZxkvM93xUSUx1EBYsa0WCEZcReaMr3Zm3Oo=;
        b=X2KEVvStJ9nuVqBI2ZeCX3I3qtzayApyn8gJW2NE3gNncmw9Zu0/7CiE5WjdprO7Lo
         bG/Jrq8Ez294bd4BMPwWg4wHq7n7J658Y9FL1Zuaakch5Bd5l1275v/vkvTkASA4aswY
         mnXwC6o13pB+wgUUC6jbqIiGH/Ba4Dodt+oS2LE45WTr9AIb90JfJnnFUOfcGUkG4DzY
         vRVbXZrtmRQlFSAT1HUzB/+AyJ4QyRKmmokZhOusYfEhJKMVK6iJegWpfGEyoeuUAupf
         4WoupwRwV4NN3eB5RoAx8so1Fpxyi25oBkkuvNlJur3QP0r4NraUQ8NZypQPmJTmyQIH
         MVvg==
X-Forwarded-Encrypted: i=1; AJvYcCXLoTsW6jG9Tl2xRr9MVMwHc3MJAxlRGW1sRvBWLerxrDJ6cGyKvbq+NGmfA0H0x6/ofBFXC8ju1u10@vger.kernel.org
X-Gm-Message-State: AOJu0YwitBpxYT8cJhZshgXocAYgrM41fTAbx6OmlTDv+UwRiaG2tAhY
	0f6sf0Gt2/xyKS39R4MyxaTwhdQdq7MBUMhTCtDjCgcF1yc/aE+0x3O9I+LPayGu5tQmoJFx2AU
	gG47c1M1EigQ5BMZ3LBDMR9aJ7YdhRUBLRYS+XT5+Ki+U6pfbb+YrabE/2kc0V1Uw
X-Gm-Gg: AZuq6aJjIVrRXj56U11RVbzWsyaQAZdks5HLWW+BmEunjtGhdRniPpVDT0t6HZxIRVj
	hp8s7nvT/2ICOkLubq9CAQZLR/m+HKP5fQES4m1fzHyEZnVidsbSdolflNKmFIEJOAog0Fluqou
	+/+Ulbp81HY0E3PJBIac0uVSBLIC8NR2oVtEqyJmMCDyoQghnz386bOto9lEhGnXcd51YJMDsQS
	ut1FS1+La7nDRLysCcfXTqC+flxy1OH61eUnZu45Vm2EgmVUNOnxUI425OKCXr6mx5kfHU5up8u
	9Mg7+7gHQT1K9qrUb0JY7u4Bqyozbam7Ed87luUKnTq0yGW4inOj3qsvTmcaUVQOWkBhUSIsJ5f
	PFzikvW9sPJjt8tVCg/Ftc+iywItKta1IlbLv/2VWsjTp0YOCGjw8LtM7o9keOFDv20yJoc5TRj
	kiF6g=
X-Received: by 2002:a05:620a:2806:b0:8c0:cec5:148c with SMTP id af79cd13be357-8cb3319d1acmr218800785a.11.1770896824695;
        Thu, 12 Feb 2026 03:47:04 -0800 (PST)
X-Received: by 2002:a05:620a:2806:b0:8c0:cec5:148c with SMTP id af79cd13be357-8cb3319d1acmr218798585a.11.1770896824244;
        Thu, 12 Feb 2026 03:47:04 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65a3cf4ccd0sm1632462a12.27.2026.02.12.03.47.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 03:47:02 -0800 (PST)
Message-ID: <9ddb0246-1cbb-48ea-b62f-48bb627d665e@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 12:47:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add TC9563 PCIe switch node for PCIe0
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
 <20260212-industrial-mezzanine-pcie-v3-1-1e152937a76a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260212-industrial-mezzanine-pcie-v3-1-1e152937a76a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA4OCBTYWx0ZWRfX4nqiLodMdOcj
 T8vYN4n6OvUpvD2MRuviXnwZV0d/MO+IJfH4qD5l8jBr0scfzNfrTOxnbb75+Nx2HaxJdOytLwa
 c2Upxa6j1bgiVodfAMsnd5gzMH+KV/pXWSntw60b2BNKfIYyTERSuNt4KDoEWb2bmQiPCW47vl8
 48/YB7i1Yc0f+25FwGxi/hJPQwh5llmTwpo/iOTRSsnCRaK854uUr1JoKmxZT6HdBdj1q5xuDV7
 HCGH1T7gMKNmYf+AT/S140O58/Swf06VbUBiEa8x+tzKT+xg0cGNpzBrpqMP3lol0dfF50ErpA5
 XyRoMXiL9rc0D9ZcXqi+5hwdIG7qPOVhmbNeKN16E2TP1VzXMy9RYPWlqrm/bM6NOF8Vz+aNLzc
 z8Nk0gpOxYAQayum0iCoVy/Yub6KN5Jxxkuz0OmKbFIMNzezvKyvjQXj29ne+64hn6q+zwICvFv
 YWlOo/KNxA/ljxQcbZQ==
X-Authority-Analysis: v=2.4 cv=VNvQXtPX c=1 sm=1 tr=0 ts=698dbdb9 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=qSWERiRezZrDuvaUYp0A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: P9L0H4smgaEUU1QrSo-iaMd8U-B6UTEr
X-Proofpoint-ORIG-GUID: P9L0H4smgaEUU1QrSo-iaMd8U-B6UTEr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 suspectscore=0 adultscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120088
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-265050-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 55BFC12D23C
X-Rspamd-Action: no action

On 2/12/26 11:44 AM, Sushrut Shree Trivedi wrote:
> Add a node for the TC9563 PCIe switch connected to PCIe0. The switch
> has three downstream ports.Two embedded Ethernet devices are present
> on one of the downstream ports. All the ports present in the
> node represent the downstream ports and embedded endpoints.
> 
> Power to the TC9563 is supplied through two LDO regulators, which
> are on by default and are added as fixed regulators. TC9563 can be
> configured through I2C.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---

[...]

> +
> +&tlmm {
> +	pcie0_tc9563_resx_n: pcie0-tc9563-resx-state {
> +		pins = "gpio78";
> +		function = "gpio";
> +
> +		bias-disable;

In case you're going to respin, please drop the blank line in both patches

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

