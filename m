Return-Path: <devicetree+bounces-248169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB7DCCF8F3
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:22:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C021304E155
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 11:20:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D86130FC3A;
	Fri, 19 Dec 2025 11:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KpL84bIR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ph4a/hC6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90B430EF9A
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766143219; cv=none; b=f5ER38lhQ2GMneK+Jueoc3OKvzE0FEXsLahQljsS5OE5l+NhZleByIwzF9nfnO76jxgTbjCJ2go3l4OL+WM+xGGXaKQbOetmmnLzlyHa0uLUsIS0Iv/RjUJw73T8dpmvLAA9zP/fjwEDoSMpbV8738nQ5Zsk6fyuWuMoNH+0DZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766143219; c=relaxed/simple;
	bh=yzv0Wujr1TJ1hy7yewWQyhUc+5w3dyd4j4Vf3b/LXZw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eU8Nb3JbUbdz3rCksJrVdOh4Lq14fKLBHOmWWbKSWLL/eN7PjIxfJzChWRxfRO/Av3dOkDWAt4r9H2UbaSRhIH5nHpb8YBguqgl6/Zl7BvTe96K4WHl0D02BXi+e0DbNwv9ej3z5swktdHkWN0aEpRJtbcsbeYhKdnEOiJnLlBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KpL84bIR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ph4a/hC6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBJcSG091309
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:20:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cVTEv+iMTNFqtmux2UVs/QLP
	9GxFzATRQPiubj6Qs7E=; b=KpL84bIRY9ucjS16t3Rr6pivvxw5Xv8CtBfoCjRC
	8HWI0qHk8XApfBHtv9HFyYLcsGuFZUvhRZEsUKpWw1R7Q54FWgcjzNS63YSKSqzA
	oOknYuoubevLB6k34J9aIlEdHHEV7IPpbqEXQlxMxORMVUOUI7iZi1+eOzvlpxao
	xB3ufLXmrMM4vXeZPknqOXerr3V68WqM26X3RcEbuLvg54ORGoefI7YaYsh7jPh0
	67nIEis3myR9mupiBHZfua8sya4nnO+VspTtG13JPc5VxkZwZhBZtBbKYBDy65px
	veQYj6ETg8WV1OgewwOTiMCbCvK4ecD4Ciz7zF8Mw87Z+Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2eaesm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:20:16 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7ec5afaa908so327834b3a.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766143216; x=1766748016; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cVTEv+iMTNFqtmux2UVs/QLP9GxFzATRQPiubj6Qs7E=;
        b=Ph4a/hC6KyrpYNNHtdT5afy4CH1KJv7p77fFTn4n0T5AGbS6UFloH9VljOFkhFStyX
         1Lh0tQ7C8ZDrDgK8IrACWrvMWTu1FDrM5KMW3AT/Y5LOR3I/ofHIwmmzI5SHwmt6eDyp
         roYkc1BxX3pbvYhYM9o3a2Y5JyZm/2c91soexkTYbsoR4rVSOaOocvmZSPxJiqVmTml9
         +ARQCkoBDG0KEOUJURV8OQfgXZSUv5ng0VOYPkan+kaj5P0nD4H75MfqBYWEGPwcYSfd
         m3AMamdmDJNED548nAxs0Pel6YLb10QhP7xSGGSOCbdEHmuBhY3cLm3xdutb6zhWES8e
         E8BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766143216; x=1766748016;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cVTEv+iMTNFqtmux2UVs/QLP9GxFzATRQPiubj6Qs7E=;
        b=w9kIs9u2OBlgKnzGTRqlyxaeOoQsXEl4TpUUHSIRLP4cv6QSYMN6gzn9Ht8m4ajSYS
         /8DnBPw36BxckEMrEYqa6Az8qXZ2N6DzgPdK0Bq2wifRmHYirqiR3Lu+chJXVZ1hWAyC
         NS2hQzIxb3Ys7wqlmiefQzT6AfUDxgZ0YrEaxyU5wbgJXo9sd3AINioQIcxNAensfCJ/
         YqecHmLd1dVZzOfI8hJPuterloMkF4rQG9sXL5acIjcTC7eI4EXu+QV+ArD6U9gknnRD
         v7ERDiXZzngX4EiKl/DoZy+sI0eG1tyu3XIQuF+LaPMkhrqiVg7RrInlovwp4dUGZnRz
         Y14A==
