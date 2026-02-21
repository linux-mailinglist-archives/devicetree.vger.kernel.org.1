Return-Path: <devicetree+bounces-267089-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOxWK0MdmWkKRAMAu9opvQ
	(envelope-from <devicetree+bounces-267089-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 03:49:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D7A16BF90
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 03:49:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99F83301DBB7
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 02:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A0321DED63;
	Sat, 21 Feb 2026 02:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zbrur7YM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jqAyD1gJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCF31AF0AF
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 02:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771642177; cv=none; b=eITtyaLCvKSXjsdIq6IVMZjtlKAC+ExEWS9EUYzmPoa+k0BoVgD8Zxx/Y4JZYf6cxgnecrgjNjyn+3lmw3qYD6NvFsZBpzUP6ZlQifEnR0lUD4BEiZUfacdXXRNjgKfaNVzvx6iOlJqXSFl4C7ic25pdSKdB1GJSqkT3uvQD7BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771642177; c=relaxed/simple;
	bh=uq92ycsM47Jo3q4lAh30+sbvRyqWHRljr1zKiEWutzc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tiWPeNh9zFaU6z/YnIiLj+VXQLohhg+a3BmyVK8rTNAzuOnnPxkcURHIeTNv4RnpdG7OdosFAS7WR/lrKpG/YvaqJEOvtdYewbjVxwOzY+Xw2OZps8YCYZJ+a6oRS5mYYvyGxgSuSlBoeHQ3QnXFNu48+ZpFTYQfI+xHJGVIm/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zbrur7YM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jqAyD1gJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61L2XmVK766558
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 02:49:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BmWwSyvtQgL34OEqTM20cBfqvgI2QWHHCJgEeagqLDo=; b=Zbrur7YMuFsAtxgl
	ZpG+MMTRvPm6XqWhMA1Ukb4OavUa/TsVFx9pZXgp54AeaRplZb/PjaiGgnI/GXNR
	bwoRxRbu/ole69KAiIu2IhOCh4Arh14MtlwsjVRXpf7Shb3njsZ+ShajScnzhngH
	ygc2/CNALxCschU2e+xiIxqTNbz/DJ6SPDjJAY7NMe3JHnR9fRMZJlcnEOQ9wN3v
	YO2jhYMu42cqKkav9Iq37LzcOiDVKfFw912380YcxmT6l3JonCqmtvC2f604t96r
	h4hFSNiIX2uiifLhBQY6UG0n6b/46WEGKmfkR1qG5UMdtie1ifuOoJqLh+v+Hbjn
	PC3lWg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ces849qva-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 02:49:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb706313beso399215685a.3
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 18:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771642172; x=1772246972; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BmWwSyvtQgL34OEqTM20cBfqvgI2QWHHCJgEeagqLDo=;
        b=jqAyD1gJZs8tCYH4XvCwi7l5+Xp/FALRNML198bziAe0Mo48Yp6xEr/TvlqJSnbapX
         1H+Tc8gwWSIUQKGD3ukLmtWdADLKgDJiyCxXYraR7InIkBNVgMWkWAK12Pb4TPISX0K/
         kwH6mYZy8hAslhw9m3GX2xdKNXpHnv6pHaIU9tGYbkfRxi9LjQBR5fJwDa6jvXFUYNa7
         O8L6nsDXem+u1KP9t4M/YcC+0Y1WvBQ3EKDoo3tF58xZaL2R9J7G6fF8pL0Q04TXd8HT
         frlOgTqHHJDkhDPvqrWyS0blExWmudlvTKihBY+WExpqq5IBlYfrkuk87Y1OBCw+2IL2
         5PwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771642172; x=1772246972;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BmWwSyvtQgL34OEqTM20cBfqvgI2QWHHCJgEeagqLDo=;
        b=klQycz3KsF0RTE8Y46zoCjnuf+fvQ0q3y1Pr/pcLkUqwFR5dXeJKMqdZL3yZwoVeTr
         e1QmVpYoXZ/hpIlgvlaYUcKb/enaCKjvBxObLcEet0NNmPr6kCc7CdWEmYpZvZhWUpMo
         YrT/qFNpo9HDDxaDozo+Fp0jPkcWEQaDsjYetyRV/2I5/cYJ4DeSUtoUeByHCBPyurHE
         zBBdqNd/AruYTt7JDq6Qk5gYulTPlU5xLJo6O3CAurx65oYeGqvePaS63whOj13Iah1L
         ThiDJ8aZT++8OjaB5giT28kepmz1+p7jDQVeS/GkROiP0rbJ0FhhhOgyHd62tpZMK+pm
         QZIg==
X-Forwarded-Encrypted: i=1; AJvYcCW82SQuId8NwmieBNdQAmY8tRi+R0+8N7mVEknndI+a5k+SpRNIiiQ+7hVl8DG5Fic+xz2tNpytTEFa@vger.kernel.org
X-Gm-Message-State: AOJu0Yxehms3gcIZk3SBuewkZkEBeD8KeWvCPlHSCrK0SAIQjPwUVOgh
	BY+BOajhj8flLyBgwZMQXbcqyJ1chw95OWFJzfdK8gO4t12OVXa5ltT5u+HYAKdeiTKKjJ9xDPo
	nh8hJbO4m2gJEvzyWEFrGPzsnCUbF7xSkYBahVpb2X7aiz+OngNwEsCqE11KxNotk
X-Gm-Gg: AZuq6aKx2TzxzMnKkPZOUXDPNLC59QfmLJ4tKnte5PNAa3JRZFfl4NwUejfHpmfQa70
	ChTVoZJ2nSr4ja35qsXnKLSO+T2zwRZ6XWnm7vCvzwtqJs0HJ4u8kDkY75Gob1VOnkcz2rNpEjj
	Db62JqQEMOx6NT2RM5uozXVqxCUoHfILyuf2A2J92LInZNonfMw3rqAco8aGs4MXSqzFQFktFDL
	EbFebQcB3I60PNnpp+DtXpcN6ddZV6AWQgqLRvCdlRA7u4aCXpZQl7OenoCNLuAp0yOxnk8Zaf1
	99oIxcQYofbxSAQFouvsnVlwi3O5M87gRvbv2+lUFE2wAtVTgLN9TnNEZA+2cI/9ZtyNaHBD15B
	vzt0cm6oQYB5EEwfgckKa5/mgLgvb/+UWUlyjqPqfhds11nzLGvwQP06D+FHYt/q4v8wH/ggZ2L
	Lb0sk0DJGWKP/cUThIWRilf1zC+ZPhvqMwvDs=
X-Received: by 2002:a05:620a:1a0f:b0:8c6:b45b:9e2d with SMTP id af79cd13be357-8cb8c9fc7a1mr245187985a.26.1771642172458;
        Fri, 20 Feb 2026 18:49:32 -0800 (PST)
X-Received: by 2002:a05:620a:1a0f:b0:8c6:b45b:9e2d with SMTP id af79cd13be357-8cb8c9fc7a1mr245185185a.26.1771642171899;
        Fri, 20 Feb 2026 18:49:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb1be5fsm179895e87.39.2026.02.20.18.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 18:49:31 -0800 (PST)
Date: Sat, 21 Feb 2026 04:49:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jonathan Cameron <jic23@kernel.org>,
        David Lechner <dlechner@baylibre.com>,
        Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>,
        Andy Shevchenko <andy@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Laxman Dewangan <ldewangan@nvidia.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Hans de Goede <hansg@kernel.org>, Jens Reidel <adrian@mainlining.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sm7225-fairphone-fp4: Add
 battery temperature node
Message-ID: <yikwygc5gasmr3cdyv5emfr2flaoraxcz7ap3j55wn4ib6wfqx@4yxoly5zrucx>
References: <20260220-bat-temp-adc-v2-0-fe34ed4ea851@fairphone.com>
 <20260220-bat-temp-adc-v2-5-fe34ed4ea851@fairphone.com>
 <85ce1f2c-f5cf-4e97-9611-4aed03f69cd7@oss.qualcomm.com>
 <DGJQ4WLIML3H.GAO7T4L3MCJM@fairphone.com>
 <a422e087-a91c-4bb2-9d95-e1cefc9a91bf@oss.qualcomm.com>
 <DGJR40B5R6MB.1V4ZK5SW1PXAV@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DGJR40B5R6MB.1V4ZK5SW1PXAV@fairphone.com>
X-Proofpoint-GUID: D0fByA_uWmiGXn-IfFEbjfFbHcQ6LTRu
X-Authority-Analysis: v=2.4 cv=PoyergM3 c=1 sm=1 tr=0 ts=69991d3e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=6H0WHjuAAAAA:8
 a=Wrfmzfmk65d1CdvWbAUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: D0fByA_uWmiGXn-IfFEbjfFbHcQ6LTRu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIxMDAyOCBTYWx0ZWRfX3L/5DG1+sXy+
 qTVbUFW1cgTvMOoRwC/H7xSiz0tY1c1gFb7aACqx5/bg3qKappYFudafk0On4WEqzzquc/QQUK0
 IzBz46qOBBuxw3tvevrDBk6osdHPEc0P1aaFE/7h9tI9unsq7TH7CVgnxrmbMqv7M/UK9/5FMWw
 hwC2rlHURAdLT90KFemDeFbeC59oSTIRRBuXyGD0SgnpQJHh7d3cgoSZCHmH+Iv8IJiKb+8joLn
 JRvGKXzzL5Vh8y31ofqIvIFtXWc+HVi6aD6tSSKJusgqEbE2R7awpiBjZvlB6UEt0KP8rdbJ7NA
 CgHk5iDruvQBy4PfZqqPGgepiZ5+uunvZktDgqNEDhGdaFJ08wK1qQJCHa3ER2FJgcMvIPgsOeo
 EsVykPNF+LewT9qzsQxnem8C6MP3d4g0jsfm//VFxu7aYVyfAehRtFhjuONY0/K/VBE/DFr6K6/
 9lyiYWLuZ8XKWTJiMiQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-21_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 priorityscore=1501 adultscore=0
 malwarescore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602210028
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267089-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 13D7A16BF90
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 12:26:48PM +0100, Luca Weiss wrote:
> On Fri Feb 20, 2026 at 11:51 AM CET, Konrad Dybcio wrote:
> > On 2/20/26 11:40 AM, Luca Weiss wrote:
> >> On Fri Feb 20, 2026 at 11:00 AM CET, Konrad Dybcio wrote:
> >>> On 2/20/26 10:19 AM, Luca Weiss wrote:
> >>>> Add a generic-adc-thermal node to convert the voltage read by the
> >>>> battery temperature ADC into degree Celsius using the provided lookup
> >>>> table.
> >>>>
> >>>> This will later be used as input for the fuel gauge node (QGauge on the
> >>>> PM7250B).
> >>>>
> >>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >>>> ---
> >>>>  arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 83 +++++++++++++++++++++++
> >>>>  1 file changed, 83 insertions(+)
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
> >>>> index b697051a0aaa..7857003099a6 100644
> >>>> --- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
> >>>> +++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
> >>>> @@ -108,6 +108,89 @@ rear_cam_sensor: thermal-sensor-rear-cam {
> >>>>  		io-channel-names = "sensor-channel";
> >>>>  	};
> >>>>  
> >>>> +	bat_therm_sensor: thermal-sensor-bat-therm {
> >>>
> >>> nit: this should be a little higher
> >> 
> >> meh, it's surprisingly easy to miss this sorting stuff. Will fix in v3.
> >> 
> >>>
> >>>> +		compatible = "generic-adc-thermal";
> >>>> +		#thermal-sensor-cells = <0>;
> >>>> +		#io-channel-cells = <0>;
> >>>> +		io-channels = <&pm7250b_adc ADC5_BAT_THERM_30K_PU>;
> >>>> +		io-channel-names = "sensor-channel";
> >>>> +		/*
> >>>> +		 * Voltage to temperature table for 10kΩ (B=3435K) NTC with a
> >>>> +		 * 1.875V reference and 30kΩ pull-up.
> >>>> +		 */
> >>>
> >>> I think this looks good. Is this data going to be correct for all/most
> >>> devices (i.e. is there a single battery sku)?
> >> 
> >> Yes, from my info there's just a single battery SKU, so that makes it
> >> easy here.
> >> 
> >> For Fairphone 3 there's two battery SKUs:
> >> 
> >> * (Fuji) F3AC with NTC 100kOhm B=4100, ID resistor 10kOhm
> >> * (Kayo) F3AC1 with NTC 100kOhm B=4050, ID resistor 49.9kOhm
> >> 
> >> In reality, one can probably ignore the difference between the LUT for
> >> either B value since it only differs by a marginal amount, but
> >> conceptually I'm not sure how this should really be resolved.
> >> 
> >> We could have both battery definitions in the dtb, and then the charging
> >> driver could determine the battery that's actually present in the
> >> system (based on the BATT_ID measurement), but given the design here
> >> now, I'm not sure how this temperature lookup table would be propagated
> >> to the rest of the system...
> >
> > The path of least resistance (pun intended) would probably be to make
> > generic-adc-thermal consume an ID channel and accept a number of LUTs..
> 
> Not the worst idea ;)
> 
> >
> > That sounds sensible since most battery ID mechanisms are probably also
> > ADC-based and one would hope (tm) that the values output by these ADC channels
> > would then be distinct enough for the driver to have an easy time confidently
> > selecting one of the options (or a fallback)
> 
> Charger / fuel guage and everything else battery-related would also need
> to get the correct battery properties for the actual one present, not
> just this generic-adc-thermal driver.
> 
> But I feel like soon DT maintainers will say that Linux shouldn't
> dynamically detect hardware that's present and the DT should be the
> absolute source of truth. That works fine in simple cases, but in case
> of interchangeable batteries, display panels, camera sensors, this won't
> work. *Something* needs to determine what's actually there.

How is it handled for the Android boots? I assume there are (at least)
two DTBOs and the correct one is being selected somehow (via the msm-id
/ board-id?). Or does ABL pass some kind of battery identifier to the
kernel?

> 
> And for most of the ways to detect which of those are present in the
> device that is booting, you need half a kernel to power up the various
> hardware and do some basic communication to figure out what's there. Of
> course you could say that's U-Boot's job for example but not sure you
> want to add a CCI (I2C), ADC driver and much more...

-- 
With best wishes
Dmitry

