Return-Path: <devicetree+bounces-244880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75271CA9F0F
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 03:44:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A1EB303D316
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 02:43:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DA18277C88;
	Sat,  6 Dec 2025 02:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U82SCz66";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MXqh9kke"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9FD253F13
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 02:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764989021; cv=none; b=f0W3Z6VucG/4/U1I5O/YRpdounMY0p9O1MH1rqcsi+lHR5Cqu2Z8K1jcHEEVoV+JZiMazYWDd7SMRtGJh9LC8/A9DghzVy2duwnLFkBYSqJSbHuHnpCpVnAsLw1VUS2MF7vxeonV0mWQ58CcwKq5oZ1qJAaK7B8CEnY6fjj428Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764989021; c=relaxed/simple;
	bh=OR5CXC5hjh1K3IMJPmPGgyvGMU2pcuLW4ldnAT3ZXhs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YzLF8GVX6G6ZqiWLc0Y40IzTX4PRvo9L1RPL0fcLZ+Y5S6XrqpCkoDj4aBN2dy+n/fcgDIDsobI6bvmE9X3jr1TbFRY/eYU+XZE/HQOGm6hgKyjFHEAw2oVvC0pLFSW8xdNVhMfdYceYZOC/spVBcb3uHX7IXWOXRIzCjNLOjZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U82SCz66; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MXqh9kke; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5LA3fo1421756
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 02:43:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6qdB92NrUnE30hMtrFtmDppz
	IqqZd/sCj3rQH3V2RQE=; b=U82SCz66lUkDbQ61cNEHnT655oqRuNorDM2mcV2h
	PuLngBiKJFrhwrZ+IaIfjW/TnUnsdvVwhFRFt19CHhW1J3VoJzEhZthJ70Sbzd/1
	Lz7pm5L22FBAMx7LvLXT1f4mW5zZ4XZh68vkJnK3SQm20qN0zJnn4PddINn6nRDP
	YpLmkFbjBWPj0io6U4pDZ/p0li5BGSX85V83amDSzE3tPjsfn8d8t3x2eTlTVM9C
	QxrjZhJ8q35mMhODlob2yggX+y0V3Gnn0bvwdpDPpA6FzzIgFkya85+zgI2XwNeg
	V7LTCGn0JAvD8nUfQUhakWyb6lOiDVGtlaFr4m2J77AY9Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4av71kgkmh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 02:43:39 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-882485f2984so46440306d6.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 18:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764989018; x=1765593818; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6qdB92NrUnE30hMtrFtmDppzIqqZd/sCj3rQH3V2RQE=;
        b=MXqh9kkeSBdrFBp00KJHLQd9jLqN5cfbpHChGVMt3CXO7gg4q4Ye2evLrFpRK+56mb
         M3fsM0hAPD6TOVCGwf/VY34hTM/pZUqAmz6Bz1G+dzlEyQgHb4CAq2hihNKhG/fqAHlr
         E2asTyMMpP4KK26KBtVgigjbZ0eMwdntvCxxp2venUKbo8iEjidHfX2U/DEbXX18ii2u
         /oEHm1q8/uyc2TXOUsJXq0enGb747CHifH8J4MpJFjQPTZcAwu7+Vcxr3dhPsW5kUNF9
         7GSijRTxojU17bZ5emmWiaDKe860L51Td0t9aSrSa62yVYg2kVhO3QSsHtyZXIYab1qN
         UXhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764989018; x=1765593818;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6qdB92NrUnE30hMtrFtmDppzIqqZd/sCj3rQH3V2RQE=;
        b=DhSL/2iIZ7hIs8m9mszzi83Y6R0gWS5VHYDFBHakZWDln0JMYQnF93+d8wz51Uih00
         mx2gWzJ0l1EGV0szrvvmRmjBjHKrXk/1GhbSqrkKVlIeuip2hQv1tEJw/ckR4Gp+D6a5
         JtSl9D3D6JZTcwlqfrITquM0iLC08vXw1Sb1R6GgfpBMwkmnqN+dKa3pX5cIKN813GJB
         8Bc7BpnrnNkVV5VHV7uJAmruf/W7uiisRuD9Tk63qi7RS0bspdvfC/MhQEtaR4W+Lb2I
         ly1Kp6tqGMNAfGXAs3RvZFSNbragFGtIt9UqUN71f+nyBwkl7ispzpAqnooIDGu4bFxp
         FEag==
