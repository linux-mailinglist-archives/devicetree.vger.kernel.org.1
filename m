Return-Path: <devicetree+bounces-266601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOTlCJrVlmmVowIAu9opvQ
	(envelope-from <devicetree+bounces-266601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:19:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DE415D49E
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:19:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 191F5302590F
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AC2C3382E0;
	Thu, 19 Feb 2026 09:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RAxh6iPN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YtZXXWHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE342F5A06
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771492742; cv=none; b=UhQpcmLAqFzA8FwNCccnm9IfITT/HTVoyR1YqJp1w3/JxKXMXhOErnV/KtdHTPAHhIRdJ1mHgdtzMlF9d41Y7/vZBkNc7eAomEk9LYlmOsZanOqJ/nsLvLsWK+UPVmYqpbOJBOvZc6sbWM1Xcw3Tpe5WMUEiYhVLhrIkALQAu8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771492742; c=relaxed/simple;
	bh=kisVfgvpDR5taz707UhZIUsAYFSg3p8Ww2QDn94jDMw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ATDH2yx+Zpen7zgGnZSUE9HSXLfgaNXYdtlax+++BsCRV3xC3DTj8UMzWuzXLupBkTTVxkfb8e+yqDrJCb1QF9Np/PhDPavjgcI2zf0JLp3psW1HpRHCWDBV39pUpRDOLbggahFZUK8RSXBuvS2nMq1f9IAx3DykmHJhtMLqZNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RAxh6iPN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YtZXXWHC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J1F8jh160708
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:18:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=; b=RAxh6iPNf7knj8hB
	nOyilC3xwUoJ96Fa+tFcJyGgFIJudemacMiPk72wdLm1rt44i34y7ZQ+xxKbQ4/H
	Mmd2BeQr2g8Ht0JL89EsyprDhGNWGaHkm0+s9DR1oPo8J8Y00DoBPvBl/0Q3mrp3
	5J2l45zMT/vrPFRZjCv9QDQZDnuo+Oq4o569VIWG2WzeCh/pF206jYzTifvu6A0R
	vB0vC/UXKUZ9Gp70a7GGvLE4Iyoq57C5Ery5xx4Kh8PXC+c4lxxD/g5o1jY4Ltdp
	jSljad1UAgIVhneEszDAAir8Kt0mMHV/2VEYo2bbng3Se6kC0Wv5IXP3449GiDKe
	cZt2Ew==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdrpg8w5k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:18:59 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-897193937baso7398196d6.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 01:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771492738; x=1772097538; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=;
        b=YtZXXWHC4j9bvjgOxVW9kQHhylyGKZYjjbpizEx1GjLjaXjDXYew3KtCvgAgQLPXKU
         UMLDP8PoLrZoAj2m3lltpx0Ps6QlQ52YmJEoggWN2SbN5ubWaWy0c9UtH4Vg0WjUaJVq
         QWFqjGqQcJfoPGNkTqI934H6FG1n2S1fyl/P1zQkZz+h/ZaUg0NXkaa+eMRywEiNX+Ss
         NmaXvXDAzL7yPV9l0/7EXbHf72cc7tLeb7h+ngdYj/Wa4Vp65QzP8E+97hjSoYJpjuem
         XBLWOKZTYd2bFv1/2CVM9zSI3OBG5pAeHoKKenX5VcNlho/t98cEevSpVlnXkTiuxgBa
         42vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771492738; x=1772097538;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=;
        b=DizZzRwdL+dlgFzXZYEoD493MM3aRoWNtGTeVLH1UZcixi6CxbOzm3pCxi3KJ9DxE0
         ASZZUKfGQeO0e/oMcEy7DxYELU5eAzlV7jJqbnMkKKOo/KiXIgrdkmaiIo8bTNrZTBNq
         eDcJAGLAFzZJN/YmG0zSfod9XaU9DMq12LWZhNQ7JEU8cSvFwfzh46OH2bvYR13J+znW
         wuNPtkqDlMySWI/Xrv0PONv9rYoeuNi2ptGgUtS//qQsgWW664ybZ4CD/mC931zc5gAI
         YOQzIcZCNpgNl1w32ujvN8jm8JOHvJRUNd5OYRWnrOgVz6xyfiW94JSFczY7K2HlJytO
         JRrA==
X-Forwarded-Encrypted: i=1; AJvYcCWvAnjvm5PeRrhTEZfnFDSGAtDlTbpvbbq7yuZtBUn7dXDdkdsek1VOKXyHiQSW6yahStXqDdtFG6yW@vger.kernel.org
X-Gm-Message-State: AOJu0YxCzYWpICrTBWCXwUBQzoEmNPWkD9K+rKDyB0zFPDfJiaC4EA+8
	+QuFV5alc/F/MxqL/JkmBzXxB49/XKEK4dh1X6cZMS1ow+RFHXJNdSYVBaXT4Y9R4L4C0gudI2T
	tzXlpNVwwqr6e/kNpbnw8nvO+GbKxH92ulk+0QfcquDpyt4LBvcONtvjIrwdrRh99
X-Gm-Gg: AZuq6aIlH36Zqwo7a1RrRuTZnlTtQ0NZiUHhDQSFXj4MHEYpWgz+lZYnUOypqn0hCJw
	DHkYxQdp5L3gF+dmAatic1w4dZE0Z/xSi8Ac+DnmgueTFmsylFzOtKL5wSoOmojrdnqDBv9lXOw
	nc5H5Mg+C18HcM2m7BH398KS9Fnb6rZ0beptLNVUooe1zgXvfeYO1uwqyJI4tbO221b0euCG/5z
	FOLTrHahy2C3VIKsnMYQyBvoDyQbSJafESCyP0zPaapf4STBSXAppWs7jNbHSbzFvOYxfLieKeb
	NDI/SuZQWGB1g8Rei6rU3if3h2COjK19pUmaz/wgJ4Gn1iFYwnQtXYoOFfjrkVb7UQG5rt1oL5X
	nZidN8MnNNY9O/Z8hZqz3Ac+5VjH6k5ZQT9hE8NgecoLuwxD6vUuQsdPk70cazsl6jY6PepfIqH
	a2ZKs=
X-Received: by 2002:a05:6214:5e05:b0:895:3227:1d8c with SMTP id 6a1803df08f44-8973462702amr208326876d6.0.1771492738629;
        Thu, 19 Feb 2026 01:18:58 -0800 (PST)
X-Received: by 2002:a05:6214:5e05:b0:895:3227:1d8c with SMTP id 6a1803df08f44-8973462702amr208326806d6.0.1771492738200;
        Thu, 19 Feb 2026 01:18:58 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc76655absm533402566b.51.2026.02.19.01.18.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 01:18:57 -0800 (PST)
Message-ID: <beac0435-478f-4d83-8f71-9dc6518849ac@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 10:18:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] arm64: dts: qcom: msm8996: Drop redundant VSYNC pin
 state
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
 <20260218-qcom-dts-redundant-pins-v1-1-2799b8a4184e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-1-2799b8a4184e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: KkzfKlD9KU7oHhss4V_3GKotBD9hjys3
