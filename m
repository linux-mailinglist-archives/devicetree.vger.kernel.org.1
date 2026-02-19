Return-Path: <devicetree+bounces-266608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id y2GKFgvYlmlVpQIAu9opvQ
	(envelope-from <devicetree+bounces-266608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:29:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D192415D5F0
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 42E8E3019474
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14A8D334C03;
	Thu, 19 Feb 2026 09:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HLID38pC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K+fgUpJ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AC626ED3F
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771493380; cv=none; b=QTxMkwVxVDLdXivCx/lZowhcIqzHOj0Ao9aWTzYrscJe3t57Va19CW+FqDjENaW8CHfDoRILBh0HNIITUAjatJJ/ibtUyCByA9jw5Jq5ifG+YxgR0rOVzgEGOTJzVKBtm9h9a6zZXny/g9eAnbePU8PoVP09akVfIinUa8bMjw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771493380; c=relaxed/simple;
	bh=P0qIIDfzpUiJILQtOfKkgH3ZroDXXuMcD8301mLKV8U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qvOSXkTpt3843JdGGrIYP7IgsgOJNJFuwxZE2SedgdPOdQL+kiLwHo+nLXA6yEvHc38FG/wHLnRIWjTv+R8URdnT7T2RQNa8IIrIhcoYFsVmCePtrgK85ztTQRtkbbd65k2/Pi8TPQhuYm7cinNB3DP+1T8VUE1zmX+pzoYa6AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HLID38pC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K+fgUpJ3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J7skBp607975
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:29:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MmuTNsdxIo1Ki6HQWuWsIBHgDhy9MLo0BmLXHdFSAeo=; b=HLID38pCUqKfFzwx
	b6hpzh8IRG9bMMCPET2CAxNJx7mxj8YtQphfrlWcRTaRT9IPMoc3+FJ3kE7TZFt3
	7aH8EByuzwUf8n9MJWaakbgayLYwxwgp3kAJeNGpo2EuoZLXKlExEUC8GgVtnDqa
	99po56qBb5a7TH3Oix4vJZO+vnjJNNmaFPHdUzWmjQWr7Zzi0vA/er8Q63uHQPtf
	dtGJtxQen5KSKalVxYh6rkuP3BB/oiKCc8xrR/lYuQDItnwGLKII+vIbjp+jT71/
	JaAiAIn7Xx90MO0eB/G6BitdyRG2zGlMv1gKSVn5Cfqyw9EORz+jGXY7h9mHcmN+
	5LDH7w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdmxvsg8b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:29:37 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8946c23cf90so7373446d6.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 01:29:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771493376; x=1772098176; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MmuTNsdxIo1Ki6HQWuWsIBHgDhy9MLo0BmLXHdFSAeo=;
        b=K+fgUpJ3yuBRzfYrry3sQRv3YdcCtTxeja8Qnq9gAiW250kklcInvWmSWMyAb4HovW
         ixwzRGD0+f8UxDjN3zqagYasPMjx+l80kQ1IcjfwjH52I4D0HLyGFKxYx3/UPdDXPNyv
         PKhjcadXXtrcm2noYJC7UskL2R76GHF+Hg50BwOdyLW0lrJOplChmEo4OCVpw0wNcvQz
         noJma1vPA6dPNBu8ssLjfDNw3mPAcxfvvFZdL4YQj41jhlPJEjxhGXhIJbXPZZmdXz1k
         NGio5ZFoyOt8JQjWWqr9A5MWOuMdbdtWgmrcou+lJu3Ql9ev6+4EV5/Ow2iaqZfNKegR
         uFQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771493376; x=1772098176;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MmuTNsdxIo1Ki6HQWuWsIBHgDhy9MLo0BmLXHdFSAeo=;
        b=dxmHjOVPHvO16Z4XQC7gG/tZMVxIKS2n9RN1pPerR5gu3ue2p3rcVCDi+N3eHeUMvQ
         6TqAAVnqS4ipLpIIm/PiHrS7VfO/y/iYGzxOIOxEaMyOXFAfW/Qyn4OTOsrhYpAe6fhA
         /nKWpU6nv4Tc86RI+gRuIIdS93gJukzPu1/0q/VnV9MJAQZbqARfonIKUi8TrElaFEd5
         ennjAqk7Woq5VZdr8p4BRGg6nh7otrXqog+pMyw6pZl96ZtNOEcMX8y7GnSbbHiPLbkM
         jBDcCb2SbJrxAbxezTpj6wGwLkrau0XgCx5VOoGiU83NX4YEHUwPSxXIjKa/eocFTN4C
         Wp+w==
X-Forwarded-Encrypted: i=1; AJvYcCWjMtYFiEoWrSFJZs8TTeanckGxCN87tMIeZoZnmaqwunCaTkH6H5+UiXzgc4eNzGjLWPp44pusyhmK@vger.kernel.org
X-Gm-Message-State: AOJu0YzhBcwnptHY+H3OC4TppjkcTaM423fO4/o8kxlvKk1KPxZZk87/
	LR4GdgfJqGqhqCThrcoQgUzmJ366ybzi2DR7BNDWFHRyIxVicTlJ2iNllpXfrWK0mYND2lAOy1u
	PkFhJo26wCp3jv+MXk48axJ3kOmzAS8qIHmyKYyDIJ/tQd5G2Ga3mYlL7m9TWvZ55AXebQMeT
X-Gm-Gg: AZuq6aKXMfgDFSZvfoAkDWgkVIhw8mxsMvp/T8Buhe9VUrKY9gAQcMAZ5UaEKGWUQnY
	wwcttkO7iOKN2Os15Yd/cmZOuJgGA5dLnBJ58qlGfezpMyFiRRfvaGhFehp3C420UEQ3U130Ala
	g90CPES0ghFVOCo8iYX4Kbo6ch7kEOqOKR1sFuMUCg0AufZBP4UPJc8s+gkuToRi0Shy2fRrf8X
	CcCUOGNYY3EP972L860onr1oroKJHq80CPjpabkdUl16C4Z7CGU2aEOre8SUQQBXTTTbz++zHJ6
	lW1oFxM/PMy8uB2QQTF7pKohZi5jkSbIONnIjOAu2FV/lZotNq1v/h6HEnNBEyL8iSg0Ynqootu
	lAUhURzSirvIgRDSNy9CiB7XdUr3SKerpS0pxmMYL5wWBZMbK6wAwqE8i/eW4iyH5RZwRp9jB93
	qlV5M=
X-Received: by 2002:a05:6214:4c89:b0:897:41c:a766 with SMTP id 6a1803df08f44-897347c8326mr203654096d6.5.1771493376439;
        Thu, 19 Feb 2026 01:29:36 -0800 (PST)
X-Received: by 2002:a05:6214:4c89:b0:897:41c:a766 with SMTP id 6a1803df08f44-897347c8326mr203653856d6.5.1771493376058;
        Thu, 19 Feb 2026 01:29:36 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc735e587sm541749566b.2.2026.02.19.01.29.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 01:29:35 -0800 (PST)
Message-ID: <aa5f536a-41f2-47e7-b80c-8559c13a69b3@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 10:29:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sm8550: add OSM L3 node and cpu
 interconnect nodes
To: webgeek1234@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20260218-sm8550-ddr-bw-scaling-v2-0-43a2b6d47e70@gmail.com>
 <20260218-sm8550-ddr-bw-scaling-v2-2-43a2b6d47e70@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260218-sm8550-ddr-bw-scaling-v2-2-43a2b6d47e70@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: wZnDbEzfP1njJ7HB28IY4eKoo8nmMiNR
X-Proofpoint-ORIG-GUID: wZnDbEzfP1njJ7HB28IY4eKoo8nmMiNR
X-Authority-Analysis: v=2.4 cv=XpX3+FF9 c=1 sm=1 tr=0 ts=6996d801 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=hU_naWAkiL-jcIhTA_oA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA4NiBTYWx0ZWRfX7nafq8nY8JUp
 1WM2FBDY9mVpoyv6heBRVG61KoqNGJzyhMuSlyOmACHJZt04gO6TFXtlDpaH9bW1rke+CcAm6s2
 5hyDs2eDj8nnwhw7ivBFck+MoK4f37OnH9AINqLGCgD4qp3UnqWbTAN7sBzBx1th6Sszq1UGh58
 8wCpJRiZ7ZydfYS3S3rE68hohCuvW4kttuPg0kGxDQHMo91K1ypdyjHEL4qr44S+Sj9YQA6L9Gf
 R/pifu7+Nse61DApQIeZDZF7ftwomqMjVmSPeBUf6WJw1x+wwKyHPxOheT8xRKKyEc4t2yRNkuA
 SLMb1LdeIIKeiBdKtKi0xidOH1aN1GvDIIA14ts/jM9qXXtkADG2s+LUzOMQhvWMci9/l7WToXR
 dOfFecNyUNfPeLluV2v6+ZesOh1EMosLGWlvkkEvFl3rckfaiLhD13/DuOgJBuE4eLo/Gas7z1F
 87519U2QG5pq0o/px7A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190086
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266608-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D192415D5F0
X-Rspamd-Action: no action

On 2/18/26 7:16 PM, Aaron Kling via B4 Relay wrote:
> From: Aaron Kling <webgeek1234@gmail.com>
> 
> Add the OSC L3 Cache controller node.
> 
> Also add the interconnect entry for each cpu, with 3 different paths:
> - CPU to Last Level Cache Controller (LLCC)
> - Last Level Cache Controller (LLCC) to DDR
> - L3 Cache from CPU to DDR interface
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---

This should still be squashed with patch 3, as while you wire up the
CPUs as interconnect consumers, they cast no vote, leading to the
situation Krzysztof mentioned where the performance actually majorly
goes *down*, since the icc core sees no users present and assumes it can
send a zero-vote (which probably translates to F_MIN for the cache)

Konrad

