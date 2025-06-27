Return-Path: <devicetree+bounces-190359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B02DCAEB873
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:07:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A392117DE52
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 13:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFB3F2D979E;
	Fri, 27 Jun 2025 13:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JywYaVQH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED7E2BEC3B
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751029628; cv=none; b=DCUupdAt/wwvhrvdSTeQRfyosrFU9Ux9gA6i4bT7GSfMvViZ3ntYXBRpkG6UMq9e8JFTqlKxcO0miUMhF6jlB6FMdKmUWCCfLEfHgc1O5sOmHMVSVwjQhztJF/d4iT/QrgfSd+Xdy8dKcfOyIy1z919J6+PrHsUszkeJqHFjw0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751029628; c=relaxed/simple;
	bh=tg6R/OxBEXFdnuXFE43TcWTsroZknzNNCoZ8QfLjMNQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pzzo87gpANZeMxvI9q+kMb73hrxOzwwpLXEes3sbipN3dNXc639iS8CmVCmKCrWFEpgWrpl0WM8Pg+UY4RyOT77T1r/tyluebjEE4N3CIzQYk642UoGGN480UtIASGUlIfgSPMkeKKwy92lp6ASe2q1Oo6fsN+1b1GYMjNh5slE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JywYaVQH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RCAvCB000980
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:07:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kOUX/LASzquhlb9ZqFy8fIjM
	n0teZEO5MHWRCaUTrxQ=; b=JywYaVQH2xpBA+Ok0aU1EP0ExUHBMUZBKgrR3LNf
	SQksZCScvWtjwOB/RR++LZkdiDz1NT+jBCqKdL/rnBqfw9D/RBXypRTnT7kCU/3i
	9/dbWTlK0kxpykswfFZy+sOsVMuY87euqbHCE1IlA0Ae0oXv62bkyMwlvn/n5bRw
	ZZawutGCgLdklBlY7Y8QHffk4AiAXqMIKOWbeZJW9w1OCl6T2DZAmyJncDOfxpmT
	sYJwQbu3asBc0dYc8ZZHEwdVtpcbluNzgfL62KYHiA4hcjbC+gnp5G4g+XNwJUsV
	uG0XIQgN0a1TxTVoQ5QhMHpmS8OtxjFubNJBZRoyXec3Tg==
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com [209.85.166.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g7tdgwyd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:07:06 +0000 (GMT)
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-3ddbd339f3dso20640175ab.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 06:07:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751029625; x=1751634425;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kOUX/LASzquhlb9ZqFy8fIjMn0teZEO5MHWRCaUTrxQ=;
        b=T22ljFsb0vCpCNvXLWjA65JAjmbM7YDlPV5rt3u04gkm1svbhEk2+f+GeXe9c0yszD
         WCZqUdu597rfvwb16AlHGvU7AjTqqlveoTQ+EVcBRlDiHIcU1Q1RIchdsWoafGdoxLDF
         ixtHf8R510r3bj2QZsHMFwnvQGZXcrhbOt0Q68ESCYWPz1FdeNac4QE4OLa+gqA6AVO8
         x/mjs2TNpUm9RSHMKbOvw4mli3gzuy6l/igqHZAUmYnNAq4z5tG20yolcclkEgoSn5eU
         e88P2kB2F9QTyGYMj60wLDZ8yD3S11X+tUSZE4RsyJq8aUuBd1NFG6KUeTDzm2Rf/gpQ
         rBWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUatLGLVr8a09OThvcXjJ5JwnY86E6nf83++ako83244jItn+5woWxHXRRz/z5d4WG7XxMsxz0f7Esg@vger.kernel.org
X-Gm-Message-State: AOJu0YxxoYRYCc01u7o9zIFThmQfZasmxR9PHCOl9DbB2a4WG7G2RWuw
	iDkLPkaGuWV1Iuhr55BvOr1mmjs7QYiFFStdVYbZ+sg0gfoGHBy7XlRTMfvMX2px6Dhnc8SOBZl
	K+cHDnA0iH0aI/YiQBUz6SzK6YOjat2Iv1KlI85u8kD2nScHrLpZhWV3j8w1nX5lb
X-Gm-Gg: ASbGncvcyjHzcpi22YpSpX+yekZ+J+f6++rO5NHvL9O8+mVZDXJZuWPz8YRewqAtrZI
	ZoG7zLYxl+fk6eYqDpPyhig86RjmKcmNy/qLz23iI7Rgch4G+noBvIjhgphDgmUK4WSlNr0cZUy
	iYVm8NhCjJU1N2HBFzieHUrPF9yIRer4b0prnuRnVQFNQQW8Dbuql6sZC6bqfPL7iLQu6UH+wuU
	LLF2OYctQbOzyjPVI0m4VPspRX90BhS0qY/rd7kdIFN31hFkdEB95TaWTGhjyTi6hKJrEqwjyEr
	IXKSIMg31O6Na3MgUGlhgRIl8yorCo8kPyWglOpP2MiYLAbGv1x9NcTC94P5h1eT76hnuRgFRNC
	9kpCpmHYugPKTkn/3W2Ort7oVaYtSr4A6Pk8=
X-Received: by 2002:a05:6e02:1561:b0:3df:34b4:1db8 with SMTP id e9e14a558f8ab-3df4ab3d2a9mr43205605ab.4.1751029625318;
        Fri, 27 Jun 2025 06:07:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE50hw8i/Szi+Vi9+TVEvYSP86FNNUfbWZEopTrfXXcxIjLifGRpkjO0fFOCbyvyj5vIC3A0w==
X-Received: by 2002:a05:6e02:1561:b0:3df:34b4:1db8 with SMTP id e9e14a558f8ab-3df4ab3d2a9mr43205145ab.4.1751029624832;
        Fri, 27 Jun 2025 06:07:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2403edsm451530e87.14.2025.06.27.06.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 06:07:03 -0700 (PDT)
Date: Fri, 27 Jun 2025 16:07:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] Add support for PMXR2230 PMIC
Message-ID: <lrbqjf5zxxyjnyfwwk6wniauffi5a3hgkg7jvboybvmrwxyu52@56onam4vvhz4>
References: <20250625-sm7635-pmxr2230-v1-0-25aa94305f31@fairphone.com>
 <zmqkdpmji2uodm3mxcteteyhfkef47kihola6vtxb4mhuynqwz@hvgfd2637mhz>
 <DAVPDN4U6FSJ.1MHMT5G04KSKA@fairphone.com>
 <6zut6hiwig4qanrmloqvibx4tmpb6iv23s3hp7bb4ja6jzzia3@wnre6i3mukbp>
 <DAX8BTNMDC8Z.182KEGJF2XRDF@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DAX8BTNMDC8Z.182KEGJF2XRDF@fairphone.com>
