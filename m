Return-Path: <devicetree+bounces-261138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBNDOB6AfGlVNgIAu9opvQ
	(envelope-from <devicetree+bounces-261138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:55:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE6EB9188
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:55:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0104300C58D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53BF03542FC;
	Fri, 30 Jan 2026 09:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ma51icA+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ICVKmIl/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025BE3451CE
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769766933; cv=none; b=XOMPX7ko1mEmvGVHjh8O8e403AmL+LZhWXTELIrRAKcBGpY1r22tiH/b42EaYseLDtyalxDq/bl0qVXvD/5CSqyJayeHVNvnsVsGOu6CcS3Gy9GvtrTg8r/hYpQZ83nH1DKEfKfpjpYPj9bSY2jtkEojDpz597qqeTSvffk/v+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769766933; c=relaxed/simple;
	bh=LCiS/f2tpueWranb2vZDsO7aMcHwlPN3ZBP0H7aGbyE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bgagx+sHOS4r/CaQ95CDwGpurkHlVSdgB8mDRy18w49oxKLaWj4dsa8vgfYq032guljbK8D4bSAS10iEooOa1CjJluEnmQ0zd68DVOpDyXeMhHDYXXQfNH4mNQsNtU9ZqpUiiNuBFVNJcOevJNsaocvRjGqDQMjnTE0s9Pkhsfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ma51icA+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ICVKmIl/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U3VTjb485896
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:55:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	citeBoKTPpnUKJdt7uEyLg/IUCEGXd/i5qHN3Lwq5no=; b=ma51icA+jsduw5Ur
	N6yIoFMjb361n6ckJK3YOl12X+YA6L/dBAazyD/O/lPF9FqwRdkvjqRuNt7GOC0t
	NN/NMsnElgMl4C+zQjuVrHClRchriaMrjENFLN/GglLkubVpoB7j7RaOG98nWASS
	FKt+9z5Dmh/bwHdZLRnne7COwyjgMsDEiK/Fq0q168Kjy3DaeHF2rlOlvxfKl7sX
	NW9PY6CRP9C/IbmgFgSb9Kq8N/OPjBy6o/uhOOcReKIzIcWAyPN+s7Ik/iMrA+KV
	m7sC6/+iiZXrLyUp3cliThSfNNi0WAGf9ww70ANcKFYv+0U6+YhmdpJFirlD6yfH
	m4PhFw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0gtnhnsn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:55:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70cb31bcdso46799785a.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 01:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769766929; x=1770371729; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=citeBoKTPpnUKJdt7uEyLg/IUCEGXd/i5qHN3Lwq5no=;
        b=ICVKmIl/mKLKc3PCkhTOX5HtK549Ta86VZa/QCVB7kGgbaYJ4tonI6k1QcQRMOfWpz
         z6IREWvaE3DuuV1Ieok9knqvGcLe1qv/Ce08/hPvRBJtfmclwa5PB2Iyffc+0yNQzWcS
         FVWU0p5+ko7wFNkhUJ/Y7HNuxBlo+w+s8fGlWVxQib5PdlqTXHUt+fHrFDrJioXQJu+V
         ImCwpgsdoSB7cRRnJlvDSlxv12/4Cz+KMd6BVfpAz8b5AtlPJmU/R2j42yUfEZ6+Dbfd
         zdSi5fQf6zXdhIWPMyA6R0Yb+H+mx/wVWezNBtsit19Z9c13LzlpXQHJmzRIRbvRGIzm
         JhiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769766929; x=1770371729;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=citeBoKTPpnUKJdt7uEyLg/IUCEGXd/i5qHN3Lwq5no=;
        b=Rofu2TpIiDV/TUf0qNT0ddFwmNApY184jJMsS62KEie1Xnkq+ormJzfVlXZpOJG2K9
         +MB13N0o/KGEbp+73ZWM4CGPD4Q19dL1CJDBGkO5wef/ijS8AW7GqRclR5FGfxht4X3K
         ZfxuR1YGXoW/wR6MqikzK0ePwT55PFcKu/ncEx5cmsBoWcc1w8GNpwoDmK0tAA86Ssg2
         cdWVhpMk9xe+JNm4nWIHDSeYoQRnUYKjmegfAQCS1Ha7N32shcvFivcjjK2mf4UsTV/Z
         oLapFlNgLxDMljaQpiIMyfy87J2Ps3zvUOrw/+L/5l+eDxUJrSsYcQAw6K0mR1OjT0H3
         FsHg==
X-Forwarded-Encrypted: i=1; AJvYcCXaCx2nDSfCe2+a0OLfqoriPGlROQTqZqojTK/Bexy5fSq2piSUqKObqWM8iRRIIpCJXsbF+/2ZFSNm@vger.kernel.org
X-Gm-Message-State: AOJu0YzpC74zfFPkG11Pvvg5UZQym4TqRtID657ygpOjwdwTElej7ZQj
	+OurAu2MNZtdcb7pZk88h7pH8w78wt89qgGAIgBbp/Da+J7sj4lWWp88nyL08wCGRHTqsV18lSV
	z+4RAm1YjPEpSkC+z4uOfQKCPp2fu6cJZGScnoti8YEu927EaQURRmrN+FuPD/lZe
X-Gm-Gg: AZuq6aLcKdewTMoF029Sh3DslvkE0dNIzqCCLcmglRyzPBWYmejtCaKYIka/1dwGYRN
	7pj2LT+frb3VjaBI/sX8krOO4NZ/HdRZE0/qk342R5wAf6X5MCauyIFWKswRCT7f1EV+s5KFUcy
	ReE9oWrkFgL3P737FGWrQ5hAWv/EL11kpnDnaHAoIGbKxbk+kw5pKdXlPWG2u+3m4yn09UWz0+t
	yLqj/ihpZN3eMEFotBeLzb7V1lCi1JuaNW58CXOKud5oPyCEFPK15ki2wBAo5zZdiY16TcwcJhl
	ZrAhTxVyf2LjNALpQDvfULUrqC1YgiTOZ4qHx8qeQ0hGu1e5eDWZ2OyM7YI8Do++r8374yY7TsU
	5yLcvAR3bnN7msbEGGUKRw2pQr8luVSEJL4gvL3ExPY5FWBUrQDtdM1PLO8fJpYFNJgE=
X-Received: by 2002:a05:620a:1a8d:b0:8c6:2539:dcda with SMTP id af79cd13be357-8c9eb229dd1mr253236385a.2.1769766929328;
        Fri, 30 Jan 2026 01:55:29 -0800 (PST)
X-Received: by 2002:a05:620a:1a8d:b0:8c6:2539:dcda with SMTP id af79cd13be357-8c9eb229dd1mr253234685a.2.1769766928922;
        Fri, 30 Jan 2026 01:55:28 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2ed6f8sm393035566b.65.2026.01.30.01.55.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 01:55:27 -0800 (PST)
Message-ID: <e658b473-6f05-4f83-a730-e586068d8742@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 10:55:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 5/5] arm64: dts: qcom: glymur-crd: Enable ADSP and CDSP
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, robh@kernel.org,
        srini@kernel.org, amahesh@qti.qualcomm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
 <20260129001358.770053-6-sibi.sankar@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260129001358.770053-6-sibi.sankar@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: q_Y6Vo9K094aUhhsFc-X_IZDDvbSiIbN