X-Forwarded-Encrypted: i=1; AJvYcCUI/nOvYOnTqthAr3+MMjwALXao8yPTtHCGgCtMIqnmTxxpgcYDi9Hr+5fDdXTPxGPNUE05wFIqrcZE@vger.kernel.org
X-Gm-Message-State: AOJu0YwXzfN6ra2qAArJinAoEqokuFgj7h/rlq0fcH01j9bcL/+F7fAu
	yVOnMvaOM241q+Gfe8kzK4EJV8Pj6XO432tx//dGag2qjsJmjPPWYi1bTTG4CY1t4eaCGx5MV1L
	wVMWoN60rIMwOtlFtoRIgR6pGl1JE19cfZGV2+VPtzU5Oydvu3LOfwi+CWZNmukN2
X-Gm-Gg: ASbGncsq8vHYE9kC8T0RPbleWS/aQLmBvfeFomgzaLY8+klajstO/hFhfzgNEY92fLJ
	jjLSnByq9y6bRjeZnMNtInuoPM+AixwQYd+svpgwCt8nE43M0BHnpV+zlBU+Q6f2HP8Qu56D2JW
	F0BEoTufWtBRGKbRtLoNJRVd1DD1nOa4i09/JnZjCFhDes1iSuSiPZws79uWvs0dztu+a6xNgKX
	8giUErGvZ4eqxQ6cX+zce7+P1ycNTDOkp8VbhYybR0wN4eyXzR0e4IEv8UFywJjxTdN7LEGNCR9
	Qk3/pu+Tk+vdFhti+NWEJclTu28Ubzl/LdEEoY3bWVw6Y/6nwm2exPgd8LzUaT4D9dn9gkmSX0N
	E1T8ZLhy0c/odwCA+wnARxea87UVGojh50qBBJ8UeRRXmK2B5uVo9LvdA18ReX/jBY9cq3s7Cp8
	z+mNwUKh2CszY0Fu1av+GgnvA=
X-Received: by 2002:a05:6214:d43:b0:87c:27c2:2c0e with SMTP id 6a1803df08f44-8883dc78f56mr24444626d6.59.1764989018253;
        Fri, 05 Dec 2025 18:43:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IELopBkTwTrdevRKNQDfOKNRvVoSoxLp915juyNubfc+TFAj22pkfu7ReqUYjQ67qriMH+srQ==
X-Received: by 2002:a05:6214:d43:b0:87c:27c2:2c0e with SMTP id 6a1803df08f44-8883dc78f56mr24444436d6.59.1764989017867;
        Fri, 05 Dec 2025 18:43:37 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e705e8292sm19913161fa.37.2025.12.05.18.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 18:43:37 -0800 (PST)
Date: Sat, 6 Dec 2025 04:43:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anusha Ajithkumar <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <luhtzwbic5a6a4tl5coa2zv3jxoo5f6sab7gv4gcxpubv3ioye@h7xlfx2bxcgr>
References: <20251107105735.1491273-1-tessolveupstream@gmail.com>
 <20251107105735.1491273-3-tessolveupstream@gmail.com>
 <badmoityubqmjsxune27vrh2e6htwkhvnak4uj7iiixnxhjpkm@qi56e6kilyt2>
 <db3edb31-4a1c-4512-ac46-ca3b4e9f187e@gmail.com>
 <CAO9ioeUVx_qf3no9aLgZ3OQQPQ7nG-2aTx8SHaEN5DUf02USWA@mail.gmail.com>
 <9b0c7cac-3577-4190-883b-7de26790b8bc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9b0c7cac-3577-4190-883b-7de26790b8bc@gmail.com>
