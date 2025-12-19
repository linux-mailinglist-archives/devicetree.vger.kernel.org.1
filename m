Return-Path: <devicetree+bounces-248215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 599D5CCFEF8
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:00:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 354F43012755
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D090D248883;
	Fri, 19 Dec 2025 12:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OUbzoGQX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MEIyuA/L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E0A2C08C4
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766149150; cv=none; b=fIoc842ctHp3hqugpUB4/Fu+yh5ypbx0ZXDMyja1ctSJ0m6XzRlAewrG3SCOAzgCFHCFkSz+3wQ9vpM3rw7ZwjYkilFdeSBqPptBbKPA2mlrH49QN4yiC1yd7dn74VApYxpMAMb2c/vQjNdm/r+lwNaUbZipQzDihBrp4j7e3Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766149150; c=relaxed/simple;
	bh=IQiqP5ieYv07JRTlNyvk6XwLHvpcOoZw30QovOgFdSE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eRXlcj+dVYaCXXeUbWNNAAvwyIkfTG3lNcI1eoHTkAHP3kh7FESlUpMN4L5GZhmvR8THsa4WzS3OF0aQQL0/bYVsIbgaPsB+Nhcm8IW46Djp0idstCD0nkr3U3NUo99U7oEI12RKHjKXuegJ61Lm4x1UMY4CJrvqDqGhJZaz9SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OUbzoGQX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MEIyuA/L; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJB831p3939127
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:59:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Efa9heFDzB8Tt0RbVtYLypJD
	IL8Ns1COcky8O0sAqRQ=; b=OUbzoGQX5AgKZXfWabRe0G0R/5LWL4IMDbhb+4nU
	4gra9cqnQysAW5WwdaRkPTnKJEq0ZsiQG4ugxkzUmAUB8/yj4Pe19qCT0ZbAnXY8
	H9j3ls0VmU6JOyhmVwLjvuEpeBvliHpdiZAHiRyLwhWCCy4I1Yx/Qp/mdHyMtVEk
	X7GyFvD6TL1frXwLvkCGnJBaAE9B3ZqGHBG8AHf4wRuB6lDE3vIrwnIaoztzi2o8
	MxL4Dh27kxPqcFdCHp7fdCxgk2G1pfZXS2w29UQ+jOvku7e2aGnOQ/1/vF3/xCq5
	Yl9EDU7lghLyo0kLlCVkuBSuXU3MuFGxiHAOsEp2bv0MTQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c2pyk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:59:08 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b87d44e265so384414b3a.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 04:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766149148; x=1766753948; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Efa9heFDzB8Tt0RbVtYLypJDIL8Ns1COcky8O0sAqRQ=;
        b=MEIyuA/LCKGfBDxMTGNQmdLl8qz18jj5dW4keQD4m6VLUZ6IlJ/QMoLlwI0dD5DqXu
         bVso4He0J2Sa6INW2P2R8Yl0/Ji0q/Tvc7zC+cZqDINSr2x/2W2inbWAD8C0t1dftefA
         OjUeTGBLT4LUwtQtueke0Ywrvyfeou8JmKdqi5NSvL1FEQ48cnqBv4O2omWcGgFu8p8y
         tD0LHCvxsCSRmQ2C65yPSI8S2lxXg9+79UY/SxVZlFf5ztbOAQNJoTx0GFRkG/rFu2mo
         lUoY9CuOH5YaWoIC/EclM7SX7+VcCTuW4c6KChyYf/GPoCzgWpcesb5Y4H9pVa+YTVmN
         L7Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766149148; x=1766753948;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Efa9heFDzB8Tt0RbVtYLypJDIL8Ns1COcky8O0sAqRQ=;
        b=SyLiYw2N3tApQmL4epezkjnfEV4ZJgSIFynqxJwGY8dxegHTfYqpjvoDrz3LwYyFI8
         bohH7WnUCOpaL62tQoIiP7GtDF+voHKuMC2lDimBjF/jgEm7eqsjbcq22sRdP5uBdJ3i
         DiMdwdlPdb6+aOhc47Z5oCkr7ENVudDA+7Y8fstVEWwA6FybNtDBXD6P5J/WTzDdmOGT
         iWwJxmBe/0Xnjzy3njje9epxZzexIi38n+7kXOXT9S3n9aY6uAcj/T3SNt81uCIOOxX5
         U22VBY2nmGi1XAj1/NkIqOuYU6MogjJHAH2AkSXJwi1ie81AqOxyg8juJeVQBOK/Z4mm
         ii2w==