X-Forwarded-Encrypted: i=1; AJvYcCVtQQsdW1rgzC9Cdn4QPVe7CbF4NXD6QeX6v/pI/BLq2ZeY8dc3AM5CB7kg2daD5CU/lR77PoLOZFAq@vger.kernel.org
X-Gm-Message-State: AOJu0YyHAcRTeoihus0pLEvKrAdVR8mPBrc7Vtrv4b4F27Yze5YyVRwu
	ccZfNZOpzCCXmvgUUPkXubZO31Bo8C7ZKV4vSRAbIJ3OKshF7SpKTiy/kkPc/cgymVH43/gJ2sH
	DvGp8QTlCFCTnwBTauHPfcDtlV6D9lTDpJUsd6G3vMkUU4fpDH1VrLeWUzrIfnrdu
X-Gm-Gg: AY/fxX6h5FbNGAHIC4jpOTQPFF4kAN5CEsiY4CsYwUrQO8eNmBXrVnqKXjk9HORh/iM
	oONafHsPZZaQua7cosubHFttpHXHJDwE7gD0ah15793wwwYdaPQV7HrrvhYBH261QjvzM/a+XI8
	xzArq40Df7Sig9jLD4J4CBRWjF89RPOWroxZjwSqLMJ1Ps1S3/9HzIiosueuETZohSoj+0rNOBs
	dI6ftCex6WErCPkV3ZAwg6hzmaMPdReRfGZ/3ivWfxyy3c6QRJjHKX6jUF2OCCLvO2Vm7VAPhGP
	HslkhZPVHbDyNWKRsC0/aSUfZsch8HjAoiDrFyDIU9K73k9rBy04FtnacPhzfMqMW1PhTZAj6Tp
	gxOcuBfZqa77ehKfy+oJON0eqc0XYNkUnA6fMiVPjNIxi+dttYeRX/isDmmBNin4+90nIkRPO4O
	Es3tBjmr03GMdLFMfbG8XHqsfpkn02sg==
X-Received: by 2002:a05:6a00:17a1:b0:7b2:b20:e8d9 with SMTP id d2e1a72fcca58-7ff682460c9mr1539040b3a.6.1766143215296;
        Fri, 19 Dec 2025 03:20:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFRxvid2ITdK77A2kwcgTAQXHFgITJ8109yZtJKNM+oMZak8qL757acshzF7BUhVnpVU+1zmA==
X-Received: by 2002:a05:6a00:17a1:b0:7b2:b20:e8d9 with SMTP id d2e1a72fcca58-7ff682460c9mr1538939b3a.6.1766143209815;
        Fri, 19 Dec 2025 03:20:09 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e0a19besm2119547b3a.40.2025.12.19.03.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 03:20:09 -0800 (PST)