X-Proofpoint-ORIG-GUID: kXWry7wVNcKlI6XcqS80dhRg1kSzWbxG
X-Proofpoint-GUID: kXWry7wVNcKlI6XcqS80dhRg1kSzWbxG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAxOSBTYWx0ZWRfX4zjeeRYVux1B
 gb7348Z6Q9tFO9Ub6q0+vEFtNMRfOWebM7gB3bTz0vBBv3KabS8RXWz7fta1FnURH/jKrR1nEAt
 VjkVJHMQ2+RU7YpqBjrXY6azE+UGpsKSD31xiP6p3CcF0evUqTvDWQYWzKhYqKn55YblzBUk/Dz
 JPE8fl9x0c4iUHw7Xmduu3/5/LVLfYjDUTzxzbX/O0oj9MLzGrxhwga6QnOdkFIMWcJGUJBKxHK
 Spfo+GOiLEznQw4X6SXgWTW6SoxMchSpe66GJLmzIIn8hFROGnzjaAY8X9h46OAFBhHZtI+TFyb
 R5gGb7qt46XWrCDkuMO7oU9MpXpKqIbBiu3v3XLc1yWk4S4L1x1Nho7VofxTBinOuxOZaTslghv
 UMLlgP2+pScOfM8P01VTWKxMXI6Gnw==
X-Authority-Analysis: v=2.4 cv=Uvpu9uwB c=1 sm=1 tr=0 ts=6933985b cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=M1JfwU0wTJiejCg4RHUA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 bulkscore=0 spamscore=0
 impostorscore=0 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512060019

On Fri, Dec 05, 2025 at 10:58:56AM +0530, Anusha Ajithkumar wrote:
> 
> 
> On 03-12-2025 02:36, Dmitry Baryshkov wrote:
> > On Tue, 18 Nov 2025 at 12:16, <tessolveupstream@gmail.com> wrote:
> >>
> >>
> >>
> >> On 14-11-2025 01:38, Dmitry Baryshkov wrote:
> >>> On Fri, Nov 07, 2025 at 04:27:35PM +0530, Sudarshan Shetty wrote:
> > 
> >>>> +
> >>>> +&uart0 {
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&usb_1_hsphy {
> >>>> +    vdd-supply = <&vreg_l5a>;
> >>>> +    vdda-pll-supply = <&vreg_l12a>;
> >>>> +    vdda-phy-dpdm-supply = <&vreg_l13a>;
> >>>> +
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&usb_qmpphy {
> >>>> +    vdda-phy-supply = <&vreg_l5a>;
> >>>> +    vdda-pll-supply = <&vreg_l12a>;
> >>>> +
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&usb_1 {
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&usb_1_dwc3 {
> >>>> +    dr_mode = "host";
> >>>> +};
> >>>> +
> >>>> +&usb_hsphy_2 {
> >>>
> >>> So, the labels are usb_1_hsphy, but usb_hsphy_2? That's not logical,
> >>> please fix one of them. Then please fix the order of nodes here.
> >>
> >> The node names come directly from the included talos.dtsi, where they
> >> are defined as usb_1_hsphy & usb_hsphy_2.
> >> To avoid breaking inherited definitions, we kept the same labels
> >> in our board DTS.
> > 
> > Please fix them in the base DT.
> >
> 
> The inconsistent naming originates from talos.dtsi, which is 
> outside the scope of this patch series. Modifying these labels 
> in our board DTS would break the inherited node references 
> from talos.dtsi. >> However, I will reorder the nodes so they appear in a logical and

Please fix the base DT. There is no such thing as "out of scope".

> >> consistent sequence.
> > 
> > This is a prerequisite, no questions.
> > 
> 

-- 
With best wishes
Dmitry

