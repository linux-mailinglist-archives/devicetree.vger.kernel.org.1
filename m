Return-Path: <devicetree+bounces-270437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LEmBWbApmnETQAAu9opvQ
	(envelope-from <devicetree+bounces-270437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 12:05:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 706501ED574
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 12:05:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E04E3303E38E
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 11:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9BF93E7172;
	Tue,  3 Mar 2026 11:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MWiV76S8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NqmB3ZJ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633163E7170
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 11:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772535669; cv=none; b=o0MoW3fOFDehiHxhtrDZfDQCCw41t7EZl2p4pXb1Wzt19vVDhXoe88m0HUXdS9nyL1VpX/No+H37ApM4CBNgaxzZ9JWd5vtLRX7T6fQ/Et8uL71l9MZ536AtSIGP7xhicQNN1LYXbt9caCXlpItDiVJDJhfKRqUoBaR9frwdnx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772535669; c=relaxed/simple;
	bh=4utjPW4Sa2npgvSb2FnP1GRsBua9mkK/e5o4t14uXss=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QZH1jEu6BsLk6ntKkFrQULUV812XJgsmFp1lfLratL/l3LT6K1218gPQqjZNyaTDdsOjHy+Dccd9V3ywLBk73HQ7H3Lwzsg8j0yoLeX8yaRStfQ1MfBkYdD6mVlh4U928v9fKOOLstjCjUgJ+RMNLycspGUP4Og+WRWqK6D0jHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MWiV76S8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NqmB3ZJ6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mt0p3099946
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 11:01:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4YQtyTtMzDq+YvUgrBZUuRFJhaYHSstW/drFh4M+XgA=; b=MWiV76S899qlOPKD
	PRS+Mc2aEYAuZMgfudQ7m4G+rTes6sOPvKt+JVBR8BOaJEvG7KbXzJnCYT911sik
	LdYOUWWeLOWpdb3O3OeSEQDs5VnYBsA5TRARqOx/7r9u8t42SnHGvHK2Rwj8MQbf
	vF9MHVxwFX9ebOAf0QYNyrd9ezjlwC8iEtJuqFqjPZxhXfikMrfRZyU3Vm+a8pMd
	uO7MsfxW0YkISjabZ0hfkNlSPfv3T5IN8n/tSKKGtri2i+GB85XH4FWnoGut23S/
	z/iDcm+1tz1tcwXEU5+1jjq9hcZDSX2RXMSxGd/pdfYGRkJbxLgsZYhlvfLAGEeQ
	epPnFQ==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnuqu0m6n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 11:01:04 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-94ad73f13bbso778445241.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 03:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772535664; x=1773140464; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4YQtyTtMzDq+YvUgrBZUuRFJhaYHSstW/drFh4M+XgA=;
        b=NqmB3ZJ6ntTkoXMotv/NekEmqtIUKaaZGS7I0J4r6SEQtBtFeSnRCTvZ591T+qrRd7
         xg3R4eepUZDLLHlcosp2A9iXCZuGGVpnG6g1BQQ5HlLkiOSjkufXvaVuDAuUY12dCZgc
         vDLWaUP6TRIc0A0l3xeTue/2wy2VwVQMha3Quv/q5x4hgejXzoUpMidq+fUkr5SZep/p
         F5SQo9CsOXd17RkZHLsPGP4djLxdJuX+ScZxJurjWnk0A94F6c7PfSrLCbhP4vOT3YRY
         Ss7GMyFKQOEAIdK1lE9j+n1NIGAbcdbUiGpkCF8BTQYJM26BCRgkqtugvrVhPk0Nk9Gd
         kBnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772535664; x=1773140464;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4YQtyTtMzDq+YvUgrBZUuRFJhaYHSstW/drFh4M+XgA=;
        b=c86U8CdQ0JXK1R/hqOyqQj9gR+QUAkUB7tXM515U62MX9iquyQuINjBy0WtoxguleG
         wIP+WpPhTQuCxHSFalgT20pU+ahI2RKSLl/5S7S0ffiuy1keSxPX8O+yG+Cc4CUqmdP4
         aqYkQYkvzFTMMWk1E4mfWHz+P7svO/rQoJ08yYe49ZdH1JBesQtHLMYk4Y7KFy8nqpRe
         Klh2Sm9FklbWniNJPB/4dNhJZlRS/PNYdw7KtkJb85oYrz9jrn2VhqlIvu0ccBgIHhtP
         7DU8lQKoCiFomIyzwuMeFJ4Qz9v32R0ynQZLAIDO3TUtPBnekR3Nzbu+MtGR6aIG1EnL
         z21g==
X-Forwarded-Encrypted: i=1; AJvYcCVuW9diDYAc164Kgbot/odwBa0I8W5lgra+ClZUQVBuAkgb9zvKZ/Oy5CHuhJtCClPtQ1bCiGznP716@vger.kernel.org
X-Gm-Message-State: AOJu0YyCPy5jUCs2ojRNS05O7Go29YNM8Lu2peSqiuz6tLp6ilykOJnE
	8JGuh03qBY7Z3Rft7AlqPwEe93buj/KvpX0/HU6nQZ7FGCDmjiNcZFDLI/PK2Ye1Y6RorH3F3qi
	maJ7Cr7rgKUxPP0h/jhTYP4nI904Rv+jzIKvLC2/LfgexB53EI+n6p8puP5FHsNOK
X-Gm-Gg: ATEYQzxn0ZI0rNua4UndjJRr0OJe/esEoFSu1dWZfwLZtnwSCi5V0/m/fIaZEbAiIUW
	OblCXwhR6SA/zT4aSWxqgy7Le64Oe/lRrmeZu5yaRbCyzbL/zLoERD5ritgRs1IHRu8KQ1auTLc
	2WJWcw97FpCQo8eAwNdEBf6S91k+S0s67r74wc55AAn52NSMB034wA1uzAS6lo4jSMyIXVg8TO6
	N+34VO1jk5/zoyJ5l/l87l/BGotxliH9AT3Xhy5L78hmcYvv7zZ7mtK2UbLCfRD4BPDCIyjKz4T
	Xl9tMW3B2AimALZSzCocD/M1STKMeIEZm0kvC/9+mSlaX7ZHAmSQcpgzwHwPyB14omrsyW7guKU
	1b0k62u1r/SrtL7OcTgX/tfoKyanPYpTTVE67WsVIk28TJRvpVzJmdLiogIJnGuWys66To0tvkJ
	zWrXs=
X-Received: by 2002:a05:6122:6217:b0:566:3608:f8db with SMTP id 71dfb90a1353d-56aa0a96612mr3169576e0c.2.1772535663781;
        Tue, 03 Mar 2026 03:01:03 -0800 (PST)
X-Received: by 2002:a05:6122:6217:b0:566:3608:f8db with SMTP id 71dfb90a1353d-56aa0a96612mr3169564e0c.2.1772535663226;
        Tue, 03 Mar 2026 03:01:03 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabd36224sm4380280a12.7.2026.03.03.03.00.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 03:01:01 -0800 (PST)
Message-ID: <8c9d80c4-10ad-4509-bcd6-087dc1293786@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 12:00:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v3 2/2] arm64: dts: qcom: glymur-crd: Enable eDP
 display support
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
References: <20260303-dts-qcom-glymur-crd-add-edp-v3-0-4d1ffcb1d9f6@oss.qualcomm.com>
 <20260303-dts-qcom-glymur-crd-add-edp-v3-2-4d1ffcb1d9f6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260303-dts-qcom-glymur-crd-add-edp-v3-2-4d1ffcb1d9f6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69a6bf70 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=7exTVeyrrGsJc5ecXJ4A:9 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 9VeXnYTBRgIUV21dRNlx_-P4zsjX1l2W
