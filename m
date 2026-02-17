Return-Path: <devicetree+bounces-266045-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GpLNQk1lGlAAgIAu9opvQ
	(envelope-from <devicetree+bounces-266045-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:29:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEF914A648
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E1B683025E48
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC2F83090C5;
	Tue, 17 Feb 2026 09:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Af5fWNkH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OmlHj9Ie"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C796B308F39
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771320582; cv=none; b=NcwvrsFNx3PaW+92uFzHso1eA32yC/O5wsOBdR2Nezw8zGkpk8AEmnYXXwNQEV2RRItbhUHsgdX6Cqq4K0BPYZ4LkmsplBcw9/DG0ybYnmCGQjnlzSGihSoEGwR5Y9qNwvlkNN1//k/jnpG76WvM4OH7e/cN5FOWjzevwI3p/M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771320582; c=relaxed/simple;
	bh=mqPwGTGo3r897ZNbRAYLZVX6lCs0huG/a5zP2p59sNY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gm3wkISog3jfZ7lIrHQ0QEym4Qa0HFjUT8kGGgYUF+Phy7/5hHQSwLhi2tc/X480KqN2tSiVMmfbNeiFa8W3dgLK8p6dGh5rrxSHfhv96bSUihU4NYUUTsnC6c1zIOUtFgEXTmE/KIkkRaw/ZLyOr1029fWZ1pQrwTbqaoGXWQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Af5fWNkH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OmlHj9Ie; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H9TJo3985361
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:29:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PAJ+8ZH4GA3UgmlDTl80DaFGepw/jrlHBe1aFbiN+eg=; b=Af5fWNkHN5Qlf7Su
	kQDcsJRyyn2UkSV1epFnT04VAn2RG6MmPLSDzfrkaYgN+LfP/iAWEiwtz1iWKm4O
	wCWDffWWW1fuMjTmL6amwN8tzJSrUBbmx8c+avKVlwfqlW3VNKxGgxeQWXtj7M7X
	oc5x4903/SzR4iE8L2nsK9lQ1qmTBd1IQ6J/4BKt77MxxUAr7/artx2+E8xQOVkP
	J8gZWPhoNZY1aIuXnvebSKH7i4D0K/C1ylIgJpR+bQinmJ1BQfbFt2AfV3J3rpyZ
	UpqaPxvjeHVrl2L/cnvISwoNkCvBxQtDQ5ZoOIKv2xkT6AWCXh7lsuE8N0nNDCMZ
	v76dUA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc7ap1p9u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:29:41 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8954b9b5da7so29525296d6.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 01:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771320580; x=1771925380; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PAJ+8ZH4GA3UgmlDTl80DaFGepw/jrlHBe1aFbiN+eg=;
        b=OmlHj9IepyhAGzHMIbBAm9K+IIp8sQbMw7G2qed9GtwH4HQe0PsMz3vG3aY1+5kOQ9
         7J1GpLvU2w1OiMQOSqCuoNspPhZwBlvgjyzQU/2Iu8KHo3S84ueAk8uESYEmKCCuX16i
         4Bdh3ukfQiAnkA++0Nwyv+D/ibUL0yUJM8BwbPdyrKOtKfb/nokclmpYbo3Dv+Rzwxy5
         tLMfqyRcrEr0Ud0l4bQUw3QI4URQtwW7GOmQ9cz5FZRPaInPOxAi+tph/5+gvRVtu0aQ
         XY28ftKwELNDHtXIfdMyNptReVuksaLHg7/sa6upQ63R0htRf8XcpTfqUBnX3KvQ7QiK
         P+8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771320580; x=1771925380;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PAJ+8ZH4GA3UgmlDTl80DaFGepw/jrlHBe1aFbiN+eg=;
        b=d7TggSHug6QtHWdI4Eu1buGR6pqgBLNG9/tSbc3i6E5bPdQrsFYsc2xAs8iv1WSywG
         s7RQJtoEUM+tjZ/iJG2wrxjZbh3ZBKin3nUP8kJAWee0H1OGTFqFhcinP053hRBqxx4q
         89STnFVjYbUGjRnwsoZZVnbhoHqG1ZltpCUbOKy0vTHbVH5Son6JVyKJU67mVvIfgNdt
         65PHyNcerJFi4KVuZsNIcnun9CWDdC4yNtN5tYH/kCG9EiXOHb2XwAzNEuPHHc/AND2Q
         jhEdcSM/m7F4o9mx+dNT+fpi29o2WqCD9z+9rA0bK2W6owx7RVI7HnuqPxJRS64tYPiN
         w0ag==
X-Forwarded-Encrypted: i=1; AJvYcCX+KuCcv2pI2e3ZZf+CD9+TXw1RtLExbPNaDW5hR/yjscXxC2hRX/l+8NalEutcM/PaAQtdN0M8JGcX@vger.kernel.org
X-Gm-Message-State: AOJu0YwrESIhB9NZU2xLxZWtyEVMWvVJC9/CV9uQLZPwLToafpsPdT5X
	B9B7KEabA+PWVs3Ld8xzVTVWRlXGmkCoBaZzlTPeXNdGxml5aSJlB+jaymZirwN+QMDc1QOLcg9
	EU7iOkJm++gQl88SbRduXk1dLlJAbrcUwGubCdGNLLI6WiSEFRbdkyQs7KTZXSqHe
X-Gm-Gg: AZuq6aJmImezvs9AKnJslqN/SOSICMuZtugbczYoVVHmGBoGRa1aSzFH2nm5xQHbh8l
	8K/N593ttEtxs+o+HmQbphPnKcnBvbftgVj6mDK/GmNds2IxmaPwpVm9IE/4ylOQaDOq9g1gpLY
	kbZbc3mKBh2gT3sNyJ1BE1h+Vms9i3X+5R9aEXssRxXsNQiTpqhKWVLGuOkoovnI2d7llaGJyZw
	56RHvA6UAfCpIx7fMXvnTHGDBxHwJUZB+kUeUimtV1BCSPZDHIyF1u1wdMs04MKkRN6d+uwWoFu
	eAv0p2+7ge5pHOQCVCXM1jFWjHq4cxipPg/Q7K+BX155oTSx8KnTJ7kp4JjGKkYvHwjsMKwGsCM
	7E2f8hiSxTq8CV9nvP2igG6VI/iIM67kgc6QJlpqxA/0BiMw1Hnns2sDwPgPsonre6nYSTusdtj
	bghmU=
X-Received: by 2002:a05:6214:8093:b0:896:ff63:5e6a with SMTP id 6a1803df08f44-897347edef5mr142990536d6.7.1771320580169;
        Tue, 17 Feb 2026 01:29:40 -0800 (PST)
X-Received: by 2002:a05:6214:8093:b0:896:ff63:5e6a with SMTP id 6a1803df08f44-897347edef5mr142990356d6.7.1771320579722;
        Tue, 17 Feb 2026 01:29:39 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc763bacfsm337458866b.36.2026.02.17.01.29.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 01:29:39 -0800 (PST)
Message-ID: <0d318ba2-5ec5-4eba-b060-9c8a2fd3defc@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 10:29:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: add support for pixel 3a xl with
 the tianma panel
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Cc: yifei@zhan.science
References: <20260217000854.131242-1-mailingradian@gmail.com>
 <20260217000854.131242-7-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217000854.131242-7-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA3OCBTYWx0ZWRfX74GB/izRMNnh
 QXq0PBXKjJmId9xm+XciWqGPtC0BhWJ/unTrUBzTirWxyS6sWkMr9h3YI9vD3c1kl9dtW9EAOVb
 zpHcr9cR/tsQCO5GLIT8km9AzheRFWo3s0nZg8TAlPvZVVeH4hdWC5yWzdn3hiiF9JxA7Xb68gY
 r5N37IRraJXFd0yTeuoUF+zfZtMJB0C10wlFyAJH1uEHU6+CrC1QlHefAL/OGNT46nz/iaqtN8E
 9i1pCKstmIzgM4tEQSDG4BzmLsWeK6+sCsD+1sLD26RRHvQ4lCGBVom0L3X9LX6IqF0OD8ZvSH+
 cjhTrcJqVvQ+9HR2Q5qN9aBf0x+3cRrOw06ViP+k0W2HfPuspnnjZ/e8bcziM5yW1e3bxjSDGet
 /Lh0CGx9r9FcBGii1Pl2lWRbkBIu5fd+1njhKx2erM4i5EBC1FH2iXgKQgKq4lVjOAbXf27jT4U
 YvqFEO+oW0cP/Jd7w1A==
X-Proofpoint-ORIG-GUID: Y29z7EritoP6_BuhIJQrK2g6nJsHXPw5
X-Proofpoint-GUID: Y29z7EritoP6_BuhIJQrK2g6nJsHXPw5
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=69943505 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=nkUbddICNmq_qF48:21 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=i-uTSsb2jE1798FbZwUA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170078
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266045-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1FEF914A648
X-Rspamd-Action: no action

On 2/17/26 1:08 AM, Richard Acayan wrote:
> The Pixel 3a XL has variants with either a Samsung Display Controller (SDC)
> panel or a Tianma panel. Add the device tree for the variant with the
> Tianma panel.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

[...]

> +&framebuffer {
> +	reg = <0 0x9c000000 0 (1080 * 2160 * 4)>;
> +	width = <1080>;
> +	height = <2160>;
> +	stride = <(1080 * 4)>;
> +	status = "okay";
> +};
> +
> +&panel {
> +	compatible = "novatek,nt37700f";
> +	status = "okay";
> +};

I don't really get why you disable the panel/framebuffer by default if
all of the "includees" enable it anyway

otherwise 

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

