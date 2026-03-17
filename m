Return-Path: <devicetree+bounces-276589-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GP1mFb0guWkrrwEAu9opvQ
	(envelope-from <devicetree+bounces-276589-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:37:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2E92A6ED4
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:37:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 607283061AF7
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89715375F73;
	Tue, 17 Mar 2026 09:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cS+NjEQi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NsqQcqmK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FEA142E83
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773740045; cv=none; b=CQYTOhZwV1ttv3Kwg2SSbKuPmA2LYFNGfOtcxyInOO+D1nn8MWepIfWgikW2Df+7Urshdhh7dSc3eEyuQb+OULCOOb6iX1XyORzyc1BY7ODOuJDSvw3FTwWViwvS+6YuGwPYwPOi8kkFSBgO4h/sHeIpUxqWXQf4R+UMmaLPyAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773740045; c=relaxed/simple;
	bh=JdWnn6pGXCLogdw+svfE/u0/W0xP5UHUYwOShhYiw1c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iPy1jx0BQFONxvKC9Y06N99o6vn5eYjnVYuKsmPaj7IKzajQcCtyPpAam3WiFLv/hOAEZm96gvfXZkiPMx6gXKNHOfYVIWjm4B7sQ7JlXBB2/6aHAvzH3cCW/EzPtLzV6u3zP3C1hYT5yp0h6WLtkr+Ez1p+8K6j4x/O8MAVjJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cS+NjEQi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NsqQcqmK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H8em1H2315776
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:34:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u0pdsTDvi3kjUZWpe45UzSmLvVVLrnALZpKZ2g7P7IQ=; b=cS+NjEQifAcXrGWJ
	u8k3++wEHPNJVhNZLPktMMgkRd428goYn3VJy40pUFVBajn1RTDSjFp0RDJPy83a
	/Xw/97obOt9eALJ0Mj1VQ4bcE/mN4PyW/O8TICPYw8o6+KaZSKjVQRuw1AH+fXWV
	vuVA32kJUZTQXF3DGdUkNI/gF5zQ4mvy+1DEHLCmLKYxoJEig1R97+0sVWixUseo
	TxYueCjgMWlUfUy6mhcsFwPyPqA+aCk4dtIhh3cEeyf13dTvA4zEeuvSj6Yfi8X2
	+PZrmHiXMnLVAVf3a6hQcI/tdS/d730E5yg/QmVxGt3P9JFSeA0YFblKe0qASHDM
	j7hB2A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxmf2b8h2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:34:03 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb50dfd542so382715985a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 02:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773740042; x=1774344842; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u0pdsTDvi3kjUZWpe45UzSmLvVVLrnALZpKZ2g7P7IQ=;
        b=NsqQcqmKfAbjaL8FarCVHAFBTcFqEUKmRwkfZ+JN5i4vIOEIq7aGRoy4wljI1u+w/d
         fK4I+FB9zY2cwfwCMo43ZU5ww2GO/v2NpCjUmfCrTK1lpm6S425+uDQWDF9zz63C0C5x
         EvLaXnUjdglyemdf929mpBVc/9jKiobbl3KyLORGDU4HbZJdW/ZsemsSssuppTQcQEHh
         l4tGg1HNHARLzFih9JoArCJvfpV/gIyuRwLK6lzXvxGeqb6qvsB73s9jvXx3eKcyd2xi
         8VHT1XqE3gnseyDB84duSIs1o5tGcqTEnBdNgOEvLUL0xlLGZ/V1hcn+ttOh3OcngD0R
         3zpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773740042; x=1774344842;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u0pdsTDvi3kjUZWpe45UzSmLvVVLrnALZpKZ2g7P7IQ=;
        b=ZRiFO0UmGgGBVJ+hk7Er4Fox6d1EgeyoK9NPW1V7QHoUc6x9kMh8WrcyrqKzrATLkn
         osY0Gw6F2gdeLruP8oF2Im7pYaswQXbEDOrYnIva3ONEKq7bUD73v6Td94TmxMZ0IoIM
         MFyoB12l15tINxO66bM7iL6/JJDhZienHsylC9+EYqGBPGJpxWEyAKczT8GH5lldPX8m
         3KGUGjtE2PCUQcHmH/VmpVYytSRnZhbOapLNJvO668b+GSgrR1zpj1Gul06vfcJgf/Og
         oIehb9nLt8lbsZPpD+ICLuM7VMG4kSFXq3l/CdCzG8R/E7Mh3HnNkT5zTOY61bXePIYn
         32HQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfvPnluWVjVaH5g4KJMgvRYkPwlX6rn8qE/894KutQbwXt8RvX84mhCDFFFB5ctBkuaUwgkq6Ro/+c@vger.kernel.org
X-Gm-Message-State: AOJu0YwptkK4nkq2SkQs8zrBHNLwOcJpFYu7HjKHVFzGHJwwq7QfBGRW
	OsJFn2ygMXsBDMnRuku2VHMU5bPGk9L/VtneglYnjHpusi02KLpvKKWCFmfM9ncyKJo33lXmdHH
	QCMrIACSSoNIJIBIo9g+kI9nxnyRptJXZbm3xxuSDdDZiEq+nN3FGJH2HfeHgw/p7
X-Gm-Gg: ATEYQzwV8kqWFMgF0vgjZGsjPT12DFK167CWScCzDW9VCuNwyt4lOVLNEffXUjs0Nph
	QWJhFiCEo9om+CeiHbISd/WTSCdlsUGT5PLvrcylfm6Uf75d7K+++Rxi7h4Da4PCS3IpvSsKCuI
	7cyGyLiIfRSJSLtzgtd/o0ub+zQuwMIEGedVRqLzyi6ywhRLRn/u8DBAd2IVFmYUxi7bsfaBCX3
	GQpm0xl/QsVpDvXV5VflSYypqc8tTdONVlbauoplHDCZjXgAeD5MApGaQLpF8FNbhg73pcyT+rl
	Zw0kFYNvClwFIcsuEPt913s+jrN+nqkMmLsWvfdTb8lx5l7YHPlPnqE19XPOqbCafpQ3u/YcuXa
	unperumig48ElHa9emTFjlFca7bSlKKbhqnjwD689SNsZW1MzZRICHo7ottsP4h/KkVRWn6Rmfy
	KOMqo=
X-Received: by 2002:a05:620a:4102:b0:8cd:8bfb:a4a with SMTP id af79cd13be357-8cdb57c45ebmr1736004185a.0.1773740042469;
        Tue, 17 Mar 2026 02:34:02 -0700 (PDT)
X-Received: by 2002:a05:620a:4102:b0:8cd:8bfb:a4a with SMTP id af79cd13be357-8cdb57c45ebmr1736002485a.0.1773740042023;
        Tue, 17 Mar 2026 02:34:02 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-66350b86008sm6324349a12.28.2026.03.17.02.33.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 02:34:00 -0700 (PDT)
Message-ID: <6d4086e1-ef07-4eec-a385-753e192efe04@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 10:33:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] arm64: dts: qcom: sm8550: Fix xo clock supply of
 platform SD host controller
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260314023715.357512-1-vladimir.zapolskiy@linaro.org>
 <20260314023715.357512-2-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260314023715.357512-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: FKesTy8peFpe0ocV5wNI8HdT4RiY7rsa