X-Authority-Analysis: v=2.4 cv=JrL8bc4C c=1 sm=1 tr=0 ts=6996d583 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=NMe5sQuIffPLTvoV0ecA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA4NCBTYWx0ZWRfX10SW3pqd1S8p
 O8Qqv6O6fS4kUCuNwMrb6JYBq0ks3tZnkAvp4H3aRUXj1wOrT5FdWL02BQxtwPs9wN/i4xTglHj
 9/2He0InMrKSkCXn0YeEPnnnv+BgbkLaomXlsR8geXdsyHu0lmEfiFNnfr7gXjUJg15riyQI4ki
 nKPIVs4IsQ+aoreA7v55/yFb9swLM5HNtWQcEdBar1PFtkUig+M3IqJ6HvgK0xUGyXYUpxYvz5n
 NA6QUeTPW0lxNp/DhQOQQeB+qRxNvxNuN4PAqw60UsfuVtFsHmPRtzFDTqlhQgnwwqKEvV6AEig
 mrB91+l4r+OpJNDCv576eYIk9L1Og/PZwWYEThubxOMjP0mLJNUQDaTeWRTJAkAyULCGU+NpLSU
 6k6Am/SblA2V7cje0ogwyyjuK7fOrUjsotPt17CoX0tlEmhseRHMFgPQkAuAqA5+DSiHv078QFU
 +FVW+2ZyYNterD71jPA==
X-Proofpoint-ORIG-GUID: KkzfKlD9KU7oHhss4V_3GKotBD9hjys3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602190084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266601-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B4DE415D49E
X-Rspamd-Action: no action

On 2/18/26 6:24 PM, Krzysztof Kozlowski wrote:
> The active and suspend pin state of VSYNC is exactly the same, so just
> use one node for both states.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

