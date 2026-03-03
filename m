Return-Path: <devicetree+bounces-270402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNu2Ismxpmn9SgAAu9opvQ
	(envelope-from <devicetree+bounces-270402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:02:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F25611EC419
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:02:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 598DA306E63D
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48183390214;
	Tue,  3 Mar 2026 10:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GPYopv9f";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Yb02DQYC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC0032D0DE
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772532044; cv=none; b=SJ/sPvDI82gn/ads8SBOfcuaEfpYSeofq3CClBcLH8IElGyydwgSgOZLA2zDREdeUzjIgOf9CSpm9E65zFb+3Xu75Y8kOkQY1Lz1urLWtlNegk/wuOIPvOAXRQtc/3LahdSGD23txQvk+UGnTEPalGITnZ2i6xHMWquMhKpXRoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772532044; c=relaxed/simple;
	bh=CSkduMzLuQugSH9N3ayAJLUGQD0l8WB/uFUTJasCfW4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OuwyF+rK6bL4ZluEqcfpBdkbFvbhkAnGEh/tqIl6ff9xBSj8d9+r52zRx2EvRM0DYAh5uS0fKRfZg7l3kEb8Dz+yORws3gtgFH8dHam9lt9Nexc/5k4tunZM21TYITAbbuFJL4nAneW4teY2z0IOGUFjOyhVPckpoY2yA2b0/KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GPYopv9f; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Yb02DQYC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239nJxp323924
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 10:00:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FLoATG47bywi/hNAlW34tJO1zr4FLe9DLmHuoUKLdfg=; b=GPYopv9f42T+1sNW
	slg5F44glFw6KWg8dIjX2Qk+uVVDl/c0oXCoj+1ogS/MUl1KvK47PeFNomLUp+HE
	oRN1m+J2zeJvz7rDLPKk6lwIbf6d2csG/ba9Zg1/x8h2ZVZGsPBpRzRD+HPQR1en
	b6YR5wP9xhqUKEQcHMd5dU39wVYUNLlXzC35JmwuB+bCLb4m1NvKt/P+g/Yt0yFc
	5/c2mYpYyfszCZ/ZtGjhY9QEJcSC0hSeVcpirYIyFWWNTcRg7I0gIzEs3JfitarS
	5fr9HwaExFHtlwH+8Ni60I7Fezkjt924QBUGiJiWzqjPW4aagZ5zywZzQLrrv3cp
	iWdljg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cncmfumf6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:00:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb5a76f13eso347505185a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 02:00:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772532041; x=1773136841; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FLoATG47bywi/hNAlW34tJO1zr4FLe9DLmHuoUKLdfg=;
        b=Yb02DQYCGLOTHjI5oYZiInqNC7TF3/qfQfwv2K+YtcLfkVsTT2R1YJh22xhx67oSh9
         y+G5PcypWb9MSyUiFRPga6kmUGuJRTfvba0zRLh31P/i3Af6V6aIJS0QWkojujbWhtkw
         K6omDhP1uI4+bMK847+Hv5YnKqszrNzPHC/VKlnbk8rCeaY4YOVvs4HDZdjO78sUB+Tz
         u7VtBT2Zp9uHsuZ94LsBNgfE2CiZEkwTvIdxA7CV4skb5BqMAcRAVvoyquobWzxUgg1h
         Dr3X2mIKg01C6HCiP9os5GKy+WhvgoH0O9d59df8+1VLy0Y2XNN568Xo2STLu6yZyS4+
         IhPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772532041; x=1773136841;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FLoATG47bywi/hNAlW34tJO1zr4FLe9DLmHuoUKLdfg=;
        b=fu7yuxyuBOXC3hA5FJdtYkV7/9umXl7NvZHHI3nINUAx8laCQPky0obxJufqk5zIQf
         wM8RRreF981r1n4ENFXZpt0VwnGrKzvt6T62UATN/eU9IIeIqVa4WFJcvzcIthdogA8+
         G8HKcJkAoOR6bBoYDPS03qBK7iW69V7HGRwLX9002hpHA4WkjnSCrf1H+D7o4BqGm46f
         e37YmrpVoV/fCpE9+jU/8rLzpyasMpxM8F8AssCipJ8Mnqk1Ar8+7+ptEMkyoy3AOKOO
         5OIPF+6JejMcyNjbIQ/uy1pBHJme2XHSf5WkufUdcrINPnp099ZDTy3DY1zuhqXppS+a
         tM8g==
X-Forwarded-Encrypted: i=1; AJvYcCVWs6L2VccvW4j+l+kBEkomkKAdLjbaU2AoKvxanQkocB4XAuAE4hLVDyVDfWm2FZjA2ZBgTk2kndjX@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6OGQoVeQHqXuDNoYiTTS60kaNiNBbrBw+inm/C/mtT8/4ZMxA
	MKHXJ/w1KLkDCehmimnGAgeMU0sx0FkkDVYltM18/BZU+b+4i/3kbsFKxBeGDUkkf1KDG9AK5mj
	I3SSv2/hzl6QY2cA4fyi0IqqOddAbTp0P057TEKfVQ/ZrqktVF83N/jD3zQ5qFtfc
X-Gm-Gg: ATEYQzzlKYCYNuZAFn4oD419zbEEcKIqM674T4v6NjFr56qcoVy+sSfHFW+h24cfSS9
	YBGNPylqBS5rDVjdJE2gMyYTJDQ7b+K4QL/yOUyiA/etFqqkW2ECeNRhlkDD6Usl3XUyf97VZU2
	UJJwEldH4+tjq4RrCZfAKQ2xdMnl6Kz4v3XzyskJk9M72+shbWLPywZi7lRJKuolyhlcI3gK7ya
	eaMnkV5vtEgeoKYyqjihX4IMtHKrVok84dxzGtJVB1B3xVfuHHmRLGJOZlt/Ud30I5CXVqrOxh6
	9o+cxoM3qoPQc2HSVFPmVWKJpami9G+OmW3nk40x6KHKxrGXJWt3G1KUc6n14++kHtyD/t01ER7
	V2licwUGmVDLnQoUbvBN8fQWqqdAOtq0gwxOv4EGQbnDUeviTdv48jov6FJSC9F2z3F35jsQB8m
	dn7HY=
X-Received: by 2002:a05:620a:4004:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cbc8e79d8bmr1428415885a.9.1772532041374;
        Tue, 03 Mar 2026 02:00:41 -0800 (PST)
X-Received: by 2002:a05:620a:4004:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cbc8e79d8bmr1428409585a.9.1772532040630;
        Tue, 03 Mar 2026 02:00:40 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ab13564sm576042566b.9.2026.03.03.02.00.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 02:00:40 -0800 (PST)
Message-ID: <d88170a3-61ed-4fe6-90ff-16b2229eb004@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 11:00:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: monaco-evk: Enable the secondary
 USB controller
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260303082157.523847-1-swati.agarwal@oss.qualcomm.com>
 <20260303082157.523847-4-swati.agarwal@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260303082157.523847-4-swati.agarwal@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Br+QAIX5 c=1 sm=1 tr=0 ts=69a6b14a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=XZm8HR36WHMZfT71Yw8A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: RUyxmJuxAxsdZSlWU59p3zKWgCWQN7-0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA3NiBTYWx0ZWRfX/lKfaeEQ9RVt
 70G/+Z30xb0COof5VOcATMncFzgllOHVSBKvBaga7Z3OHnAKd2aLqbzj/1Vl8AvkeHuNnQkEz7e
 /nNvaGmDIDZ0R7RFL+g5TQKnUy+ZcLewL1nHlWu/Q/SSD9dg1XVIg5fGg102EGEGKR7bPdwi4+9
 ixpDD2c4W99K6Xg+Zo1JnmDXaKDFITmnJG8Mdn2DioEFD7Y7ffUWRWhH6vEToIUk57IYVW7ISku
 uW4Dsze2RECRAtVm4WrHRXG6C56KAp5dXo47jFYw3+fg5Rv1m3+2oseY9ae4RaPzGgqzmCuYu+o
 ZBkcIPpe8bYiy3hkSymlpZOBd3uvTZg2S5xNG7GZqd7YVP3a+tWvSsuEjltWqgynaZRjP6wQcV8
 ROVy5DZQxMVXTxsKsd/OR5Z+vmUtHEOKeDP4AzWWBgrRwy6JBtRhqErY5CcTbEXKK5osO1xsvQN
 FdsbCHEZ5+UmVUhYk7A==
X-Proofpoint-GUID: RUyxmJuxAxsdZSlWU59p3zKWgCWQN7-0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 clxscore=1015 bulkscore=0 spamscore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030076
X-Rspamd-Queue-Id: F25611EC419
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270402-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/3/26 9:21 AM, Swati Agarwal wrote:
> Enable the secondary USB controller connected to micro usb port in OTG mode
> on Monaco EVK platform.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


