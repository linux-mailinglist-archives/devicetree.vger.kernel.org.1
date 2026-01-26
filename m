Return-Path: <devicetree+bounces-259436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Pz9EaU/d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:19:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0881386AE8
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:19:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6BAB4301D31D
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CACC230E0C8;
	Mon, 26 Jan 2026 10:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SVmiwDSm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e+cCoWBl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 782882EE5FD
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769422557; cv=none; b=XbHZ85MH9BSTi52yvOcYMiEOdbCW81Y2AB6IwmkeOKukFylFIUbi3NOLguuardWgSfgmAEc1nPknnKTpZLVDajCuX5rTOLdTZ7jGyfG+BJtTZzBJvQwy6Tmw+iAmcDSU4SuuM03f35UScQcFfNvQ2NvUKXBIlxmdXrtnNK1oYjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769422557; c=relaxed/simple;
	bh=w9LCNeW7lpkYh/R2cbvAh58pli0r0lbau1nfmHvl9TU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QMqH+d62l8PHmxjNV3AJ6rBk4t/d/+c2W7EaQUJUKPHAT+zxAX0ZJJMZhu7kHAAWoFvZNBiVYSwCbFG4VBe60QafQPqObx3Ql6w1hCtT0sPr0rxewrj/tWo6ExMTir4tyDQqC88o3dL8hf/oI5xFSqjPKFz99/yY5Kfvra3glz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SVmiwDSm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e+cCoWBl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q94urP3914830
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:15:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dCqQYvIZ2wi3mCTpHwqt6AgcdFQloV81RmD9nm256kg=; b=SVmiwDSmnL5xb12I
	lhOpMo5/eiyJSauvUrLEPLggeIbZ2NZ1bWFT0SalKRYSreszOAnHEeuZqmzKh7Hy
	49Y6eYMXL5znTlTrC3Zxz/PP+WsHAxOAXlm+O22e1WKtXvlG6jjH6sYes7XBzvLv
	R0RMepzWR8HXafgvl30hUQN2cA/E+E+ntWGCdXrNj32ji1JaDCt9z9zuLUvei9hi
	w5DGz0BGJJgMrHpqo16CR8IjPHwjiSu95FmmdO1JwkeD8yWqdq6LwjbXcyZ5nDZa
	h6F3+wVBpuaM9PNGr1BpQ7J350rh27yHZ0qnFcBpqpusBV0pbT8FtQZbzBvOreU9
	OuSOQw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq24m63g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:15:54 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88880bc706cso15007466d6.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769422554; x=1770027354; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dCqQYvIZ2wi3mCTpHwqt6AgcdFQloV81RmD9nm256kg=;
        b=e+cCoWBlLwdztcmRxjCvkXrHlco8u9KqPA7YQzceZjV/CE4cPBniW7elHkSI0cQgCt
         LjJdxuRvcbtfdEu+Bm+Ff89VD5qNka4SyZh0/As6TrhTNjvq2VtCz1Dq4nIG2CjU9D7p
         MiccbvxLJ3U6gdDPU99G+Mdjy22fQbc4TiTvGUDK6JlJO5oVKw6JXptLoJpkvtlCThUN
         v6bshKSg3GQXiv+HZgj7CwmEtYWQFwsfIOQYvMxfrHnV154H8LrB7w3BSO+j5ptfDfbQ
         DA/nLV/B/PpxSHl6BUboVxF6hSHfgPxTxO8cors+CjAxOew69Pky+i9KxYBshwRm/pZf
         UlkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769422554; x=1770027354;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dCqQYvIZ2wi3mCTpHwqt6AgcdFQloV81RmD9nm256kg=;
        b=mtKw4sV4UqNGn8rrNodzulh3FPsoSgkNbAqEvCBLRZDD7f/M+LZJwZS3hgaSURkjCO
         zO6CeJpBhtBVk18JggTybkN2holdwBdvwg693Nhx3uiiXkBWXUV/T5EyEbVRtwXWdeBe
         cHasIoitZ5xux3TTnjXk7rTE270gE70pWVnikljXWQyAdOn3VgFinN/o8HeuFUQm9gDV
         3Xw8wVumFcvUvkEOMNlzgTsA2jKCTotAe7ouVqwyzWw+pIXwDeoF9tm+4/UMG+CB1WoS
         /0wsEHSkPm6WHWk/XJEa4SHyvX7WHRn+2VEwUo2Kz7OCFSGOmi7c40YN8Mc7i0o3SUlO
         iIZw==
X-Forwarded-Encrypted: i=1; AJvYcCVhkgnQihsEFUWR912hpTbzPrMcIG5GYJfXreJhm+9X7E37U7vFK6IU/0LuI8BdtajeLAKM+nemC//K@vger.kernel.org
X-Gm-Message-State: AOJu0YxoaN4TA655R0S/dA8mYdKWj7PnWJamutmcSXbH91++5x3J3jpz
	4Bev6fy7r7F3/uad/DE+LfkWS/bQ8F7yb6+VMhCmO32bJhxvbInGvM5/bOjvIilWhb177wRIQI8
	3mfHrKlSNyBCis2Qt5aLIN+wLP5WGdB/QJqhB6ZrD6HZPpZS0ajSE+giRwQumiqfc