X-Authority-Analysis: v=2.4 cv=FPcWBuos c=1 sm=1 tr=0 ts=697c8012 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=EIOd5lv5QegryJ6n6bMA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: q_Y6Vo9K094aUhhsFc-X_IZDDvbSiIbN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA3NiBTYWx0ZWRfX2Oia/0B5IaQf
 G3tHncpWmHPeiDjIh94BL+OAg46lqttMKfJNSYj5nnlCL2zCY+JxscJaa7jP8Nkkhq2UlfvLHK1
 BJvPx4iHxrVIArCqL36jZmp7yHC9gbSogBBagstzeL7DaKbRKJo9XlNmLf6ocMIkoZpuIwC4hwm
 lCV6idZMlrML2mv1Q5lFmKKkFA6Mfk47b67dw+sgmqVszNB9UvOzSSkmlvJYcXpxTLdbtOY0/gi
 qJNp1g3F9uF8RanmWjh3zouHiVum/o7pyzF+yraw4IQqntqM0JE0iQXbpdn2IE6qfBrIS6+6gBE
 DBykpFvrrhlBxS0e6f4DiGmfx+2Sk62bB1QaUgKzmfQsTP0qnMfvbVG18EKjMOF6R3p6NEyM+PV
 G77ncTA5tsFgTQWLfIFTQ8YHCMe55aFL1DMZB+9izT18NdktHa2MdWmhJ2WiYOw5tT14jm5DM20
 EzrMkxI/xp5RQGsvNAg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261138-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3CE6EB9188
X-Rspamd-Action: no action

On 1/29/26 1:13 AM, Sibi Sankar wrote:
> Enable ADSP and CDSP on Glymur CRD board.
> 
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> index 0899214465ac..0eed4faa8b07 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> @@ -487,6 +487,20 @@ &pon_resin {
>  	status = "okay";
>  };
>  
> +&remoteproc_adsp {
> +	firmware-name = "qcom/glymur/adsp.mbn",
> +			"qcom/glymur/adsp_dtb.mbn";
> +
> +	status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/glymur/cdsp.mbn",
> +			"qcom/glymur/cdsp_dtb.mbn";
> +
> +	status = "okay";
> +};

Please make sure it gets to L-F (only Kaanapali is there right now)

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


