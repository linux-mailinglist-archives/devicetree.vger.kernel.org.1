Return-Path: <devicetree+bounces-264311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFMrOqwAi2nJPAAAu9opvQ
	(envelope-from <devicetree+bounces-264311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:55:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19800119378
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:55:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AEB18300B447
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:55:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 996A0342534;
	Tue, 10 Feb 2026 09:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bqPulL6t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="STGqbZbI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719FA32C33E
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770717352; cv=none; b=hrLS5bE+DnjVxa3MRNuNlbIia1e1yaTg2ozndC41sEiWaI3JhwQzGT61/pIXgaQ0W7nWC9CIJlTuOePomzjSQuYcR43+qSe/VLDYLB+dEEbjras/1+6A1iDllmy9X7EEhN5RhwFsF+pJVQVW+jHAEhScjUvVzAKuuuvZ23scOKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770717352; c=relaxed/simple;
	bh=vDzLlOeCCHxI4iHnGqAV4YJU1/XH1hwY13MM1gj2Oak=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AbFOCmeDgObDx+dgDmNOOa6zwOBgoEfkJHGz0WeB+lByWy1BJlWXOnsOa7XPxSfNap3UZcX8A5SL09sR0Dr3XKChoHUnQEWWDSsMuQ2dcyUHlZrBHmrU9vulOeFVcHhLDD06lsSTSx9LeH0ILN25aRzQTrull+v4lGio/8lCylg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bqPulL6t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=STGqbZbI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A9kWbG1172145
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:55:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	33gRBKU0BmnrDYmMCny4DNczWXh1stbAnHES83h4vtM=; b=bqPulL6ta5xK1k+z
	JleBEx5CohRNACzE8mK2/ylIeONFCNX7NnNNydns4jmbwuERshJU0pIDhU8twQYJ
	7XLOiGBynDzVOvUBt4o+osulhBBQ57PM31IM50hQCbkPQkNw9lUJQrGhEwI85z0+
	CLUKJaYiEJ6np2yAcVYrYA5qBYFLM/hQLkWgxQhRpff+fcibQXKE4S7NewX9r44T
	3xhFJtfnzT8L23SUgs9hc4hLh7b4Pbc21qZk66YkeBH9/n+70yhW9b+/svq0OCf0
	FZ3g5ZTnzJlVTRdnuAW+ADaqviqYUL4W78BPtFavJnxqsQ44a8eLj1BvDAKaRXx4
	BtRf1Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7kftu2w2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:55:50 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6d6b0f193so119632685a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770717350; x=1771322150; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=33gRBKU0BmnrDYmMCny4DNczWXh1stbAnHES83h4vtM=;
        b=STGqbZbIL1HXRZuNcb2HsNA4GlDRFkafgxNRCb+n2zIO3n9z1IVi9gOxDdewKfzYsg
         Ag7mYpZIFss2yVbhzH29c6OKHwm4IMcpgTx+0nV3KqE+INkf3aP5m/0ZOs8ovadfKfoG
         UK0tNIngLywF9CbkNtWlC7lvKa0R6J3Mz+XeBT5XnHXRzCUW6s4oFX+fF4dM/qzDnSZ/
         9g1DQ78R5CYblIH7rNPBw87GTsXHw8HLbQ9F2FXuj4uJ/3+4bOsCe+y2uhvWcOzyhCJs
         hnYj+ITEZ2vwVethP6pgkpMSA6DiBWJ53294QtepcFFRiVgb+mzZ4RIY1H/de7cO9Pbb
         DHTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770717350; x=1771322150;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=33gRBKU0BmnrDYmMCny4DNczWXh1stbAnHES83h4vtM=;
        b=gWDFzvolEf6h3i76W3Hpv1dI//iCiLmWdAnZHmwMLy3Sf237OdxRmHePDfyMu3HqlW
         U43zBZicmWNVpAupJYEefXIPxULC/b9ECdnHYyp4yl0GFlIxemeAU/TWf8LZ9q+UVCV2
         7CkIpfaos8eW05q3SG32uGF025yFOGs7gsz2lq/ggayevZ6EQGXWKy76Jqdq5+2uEyZU
         tAVlcdEfK0eZk2TPqn/62VodOCj1UBbmsGC+vzpFcVr8G69xEY9M/OtulP7Er+wk5V/p
         roECTwaWxbGhT7SMojGm49j4b/MmSifXwnIEe8p8Hks5x8YusbOXCsxaLfYBWjClfyAO
         16iA==
X-Forwarded-Encrypted: i=1; AJvYcCVLagHiAuf8+c31VC9lLdKRKOvugESminjvRtvzBlwnxBW28om8VBgSZvA+IoZ6xz3bfDGSzTrZMIz6@vger.kernel.org
X-Gm-Message-State: AOJu0YyIxLiJSIQqGx+fy1EtgpfEGSzSPHiGKP8/6fYbVRYRYohzKBxo
	PCciAdSKHF8Jibzi6qf0ag6gefRy1NRuXaP8g74eJW3J7Dl4+sLpjwPdu3gaMYLYbgZ2B/Y2fgs
	DCqGUkhPJ5eWuPq2rK3LJo/rjo9K+XiUK0uohxJ24NnUlPzVGSyWVboshfvD3URJI
X-Gm-Gg: AZuq6aLAW3E6JhJ6icIxKFi/Z5Zj/54POvuhqSI4xwtVAc6qdOzozx0B3yW5OyNrxUB
	ydrhHaPWwVwnpw0eWGtp3L1cl4GSnROD7y+E/Nji2RHzydrtDlPN2M9xQ1JGQjGH39Cwl1s1xVF
	DfsJvWy5e/XQZn4sZLGgLe2aYrNL5QR0ijh17TqfTWccwC25svy087iomESWChLDTRuf8R72Mn6
	CVM5RSgd9rN1O1p6SqL8g+VhaCZRnC5Xt+Cv384+4prfC1B/oS/umUvBnmZgrcgiqBtaFZkEeVe
	X/fAlOl/nKdxnaxBkGY9iIM+xLfrZ1KM/dV0CfMvFwA5zeFZ2u/GnJ81sCb2V5MXnuZfHC3gHqA
	afEDSMSf4N/r/fcNT5PKYZNyrA63cFHnX2nuz9tbnavnhyS+B+Vu+jv40UApK8wrFWWNV0GneiT
	Ovp+4=
X-Received: by 2002:a05:620a:45ac:b0:8c7:110c:762f with SMTP id af79cd13be357-8cb1fee2ebfmr110934985a.4.1770717349982;
        Tue, 10 Feb 2026 01:55:49 -0800 (PST)
X-Received: by 2002:a05:620a:45ac:b0:8c7:110c:762f with SMTP id af79cd13be357-8cb1fee2ebfmr110933885a.4.1770717349556;
        Tue, 10 Feb 2026 01:55:49 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edacb3002sm499106766b.39.2026.02.10.01.55.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 01:55:48 -0800 (PST)
Message-ID: <d7a3becc-99f4-414c-969e-b703201f76fe@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 10:55:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa-evk: Add DP0/DP1 audio
 playback support
To: Le Qi <le.qi@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
References: <20260210024037.3719191-1-le.qi@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210024037.3719191-1-le.qi@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4MiBTYWx0ZWRfXwRWi1pmRrTff
 RWdClFSYvIu4By6RigN/iPqhxe//KLq56Z6e2rfYKdwCLWA0wooIla52ez7FuAu7OWqdb/aIWLk
 C1AD05zAbuvHPPVRPd9UtljzvHEy8OYHoXBANhclyaigmSshchzZBHiz75JcF4UyJB9mpuCjpbQ
 Xoeqx+uorhnjjk0dPjIY+dVIn74fQtaOIPKmCAHgwOSskeUgYlYRtAkA7WEP1Jwkq4/KZNFKUn5
 Z7PBXk4YwLq446eVUzApK56QbbIf4mWb4pKgNPD7fG+ITxjEJbZF41Tx20q1q5YAMZ5lS85Tcb5
 kMbHapFS2ZDnDIfCxsdb6iHr0gpgwIaEC8OVr3mEPBzK/mmG6HGbW+zTnarCduKIUCjtcqj4ef4
 HDo1n+ha4rhmkBM1axT9+ewsWO5T90LXZl+/NlN3s1j2/9XNluGTZ4jAAUMqniwpGYo5yoqbZ/B
 s3GdCicZnq26LwKYwyA==
X-Proofpoint-ORIG-GUID: e_qXqR5FuvTpKIVU2CEROSzqzjiDc7VW
X-Authority-Analysis: v=2.4 cv=XfuEDY55 c=1 sm=1 tr=0 ts=698b00a6 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=KF-y9ULfsUGcPjRbMZ0A:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: e_qXqR5FuvTpKIVU2CEROSzqzjiDc7VW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-264311-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 19800119378
X-Rspamd-Action: no action

On 2/10/26 3:40 AM, Le Qi wrote:
> The hamoa-evk DTS currently lacks DAI links for DP0 and DP1, preventing
> the sound card from exposing these playback paths. Add the missing links
> to enable audio output on both DP interfaces.
> 
> ---

No DP2?

[...]

> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> @@ -616,6 +616,38 @@ platform {
>  				sound-dai = <&q6apm>;
>  			};
>  		};
> +
> +		dp0-dai-link {

Ideally, these would be sorted alphabetically (so, above 'wcd-foo')

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