X-Gm-Gg: AZuq6aLTJPViDw0MdApoP40gdbzN1KPEhK4V47UEWs4sFi/onX8R87vL75sJEgWSLqz
	MgL5un4zLb54WvsIC+EAe4PMtyA9xqad7206jJYzAdOVgbBJX5Bw7b3X1vX/Jh2Z8HYtIvT44Mo
	PHxFErZ7T6VtXO/2ELLS4N32u4HfPgSfQNPamJCZtfQHuq9cOOzmVONbRLUlDNrrP25X1SvnLM6
	9liOEOV3p7HfgqcLdPFixivsGNfO8kSn/BRr6stFejflAAVvIooM4JnIyDnU14s0s9eHLm4vsjL
	f3INhPqqhGdef+BnoaIdHTcDALoduxhEh9Pjf8+t72MbY6nSh9EwikwkQAkwOJAZadEVWWP2XHl
	RSqq7wdMaoiQ2ZYh/z/VYwzlGVoorT76OKNOM/J+PCHBSza5yzCCOGY4F89A6Xtb0kT8=
X-Received: by 2002:a05:620a:3199:b0:8b1:fa2a:702f with SMTP id af79cd13be357-8c6f959a49fmr335702885a.3.1769422553841;
        Mon, 26 Jan 2026 02:15:53 -0800 (PST)
X-Received: by 2002:a05:620a:3199:b0:8b1:fa2a:702f with SMTP id af79cd13be357-8c6f959a49fmr335700785a.3.1769422553360;
        Mon, 26 Jan 2026 02:15:53 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b965d98sm4962415a12.32.2026.01.26.02.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 02:15:52 -0800 (PST)
Message-ID: <6f356389-9fdd-4d2c-8d37-82cd974d251e@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 11:15:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq9574: remove MP5496 regulator
 references from SoC dtsi
To: Gabor Juhos <j4g8y7@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260123-ipq9574-mp5496-cleanup-v1-1-9fa86f72b873@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260123-ipq9574-mp5496-cleanup-v1-1-9fa86f72b873@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA4NyBTYWx0ZWRfX+o64ESVDvc0U
 kul0BivYUpbbcfAt2ePYpL9Un45B0H2Ovv4Kwy0Rt7snXjZB1ki2tvKtAcXOiAoQAIipMhsSVJr
 q3WAcMgpxrrdMyAJrj8rTVX0TYmagfgR5oB+zMnlG1epmOum9Y2TRTavX/JPoEkzFsMBJlcrSw5
 NBKSSxax4LJLu8RKu+72u+A6Krasxdwz48YNVIgkaHSVmJS29qxiS6rNGie5Jpqv9hwF7A/fG91
 5XrQC50DdOMYBWjUliJR+BcY+x3P/2YoNVKTzEmWmpUKMe8U7GbiaK5IV5weFXddwBfSzbQJJil
 +OW8FDitHqPOthEO8idKzVQdCXQpS5jWKV+WuVugpokQc6YtWnf4YXDm/G8ZHtPIFWByRUG/SDg
 XYwYNr1/jiJPAg30xRKCcqPJ/4nVlgSaLkAYR28ZqtzMr0Pmd0Q38E5/QZr6g6v6IJCHVMAN6++
 sfewpyW2XK2bgUklQlg==
X-Authority-Analysis: v=2.4 cv=EsXfbCcA c=1 sm=1 tr=0 ts=69773eda cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=msZTsC1DfymdlqH7oGAA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: qlXQXN1tULYunIz7FKHKhpSd6Pam0BvL
X-Proofpoint-ORIG-GUID: qlXQXN1tULYunIz7FKHKhpSd6Pam0BvL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 adultscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260087
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-259436-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0881386AE8
X-Rspamd-Action: no action

On 1/23/26 7:16 PM, Gabor Juhos wrote:
> The 'cpu-supply' properties in the IPQ9574 SoC dtsi are referencing to
> a regulator provided by an MP5496 PMIC via the RPM firmware which's node
> is defined  externally in the common RDP dtsi file.
> 
> Since the PMIC is not part of the SoC it should not be referenced from
> the SoC specific dtsi, so remove the properties from there and define
> those in the common RDP dtsi instead.
> 
> While at it, also change the prefix of the label from 'ipq9574' to
> 'mp5496' to keep it consistent with the labels of the l{2,5} regulators
> provided by the same PMIC.
> 
> No functional changes. According to dtx_diff there are no differences
> between the ipq9574*.dtb files built with and without the change.
> 
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