X-Forwarded-Encrypted: i=1; AJvYcCX2TGiptmxR8O2Ii+q3hYPZLg+6r9UkS6akb6UBacNEh2xYohYF6ixVvkHJidp1KJL0O+8seOLiheO7@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8KazBP7XdgH5osWx/rMFAcpsF5fZjeGCRYNLRs58jnc7JoWEQ
	IN0z8dkRsxxV8iCOw+WDJk/+5hFFhGQniHCpAIP5N8K/Pww2ngH5HAKWYlDgMkI5RJe0u1j32zB
	U5aXbjMHlQ17Yu7BuLgATfSfptfRqhuc9Wq0C4QOmUIaZG82du2fAi8oHvNXdk8+s
X-Gm-Gg: AY/fxX4Z2w8vbbQGOjWlE7sz4ZSOQtTFNdsOp3+wCopffYhXDdd6/jmjq0cPKK54skf
	x+czxFPYgigaTzdKeyYjyUTf9A21+STBcUCp9QVt05SIbaJGsWyj6ijN+uyN+4kQqQ6Z/mWZqo/
	KVIbLyZJ3Q7JpVFva/oePG/hXpWt84V4bM23Xq76fY9MsTI3VedJ1G65saSidUvdP4Ck+TCJJfv
	iiIy7cbBGHywTvXpDQLyzoP0VjIMp88UzmceyLJIoqUWhgRtW1JVtnXDU2Ermu6xl5G1dp5Kd7N
	LXVx26JL5OkmAQDDRj76ANQ3TYSM4mTvp88h5qmlGqUsI4UXUFAG+L6ubOO6ZsCoCgDoJYasXZK
	3036905Ny2QWO01PpuYTsKH9XLMPjcucJX0+dFbZvgiaZ0pt0N9IglQ+0et6xhS8yo+jcT3RUVS
	MqN9LVy4w4Mk48JQEtL1MK93Ts6dF45Q==
X-Received: by 2002:a05:6a00:2355:b0:7e1:afd9:9a69 with SMTP id d2e1a72fcca58-7ff6706198amr1788665b3a.5.1766149148004;
        Fri, 19 Dec 2025 04:59:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSgNMamhujnmgcIp+ewQqPZhNznSmn1P30c0yQhGKIZPS0ijEUb9uQ7LwUlw6/SH0esiyi5A==
X-Received: by 2002:a05:6a00:2355:b0:7e1:afd9:9a69 with SMTP id d2e1a72fcca58-7ff6706198amr1788644b3a.5.1766149147562;
        Fri, 19 Dec 2025 04:59:07 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7a844d5asm2415421b3a.3.2025.12.19.04.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 04:59:07 -0800 (PST)
Date: Fri, 19 Dec 2025 18:29:01 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Saini <vishsain@qti.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge with
 displayport
Message-ID: <aUVMFTtVLPe7re0L@hu-vishsain-blr.qualcomm.com>
References: <20251120-lt8713sx-bridge-linux-for-next-v1-0-2246fc5fb490@qti.qualcomm.com>
 <20251120-lt8713sx-bridge-linux-for-next-v1-1-2246fc5fb490@qti.qualcomm.com>
 <7d31f45b-1062-4118-8769-49209908f2ef@oss.qualcomm.com>
 <aUU05P+xP1XdwihO@hu-vishsain-blr.qualcomm.com>
 <4112ba0b-6feb-4e30-a57e-50ef9e3d6b5e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4112ba0b-6feb-4e30-a57e-50ef9e3d6b5e@oss.qualcomm.com>
