Return-Path: <devicetree+bounces-263759-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IvWHosPiWnG1wQAu9opvQ
	(envelope-from <devicetree+bounces-263759-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:34:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E67110A76D
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:34:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1BAA03001479
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 22:34:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5211337B417;
	Sun,  8 Feb 2026 22:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g6GoE9/Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j6OTL7cu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0874E37B407
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 22:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770590087; cv=none; b=lHGd975RNGaz/IyYZ1h8higLriTFVxxBlKPU9lWP0y/jpfSCjmBhEGbl+rKzfEEygC6CNeS9mZdxDzvPdDW8oFzxks/qFZHMg9vUKZBzLXlGiQw5Ls6kKqH3zGHovXVDluM3SxPXe2h97XrJRpenVG2OXtsD8tKptOEGEQVDCMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770590087; c=relaxed/simple;
	bh=wwoAaAOtbWnplXFyV5iIa0hf693q8dZWeMlUywMAG0s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kRs6TwR52rF1sgL5zudETbATvYrigWEe1kcCmJhxmuFTY2AkKQy+KTNbHrys4KHAWaF0JkkP+mr+yoSR9EHs17g5JZi6h84aZojKMuvihB+Ac/N7VYLH8upG1nI45Erpy1X/d5kH1+8PZsK6rLl8KBhK2u2qw0JAkB45SodCVJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g6GoE9/Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j6OTL7cu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618LqiPv1107976
	for <devicetree@vger.kernel.org>; Sun, 8 Feb 2026 22:34:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Vi4uK0xnOaKtTXaWqYE8tfTK
	4In/rE9tBK+vxMtHuyA=; b=g6GoE9/QTH7ZMgH2TtWSp7o4Om2/L0qONVicl5uV
	86VEZIv61NQCKGQqCGbQhOTvBDfqSxsVh8lb/a8pXndWjzIJR7MR5XfziQZZg5IZ
	HBfhDP7CdoQN9C5AB2M3Cmj+mzPbGa16lMwjNC/05rysN3u0otrfAk/Ohr1WV8SR
	+dZ9LuPKZ7NbEJHXSKXdJqkIJcRdwZj9c7xngJXHgyUk3fUlL9WRqnVEKmrSWE3J
	btOby87FkBxu9uuKZCAg6vWT67YqlWlTanULaM24jf7U4EeYX9qg0Clq2YhmJF/v
	L/xAtzKM6SsFmrwv2rc2hAqNl78gkfahL/k5rjtsGVXZxA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xb4u1wk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 22:34:45 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c71156fe09so622928885a.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 14:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770590085; x=1771194885; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Vi4uK0xnOaKtTXaWqYE8tfTK4In/rE9tBK+vxMtHuyA=;
        b=j6OTL7cuWOpTWHuOtUOChii0/427HdAHpgntB7pIF7PKU/XNCmSrIZ5iaeluCV141B
         fiEFzqXyJ+9077ZbgQ9lT3Uolw3dsbHd/B1IDxSSiXCuukt1w5mE0+BsFLDQvCwRj9vi
         DPeGqncwK38UouKWgNbGokA41sfzn9smvt5b4seV2A84vDbnizZtkIzhF4n5hCfuMH5C
         XQCYlJfTyn9Oh3rG9htfyC8uTGof0IuBotRq05wzZeNBnbOK5T3MtuwTCfjlbxaI1noT
         XAkWm5WiVf3Aov6Not7OOQedMvng6/ftytRw6ZpPDcJkXWTK1I2SF86qoNzdV13pw1Ye
         X3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770590085; x=1771194885;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vi4uK0xnOaKtTXaWqYE8tfTK4In/rE9tBK+vxMtHuyA=;
        b=aKAio0Al7DTN46YMDxb+vJP87j9avsCAY1HapIebKxowQwAfKkj3ri4ITRNyzVuciY
         0zmAOHyXbA+oPBNNW5VkCQ6TLAlVBBNFg8q4yXyBYXiZ3FYRys3+Q6idS2KaZ9MTHLY3
         sQtnPKaVk/LNe0lGJqc2BZPyZKzHlxRT6ZJUZfz+KEaJBFKGjq7uo3nJ8EDzDRj+jQ7u
         xFIVYg9qu8A0TaY1etMp9+mLXMYr+uucMVSMKhHhTZ0JrqlncwjdapqPxVxkv9vyE196
         oMmrP7Df0h3TdkIBDSWtkZXm4KPvAEhOGgQ/5xzu0P3WzsPrqsySrExukCBLLbLkYpyK
         TIGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyxiRtMg4mtHMUOhmDeI8ebGNnnksp/gx5Xegok8+f+MhSbAOvZT3r8bh3uEBPHcNqAEF/7ubmtcIN@vger.kernel.org
X-Gm-Message-State: AOJu0YyoD/srzI9CMg68Oq5ZbU4PP7oNSIftNmV7dfPpUGokvEcfALRP
	mKKoMZRlhjr+33ASihdUqkAP3RiyZfGm3g33oGVfU1abgxxFenYINLMRrkhNK416wIu8Pkm6P6E
	tzFZcX7OQ18BLVcQi1Yssvv2KiUHqLvpI3gKMU4YcX9bscV/zN0a7lNc3hkV2hZ2a
X-Gm-Gg: AZuq6aLLp9QTcVRM4m10dGN6zEJ5JnOsWNZYY0nJnon7KBjpUAH/kxqOwITkgqHG+pL
	hMCAn25bcp4YbnYi48rMnWK3pE/ue3+IpVI5BvZKVO5L441v8x6y1bmdhdv2g7mlhaSW2XIXosC
	SWwWN14oNvTjPoKwsC7uf/cQXmb4h9Y9UxoUbbZSuMU/k4mIk5Pcuaw9pINSzY1FXkdRJd/2ZuZ
	jdVIQhc/oGX4h1T+kaQ0G0eUfi3KCV+RURCySsA5U62ZwR8ni04HqdF0SCiJhVBCh6AlPuKIzpT
	FP/uzmtFySVIVCBzd4C2RJXyzee4xRyMozSYt96Jg9ksVBq32RKk5msrrhkyNRrtOmq2bSbwD2+
	BRZAz9YNTidQjPP4lUKFpBwmKYcAtrHwbYDmwJ7aoOQ6iD1KcdZaJcvVx4YfZEAR+6CREFfZ+QY
	AE21Qp9gijRVQEf5Dew2ORQt8=
X-Received: by 2002:a05:620a:410e:b0:8b2:7777:f662 with SMTP id af79cd13be357-8caf0f2c045mr1230624585a.64.1770590085298;
        Sun, 08 Feb 2026 14:34:45 -0800 (PST)
X-Received: by 2002:a05:620a:410e:b0:8b2:7777:f662 with SMTP id af79cd13be357-8caf0f2c045mr1230621885a.64.1770590084831;
        Sun, 08 Feb 2026 14:34:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44d298cdsm2172887e87.52.2026.02.08.14.34.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 14:34:44 -0800 (PST)
Date: Mon, 9 Feb 2026 00:34:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: webgeek1234@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8550: Add ACD levels for GPU
Message-ID: <nri4zjcpaof5e73xn42gc4pcbap3rj63qd6bbjup45fwwdrsrn@2arxi37bncka>
References: <20260207-sm8550-acd-v1-1-53d084c58c9a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260207-sm8550-acd-v1-1-53d084c58c9a@gmail.com>
X-Proofpoint-GUID: sD1Fdg0CkDF_EwokF5dsObT4nde8u0Lk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA4MDE5NCBTYWx0ZWRfXxgVaPVP6Kjxe
 x/OClU4+kjkGn/sE87/lFnHdQ49ArjBd/esv7TBjnewahkMHyMcJ6giP4/qHz+MqQE6mKjg+hPP
 cgaZZfs9BKEUFB9SJZv45hKv3x6xxc6Ow/aVIvFWrcx1XKEcPrMWaMKTHVPomkww6Ngcahvnp6C
 aFA0Xq8ucA6diS47XON46Z8GWqaBSpfAhN6oIDr7z4Zl3m2zvnd/9fUn4+mIX6vFwSG2hGgveNQ
 meBBAweYFA0WH0m+IgG2PNk5KQPr+xvijPvU/gHR3tPskMovlfOxFbz0ntcyE18xcHrK6OPcxEG
 e7hhF8zKQFJWygACiS1ZWtOMG8Tky4xm680JrHaj4/r8EoH/67LStmQkDpuCPOUd5rz16D9gb0f
 kouXwC2Ocg3Zz2hpW3jFFWzNwrvWhNsCh9XjJG0Yh7Mib/o7wFVXpzhf1NfjQehv65x9OeMWA6l
 FvbJDWK+X/t7RJNysNg==
X-Authority-Analysis: v=2.4 cv=PYLyRyhd c=1 sm=1 tr=0 ts=69890f85 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=5Lzz3qiD8dwKc4tulZYA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: sD1Fdg0CkDF_EwokF5dsObT4nde8u0Lk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 impostorscore=0 spamscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602080194
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263759-lists,devicetree=lfdr.de];
	URIBL_MULTI_FAIL(0.00)[sto.lore.kernel.org:server fail,oss.qualcomm.com:server fail,qualcomm.com:server fail];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0E67110A76D
X-Rspamd-Action: no action

On Sat, Feb 07, 2026 at 07:20:00PM -0600, Aaron Kling via B4 Relay wrote:
> From: Aaron Kling <webgeek1234@gmail.com>
> 
> Update GPU node to include acd level values.
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index e3f93f4f412ded9583a6bc9215185a0daf5f1b57..277dd7c4ad6ed7ef1b5370f34abe350d82b14b17 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -2503,48 +2503,56 @@ opp-680000000 {
>  					opp-hz = /bits/ 64 <680000000>;
>  					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
>  					opp-peak-kBps = <16500000>;
> +					qcom,opp-acd-level = <0x882e5ffd>;
>  				};
>  


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