X-Proofpoint-GUID: FKesTy8peFpe0ocV5wNI8HdT4RiY7rsa
X-Authority-Analysis: v=2.4 cv=FvcIPmrq c=1 sm=1 tr=0 ts=69b9200b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=gMOla9jSct7F-4z9eBQA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4NCBTYWx0ZWRfXxYS/h2OBlKLl
 Fs0tl0Mc+sh4aDW6mXdhla0lLcrF7oC0iiSPpfktruZ9Ap/YQS1dRNuqe40YY8d7TRjHoHMq87+
 GxMhwklaf8MBHguWPjoGXTVORGmWeOepAqCqJYnrZvjFyPvaAlFu9iaDXzHxzclGRa9cpSi+jWW
 vgL8y4aIpAZbEUfFVhDG65kMLTGu5NgzDn7O8xgXKrNAzQkQp4dqz91O8n2Uhwmj78jiEDtVb8E
 7txdDFp1JjCCsAZNm7jCGb2d13vxWlvfxphueA/nauOC0R+1dAZpOrNkXfRpaSKUEwAwa0NJe+S
 I8hiR1Pk1GCek+0GNdmPDPpFWizzdLgADsitVmXRLOe1Xabcz5T0FQAtUrrByZp94ubaOqItlJi
 OjBa632GHmEj6cZJBc8qkY90d9zH0xfGd8U/bC0+zAe81pgn3j92qrURbW2RmZPCv0OxMxQlVMF
 IrAZe6lM0dzX+4pUlyQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170084
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276589-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EF2E92A6ED4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/14/26 3:37 AM, Vladimir Zapolskiy wrote:
> The expected frequency of SD host controller core supply clock is 19.2MHz,
> while RPMH_CXO_CLK clock frequency on SM8650 platform is 38.4MHz.
> 
> Apparently the overclocked supply clock could be good enough on some
> boards and even with the most of SD cards, however some low-end UHS-I
> SD cards in SDR104 mode of the host controller produce I/O errors in
> runtime, fortunately this problem is gone, if the "xo" clock frequency
> matches the expected 19.2MHz clock rate.
> 
> Fixes: ffc50b2d3828 ("arm64: dts: qcom: Add base SM8550 dtsi")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