X-Authority-Analysis: v=2.4 cv=CPYqXQrD c=1 sm=1 tr=0 ts=685e977a cx=c_pps
 a=knIvlqb+BQeIC/0qDTJ88A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=62jDj0fiULz5QxSi0P8A:9 a=CjuIK1q_8ugA:10
 a=8vIIu0IPYQVSORyX1RVL:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEwOCBTYWx0ZWRfX86fPghfG+3eI
 35GXMVICvUlcXfu9MI2Cud4k6Czt3A+uMjaRfgOD3DHoUBpGbCk/ZY6zRoqq2R8QA4hcyValHYF
 hS2bmQAdCqY6s/HHHROrNYg53CFBnk6IGgjZL6rbyO47fS6oVu8MHgf4whWqbvKA0V+LDdPHbRy
 bWW/h1Xau/9lQIPuLfVYLPGuvp96URSJoKP+/1Zz8ZH/CsMeHLlyuw7ciQK2XtIPK+kVMpLtYM3
 5IgbQ6l0jTqds/Js0joLBYGo68vYrtTF21/265EdHPJU0N4+S4bipxW34G9+xe5wmpc3DfQsRyC
 c7r6Lv2iAgN/bHkPv3gRX/teouCeVwbQ36oE4SdEKV4Vwb+E8Snuz+jG/9QqlzElCLEHkSEFCml
 p2qM5EnMu8tfCVvsQvr6dvmIS+JQX5BfYSfnNvytoO1bkD/mtUVbR0l8zoUWcJppjDwPUp3q
X-Proofpoint-GUID: 3t1sKYbIDOu-vSRXPaKmXAbFEe_KecUT
X-Proofpoint-ORIG-GUID: 3t1sKYbIDOu-vSRXPaKmXAbFEe_KecUT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 mlxlogscore=971 lowpriorityscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270108

On Fri, Jun 27, 2025 at 12:05:08PM +0200, Luca Weiss wrote:
> On Wed Jun 25, 2025 at 11:03 PM CEST, Dmitry Baryshkov wrote:
> > On Wed, Jun 25, 2025 at 05:01:29PM +0200, Luca Weiss wrote:
> >> On Wed Jun 25, 2025 at 4:25 PM CEST, Dmitry Baryshkov wrote:
> >> > On Wed, Jun 25, 2025 at 11:18:36AM +0200, Luca Weiss wrote:
> >> >> The PMXR2230 PMIC is used in conjuction with SM7635. Add binding docs
> >> >> and the devicetree description for it.
> >> >
> >> >
> >> > Please use PM7550 instead.
> >> 
> >> I'm happy to not follow downstream naming conventions if being told, but
> >> do you have any details whether PMXR2230 == PM7550, or PM7550 is just
> >> another SW-compatible PMIC as PMXR2230.
> >
> > It is PM7550.
> 
> Ok, will update in v2.
> 
> >
> >> 
> >> Also we already have qcom,pmxr2230-gpio upstream, so that would need to
> >> get updated for the PM7550 name.
> >
> > No, leave it be. We should not change existing compats for no reason.
> 
> The compatible is not used in upstream dts though, and cleaning up some
> old naming for the PMIC would be good, no?

Then, I'd say, just use pm7550 everywhere, making the qcom,pmxr2230-gpio
a one-off unused entry, which we might drop at some point.

> 
> But I can leave it for now, and we can potentially take care of it
> later.
> 
> Regards
> Luca
> 
> >
> >> 
> >> Regards
> >> Luca
> >> 
> >> >
> >> >> 
> >> >> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >> >> ---
> >> >> Luca Weiss (3):
> >> >>       dt-bindings: leds: qcom,spmi-flash-led: Add PMXR2230
> >> >>       dt-bindings: mfd: qcom-spmi-pmic: Document PMXR2230 PMIC
> >> >>       arm64: dts: qcom: Add PMXR2230 PMIC
> >> >> 
> >> >>  .../bindings/leds/qcom,spmi-flash-led.yaml         |  1 +
> >> >>  .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |  1 +
> >> >>  arch/arm64/boot/dts/qcom/pmxr2230.dtsi             | 63 ++++++++++++++++++++++
> >> >>  3 files changed, 65 insertions(+)
> >> >> ---
> >> >> base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
> >> >> change-id: 20250620-sm7635-pmxr2230-ee55a86a8c2b
> >> >> 
> >> >> Best regards,
> >> >> -- 
> >> >> Luca Weiss <luca.weiss@fairphone.com>
> >> >> 
> >> 
> 

-- 
With best wishes
Dmitry