Date: Fri, 19 Dec 2025 16:50:04 +0530
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
Message-ID: <aUU05P+xP1XdwihO@hu-vishsain-blr.qualcomm.com>
References: <20251120-lt8713sx-bridge-linux-for-next-v1-0-2246fc5fb490@qti.qualcomm.com>
 <20251120-lt8713sx-bridge-linux-for-next-v1-1-2246fc5fb490@qti.qualcomm.com>
 <7d31f45b-1062-4118-8769-49209908f2ef@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d31f45b-1062-4118-8769-49209908f2ef@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA5MyBTYWx0ZWRfX1XiALPZUPPT9
 LGhWLvD5D3OMmNf/AsbYHQg8R9UqvWQnii2KaIjRyTOjAKgUwL0u/mUL1k5H9hDBiDN58baKkIv
 kORK+eRLK0wNDc6VD++4DPrs0KKlWQLkh0BPSofXnsZQWMYuMVID1WxZMk1k6c1wYWrW1x1Uk1u
 Xxfqxj6UyVbXG4KKz5RfSZO0OYNiRvxjrVR7NctYpgbXbN4SLoAThR3hIlcRcfgg0/kbul/6J8f
 CLo2E5g9abKbQEKMeukc31DzMPqUOo6+vUW6wPaoSqGRAMT6lFSl1zhoyV8jrCJ1kG+twwj7eZH
 EVz+VKfn+G4thZODHAHZbC/XqNX0ER5Rs3VE59eVTaoUd5i5mIIBAHTtmLx53mp3ylXLH0DhMY8
 1JBeQdpQ+JX64ad0+upmI7GzunKZKpykQKl7PrRhE5LV/Ltz0cuUq9VBusY1tb+I5ZUAkU7fR6E
 xBcrQqiVo+wXp74b19g==
X-Authority-Analysis: v=2.4 cv=W+c1lBWk c=1 sm=1 tr=0 ts=694534f0 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=iL0Xn0DY59onnIyBFO0A:9
 a=CjuIK1q_8ugA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: vfgNTTmQq07BKH4JMTpxzzUMXldkGy7n
X-Proofpoint-GUID: vfgNTTmQq07BKH4JMTpxzzUMXldkGy7n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190093

On Thu, Nov 20, 2025 at 01:11:00PM +0100, Konrad Dybcio wrote:
> On 11/20/25 11:58 AM, Vishnu Saini wrote:
> > Monaco-evk has LT8713sx which act as DP to 3 DP output
> > converter. Edp PHY from monaco soc is connected to lt8713sx
> > as input and output of lt8713sx is connected to 3 mini DP ports.
> > Two of these ports are available in mainboard and one port
> > is available on Mezz board. lt8713sx is connected to soc over
> > i2c0 and with reset gpio connected to pin6 or ioexpander5.
> > 
> > Enable the edp nodes from monaco and enable lontium lt8713sx
> > bridge node.
> > 
> > Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +&i2c0 {
> > +	pinctrl-0 = <&qup_i2c0_default>;
> > +	pinctrl-names = "default";
> > +
> > +	status = "okay";
> > +
> > +	lt8713sx: lt8713sx@4f {
> 
> Node names should be generic, so bridge@4f
Yes, done in V2.
 
> > +		/*Display bridge chip, DP1.4/HDMI2.0/DP++ hub*/
> 
> Comment start/stop markers should have a space after/before them
> respectively, however I'm not sure this comment is useful given the
> dt-bindings already describe what it is
>
Removed this comment in V2. 
> [...]
> 
> >  &tlmm {
> > +	dp_hot_plug_det: dp-hot-plug-det-state {
> > +		pins = "gpio94";
> > +		function = "edp0_hot";
> > +		bias-disable;
> 
> This is an SoC-mandated function on the pin, so please move it to
> monaco.dtsi
Yes, done in V2.

> 
> > +	};
> > +
> >  	ethernet0_default: ethernet0-default-state {
> >  		ethernet0_mdc: ethernet0-mdc-pins {
> >  			pins = "gpio5";
> > @@ -451,6 +488,13 @@ ethernet0_mdio: ethernet0-mdio-pins {
> >  		};
> >  	};
> >  
> > +	qup_i2c0_default: qup-i2c0-state {
> > +		pins = "gpio17", "gpio18";
> > +		function = "qup0_se0";
> > +		drive-strength = <2>;
> > +		bias-pull-up;
> 
> Similarly, you can move these settings to monaco.dtsi and keep them as
> defaults since 99.99% of I2C users will share them
Is it ok if i update this in a different series, similar other nodes like qup_i2c1_default
added in monaco-evk.dts?
> Konrad