X-Proofpoint-ORIG-GUID: 9VeXnYTBRgIUV21dRNlx_-P4zsjX1l2W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA4NCBTYWx0ZWRfX/CvdLJhnsYoK
 qbUvskFuqGZfClPOniS1/l81wKwIQacweBjR3Kdf1Bv/7QEADZ0mBPM+R7Wu66VjE9wIgdbBNHv
 P304Saxo7F2QVqSQ+fievA9ONLARqv2f7ggsrO1F5XYtr+uiigJBi8cvwhDnha1wUihM4iA+ZCY
 b7k2AuKkMn3HOYWs8i4jSICffg2Rq67O3pHJP7lcYoGbCqWx7RTrtL9soAgs5kKOAjQY/qd2KvW
 OJRKWE21PQJ/obg+larULsCKg8mY9lF3QXv+bQG2/sP12BVu62KDUOdQpT2rOlr38CNYHzF0JG7
 nF5ESUHQs39iLVgY0T/QxGsKD/LFVfAxItXv3q5dRiMHRwZWBdMvLXUeA/tT5pZCW1ZB2tVB7bY
 sHYPis/j2d4vM5sV4MZBWX4unIX77AgW86uyz+K4/BF/hdAGAwaCjO72Os28tnX+FgbbJf/aQtz
 8TlkMcXDd9wZ8rNBj1A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030084
X-Rspamd-Queue-Id: 706501ED574
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linaro.org:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270437-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/3/26 11:44 AM, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> Enable the MDSS (Mobile Display SubSystem) along with the 3rd
> DisplayPort controller and its PHY in order to bring support
> for the panel on Glymur CRD platform. Also describe the voltage
> regulator needed by the eDP panel.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

