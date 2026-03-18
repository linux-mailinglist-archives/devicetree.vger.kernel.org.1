Return-Path: <devicetree+bounces-277094-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2C4nEzV3ummTWwIAu9opvQ
	(envelope-from <devicetree+bounces-277094-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:58:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC312B98AF
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:58:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3F84A306F0FA
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 862B93B7B6B;
	Wed, 18 Mar 2026 09:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jUhhlM18";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eWam8t4O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0B53B4EAF
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773827723; cv=none; b=WidVIvf6EB/Mm86o8xhOG6sQUfVmXehbhI1Uctj35MMV8sMZ44SmuDZhfq3V/3jgO2gMHfFPTqfmC3XyhL8X6lMKqWitOTRVn2oUHfpYugNqpmRLKrVGuj6HyWkwJ78nuOJwaI1fIDxbz4tf4TfXopsmKQK1huIZ6P9GrzaZI0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773827723; c=relaxed/simple;
	bh=xIq0xMcTOPMyhTIaPj+JUxHMhqa9umyfkKsl8bwH1zg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DhB54a3cTZUCcVQoeZJ5EVOD18iZJy+aVAfKcFV2K2dxd3aMfDRTIsGb1rH6MHwYBtYWlu4kqe2dA74Tq3W+3duFUkRfjT+Wle9+3oUimQOM/ezxS87q1qfe61VKaiGP62FZknqK/NXZKGb+NtjWziN9QUPExaI3TQ+8sqE235o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jUhhlM18; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eWam8t4O; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I76o5I2613396
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:55:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VCCg5Y1x3Oc6Q7IA8Ya+WunadascikyR7lZZKozdkAk=; b=jUhhlM18KmmmI5jI
	XsqQXmi3bU/4v6nD2wqegu7MsHrr6ihGMmBx9q0wpjYGdB/sGf2vJXegU+1lJSiw
	yYw6SfNbhlKX0ro7nuLoMORZeLANnLqqLyCKIJEx182ex/xF0LA13mHZ/NgtWuJF
	sav+tYhhzrwJskG+BzjMAEMQ9oCCYC7lNcPKn1QqzGy+/Nx7xbFxjOkYFFQYkAT7
	DrZ5+DH3FzGwe1Fd/tGMIcq5XRLlBssgiqNJa4ph/ZNHpIRKTnQYisqdFqTHveVz
	Aqf0FxFs0tVxNM8HKmP6gXC60UZokMqypTqnIMS7RenIpkOrxtgnHiFGT2yz1SPy
	QY62mA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyqcdrr6g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:55:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5093245c2d4so28535511cf.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 02:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773827714; x=1774432514; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VCCg5Y1x3Oc6Q7IA8Ya+WunadascikyR7lZZKozdkAk=;
        b=eWam8t4O0GlIav+Cxy5/KwQAur3Rm9zlXNeRNCanut+i5bkBukjISPdbi/PQEpH61H
         cqe9AZvotWatKgd2LI2rQ+G94gD3ZihAZLo5K5z4JaGr2kcwT0z25JRMPzK2LS1ZdymQ
         GxLRdz5vnill+lIvWEClY2oox3pl+H1Fil+N8L3nPQF9higvYm04Wvk5t4uvCk2CQjva
         LsksJ+8LtYXjx0MRLTOORhxOv2+M0YLavJw+Ud7IjNG7eJnjRiDnRT0zSGMrV6GTKWy7
         tHSGobRiqa79VVOzTlTJHKyNotOAQDD7KsQANEh+IgkyIFTlJyp/2wOR/Xh0uWNzU9nd
         vtmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773827714; x=1774432514;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VCCg5Y1x3Oc6Q7IA8Ya+WunadascikyR7lZZKozdkAk=;
        b=Qy3icajLgYyI9E+bxoKpgsDvsFNll5SmgHV9iJJVNbsCik1Jov/4EeSzo/7I5gD3lK
         JnI/ZX+sswMp/WwemtVy25Fo6PjcTaKDnb33ioCsnrGuPT3JD69LK3a/pEp59rAlgMqb
         WPCNd9qDLrjh43FE+pa8SNTtckiZEJ3ruePziCF9NSIVIoY/wm/OIOyOKYOAK+OYjQJK
         C2qB/XdnZwm8tdvw57ESrqCt9GpOGFwaKjIstSwSuALSattM9Yh9FgORvzJ5GrT7yARE
         FrClHCrLuHs+p9UXfZOLhw7vW/aOgozJs+DVll8Zw+SCNx/aS8cCuavcw3MHitvBt7Nl
         eOSA==
X-Forwarded-Encrypted: i=1; AJvYcCXIruS6kVYqxo1WK5jF8TLDiAKILlyLopel+hnguj7za3X7lUHW4yY4XckatGcFbbR9nXbMyuPqzlsw@vger.kernel.org
X-Gm-Message-State: AOJu0YzyjfkZo86gW65wNYdsiyQYRWEJ9u+mMCUxeTOqUbgsxJtqzaL8
	Xkh32zEhhx8gjwKAx7vXSlG4CZuGbxZ8f3lrX46o2hAFecNt5eEPzHTmYKGH+EGEze92wQpr07W
	EA0jknauCDsmngdhgvVND2ThSfQjfz9DSpLJgjEAQm3p3+RVmgkxZF18wq+NX2jpo
X-Gm-Gg: ATEYQzwKvXO0ng4P3JtXmjzlNZU/Evk6OdI7tez5/f4e+itmRxXJfJs73eLBrkohOP9
	slM6qNqBtKUfzrHoW35agGnxJUS0eD9/+nlOSSdLnFeGlABSO0vxHDP7OUrnane0mW45D8t1TYX
	o/Pk7LM4VqvNOuhzrYInWKPJOqzY57BBHZABgAZocsT8xrFZhQn70lSezIgJ8ufQPsIjd2hK1p0
	EC/kk+yU0QXQ5Sno0keWitZ+q0g2f+++vtFO3NWTmfqiCxL7QB5PT6XD7eDl6ecQmIWrCGEq+uf
	F2NKXBpsNcx07iJiQFmVQNYviufCJRR2tv7FzCFk5ja0K3theW8pdmY+LxKrMIcGt6l/Zl+WqEz
	+wCSFApK1b24i6yWgF5Uu+9KJmK3a/fTTISejDMKBn5oveBJSHUeLvK5nxbvQ9sWBHUw1azpyyn
	wc42M=
X-Received: by 2002:ac8:7f4a:0:b0:509:2c6e:f6e0 with SMTP id d75a77b69052e-50b14906b2dmr24009411cf.8.1773827713789;
        Wed, 18 Mar 2026 02:55:13 -0700 (PDT)
X-Received: by 2002:ac8:7f4a:0:b0:509:2c6e:f6e0 with SMTP id d75a77b69052e-50b14906b2dmr24009301cf.8.1773827713408;
        Wed, 18 Mar 2026 02:55:13 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f144e53bsm170047266b.25.2026.03.18.02.55.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 02:55:12 -0700 (PDT)
Message-ID: <01b8fec5-527d-4de8-9915-f456e7bfebfd@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 10:55:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: milos: Add fastrpc nodes
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260306-milos-fastrpc-gpr-v1-0-893eb98869ce@fairphone.com>
 <20260306-milos-fastrpc-gpr-v1-1-893eb98869ce@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260306-milos-fastrpc-gpr-v1-1-893eb98869ce@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4MyBTYWx0ZWRfX9VH2AC9mL3xA
 T63NgUfYQNBKc+RkgwyUNw3B8gdQ7eDYrB9fe1QuAl6QfbHaxDFWkVqTQyEWVSTZ8vCSGoJ+FSi
 lASTE0eZ48mZDevVDQG2gwE3/mXarHSRguX1hN/c5ZLo3JLQ1dLlQPlxDWrQIO65gD4tDwPV0iW
 pngwG7uhQhbE5ivpyb3w+ZHIEydX4lji1+ZJde6gCuAkRz9of+h/L28YnCpaFUByJtep3GE3y1p
 GxZxxzQxXt6Csc7MK81AJ4euDbXzakcZD1dF7NDifrI0ZBQRSMJ4Lq48e6mt7N2WlOob7GLbF7Q
 H68k2MUWRGArqq6TCCvYJ6VAyDkPZbVz/AaewwtAI36GM2dvENNEXhCY5aBDHc8r2y14hQul+ki
 mYFL4T8c8gutXgueVBOFs1CZl2FyRtAGCkwxsgQBbTYF6k+oAiDlQ3ej0REAxwALmA8fjaO8eBL
 WG+Kghnk9wbEO6O8RZA==
X-Proofpoint-ORIG-GUID: nXLuEBRQFum0KUdaYUgR81Pfs6w7oBxW
X-Authority-Analysis: v=2.4 cv=H87WAuYi c=1 sm=1 tr=0 ts=69ba7682 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10
 a=AYr37p2UDEkA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: nXLuEBRQFum0KUdaYUgR81Pfs6w7oBxW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180083
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277094-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BFC312B98AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/6/26 3:01 PM, Luca Weiss wrote:
> Add fastrpc nodes for both ADSP and CDSP.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