X-Proofpoint-GUID: cdARfGMBumKoPpfPu2o52tJd-Qw097WA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEwNiBTYWx0ZWRfXzCnCeVnVSJJi
 HrjrSRUI9SdQ9uj1X2rM185Dxqq9BzQfGrPM3KbmQoC6x5sVcnLzDIAufsAqWCecM+9SeFy006i
 EWII1lBGhWU2x+wtR/Nm8KKx63HM/e8oQjnCWaUmwHqG/Kt9btBRsyTVE2EuheA1xa+Wj6n93Eu
 0lruHmFn7lc1K6la8CsOEIyqB78yvAK++fEDrMzm5I6kXX3TAfAT7ZqBc8iIGRgOyJvh9xJ1jkD
 lL5RYPogbfbiGtR7OVf4Z1kr8/RlKr+INhbjPWa5dGIGAHjKgRRjvi0+fbRsHdBIVsD5AeVNNY5
 fSHPybux1u/jpRyTlFykLaU36M6eu/FbglIqcU4Jj3mk1mw+7KI41meXDa/VtVJyISHCr8kEtml
 bWzIBZq3DT+llrQqtqnshI8XkIPHjDgJKiyRa6I03u16nLeg97bkhyBH9Ey93ZXKGi2sX7tzmgn
 OySodfM34tHM+JM3TSQ==
X-Authority-Analysis: v=2.4 cv=feSgCkQF c=1 sm=1 tr=0 ts=69454c1c cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rT_Bp38etaQa0i48-N0A:9
 a=CjuIK1q_8ugA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: cdARfGMBumKoPpfPu2o52tJd-Qw097WA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_04,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190106

On Fri, Dec 19, 2025 at 01:10:19PM +0100, Konrad Dybcio wrote:
> On 12/19/25 12:20 PM, Vishnu Saini wrote:
> > On Thu, Nov 20, 2025 at 01:11:00PM +0100, Konrad Dybcio wrote:
> >> On 11/20/25 11:58 AM, Vishnu Saini wrote:
> >>> Monaco-evk has LT8713sx which act as DP to 3 DP output
> >>> converter. Edp PHY from monaco soc is connected to lt8713sx
> >>> as input and output of lt8713sx is connected to 3 mini DP ports.
> >>> Two of these ports are available in mainboard and one port
> >>> is available on Mezz board. lt8713sx is connected to soc over
> >>> i2c0 and with reset gpio connected to pin6 or ioexpander5.
> >>>
> >>> Enable the edp nodes from monaco and enable lontium lt8713sx
> >>> bridge node.
> >>>
> >>> Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> >>> Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> >>> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> >>> ---
> 
> [...]
> 
> >>> +	qup_i2c0_default: qup-i2c0-state {
> >>> +		pins = "gpio17", "gpio18";
> >>> +		function = "qup0_se0";
> >>> +		drive-strength = <2>;
> >>> +		bias-pull-up;
> >>
> >> Similarly, you can move these settings to monaco.dtsi and keep them as
> >> defaults since 99.99% of I2C users will share them
> > Is it ok if i update this in a different series, similar other nodes like qup_i2c1_default
> > added in monaco-evk.dts?
> 
> No, I don't want you to introduce something "wrong" only because you
> don't want to run git commit --amend
> 
> I see you've now sent a v2 just 7 minutes after asking this question.
> Should I interpret that as you expecting me to drop everything and rush
> to respond to your queries immediately, or do you not care about my
> feedback anyway?
Apologies, for quickly raising the new patch, i thought of correcting this
in next V3 patch if you ask for.
I am new contributor to the upstream community, just now i setup mutt and learned a bit about
sending reply to the emails and V2 patch was already validated that's why i submitted it.

monaco.dtsi already have below node except drive-strength and  bias-pull-up.
tlmm {
	qup_i2c0_data_clk: qup-i2c0-data-clk-state {
		pins = "gpio17", "gpio18";
		function = "qup0_se0";
	};
};
I will add drive-strength and  bias-pull-up in monaco-evk.dts, let me know if this is ok?

> Konrad

