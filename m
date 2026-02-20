Return-Path: <devicetree+bounces-266906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDdQDqU6mGkQDgMAu9opvQ
	(envelope-from <devicetree+bounces-266906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:42:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B23F9166F0B
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:42:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2560F300D4C9
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 098CB2D5957;
	Fri, 20 Feb 2026 10:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dkh2Ia58";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NJsBPQmP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB5333E377
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771584162; cv=none; b=CXn4bqcIkTNSvOrBPbVRVfSXZFKjozE6pheQdtxrvi6VFghvNmppB7DYwbhzZ0S07RJN6pokqM5hZFOUIyAb6eFfPR+FSTKR57gqCbzS+eIN/MfSz2uhoB+wVzLshaqEZavQRveieUYUanKqjX/e8/57cHoqhFPbNbDmjZqnSJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771584162; c=relaxed/simple;
	bh=6BVn1qYdZvLap01i8wLVVonFLkT7a7RGiRr3/802B9s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RF6/g8sdoIsvgGlwUt1W+VI1QTyHaf0I6Rfhx40anu7KL+cVqKuBA0GiYHOuN16HQ3ObJhY+BvxkwPRRt0eRcffwDQn5BzUoSGKeXS15u2tJ8X8+FW9osFIqCNju2qH/n0z5+wcuQP4plT4x38Q/GVveGYYCG/gV0GaHQN8VVig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dkh2Ia58; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NJsBPQmP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5RmUf3697692
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:42:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SSoT8RDYh9SGpDdFyfFsOMy6GeOKmTmsEzsrIG2MK2U=; b=dkh2Ia58/Mtv1We0
	QtpBeZ/xdktZgRhbqNbsWhsJqvBjEFkwsyDUhGSz509q26vfgeNoZvuPuGOzelsf
	XFW10udHu8sKUKRpaSNYVbhyXv4D3F4DAWmvC2Ab4D4EQuOiw2kktajLbXHP9ios
	aTsL612xnQDjD3RQtUj7wjeOIvLp8RZhzG5EDZHYff0iJLxkB3fRgBgnAnYqzEPB
	YTf15k2+f1P4dBSPtbJdRNpCb/9Hrec5MpoId80ZYm3H9/CUcUv3DPQTjRJBC7f+
	UiIwtRMXxxooQixbNtoSuGf6qrF0LgUjdLozQlxR4GI/jcNCfEzvJ3GMppu69GNL
	RG11Zw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ceh5jgs8r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:42:40 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8954b9b5da7so19558566d6.2
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771584160; x=1772188960; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SSoT8RDYh9SGpDdFyfFsOMy6GeOKmTmsEzsrIG2MK2U=;
        b=NJsBPQmPsVZJk6G26zjgqzlK139c0oFv5OHKUvX0QpepiwYR9IdziAjSz8Z+DCEWel
         jJBxfKF3MJv2Skanq07yfWf8yOhu8YXbIGNfhiz0UfVYTIKYnA8CucIPqt5MW0j6I9l4
         Vib4CDq6OLhgsktsArcruKWLm42Khe7Bzz9Og++hPy/ZJzgOdP/mNyEaS3YJFFjZwmPd
         nQxcHCT8chIpJB4SODbNH4xPjGCNZWiENpP6x+ZdQ6Nzflr/09EZi/50HIYB5gc5X5bb
         760/BggHRUIqd2SkDvKe+DMFuz+OMqHVDt5i30KUGv86BVnnDLKBBlW8z97/1D2+BLAI
         iKpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771584160; x=1772188960;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SSoT8RDYh9SGpDdFyfFsOMy6GeOKmTmsEzsrIG2MK2U=;
        b=s4Xgvr7UvFNp4g/GxIso4FAHByhj2gbaCqdgjanubUUAkjcrJ+w4q+Ioi/9B8nUW8S
         flmji0atOsVd+vGHa3pmXe48gqcTmXGiLXEdit4tksvelY+ZStnLLVtGxKxPD5AS1XZs
         1ciFxv0RDBM9TVHE6yoUyP7yci5K9hVHXIyxNq9770dnarXaESd2LZGe4yU0x+3H0JWr
         6oSxdRRwCBWKtxdQ5NFCGpQdioH3ZtMDbY0nHJd2BFedpkhrHB8R8GpbZLKuBmLwHnU8
         kJvRXN/6t0QDi7ozKtXuTEZskzuUNRSarwFahVgYiTmk3/+LOzFoQLoR9P8Jft6lfygU
         9LYg==
X-Forwarded-Encrypted: i=1; AJvYcCWUkGfU4Stw7Cpwj2iNurawSLD1pKc2nydX4TgAuiQUJeoXSyOO/nIkIKh1jNRCWJzYizHBaQPXoUK6@vger.kernel.org
X-Gm-Message-State: AOJu0YzNN3jMONmb7P5lQIWmvIeDmwrvdWmGJ7ibKulaJ7srJExHND4I
	y11gEZblgkw5agf0lDfxFMzQmKWdBhQPCPpngH0j0MwJ6Yvqf/NArvcIXjkS+AQCiKDKDaNGFOB
	uqDPbIwIVgL46EYoMVlLilrk6TWcl14xD/FqnBNRO0x5COyXuiHi5HjNcZAZICnMP
X-Gm-Gg: AZuq6aKEJ7a2u2DjB1IUQYARMNsWPwhj0fqvzX0hP0acZks/eJMHpGkYa9abCRW7d0z
	vOc2jjRBJpneI6mNgjnoxyg/Anep9vEN6hVFY+ylmht+k9MHl3gUmT3x8TVMLAzWbczlXO/j2Zi
	TqEHven9xvYxqWdYLjZp1vMEaEE6F8EvXpbyFDvC9jZuYUu50Rm2t8KkDPQeawCpr62MLrfWufg
	uKJmYBENYvG7NWN4Xae4YpuxiKBljzwOjnYpbkl5YZ/waTAj1tZm9Ii0+JFCzATKbHPy4HFnjt5
	W7Wyj5gR92e2y/V6D9AplqJ7UrK3JZAeY8iSIknArTUclcrFnI+WY9D9FKYwXajbDkDPFsGW0dL
	Dnm+E2ylt2CGSy6Bxw3T5v6xHTU646b9KgLnQ7kOL+ugMaWGnXF361EX4BP+EamNg+YuQciW65J
	ChfVg=
X-Received: by 2002:a05:6214:601a:b0:897:2556:d963 with SMTP id 6a1803df08f44-897346f2bf7mr248078986d6.2.1771584160009;
        Fri, 20 Feb 2026 02:42:40 -0800 (PST)
X-Received: by 2002:a05:6214:601a:b0:897:2556:d963 with SMTP id 6a1803df08f44-897346f2bf7mr248078866d6.2.1771584159478;
        Fri, 20 Feb 2026 02:42:39 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc735d66esm639408066b.4.2026.02.20.02.42.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 02:42:38 -0800 (PST)
Message-ID: <9d896a50-0310-42c9-8a65-2e15e1c4148a@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 11:42:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: Add support for MM clock
 controllers for Glymur
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260220-glymur_mmcc_dt_config-v1-0-e0e2f43a32af@oss.qualcomm.com>
 <20260220-glymur_mmcc_dt_config-v1-1-e0e2f43a32af@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260220-glymur_mmcc_dt_config-v1-1-e0e2f43a32af@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Raedyltv c=1 sm=1 tr=0 ts=69983aa0 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=uQchpHfze1H8qr-n8IoA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA5MyBTYWx0ZWRfX9gzSiAofVKN5
 SyUShYohyfrOkT3n9ETtIqJf125pUndcmXcx2vWB5+tyU5YXJplAcNWP6khn3kWS9LwEl3Bicg6
 84xNV6vJ/yeaHi+MGmTCVuECpY6PF1uvT6ift8jkr3b+c4YotcK1LfLlmJ+5HB3FqpZGXdCUXn3
 3OLXci+dxiCTiSe/Hr2JJTMLWyS/+CdWWNpgCGJ0DMPAiJqFjqRoZzg0JAWQSSUPhEPwrK19Lqk
 xR8xsGMGfL790CptSPHNLieWSvHcZa48z23d3kIsgNlG2e6lpeemG7o+VEOJjRfdfAtjtRnUKkO
 xN15gQ7NF/pr+8VuRVnQ2Z4cPBLva0b0wegSJfFNru0i3hgsh+T+llYBupxlmiUa84aARFvWLp+
 cJFAU5YLSaVKvr1HM8ClZVtkG4UPF3aZuvW/nVTWcK4CK9DFJ6QjQFKpxkVq/LpGkVH7fHLnCn5
 WBRtoyXJjPKQhXnB0hw==
X-Proofpoint-GUID: o5JVASQsdQAxdRURJsgAPZCEvFmkbJLf
X-Proofpoint-ORIG-GUID: o5JVASQsdQAxdRURJsgAPZCEvFmkbJLf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0 bulkscore=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-266906-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B23F9166F0B
X-Rspamd-Action: no action

On 2/20/26 11:16 AM, Taniya Das wrote:
> Add the device nodes for the multimedia clock controllers videocc, gpucc
> and gxclkctl.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

[...]

> +		videocc: clock-controller@0aaf0000 {

stray zero in the front

> +			compatible = "qcom,glymur-videocc";
> +			reg = <0 0x0aaf0000 0 0x10000>;

Please use 0x0 for consistency

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

